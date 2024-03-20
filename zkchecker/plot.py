#!/usr/bin/python3

import sys
import os
from copy import deepcopy
import subprocess
import matplotlib.pyplot as plt
import numpy as np

# Load command line args: --limited
is_limited = False
if len(sys.argv) > 1 and sys.argv[1] == '--limited':
    is_limited = True

# obsolete imports
# from sklearn.linear_model import LinearRegression

# Constants

# Where output of benchmark runs is stored
RAW_OUTDIR = "raw_out"

# Microbenchmark rules chosen for extensive analysis
RULE_NAMES = [
        'resolution.zksmt',
        'consolidate.zksmt',
        'farkas.zksmt',
        'flatten.zksmt'
        ]

# List of normal benchmarks
# Failed benchmarks (due to unsupported features)
skip_list = [
        "boogie-tests_Test_test2_IfThenElse1.bpl-0.zksmt",
        "boogie-tests_Test_test2_IfThenElse1.bpl-1.zksmt",
        "boogie-tests_Test_test2_IfThenElse1.bpl-2.zksmt",
        "boogie-tests_Test_test2_IfThenElse1.bpl-3.zksmt"
]
FILE_NAMES = os.listdir("../benchmark")
FILE_NAMES.sort()
FILE_NAMES = [name for name in FILE_NAMES if not name in skip_list]

# List of WiSA benchmarks
xs_skip_list = [
    "xs_10_20.zksmt",
    "xs_12_22.zksmt"
]
XS_FILE_NAMES = os.listdir("../benchmark_wsa")
XS_FILE_NAMES.sort()
XS_FILE_NAMES = [name for name in XS_FILE_NAMES if not name in xs_skip_list]

XS_OUT_DIR = "raw_out/benchmark"

# Rules are assigned ids. Other operations which take time are assigned id's
# for scripting purposes. These are id's of important rules/operations
RESOLUTION_ID = 299
TYPECHECK_EXPR_ID = 699
TYPECHECK_EXPR_LIST_ID = 698

# Helper functions: miscellaneous

# 2nd element of a tuple (for sorting)
def snd(t):
    return t[1]

# Helper functions: loading & parsing raw output

# used as input to run_benchmark
def micro_out_fname(rule, reps, etl, mell, eltl, ctl):
    rule_non_zksmt = rule[:-len(".zksmt")]
    s = "{}_{}_{}_{}_{}_{}".format(rule_non_zksmt, reps,
            etl, mell, eltl, ctl)
    return s

# the final path to load
def micro_out_path(rule, reps, etl, mell, eltl, ctl):
    s = micro_out_fname(rule, reps, etl, mell, eltl, ctl)
    return "{}/{}/{}_1.out".format(RAW_OUTDIR, "microbenchmark", s)

# Get the path to raw output of a benchmark (for computer 1)
def raw_out_of_benchmark(benchmark_name):
    return "raw_out/benchmark/{}_1.out".format(benchmark_name[:-len(".zksmt")])

# return amortized time of the given rule under the given configuration
def rule_time(rule, reps, etl, mell, eltl, ctl):
    path = micro_out_path(rule, reps, etl, mell, eltl, ctl)
    with open(path) as f:
        for line in f.readlines():
            columns = line.split(':')
            if len(columns) != 2:
                continue
            if columns[0].strip() != "main loop":
                continue
            ans = float(columns[1].strip()) / reps
            return ans
    print("error rule time {}".format(rule))
    return None

# return amortized time of roram checking under the given configuration
def rule_roram_time(rule, reps, etl, mell, eltl, ctl):
    path = micro_out_path(rule, reps, etl, mell, eltl, ctl)
    with open(path) as f:
        for line in f.readlines():
            columns = line.split(':')
            if len(columns) != 2:
                continue
            if columns[0].strip() != "roram checking":
                continue
            ans = float(columns[1].strip()) / reps
            return ans
    print("error rule time {}".format(rule))
    return None

