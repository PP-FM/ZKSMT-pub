cmake_minimum_required(VERSION 3.10)

project(zksmt)


set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(CMAKE_CXX_FLAGS "-msse4.1 -mrdseed -maes -mpclmul -g -O3 -pthread -w -Wl,-rpath -Wl,LIBDIR")

# include_directories(include /home/ubuntu/emp-tool)
# include_directories(include /home/ubuntu/Code/emp-zk)

# find_path(CMAKE_FOLDER NAMES cmake/emp-tool-config.cmake)
# include(${CMAKE_FOLDER}/cmake/emp-base.cmake)

# find_package(emp-ot REQUIRED)
# include_directories(${EMP-OT_INCLUDE_DIRS})
# set(sources
#   emp-zk/emp-zk-bool/emp-zk-bool.cpp
#   emp-zk/emp-zk-arith/emp-zk-arith.cpp
# )
# add_library(${NAME} SHARED ${sources})

# install(DIRECTORY emp-zk DESTINATION include/)
# install(FILES cmake/emp-zk-config.cmake DESTINATION cmake/)
# install(TARGETS ${NAME} DESTINATION lib)

add_executable(zkchecker zkchecker.cpp parser.cpp polynomial.cpp timing.cpp roram.cpp utils.cpp typing.cpp equal_checker.cpp lia_checker.cpp boolean_checker.cpp checker.cpp)
target_link_libraries(zkchecker PUBLIC emp-tool emp-zk  ssl crypto ntl gmp)
 