# Given the path to raw output of a benchmark, parse it and return a breakdown
# of the total time as a tuple of the time of various sections.
def breakdown_benchmark_time(fname):
    rule_times = []
    with open(fname) as f:
        total_time = 0
        for line in f.readlines():
            columns = line.split(':')
            if len(columns) != 3:
                continue
            if columns[0].strip() != "specific rule":
                continue
            rule_num = int(columns[1].strip())
            if rule_num >= 700:
                continue
            rule_times += [(rule_num, float(columns[2].strip()))]
            total_time += rule_times[-1][1]
        rule_times = sorted(rule_times, key=snd)
        rule_times.reverse()
        for (idx, rule_time) in rule_times:
            percentage = 100*rule_time / total_time
            percentage_string = f'{percentage:7.4f}'
            rule_time_string = f'{rule_time:12.6f}'
            # print("{} : {}% : {:10}".format(
            #               idx, percentage_string, rule_time_string))
        resolution_time = 0
        expr_chk_time = 0
        expr_list_chk_time = 0
        other_time = 0
        # hard coded rules for resolution and typechecking
        for (idx, rule_time) in rule_times:
            if idx == RESOLUTION_ID:
                resolution_time += rule_time
            elif idx == TYPECHECK_EXPR_LIST_ID:
                expr_list_chk_time += rule_time
            elif idx == TYPECHECK_EXPR_ID:
                expr_chk_time += rule_time
            else:
                other_time += rule_time
        return (expr_chk_time, expr_list_chk_time, resolution_time, other_time)

# take a benchmark fname.zksmt and return the total time (or None) as a string
def normal_benchmark_time(fname):
    name = fname[:-len(".zksmt")]
    path = "{}/benchmark/{}_1.out".format(RAW_OUTDIR, name)
    with open(path) as file:
        total_time = None
        lines = file.readlines()
        for line in lines:
            rows = line.split(":")
            if len(rows) != 2:
                continue
            if rows[0].strip() != "total":
                continue
            total_time = rows[1].strip()
        # if (float(total_time) > 40):
        #     print(fname)
        return total_time

# take a benchmark fname.zksmt and return the .zksmt metrics as a dictionary
# with the following keys: etl, mell, eltl, ctl
# could later be modified to take a generic path for better modularity
def read_proof_metrics(fname):
    path = "../benchmark/{}".format(fname)
    with open(path) as file:
        line0 = None
        for line in file.readlines():
            line0 = line
            break
        parameters = line0.split(" ")
        answer = {}
        answer['etl'] = parameters[1]
        answer['mell'] = parameters[2]
        answer['eltl'] = parameters[3]
        answer['ctl'] = parameters[4]
        return answer

# take a benchmark fname.zksmt and return the .zksmt metrics as a dictionary
# with the following keys: etl, mell, eltl, ctl
# could later be modified to take a generic path for better modularity
def read_xs_proof_metrics(fname):
    path = "../benchmark_wsa/{}".format(fname)
    with open(path) as file:
        line0 = None
        for line in file.readlines():
            line0 = line
            break
        parameters = line0.split(" ")
        answer = {}
        answer['etl'] = parameters[1]
        answer['mell'] = parameters[2]
        answer['eltl'] = parameters[3]
        answer['ctl'] = parameters[4]
        return answer

# Parse the Cheesecloth results stored in cycle_count.txt
def load_cycle_counts():
    # Ratio of cheesecloth cycle counts to time, based on running an example.
    RATIO = 0.021
    d = {}
    with open('cycle_count.txt') as f:
        for l in f.readlines():
            words = l.split()
            name = words[0]
            name = name[len("benchmarks/"):-len("/microram.log:Terminating")] + ".zksmt"
            d[name] = float(words[3]) * RATIO
    return d

# Helper functions: plot construction

# adapted from:
# https://jdhao.github.io/2017/06/03/change-aspect-ratio-in-mpl/
def set_aspect_ratio_golden():
    ax = plt.gca()
    golden_ratio = (1 + 5 ** 0.5) / 2
    ratio = 1/golden_ratio
    xleft, xright = ax.get_xlim()
    ybottom, ytop = ax.get_ylim()
    ax.set_aspect(abs((xright-xleft)/(ybottom-ytop))*ratio)

# https://stackoverflow.com/questions/24866419/aspect-ratio-in-semi-log-plot-with-matplotlib
def set_aspect_ratio_golden_log():
    ax = plt.gca()
    golden_ratio = (1 + 5 ** 0.5) / 2
    ratio = 1/golden_ratio
    xleft, xright = ax.get_xlim()
    ybottom, ytop = ax.get_ylim()
    dy=np.abs(np.log10(plt.gca().get_ylim()[1])-np.log10(plt.gca().get_ylim()[0]))
    dx=np.abs(np.log10(plt.gca().get_xlim()[1])-np.log10(plt.gca().get_xlim()[0]))
    plt.gca().set_aspect((dx/dy)/golden_ratio,adjustable='box')

# Set some parameters used for printing
# fonttype set to avoid bitmapped fonts:
# https://tex.stackexchange.com/questions/77968/how-do-i-avoid-type3-fonts-when-submitting-to-manuscriptcentral
def plot_set_params():
    plt.rcParams["font.family"] = 'times new roman'
    plt.rcParams["pdf.fonttype"] = 42
    plt.rcParams.update({'font.size': 18})

# Main plotting functions

# assemble the breakdown bar graphs
def plot_microbreakdown():
    plot_set_params()
    plt.clf()
    total_times = {}
    for mell in ['5', '21']:
        time_list = []
        roram_time_list = []
        nonroram_time_list = []
        for rule_name in RULE_NAMES:
            time_list += [rule_time(
                    rule_name, 1000, 100, int(mell), 100, 10) * 1000]
            roram_time_list += [rule_roram_time(
                    rule_name, 1000, 100, int(mell), 100, 10) * 1000]
            nonroram_time_list += [time_list[-1] - roram_time_list[-1]]
        total_times[mell] = time_list
        total_times["{} memory".format(mell)] = roram_time_list
        total_times["{} nonmemory".format(mell)] = nonroram_time_list

    x = np.arange(len(RULE_NAMES))  # the label locations
    width = 0.25  # the width of the bars
    multiplier = 0
    fig = plt.gcf()
    plt.rcParams["font.family"] = 'times new roman'
    golden_ratio = (1 + 5 ** 0.5) / 2
    # plt.gca().set_aspect(1/3)
    # plt.rcParams['figure.constrained_layout.use'] = True
    # plt.rcParams['figure.figsize'] =[golden_ratio*4,1]
    # plt.rcParams['legend.frameon'] = False
    # print(plt.rcParams['figure.constrained_layout.use'])
    # plt.gca().set_aspect('equal')
    # fig.set_size_inches(10.5, 10.5)
    colors = ["#eb3426", "#37e650", "#142f8a"]
    # fig.set_size_inches(10.5, 10.5)

    zeros = [0 for _ in RULE_NAMES]

    # fig, ax = plt.subplots(layout='constrained')

    # plt.bar(x + 0*width, height=total_times['5 memory'], width=width, label= 'memory operations', bottom=zeros, color="C0")
    # plt.bar(x + 1*width, height=total_times['21 memory'], width=width, label=None, bottom=zeros, color="C0")
    # plt.bar(x + 0*width, height=total_times['5 nonmemory'], width=width, label= 'arithmetic operations', bottom=total_times[ '5 memory'], color="C1")
    # plt.bar(x + 1*width, height=total_times['21 nonmemory'], width=width, label=None, bottom=total_times['21 memory'], color="C1")
    plt.bar(x + 0.375*width, height=total_times['5 memory'], width=width, label= 'Memory Ops', bottom=zeros, color="C0", edgecolor="black")
    plt.bar(x + 1.625*width, height=total_times['21 memory'], width=width, label=None, bottom=zeros, color="C0", edgecolor="black")
    plt.bar(x + 0.375*width, height=total_times['5 nonmemory'], width=width, label= 'Arithmetic Ops', bottom=total_times[ '5 memory'], color="C1", hatch='/', edgecolor="black")
    plt.bar(x + 1.625*width, height=total_times['21 nonmemory'], width=width, label=None, bottom=total_times['21 memory'], color="C1", hatch='/', edgecolor="black")
    #
    # for mell, total_time in total_times.items():
    #     offset = width * multiplier
    #     rects = plt.barh(x + offset, total_time, height=width, label=mell, left=bottoms)
    #     # plt.bar_label(rects, padding=3)
    #     multiplier += 1

    # Add some text for labels, title and custom x-axis tick labels, etc.
    plt.ylabel('Time (ms)')
    plt.xlabel('Rule')
    # plt.title('Time per operation per rule')
    rule_names_nozksmt = [s[:-len(".zksmt")].title() for s in RULE_NAMES]
    plt.xticks(x + width, rule_names_nozksmt)
    plt.legend(loc="upper right", ncols=1, frameon=False, fontsize=15)
    # plt.set_ylim(0, 250)
    set_aspect_ratio_golden()

    plt.savefig("out/microplot_per_rule.pdf", format="pdf", bbox_inches='tight')

# assemble plot: table size variation
def plot_table_size():
    plot_set_params()
    plt.clf()
    plt.xlabel('Table Size (χ)')
    plt.ylabel('Time (ms)')
    table_sizes = [1000, 1250, 1500, 1750, 2000, 2250, 2500, 2750, 3000, 3250, 3500, 3750, 4000]
    colors = ['red', 'blue', 'green', 'purple']
    linestyles = ['-', '--', '-.', ':']
    for i, rule in enumerate(RULE_NAMES):
        time = []
        for t in table_sizes:
            time += [rule_time(rule, 10000, t, 10, 1000, 10) * 1000]
        plt.plot(table_sizes, time, color=colors[i], marker=".", label=rule[:-len('.zksmt')].title(), linestyle=linestyles[i])
    plt.legend(loc='lower left', frameon=False, fontsize=15)
    plt.ylim(0, 8)
    set_aspect_ratio_golden()
    plt.savefig("out/microplot_table_size.pdf", bbox_inches='tight')

# plotting for mell variation
def plot_list_size():
    plot_set_params()
    plt.clf()
    plt.xlabel('Max List Size (α)')
    plt.ylabel('Time (ms)')
    list_sizes = [10, 20, 30, 40, 50]
    colors = ['red', 'blue', 'green', 'purple']
    linestyles = ['-', '--', '-.', ':']
    # print("regression for list size")
    for i, rule in enumerate(RULE_NAMES):
        time = []
        for l in list_sizes:
            time += [rule_time(rule, 1000, 100, l, 100, 10) * 1000]
        x = np.array(list_sizes).reshape((-1, 1))
        y = np.array(time)

        # old code for printing slope results
        # model = LinearRegression()
        # model.fit(x, y)
        # print(rule)
        # print("m", model.coef_)
        # print("int", model.intercept_)
        # print("r2", model.score(x, y))

        coef = np.polyfit(np.array(list_sizes),y,1)
        poly1d_fn = np.poly1d(coef)
        final_rule_name = rule[:-len('.zksmt')].title()

        plt.plot(list_sizes, time, color=colors[i], marker="x", linestyle="")
        plt.plot(list_sizes, poly1d_fn(list_sizes), color=colors[i], marker="", linestyle=linestyles[i], label=final_rule_name)
    plt.legend(loc='upper left', frameon=False, fontsize=15)
    set_aspect_ratio_golden()
    plt.savefig("out/microplot_mell.pdf", bbox_inches='tight')

# Break down timing results of a few specific test cases.
def plot_rule_breakdown_combined():
    plot_set_params()
    plt.clf()
    test_names = [
        "boogie-tests_Test_lock_Lock.bpl-2.zksmt",
        "boogie-tests_Test_houdini_mergedProgSingle_res_ex1.bpl-5.zksmt",
        "boogie-tests_Test_textbook_McCarthy-91.bpl-0.zksmt"
    ]
    lock_times = breakdown_benchmark_time(raw_out_of_benchmark(test_names[0]))
    houdini_times = breakdown_benchmark_time(raw_out_of_benchmark(test_names[1]))
    mccarthy_times = breakdown_benchmark_time(raw_out_of_benchmark(test_names[2]))

    test_times = [
            lock_times, houdini_times, mccarthy_times
            ]

    names = ["lock.txt", "houdini.txt", "mccarthy.txt"]
    hatches = ['', '/', '\\']

    final_times = [
            [lock_times[0]+lock_times[1], houdini_times[0]+houdini_times[1],
             mccarthy_times[0]+mccarthy_times[1]],
            [lock_times[2], houdini_times[2], mccarthy_times[2]],
            [lock_times[3], houdini_times[3], mccarthy_times[3]],
            ]

    x = np.arange(len(names))
    bottoms = [0, 0, 0]
    category_names = ["Type checking", "Resolution", "All Other Rules"]
    width = 0.25  # the width of the bars
    for category_id, category_times in enumerate(final_times):
        # print(x)
        # print(category_times)
        plt.bar(x, height=category_times, width=width, label=category_names[category_id],
                bottom=bottoms, hatch=hatches[category_id], edgecolor='black')
        for i, t in enumerate(category_times):
            bottoms[i] += t
    plt.ylabel('Time (s)')
    # plt.xlabel('Proof')
    plt.xticks(x, ["Lock", "Houdini", "McCarthy"])
    plt.legend(loc="upper left", frameon=False, fontsize=15)

    set_aspect_ratio_golden()

    plt.savefig("out/run_breakdown_combined.pdf", format="pdf", bbox_inches='tight')

# Compare time vs step count for the original proof format
def plot_normal_benchmarks_vs_resolute_steps():
    plot_set_params()
    total_time = []
    all_params_local = {'etl':[], 'mell':[], 'eltl':[], 'ctl':[]}
    # print("start")
    for f in FILE_NAMES:
        total_time += [float(normal_benchmark_time(f))]
        params = read_proof_metrics(f)
        all_params_local['etl'] += [int(params['etl'])]
        all_params_local['mell'] += [int(params['mell'])]
        all_params_local['eltl'] += [int(params['eltl'])]
        all_params_local['ctl'] += [int(params['ctl'])]
    # print("end")
    # print("tt {}".format(len(total_time)))
    # print("e {}".format(len(all_params_local['etl'])))

    # add the RESOLUTE step count as a param
    all_params_local['rsc'] = []
    for f in FILE_NAMES:
        base_name = f[:-len(".zksmt")]
        path = "../benchmark_setup/rule_count/{}.resolute.txt".format(base_name)
        with open(path) as file:
            line0 = None
            for line in file.readlines():
                line0 = line
                break
            all_params_local['rsc'] += [int(line0.strip())]

    # # byte count of the original file
    # all_params_local['oc'] = []
    # for f in FILE_NAMES:
    #     base_name = f[:-len(".zksmt")]
    #     path = "../benchmark_setup/intermediate/parser_input/{}.resolute".format(base_name)
    #     cmd = "wc -m {} > out.txt".format(path)
    #     os.system(cmd)
    #     with open("out.txt") as file:
    #         line0 = None
    #         for line in file.readlines():
    #             line0 = line
    #             break
    #         val = int(line0.split(' ')[0].strip())/1000.0
    #         all_params_local['oc'] += [val]
    # os.system("rm out.txt")

    # # byte count of the zksmt file
    # all_params_local['zc'] = []
    # for f in files:
    #     if f in skip_list:
    #         continue
    #     base_name = f[:-len(".zksmt")]
    #     path = "../benchmark/{}.zksmt".format(base_name)
    #     cmd = "wc -m {} > out.txt".format(path)
    #     os.system(cmd)
    #     with open("out.txt") as file:
    #         line0 = None
    #         for line in file.readlines():
    #             line0 = line
    #             break
    #         val = int(line0.split(' ')[0].strip())/1000.0
    #         all_params_local['zc'] += [val]
    # os.system("rm out.txt")

    labels = [
            ('etl', 'expr table length'),
            ('mell', 'max expr list length'),
            ('eltl', 'expr list table length'),
            ('ctl', 'clause table length'),
            ('rsc', 'original step count'),
            # ('oc', 'RESOLUTE proof size (KB)'),
            # ('zc', 'ZKSMT proof size (KB)')
            ]

    mult_factor = []
    for i in range(len(all_params_local['rsc'])):
        mult_factor += [all_params_local['ctl'][i]/all_params_local['rsc'][i]]
    plt.clf()
    plt.plot(all_params_local['rsc'], all_params_local['ctl'], 'b+')
    plt.xlabel("SMTInterpol step count")
    plt.ylabel("ZKSMT step count")
    set_aspect_ratio_golden()
    plt.savefig("out/res_vs_zksmt.pdf", bbox_inches='tight')
    # obsolete debugging code
#     for (short_name, x_label) in labels:
#         print(short_name)
#         plt.plot(all_params_local[short_name], total_time, 'bs')
#         plt.xlabel(x_label)
#         plt.ylabel('Time (s)')
#         title = "benchmark time vs {}".format(x_label)
#         plt.title(title)
#         plt.savefig("out/plot/plot_{}.png".format(short_name), bbox_inches='tight')
#         plt.close()

def plot_normal_benchmarks():
    plot_set_params()
    plt.clf()
    total_time = []
    all_params = {'etl':[], 'mell':[], 'eltl':[], 'ctl':[]}
    for f in FILE_NAMES:
        total_time += [float(normal_benchmark_time(f))]
        params = read_proof_metrics(f)
        all_params['etl'] += [int(params['etl'])]
        all_params['mell'] += [int(params['mell'])]
        all_params['eltl'] += [int(params['eltl'])]
        all_params['ctl'] += [int(params['ctl'])]
    short_name = 'ctl'
    x_label = 'Number of Steps'
    plt.plot(all_params[short_name], total_time, 'b+')
    plt.xlabel(x_label)
    plt.ylabel('Time (s)')
    # title = "benchmark time vs {}".format(x_label)
    # plt.title(title)
    set_aspect_ratio_golden()
    plt.savefig("out/plot_{}.pdf".format(short_name), bbox_inches='tight')
    plt.close()

def plot_xs_benchmarks():
    plot_set_params()
    plt.clf()
    total_time = []
    all_params = {'etl': [], 'mell': [], 'eltl': [], 'ctl': []}
    for f in XS_FILE_NAMES:
        run_time = normal_benchmark_time(f)
        if run_time == None:
            print("failed benchmark: {}".format(f))
            continue
        run_time = float(run_time)
        total_time += [run_time]
        # print(total_time[-1])
        params = read_xs_proof_metrics(f)
        all_params['etl'] += [int(params['etl'])]
        all_params['mell'] += [int(params['mell'])]
        all_params['eltl'] += [int(params['eltl'])]
        all_params['ctl'] += [int(params['ctl'])]
    short_name = 'ctl'
    x_label = 'Number of Steps'
    # print(total_time)
    # print(all_params[short_name])
    plt.plot(all_params[short_name], total_time, 'b+')
    plt.xlabel(x_label)
    plt.ylabel('Time (s)')
    plt.yscale('log')
    plt.xscale('log')
    set_aspect_ratio_golden_log()
    # title = "benchmark time vs {}".format(x_label)
    # plt.title(title)
    plt.savefig("out/plot_xs_{}.pdf".format(short_name), bbox_inches='tight')
    plt.close()

# Plot comparison with cheesecloth. Running cheesecloth is not part of the repo. Results are stored in cycle_count.txt
def plot_cheesecloth():
    plot_set_params()
    plt.clf()

    # Load Cheesecloth and normal times
    cheesecloth_times = []
    zksmt_times = []
    cycle_count_dict = load_cycle_counts()
    for f in FILE_NAMES:
        # Not all benchmarks were run in Cheesecloth. Skip those that were not.
        if not f in cycle_count_dict:
            continue
        zksmt_times += [float(normal_benchmark_time(f))]
        cheesecloth_times += [cycle_count_dict[f]]

    # Identify max and min Cheesecloth times
    min_cc_time = 1000000000000
    min_cc_name = 'none'
    max_cc_time = 0
    max_cc_name = 'none'
    for name in cycle_count_dict:
        cc_time = cycle_count_dict[name]
        if cc_time < min_cc_time:
            min_cc_time = cheesecloth_times[-1]
            min_cc_name = name
        if cc_time > max_cc_time:
            max_cc_time = cheesecloth_times[-1]
            max_cc_name = name

    # print('min time', min_cc_name, min_cc_time)
    # print('max time', max_cc_name, max_cc_time)

    x_vals = cheesecloth_times
    y_vals = zksmt_times
    ratio = [cheesecloth_times[i]/zksmt_times[i] for i in range(0,len(zksmt_times))]
    mini = np.argmin(ratio)
    maxi = np.argmax(ratio)

    axes = plt.figure(figsize=(10,3)).add_axes([0.5, 1, 0.5, 1])
    plt.sca(axes)

    ratio = [cheesecloth_times[i]/zksmt_times[i] for i in range(0,len(zksmt_times))]
    mini = np.argmin(ratio)
    maxi = np.argmax(ratio)
    golden_ratio = (1 + 5 ** 0.5) / 2
    fig, (ax1, ax2) = plt.subplots(2, 1, sharex=True, height_ratios=[0.9, 0.1], figsize=(4.3*golden_ratio, 4.3))
    ax1.plot(x_vals, y_vals, 'b+')
    # Version without specifying exact ratio.
    ax1.plot(cheesecloth_times[mini], zksmt_times[mini], 'o', color='red', label='Min Slowdown')
    ax1.plot(cheesecloth_times[maxi], zksmt_times[maxi], 'o', color='black', label='Max Slowdown')
    ax2.plot(cheesecloth_times[mini], zksmt_times[mini], 'o', color='red', label='Min Slowdown')
    ax2.plot(cheesecloth_times[maxi], zksmt_times[maxi], 'o', color='black', label='Max Slowdown')
    # # These values were from the data in the paper itself. They may vary but should be a conservative estimate.
    # ax1.plot(cheesecloth_times[mini], zksmt_times[mini], 'o', color='red', label='Min Slowdown: ~1,100×')
    # ax1.plot(cheesecloth_times[maxi], zksmt_times[maxi], 'o', color='black', label='Max Slowdown: ~54,000×')
    # ax2.plot(cheesecloth_times[mini], zksmt_times[mini], 'o', color='red', label='Min Slowdown: ~1,100×')
    # ax2.plot(cheesecloth_times[maxi], zksmt_times[maxi], 'o', color='black', label='Max Slowdown: ~54,000×')
    ax2.legend(loc="lower right", ncols=1, frameon=False, fontsize=15)
    ax2.set_xlabel('Estimated Cheesecloth Time (s)')
    ax1.set_ylabel('ZKSMT Time (s)')

    # Hardcoded value for formatting given the outputs used in the paper
    # ax1.set_ylim((1.5, 2.25))
    # More automatic version when using a different set
    min_zksmt = zksmt_times[np.argmin(zksmt_times)]
    max_zksmt = zksmt_times[np.argmax(zksmt_times)]
    ax1.set_ylim((min_zksmt-0.1, max_zksmt+0.1))

    ax2.set_ylim((0.0, 0.1))
    ax2.set_xlim(ax1.get_xlim())

    # hide the spines between ax and ax2
    ax1.spines.bottom.set_visible(False)
    ax2.spines.top.set_visible(False)
    ax1.xaxis.tick_top()
    ax1.tick_params(
        axis='x',
        which='both',
        bottom=False,
        top=False,
        labelbottom=False
    )
    ax1.tick_params(labeltop=False)  # don't put tick labels at the top
    ax2.xaxis.tick_bottom()
    ax2.set_yticks([0])

    # make the slanted lines on one side
    d = .5  # proportion of vertical to horizontal extent of the slanted line
    kwargs = dict(marker=[(-1, -d), (1, d)], markersize=12,
                  linestyle="none", color='k', mec='k', mew=1, clip_on=False)
    ax1.plot([0], [0], transform=ax1.transAxes, **kwargs)
    ax2.plot([0], [1], transform=ax2.transAxes, **kwargs)

    # fudge mending the other side
    d = .5  # proportion of vertical to horizontal extent of the slanted line
    kwargs = dict(marker="|",
                  linestyle="none", color='k', mec='k', mew=1, clip_on=False)
    ax1.plot([1], [0], transform=ax1.transAxes, **kwargs)
    ax2.plot([1], [1], transform=ax2.transAxes, **kwargs)

    fig.subplots_adjust(hspace=0.05)

    plt.savefig("out/plot_cheesecloth.pdf", format="pdf", bbox_inches='tight')

# Main function

if __name__ == "__main__":
    # Ensure output directories are made
    subprocess.call("mkdir -p out", shell=True)

    plot_microbreakdown()
    plot_table_size()
    plot_list_size()
    plot_rule_breakdown_combined()
    plot_normal_benchmarks_vs_resolute_steps()
    plot_normal_benchmarks()
    if not is_limited:
        plot_xs_benchmarks()
    plot_cheesecloth()
