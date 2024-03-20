(set-logic UFNIA)
(set-option :print-success false)
(set-info :smt-lib-version 2.6)
(set-option :smt.mbqi false)
(set-option :model.compact false)
(set-option :model.v2 true)
(set-option :pp.bv_literals false)
; done setting options


(declare-fun tickleBool (Bool) Bool)
(assert (and (tickleBool true) (tickleBool false)))
(declare-sort T@name 0)
(declare-fun UNALLOCATED () T@name)
(declare-fun ALLOCATED () T@name)
(declare-fun FREED () T@name)
(declare-fun BYTE () T@name)
(declare-fun T.Guid_WMIGUIDREGINFO () T@name)
(declare-fun T.InstanceCount_WMIGUIDREGINFO () T@name)
(declare-fun T.Flags_WMIGUIDREGINFO () T@name)
(declare-fun T.OperationID__ACCESS_STATE () T@name)
(declare-fun T.SecurityEvaluated__ACCESS_STATE () T@name)
(declare-fun T.GenerateAudit__ACCESS_STATE () T@name)
(declare-fun T.GenerateOnClose__ACCESS_STATE () T@name)
(declare-fun T.PrivilegesAllocated__ACCESS_STATE () T@name)
(declare-fun T.Flags__ACCESS_STATE () T@name)
(declare-fun T.RemainingDesiredAccess__ACCESS_STATE () T@name)
(declare-fun T.PreviouslyGrantedAccess__ACCESS_STATE () T@name)
(declare-fun T.OriginalDesiredAccess__ACCESS_STATE () T@name)
(declare-fun T.SubjectSecurityContext__ACCESS_STATE () T@name)
(declare-fun T.SecurityDescriptor__ACCESS_STATE () T@name)
(declare-fun T.AuxData__ACCESS_STATE () T@name)
(declare-fun T.Privileges__ACCESS_STATE () T@name)
(declare-fun T.AuditPrivileges__ACCESS_STATE () T@name)
(declare-fun T.ObjectName__ACCESS_STATE () T@name)
(declare-fun T.ObjectTypeName__ACCESS_STATE () T@name)
(declare-fun T.InterfaceType__CM_FULL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.BusNumber__CM_FULL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.PartialResourceList__CM_FULL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Type__CM_PARTIAL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.ShareDisposition__CM_PARTIAL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Flags__CM_PARTIAL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.u__CM_PARTIAL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Version__CM_PARTIAL_RESOURCE_LIST () T@name)
(declare-fun T.Revision__CM_PARTIAL_RESOURCE_LIST () T@name)
(declare-fun T.Count__CM_PARTIAL_RESOURCE_LIST () T@name)
(declare-fun T.PartialDescriptors__CM_PARTIAL_RESOURCE_LIST () T@name)
(declare-fun T.Count__CM_RESOURCE_LIST () T@name)
(declare-fun T.List__CM_RESOURCE_LIST () T@name)
(declare-fun T.Size__DEVICE_CAPABILITIES () T@name)
(declare-fun T.Version__DEVICE_CAPABILITIES () T@name)
(declare-fun T.DeviceD1__DEVICE_CAPABILITIES () T@name)
(declare-fun T.DeviceD2__DEVICE_CAPABILITIES () T@name)
(declare-fun T.LockSupported__DEVICE_CAPABILITIES () T@name)
(declare-fun T.EjectSupported__DEVICE_CAPABILITIES () T@name)
(declare-fun T.Removable__DEVICE_CAPABILITIES () T@name)
(declare-fun T.DockDevice__DEVICE_CAPABILITIES () T@name)
(declare-fun T.UniqueID__DEVICE_CAPABILITIES () T@name)
(declare-fun T.SilentInstall__DEVICE_CAPABILITIES () T@name)
(declare-fun T.RawDeviceOK__DEVICE_CAPABILITIES () T@name)
(declare-fun T.SurpriseRemovalOK__DEVICE_CAPABILITIES () T@name)
(declare-fun T.WakeFromD0__DEVICE_CAPABILITIES () T@name)
(declare-fun T.WakeFromD1__DEVICE_CAPABILITIES () T@name)
(declare-fun T.WakeFromD2__DEVICE_CAPABILITIES () T@name)
(declare-fun T.WakeFromD3__DEVICE_CAPABILITIES () T@name)
(declare-fun T.HardwareDisabled__DEVICE_CAPABILITIES () T@name)
(declare-fun T.NonDynamic__DEVICE_CAPABILITIES () T@name)
(declare-fun T.WarmEjectSupported__DEVICE_CAPABILITIES () T@name)
(declare-fun T.NoDisplayInUI__DEVICE_CAPABILITIES () T@name)
(declare-fun T.Reserved__DEVICE_CAPABILITIES () T@name)
(declare-fun T.Address__DEVICE_CAPABILITIES () T@name)
(declare-fun T.UINumber__DEVICE_CAPABILITIES () T@name)
(declare-fun T.DeviceState__DEVICE_CAPABILITIES () T@name)
(declare-fun T.SystemWake__DEVICE_CAPABILITIES () T@name)
(declare-fun T.DeviceWake__DEVICE_CAPABILITIES () T@name)
(declare-fun T.D1Latency__DEVICE_CAPABILITIES () T@name)
(declare-fun T.D2Latency__DEVICE_CAPABILITIES () T@name)
(declare-fun T.D3Latency__DEVICE_CAPABILITIES () T@name)
(declare-fun T.Self__DEVICE_EXTENSION () T@name)
(declare-fun T.TrueClassDevice__DEVICE_EXTENSION () T@name)
(declare-fun T.TopPort__DEVICE_EXTENSION () T@name)
(declare-fun T.PDO__DEVICE_EXTENSION () T@name)
(declare-fun T.RemoveLock__DEVICE_EXTENSION () T@name)
(declare-fun T.PnP__DEVICE_EXTENSION () T@name)
(declare-fun T.Started__DEVICE_EXTENSION () T@name)
(declare-fun T.OkayToLogOverflow__DEVICE_EXTENSION () T@name)
(declare-fun T.WaitWakeSpinLock__DEVICE_EXTENSION () T@name)
(declare-fun T.TrustedSubsystemCount__DEVICE_EXTENSION () T@name)
(declare-fun T.InputCount__DEVICE_EXTENSION () T@name)
(declare-fun T.SymbolicLinkName__DEVICE_EXTENSION () T@name)
(declare-fun T.InputData__DEVICE_EXTENSION () T@name)
(declare-fun T.DataIn__DEVICE_EXTENSION () T@name)
(declare-fun T.DataOut__DEVICE_EXTENSION () T@name)
(declare-fun T.MouseAttributes__DEVICE_EXTENSION () T@name)
(declare-fun T.SpinLock__DEVICE_EXTENSION () T@name)
(declare-fun T.ReadQueue__DEVICE_EXTENSION () T@name)
(declare-fun T.SequenceNumber__DEVICE_EXTENSION () T@name)
(declare-fun T.DeviceState__DEVICE_EXTENSION () T@name)
(declare-fun T.SystemState__DEVICE_EXTENSION () T@name)
(declare-fun T.UnitId__DEVICE_EXTENSION () T@name)
(declare-fun T.WmiLibInfo__DEVICE_EXTENSION () T@name)
(declare-fun T.SystemToDeviceState__DEVICE_EXTENSION () T@name)
(declare-fun T.MinDeviceWakeState__DEVICE_EXTENSION () T@name)
(declare-fun T.MinSystemWakeState__DEVICE_EXTENSION () T@name)
(declare-fun T.WaitWakeIrp__DEVICE_EXTENSION () T@name)
(declare-fun T.ExtraWaitWakeIrp__DEVICE_EXTENSION () T@name)
(declare-fun T.TargetNotifyHandle__DEVICE_EXTENSION () T@name)
(declare-fun T.Link__DEVICE_EXTENSION () T@name)
(declare-fun T.File__DEVICE_EXTENSION () T@name)
(declare-fun T.Enabled__DEVICE_EXTENSION () T@name)
(declare-fun T.WaitWakeEnabled__DEVICE_EXTENSION () T@name)
(declare-fun T.SurpriseRemoved__DEVICE_EXTENSION () T@name)
(declare-fun T.Type__DEVICE_OBJECT () T@name)
(declare-fun T.Size__DEVICE_OBJECT () T@name)
(declare-fun T.ReferenceCount__DEVICE_OBJECT () T@name)
(declare-fun T.DriverObject__DEVICE_OBJECT () T@name)
(declare-fun T.NextDevice__DEVICE_OBJECT () T@name)
(declare-fun T.AttachedDevice__DEVICE_OBJECT () T@name)
(declare-fun T.CurrentIrp__DEVICE_OBJECT () T@name)
(declare-fun T.Timer__DEVICE_OBJECT () T@name)
(declare-fun T.Flags__DEVICE_OBJECT () T@name)
(declare-fun T.Characteristics__DEVICE_OBJECT () T@name)
(declare-fun T.Vpb__DEVICE_OBJECT () T@name)
(declare-fun T.DeviceExtension__DEVICE_OBJECT () T@name)
(declare-fun T.DeviceType__DEVICE_OBJECT () T@name)
(declare-fun T.StackSize__DEVICE_OBJECT () T@name)
(declare-fun T.Queue__DEVICE_OBJECT () T@name)
(declare-fun T.AlignmentRequirement__DEVICE_OBJECT () T@name)
(declare-fun T.DeviceQueue__DEVICE_OBJECT () T@name)
(declare-fun T.Dpc__DEVICE_OBJECT () T@name)
(declare-fun T.ActiveThreadCount__DEVICE_OBJECT () T@name)
(declare-fun T.SecurityDescriptor__DEVICE_OBJECT () T@name)
(declare-fun T.DeviceLock__DEVICE_OBJECT () T@name)
(declare-fun T.SectorSize__DEVICE_OBJECT () T@name)
(declare-fun T.Spare1__DEVICE_OBJECT () T@name)
(declare-fun T.DeviceObjectExtension__DEVICE_OBJECT () T@name)
(declare-fun T.Reserved__DEVICE_OBJECT () T@name)
(declare-fun T.Type__DEVOBJ_EXTENSION () T@name)
(declare-fun T.Size__DEVOBJ_EXTENSION () T@name)
(declare-fun T.DeviceObject__DEVOBJ_EXTENSION () T@name)
(declare-fun T.__unnamed_4_c9b2e921__DISPATCHER_HEADER () T@name)
(declare-fun T.SignalState__DISPATCHER_HEADER () T@name)
(declare-fun T.WaitListHead__DISPATCHER_HEADER () T@name)
(declare-fun T.DriverObject__DRIVER_EXTENSION () T@name)
(declare-fun T.AddDevice__DRIVER_EXTENSION () T@name)
(declare-fun T.Count__DRIVER_EXTENSION () T@name)
(declare-fun T.ServiceKeyName__DRIVER_EXTENSION () T@name)
(declare-fun T.Type__DRIVER_OBJECT () T@name)
(declare-fun T.Size__DRIVER_OBJECT () T@name)
(declare-fun T.DeviceObject__DRIVER_OBJECT () T@name)
(declare-fun T.Flags__DRIVER_OBJECT () T@name)
(declare-fun T.DriverStart__DRIVER_OBJECT () T@name)
(declare-fun T.DriverSize__DRIVER_OBJECT () T@name)
(declare-fun T.DriverSection__DRIVER_OBJECT () T@name)
(declare-fun T.DriverExtension__DRIVER_OBJECT () T@name)
(declare-fun T.DriverName__DRIVER_OBJECT () T@name)
(declare-fun T.HardwareDatabase__DRIVER_OBJECT () T@name)
(declare-fun T.FastIoDispatch__DRIVER_OBJECT () T@name)
(declare-fun T.DriverInit__DRIVER_OBJECT () T@name)
(declare-fun T.DriverStartIo__DRIVER_OBJECT () T@name)
(declare-fun T.DriverUnload__DRIVER_OBJECT () T@name)
(declare-fun T.MajorFunction__DRIVER_OBJECT () T@name)
(declare-fun T.SystemResourcesList__ERESOURCE () T@name)
(declare-fun T.OwnerTable__ERESOURCE () T@name)
(declare-fun T.ActiveCount__ERESOURCE () T@name)
(declare-fun T.Flag__ERESOURCE () T@name)
(declare-fun T.SharedWaiters__ERESOURCE () T@name)
(declare-fun T.ExclusiveWaiters__ERESOURCE () T@name)
(declare-fun T.OwnerEntry__ERESOURCE () T@name)
(declare-fun T.ActiveEntries__ERESOURCE () T@name)
(declare-fun T.ContentionCount__ERESOURCE () T@name)
(declare-fun T.NumberOfSharedWaiters__ERESOURCE () T@name)
(declare-fun T.NumberOfExclusiveWaiters__ERESOURCE () T@name)
(declare-fun T.__unnamed_4_46b62f69__ERESOURCE () T@name)
(declare-fun T.SpinLock__ERESOURCE () T@name)
(declare-fun T.SizeOfFastIoDispatch__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoCheckIfPossible__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoRead__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoWrite__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoQueryBasicInfo__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoQueryStandardInfo__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoLock__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoUnlockSingle__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoUnlockAll__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoUnlockAllByKey__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoDeviceControl__FAST_IO_DISPATCH () T@name)
(declare-fun T.AcquireFileForNtCreateSection__FAST_IO_DISPATCH () T@name)
(declare-fun T.ReleaseFileForNtCreateSection__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoDetachDevice__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoQueryNetworkOpenInfo__FAST_IO_DISPATCH () T@name)
(declare-fun T.AcquireForModWrite__FAST_IO_DISPATCH () T@name)
(declare-fun T.MdlRead__FAST_IO_DISPATCH () T@name)
(declare-fun T.MdlReadComplete__FAST_IO_DISPATCH () T@name)
(declare-fun T.PrepareMdlWrite__FAST_IO_DISPATCH () T@name)
(declare-fun T.MdlWriteComplete__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoReadCompressed__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoWriteCompressed__FAST_IO_DISPATCH () T@name)
(declare-fun T.MdlReadCompleteCompressed__FAST_IO_DISPATCH () T@name)
(declare-fun T.MdlWriteCompleteCompressed__FAST_IO_DISPATCH () T@name)
(declare-fun T.FastIoQueryOpen__FAST_IO_DISPATCH () T@name)
(declare-fun T.ReleaseForModWrite__FAST_IO_DISPATCH () T@name)
(declare-fun T.AcquireForCcFlush__FAST_IO_DISPATCH () T@name)
(declare-fun T.ReleaseForCcFlush__FAST_IO_DISPATCH () T@name)
(declare-fun T.Count__FAST_MUTEX () T@name)
(declare-fun T.Owner__FAST_MUTEX () T@name)
(declare-fun T.Contention__FAST_MUTEX () T@name)
(declare-fun T.Gate__FAST_MUTEX () T@name)
(declare-fun T.OldIrql__FAST_MUTEX () T@name)
(declare-fun T.CreationTime__FILE_BASIC_INFORMATION () T@name)
(declare-fun T.LastAccessTime__FILE_BASIC_INFORMATION () T@name)
(declare-fun T.LastWriteTime__FILE_BASIC_INFORMATION () T@name)
(declare-fun T.ChangeTime__FILE_BASIC_INFORMATION () T@name)
(declare-fun T.FileAttributes__FILE_BASIC_INFORMATION () T@name)
(declare-fun T.CreationTime__FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.LastAccessTime__FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.LastWriteTime__FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.ChangeTime__FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.AllocationSize__FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.EndOfFile__FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.FileAttributes__FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.Type__FILE_OBJECT () T@name)
(declare-fun T.Size__FILE_OBJECT () T@name)
(declare-fun T.DeviceObject__FILE_OBJECT () T@name)
(declare-fun T.Vpb__FILE_OBJECT () T@name)
(declare-fun T.FsContext__FILE_OBJECT () T@name)
(declare-fun T.FsContext2__FILE_OBJECT () T@name)
(declare-fun T.SectionObjectPointer__FILE_OBJECT () T@name)
(declare-fun T.PrivateCacheMap__FILE_OBJECT () T@name)
(declare-fun T.FinalStatus__FILE_OBJECT () T@name)
(declare-fun T.RelatedFileObject__FILE_OBJECT () T@name)
(declare-fun T.LockOperation__FILE_OBJECT () T@name)
(declare-fun T.DeletePending__FILE_OBJECT () T@name)
(declare-fun T.ReadAccess__FILE_OBJECT () T@name)
(declare-fun T.WriteAccess__FILE_OBJECT () T@name)
(declare-fun T.DeleteAccess__FILE_OBJECT () T@name)
(declare-fun T.SharedRead__FILE_OBJECT () T@name)
(declare-fun T.SharedWrite__FILE_OBJECT () T@name)
(declare-fun T.SharedDelete__FILE_OBJECT () T@name)
(declare-fun T.Flags__FILE_OBJECT () T@name)
(declare-fun T.FileName__FILE_OBJECT () T@name)
(declare-fun T.CurrentByteOffset__FILE_OBJECT () T@name)
(declare-fun T.Waiters__FILE_OBJECT () T@name)
(declare-fun T.Busy__FILE_OBJECT () T@name)
(declare-fun T.LastLock__FILE_OBJECT () T@name)
(declare-fun T.Lock__FILE_OBJECT () T@name)
(declare-fun T.Event__FILE_OBJECT () T@name)
(declare-fun T.CompletionContext__FILE_OBJECT () T@name)
(declare-fun T.IrpListLock__FILE_OBJECT () T@name)
(declare-fun T.IrpList__FILE_OBJECT () T@name)
(declare-fun T.FileObjectExtension__FILE_OBJECT () T@name)
(declare-fun T.AllocationSize__FILE_STANDARD_INFORMATION () T@name)
(declare-fun T.EndOfFile__FILE_STANDARD_INFORMATION () T@name)
(declare-fun T.NumberOfLinks__FILE_STANDARD_INFORMATION () T@name)
(declare-fun T.DeletePending__FILE_STANDARD_INFORMATION () T@name)
(declare-fun T.Directory__FILE_STANDARD_INFORMATION () T@name)
(declare-fun T.Debug__GLOBALS () T@name)
(declare-fun T.GrandMaster__GLOBALS () T@name)
(declare-fun T.AssocClassList__GLOBALS () T@name)
(declare-fun T.NumAssocClass__GLOBALS () T@name)
(declare-fun T.Opens__GLOBALS () T@name)
(declare-fun T.NumberLegacyPorts__GLOBALS () T@name)
(declare-fun T.Mutex__GLOBALS () T@name)
(declare-fun T.ConnectOneClassToOnePort__GLOBALS () T@name)
(declare-fun T.PortsServiced__GLOBALS () T@name)
(declare-fun T.InitExtension__GLOBALS () T@name)
(declare-fun T.RegistryPath__GLOBALS () T@name)
(declare-fun T.BaseClassName__GLOBALS () T@name)
(declare-fun T.BaseClassBuffer__GLOBALS () T@name)
(declare-fun T.LegacyDeviceList__GLOBALS () T@name)
(declare-fun T.Data1__GUID () T@name)
(declare-fun T.Data2__GUID () T@name)
(declare-fun T.Data3__GUID () T@name)
(declare-fun T.Data4__GUID () T@name)
(declare-fun T.PrivilegeCount__INITIAL_PRIVILEGE_SET () T@name)
(declare-fun T.Control__INITIAL_PRIVILEGE_SET () T@name)
(declare-fun T.Privilege__INITIAL_PRIVILEGE_SET () T@name)
(declare-fun T.Size__INTERFACE () T@name)
(declare-fun T.Version__INTERFACE () T@name)
(declare-fun T.Context__INTERFACE () T@name)
(declare-fun T.InterfaceReference__INTERFACE () T@name)
(declare-fun T.InterfaceDereference__INTERFACE () T@name)
(declare-fun T.Port__IO_COMPLETION_CONTEXT () T@name)
(declare-fun T.Key__IO_COMPLETION_CONTEXT () T@name)
(declare-fun T.Common__IO_REMOVE_LOCK () T@name)
(declare-fun T.Dbg__IO_REMOVE_LOCK () T@name)
(declare-fun T.Removed__IO_REMOVE_LOCK_COMMON_BLOCK () T@name)
(declare-fun T.Reserved__IO_REMOVE_LOCK_COMMON_BLOCK () T@name)
(declare-fun T.IoCount__IO_REMOVE_LOCK_COMMON_BLOCK () T@name)
(declare-fun T.RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK () T@name)
(declare-fun T.Signature__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.LockList__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.Spin__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.Reserved1__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.Reserved2__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.Blocks__IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T.Option__IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Type__IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.ShareDisposition__IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Spare1__IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Flags__IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Spare2__IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.u__IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.Version__IO_RESOURCE_LIST () T@name)
(declare-fun T.Revision__IO_RESOURCE_LIST () T@name)
(declare-fun T.Count__IO_RESOURCE_LIST () T@name)
(declare-fun T.Descriptors__IO_RESOURCE_LIST () T@name)
(declare-fun T.ListSize__IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.InterfaceType__IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.BusNumber__IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.SlotNumber__IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.Reserved__IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.AlternativeLists__IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.List__IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.SecurityQos__IO_SECURITY_CONTEXT () T@name)
(declare-fun T.AccessState__IO_SECURITY_CONTEXT () T@name)
(declare-fun T.DesiredAccess__IO_SECURITY_CONTEXT () T@name)
(declare-fun T.FullCreateOptions__IO_SECURITY_CONTEXT () T@name)
(declare-fun T.MajorFunction__IO_STACK_LOCATION () T@name)
(declare-fun T.MinorFunction__IO_STACK_LOCATION () T@name)
(declare-fun T.Flags__IO_STACK_LOCATION () T@name)
(declare-fun T.Control__IO_STACK_LOCATION () T@name)
(declare-fun T.Parameters__IO_STACK_LOCATION () T@name)
(declare-fun T.DeviceObject__IO_STACK_LOCATION () T@name)
(declare-fun T.FileObject__IO_STACK_LOCATION () T@name)
(declare-fun T.CompletionRoutine__IO_STACK_LOCATION () T@name)
(declare-fun T.Context__IO_STACK_LOCATION () T@name)
(declare-fun T.__unnamed_4_16aff58e__IO_STATUS_BLOCK () T@name)
(declare-fun T.Information__IO_STATUS_BLOCK () T@name)
(declare-fun T.Type__IRP () T@name)
(declare-fun T.Size__IRP () T@name)
(declare-fun T.MdlAddress__IRP () T@name)
(declare-fun T.Flags__IRP () T@name)
(declare-fun T.AssociatedIrp__IRP () T@name)
(declare-fun T.ThreadListEntry__IRP () T@name)
(declare-fun T.IoStatus__IRP () T@name)
(declare-fun T.RequestorMode__IRP () T@name)
(declare-fun T.PendingReturned__IRP () T@name)
(declare-fun T.StackCount__IRP () T@name)
(declare-fun T.CurrentLocation__IRP () T@name)
(declare-fun T.Cancel__IRP () T@name)
(declare-fun T.CancelIrql__IRP () T@name)
(declare-fun T.ApcEnvironment__IRP () T@name)
(declare-fun T.AllocationFlags__IRP () T@name)
(declare-fun T.UserIosb__IRP () T@name)
(declare-fun T.UserEvent__IRP () T@name)
(declare-fun T.Overlay__IRP () T@name)
(declare-fun T.CancelRoutine__IRP () T@name)
(declare-fun T.UserBuffer__IRP () T@name)
(declare-fun T.Tail__IRP () T@name)
(declare-fun T.Type__KAPC () T@name)
(declare-fun T.SpareByte0__KAPC () T@name)
(declare-fun T.Size__KAPC () T@name)
(declare-fun T.SpareByte1__KAPC () T@name)
(declare-fun T.SpareLong0__KAPC () T@name)
(declare-fun T.Thread__KAPC () T@name)
(declare-fun T.ApcListEntry__KAPC () T@name)
(declare-fun T.KernelRoutine__KAPC () T@name)
(declare-fun T.RundownRoutine__KAPC () T@name)
(declare-fun T.NormalRoutine__KAPC () T@name)
(declare-fun T.NormalContext__KAPC () T@name)
(declare-fun T.SystemArgument1__KAPC () T@name)
(declare-fun T.SystemArgument2__KAPC () T@name)
(declare-fun T.ApcStateIndex__KAPC () T@name)
(declare-fun T.ApcMode__KAPC () T@name)
(declare-fun T.Inserted__KAPC () T@name)
(declare-fun T.Type__KDEVICE_QUEUE () T@name)
(declare-fun T.Size__KDEVICE_QUEUE () T@name)
(declare-fun T.DeviceListHead__KDEVICE_QUEUE () T@name)
(declare-fun T.Lock__KDEVICE_QUEUE () T@name)
(declare-fun T.Busy__KDEVICE_QUEUE () T@name)
(declare-fun T.DeviceListEntry__KDEVICE_QUEUE_ENTRY () T@name)
(declare-fun T.SortKey__KDEVICE_QUEUE_ENTRY () T@name)
(declare-fun T.Inserted__KDEVICE_QUEUE_ENTRY () T@name)
(declare-fun T.Type__KDPC () T@name)
(declare-fun T.Importance__KDPC () T@name)
(declare-fun T.Number__KDPC () T@name)
(declare-fun T.DpcListEntry__KDPC () T@name)
(declare-fun T.DeferredRoutine__KDPC () T@name)
(declare-fun T.DeferredContext__KDPC () T@name)
(declare-fun T.SystemArgument1__KDPC () T@name)
(declare-fun T.SystemArgument2__KDPC () T@name)
(declare-fun T.DpcData__KDPC () T@name)
(declare-fun T.Header__KEVENT () T@name)
(declare-fun T.Header__KSEMAPHORE () T@name)
(declare-fun T.Limit__KSEMAPHORE () T@name)
(declare-fun T.__unnamed_8_8684a3e7__LARGE_INTEGER () T@name)
(declare-fun T.u__LARGE_INTEGER () T@name)
(declare-fun T.QuadPart__LARGE_INTEGER () T@name)
(declare-fun T.Flink__LIST_ENTRY () T@name)
(declare-fun T.Blink__LIST_ENTRY () T@name)
(declare-fun T.LowPart__LUID () T@name)
(declare-fun T.HighPart__LUID () T@name)
(declare-fun T.Luid__LUID_AND_ATTRIBUTES () T@name)
(declare-fun T.Attributes__LUID_AND_ATTRIBUTES () T@name)
(declare-fun T.Next__MDL () T@name)
(declare-fun T.Size__MDL () T@name)
(declare-fun T.MdlFlags__MDL () T@name)
(declare-fun T.Process__MDL () T@name)
(declare-fun T.MappedSystemVa__MDL () T@name)
(declare-fun T.StartVa__MDL () T@name)
(declare-fun T.ByteCount__MDL () T@name)
(declare-fun T.ByteOffset__MDL () T@name)
(declare-fun T.MouseIdentifier__MOUSE_ATTRIBUTES () T@name)
(declare-fun T.NumberOfButtons__MOUSE_ATTRIBUTES () T@name)
(declare-fun T.SampleRate__MOUSE_ATTRIBUTES () T@name)
(declare-fun T.InputDataQueueLength__MOUSE_ATTRIBUTES () T@name)
(declare-fun T.UnitId__MOUSE_INPUT_DATA () T@name)
(declare-fun T.Flags__MOUSE_INPUT_DATA () T@name)
(declare-fun T.__unnamed_4_9c11ed91__MOUSE_INPUT_DATA () T@name)
(declare-fun T.RawButtons__MOUSE_INPUT_DATA () T@name)
(declare-fun T.LastX__MOUSE_INPUT_DATA () T@name)
(declare-fun T.LastY__MOUSE_INPUT_DATA () T@name)
(declare-fun T.ExtraInformation__MOUSE_INPUT_DATA () T@name)
(declare-fun T.OwnerThread__OWNER_ENTRY () T@name)
(declare-fun T.__unnamed_4_c1e23b02__OWNER_ENTRY () T@name)
(declare-fun T.File__PORT () T@name)
(declare-fun T.Port__PORT () T@name)
(declare-fun T.Enabled__PORT () T@name)
(declare-fun T.Reserved__PORT () T@name)
(declare-fun T.Free__PORT () T@name)
(declare-fun T.SequenceD1__POWER_SEQUENCE () T@name)
(declare-fun T.SequenceD2__POWER_SEQUENCE () T@name)
(declare-fun T.SequenceD3__POWER_SEQUENCE () T@name)
(declare-fun T.SystemState__POWER_STATE () T@name)
(declare-fun T.DeviceState__POWER_STATE () T@name)
(declare-fun T.PrivilegeCount__PRIVILEGE_SET () T@name)
(declare-fun T.Control__PRIVILEGE_SET () T@name)
(declare-fun T.Privilege__PRIVILEGE_SET () T@name)
(declare-fun T.DataSectionObject__SECTION_OBJECT_POINTERS () T@name)
(declare-fun T.SharedCacheMap__SECTION_OBJECT_POINTERS () T@name)
(declare-fun T.ImageSectionObject__SECTION_OBJECT_POINTERS () T@name)
(declare-fun T.Length__SECURITY_QUALITY_OF_SERVICE () T@name)
(declare-fun T.ImpersonationLevel__SECURITY_QUALITY_OF_SERVICE () T@name)
(declare-fun T.ContextTrackingMode__SECURITY_QUALITY_OF_SERVICE () T@name)
(declare-fun T.EffectiveOnly__SECURITY_QUALITY_OF_SERVICE () T@name)
(declare-fun T.ClientToken__SECURITY_SUBJECT_CONTEXT () T@name)
(declare-fun T.ImpersonationLevel__SECURITY_SUBJECT_CONTEXT () T@name)
(declare-fun T.PrimaryToken__SECURITY_SUBJECT_CONTEXT () T@name)
(declare-fun T.ProcessAuditId__SECURITY_SUBJECT_CONTEXT () T@name)
(declare-fun T.__unnamed_4_b4f5a780__SYSTEM_POWER_STATE_CONTEXT () T@name)
(declare-fun T.Length__UNICODE_STRING () T@name)
(declare-fun T.MaximumLength__UNICODE_STRING () T@name)
(declare-fun T.Buffer__UNICODE_STRING () T@name)
(declare-fun T.Type__VPB () T@name)
(declare-fun T.Size__VPB () T@name)
(declare-fun T.Flags__VPB () T@name)
(declare-fun T.VolumeLabelLength__VPB () T@name)
(declare-fun T.DeviceObject__VPB () T@name)
(declare-fun T.RealDevice__VPB () T@name)
(declare-fun T.SerialNumber__VPB () T@name)
(declare-fun T.ReferenceCount__VPB () T@name)
(declare-fun T.VolumeLabel__VPB () T@name)
(declare-fun T.WaitQueueEntry__WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T.DeviceRoutine__WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T.DeviceContext__WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T.NumberOfMapRegisters__WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T.DeviceObject__WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T.CurrentIrp__WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T.BufferChainingDpc__WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T.GuidCount__WMILIB_CONTEXT () T@name)
(declare-fun T.GuidList__WMILIB_CONTEXT () T@name)
(declare-fun T.QueryWmiRegInfo__WMILIB_CONTEXT () T@name)
(declare-fun T.QueryWmiDataBlock__WMILIB_CONTEXT () T@name)
(declare-fun T.SetWmiDataBlock__WMILIB_CONTEXT () T@name)
(declare-fun T.SetWmiDataItem__WMILIB_CONTEXT () T@name)
(declare-fun T.ExecuteWmiMethod__WMILIB_CONTEXT () T@name)
(declare-fun T.WmiFunctionControl__WMILIB_CONTEXT () T@name)
(declare-fun T.Start___unnamed_12_06b9ee6e () T@name)
(declare-fun T.Length48___unnamed_12_06b9ee6e () T@name)
(declare-fun T.Start___unnamed_12_0882bd02 () T@name)
(declare-fun T.Length64___unnamed_12_0882bd02 () T@name)
(declare-fun T.__unnamed_12_2e80217b___unnamed_12_264d0dab () T@name)
(declare-fun T.Raw___unnamed_12_2e80217b () T@name)
(declare-fun T.Translated___unnamed_12_2e80217b () T@name)
(declare-fun T.Data___unnamed_12_5cc7ace2 () T@name)
(declare-fun T.Channel___unnamed_12_6374506e () T@name)
(declare-fun T.Port___unnamed_12_6374506e () T@name)
(declare-fun T.Reserved1___unnamed_12_6374506e () T@name)
(declare-fun T.Priority___unnamed_12_68a4278e () T@name)
(declare-fun T.Reserved1___unnamed_12_68a4278e () T@name)
(declare-fun T.Reserved2___unnamed_12_68a4278e () T@name)
(declare-fun T.Generic___unnamed_12_79ed2653 () T@name)
(declare-fun T.Port___unnamed_12_79ed2653 () T@name)
(declare-fun T.Interrupt___unnamed_12_79ed2653 () T@name)
(declare-fun T.MessageInterrupt___unnamed_12_79ed2653 () T@name)
(declare-fun T.Memory___unnamed_12_79ed2653 () T@name)
(declare-fun T.Dma___unnamed_12_79ed2653 () T@name)
(declare-fun T.DevicePrivate___unnamed_12_79ed2653 () T@name)
(declare-fun T.BusNumber___unnamed_12_79ed2653 () T@name)
(declare-fun T.DeviceSpecificData___unnamed_12_79ed2653 () T@name)
(declare-fun T.Memory40___unnamed_12_79ed2653 () T@name)
(declare-fun T.Memory48___unnamed_12_79ed2653 () T@name)
(declare-fun T.Memory64___unnamed_12_79ed2653 () T@name)
(declare-fun T.Start___unnamed_12_7da594c0 () T@name)
(declare-fun T.Length40___unnamed_12_7da594c0 () T@name)
(declare-fun T.Start___unnamed_12_9873e05d () T@name)
(declare-fun T.Length___unnamed_12_9873e05d () T@name)
(declare-fun T.DataSize___unnamed_12_9cc8cebc () T@name)
(declare-fun T.Reserved1___unnamed_12_9cc8cebc () T@name)
(declare-fun T.Reserved2___unnamed_12_9cc8cebc () T@name)
(declare-fun T.Start___unnamed_12_b98da82e () T@name)
(declare-fun T.Length___unnamed_12_b98da82e () T@name)
(declare-fun T.Level___unnamed_12_c2880e88 () T@name)
(declare-fun T.Vector___unnamed_12_c2880e88 () T@name)
(declare-fun T.Affinity___unnamed_12_c2880e88 () T@name)
(declare-fun T.Start___unnamed_12_c49ab31a () T@name)
(declare-fun T.Length___unnamed_12_c49ab31a () T@name)
(declare-fun T.ListEntry___unnamed_12_c6ed93f3 () T@name)
(declare-fun T.__unnamed_4_a7aa989c___unnamed_12_c6ed93f3 () T@name)
(declare-fun T.Data___unnamed_12_ced61554 () T@name)
(declare-fun T.Reserved___unnamed_12_d9c44df5 () T@name)
(declare-fun T.MessageCount___unnamed_12_d9c44df5 () T@name)
(declare-fun T.Vector___unnamed_12_d9c44df5 () T@name)
(declare-fun T.Affinity___unnamed_12_d9c44df5 () T@name)
(declare-fun T.Start___unnamed_12_db3dcbfc () T@name)
(declare-fun T.Length___unnamed_12_db3dcbfc () T@name)
(declare-fun T.Reserved___unnamed_12_db3dcbfc () T@name)
(declare-fun T.Level___unnamed_12_fb26b3fc () T@name)
(declare-fun T.Vector___unnamed_12_fb26b3fc () T@name)
(declare-fun T.Affinity___unnamed_12_fb26b3fc () T@name)
(declare-fun T.OutputBufferLength___unnamed_16_22e4d054 () T@name)
(declare-fun T.InputBufferLength___unnamed_16_22e4d054 () T@name)
(declare-fun T.IoControlCode___unnamed_16_22e4d054 () T@name)
(declare-fun T.Type3InputBuffer___unnamed_16_22e4d054 () T@name)
(declare-fun T.Create___unnamed_16_39b626ad () T@name)
(declare-fun T.Read___unnamed_16_39b626ad () T@name)
(declare-fun T.Write___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryDirectory___unnamed_16_39b626ad () T@name)
(declare-fun T.NotifyDirectory___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryFile___unnamed_16_39b626ad () T@name)
(declare-fun T.SetFile___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryEa___unnamed_16_39b626ad () T@name)
(declare-fun T.SetEa___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryVolume___unnamed_16_39b626ad () T@name)
(declare-fun T.SetVolume___unnamed_16_39b626ad () T@name)
(declare-fun T.FileSystemControl___unnamed_16_39b626ad () T@name)
(declare-fun T.LockControl___unnamed_16_39b626ad () T@name)
(declare-fun T.DeviceIoControl___unnamed_16_39b626ad () T@name)
(declare-fun T.QuerySecurity___unnamed_16_39b626ad () T@name)
(declare-fun T.SetSecurity___unnamed_16_39b626ad () T@name)
(declare-fun T.MountVolume___unnamed_16_39b626ad () T@name)
(declare-fun T.VerifyVolume___unnamed_16_39b626ad () T@name)
(declare-fun T.Scsi___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryQuota___unnamed_16_39b626ad () T@name)
(declare-fun T.SetQuota___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryDeviceRelations___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryInterface___unnamed_16_39b626ad () T@name)
(declare-fun T.DeviceCapabilities___unnamed_16_39b626ad () T@name)
(declare-fun T.FilterResourceRequirements___unnamed_16_39b626ad () T@name)
(declare-fun T.ReadWriteConfig___unnamed_16_39b626ad () T@name)
(declare-fun T.SetLock___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryId___unnamed_16_39b626ad () T@name)
(declare-fun T.QueryDeviceText___unnamed_16_39b626ad () T@name)
(declare-fun T.UsageNotification___unnamed_16_39b626ad () T@name)
(declare-fun T.WaitWake___unnamed_16_39b626ad () T@name)
(declare-fun T.PowerSequence___unnamed_16_39b626ad () T@name)
(declare-fun T.Power___unnamed_16_39b626ad () T@name)
(declare-fun T.StartDevice___unnamed_16_39b626ad () T@name)
(declare-fun T.WMI___unnamed_16_39b626ad () T@name)
(declare-fun T.Others___unnamed_16_39b626ad () T@name)
(declare-fun T.WhichSpace___unnamed_16_56c011d7 () T@name)
(declare-fun T.Buffer___unnamed_16_56c011d7 () T@name)
(declare-fun T.Offset___unnamed_16_56c011d7 () T@name)
(declare-fun T.Length___unnamed_16_56c011d7 () T@name)
(declare-fun T.DeviceQueueEntry___unnamed_16_5fed8f23 () T@name)
(declare-fun T.__unnamed_16_ae643f17___unnamed_16_5fed8f23 () T@name)
(declare-fun T.Length___unnamed_16_6be9abe0 () T@name)
(declare-fun T.FileName___unnamed_16_6be9abe0 () T@name)
(declare-fun T.FileInformationClass___unnamed_16_6be9abe0 () T@name)
(declare-fun T.FileIndex___unnamed_16_6be9abe0 () T@name)
(declare-fun T.InterfaceType___unnamed_16_78879a38 () T@name)
(declare-fun T.Size___unnamed_16_78879a38 () T@name)
(declare-fun T.Version___unnamed_16_78879a38 () T@name)
(declare-fun T.Interface___unnamed_16_78879a38 () T@name)
(declare-fun T.InterfaceSpecificData___unnamed_16_78879a38 () T@name)
(declare-fun T.Length___unnamed_16_804a2f24 () T@name)
(declare-fun T.StartSid___unnamed_16_804a2f24 () T@name)
(declare-fun T.SidList___unnamed_16_804a2f24 () T@name)
(declare-fun T.SidListLength___unnamed_16_804a2f24 () T@name)
(declare-fun T.Argument1___unnamed_16_8586693f () T@name)
(declare-fun T.Argument2___unnamed_16_8586693f () T@name)
(declare-fun T.Argument3___unnamed_16_8586693f () T@name)
(declare-fun T.Argument4___unnamed_16_8586693f () T@name)
(declare-fun T.Length___unnamed_16_8831e65f () T@name)
(declare-fun T.Key___unnamed_16_8831e65f () T@name)
(declare-fun T.ByteOffset___unnamed_16_8831e65f () T@name)
(declare-fun T.SecurityContext___unnamed_16_8c2d663a () T@name)
(declare-fun T.Options___unnamed_16_8c2d663a () T@name)
(declare-fun T.FileAttributes___unnamed_16_8c2d663a () T@name)
(declare-fun T.ShareAccess___unnamed_16_8c2d663a () T@name)
(declare-fun T.EaLength___unnamed_16_8c2d663a () T@name)
(declare-fun T.Length___unnamed_16_913b9a7a () T@name)
(declare-fun T.Key___unnamed_16_913b9a7a () T@name)
(declare-fun T.ByteOffset___unnamed_16_913b9a7a () T@name)
(declare-fun T.OutputBufferLength___unnamed_16_94d1d1c7 () T@name)
(declare-fun T.InputBufferLength___unnamed_16_94d1d1c7 () T@name)
(declare-fun T.FsControlCode___unnamed_16_94d1d1c7 () T@name)
(declare-fun T.Type3InputBuffer___unnamed_16_94d1d1c7 () T@name)
(declare-fun T.Length___unnamed_16_a2fab4da () T@name)
(declare-fun T.FileInformationClass___unnamed_16_a2fab4da () T@name)
(declare-fun T.FileObject___unnamed_16_a2fab4da () T@name)
(declare-fun T.__unnamed_4_a7d0864c___unnamed_16_a2fab4da () T@name)
(declare-fun T.DriverContext___unnamed_16_ae643f17 () T@name)
(declare-fun T.Length___unnamed_16_c1b29316 () T@name)
(declare-fun T.Key___unnamed_16_c1b29316 () T@name)
(declare-fun T.ByteOffset___unnamed_16_c1b29316 () T@name)
(declare-fun T.ProviderId___unnamed_16_cbd53ed4 () T@name)
(declare-fun T.DataPath___unnamed_16_cbd53ed4 () T@name)
(declare-fun T.BufferSize___unnamed_16_cbd53ed4 () T@name)
(declare-fun T.Buffer___unnamed_16_cbd53ed4 () T@name)
(declare-fun T.Length___unnamed_16_db70db6e () T@name)
(declare-fun T.MinBusNumber___unnamed_16_db70db6e () T@name)
(declare-fun T.MaxBusNumber___unnamed_16_db70db6e () T@name)
(declare-fun T.Reserved___unnamed_16_db70db6e () T@name)
(declare-fun T.Length___unnamed_16_ef4b6307 () T@name)
(declare-fun T.EaList___unnamed_16_ef4b6307 () T@name)
(declare-fun T.EaListLength___unnamed_16_ef4b6307 () T@name)
(declare-fun T.EaIndex___unnamed_16_ef4b6307 () T@name)
(declare-fun T.__unnamed_4_b060dea6___unnamed_16_fdda1f62 () T@name)
(declare-fun T.Type___unnamed_16_fdda1f62 () T@name)
(declare-fun T.State___unnamed_16_fdda1f62 () T@name)
(declare-fun T.ShutdownType___unnamed_16_fdda1f62 () T@name)
(declare-fun T.Lock___unnamed_1_1394de4b () T@name)
(declare-fun T.Abandoned___unnamed_1_2bb39c56 () T@name)
(declare-fun T.Absolute___unnamed_1_2bb39c56 () T@name)
(declare-fun T.NpxIrql___unnamed_1_2bb39c56 () T@name)
(declare-fun T.Signalling___unnamed_1_2bb39c56 () T@name)
(declare-fun T.Inserted___unnamed_1_9fa0583a () T@name)
(declare-fun T.DebugActive___unnamed_1_9fa0583a () T@name)
(declare-fun T.DpcActive___unnamed_1_9fa0583a () T@name)
(declare-fun T.Size___unnamed_1_e30779f5 () T@name)
(declare-fun T.Hand___unnamed_1_e30779f5 () T@name)
(declare-fun T.MinimumVector___unnamed_20_83d468e4 () T@name)
(declare-fun T.MaximumVector___unnamed_20_83d468e4 () T@name)
(declare-fun T.AffinityPolicy___unnamed_20_83d468e4 () T@name)
(declare-fun T.PriorityPolicy___unnamed_20_83d468e4 () T@name)
(declare-fun T.TargetedProcessors___unnamed_20_83d468e4 () T@name)
(declare-fun T.Length40___unnamed_24_035931da () T@name)
(declare-fun T.Alignment40___unnamed_24_035931da () T@name)
(declare-fun T.MinimumAddress___unnamed_24_035931da () T@name)
(declare-fun T.MaximumAddress___unnamed_24_035931da () T@name)
(declare-fun T.Length___unnamed_24_38e128db () T@name)
(declare-fun T.Alignment___unnamed_24_38e128db () T@name)
(declare-fun T.MinimumAddress___unnamed_24_38e128db () T@name)
(declare-fun T.MaximumAddress___unnamed_24_38e128db () T@name)
(declare-fun T.Length___unnamed_24_9500ea34 () T@name)
(declare-fun T.Alignment___unnamed_24_9500ea34 () T@name)
(declare-fun T.MinimumAddress___unnamed_24_9500ea34 () T@name)
(declare-fun T.MaximumAddress___unnamed_24_9500ea34 () T@name)
(declare-fun T.Length___unnamed_24_9734802c () T@name)
(declare-fun T.Alignment___unnamed_24_9734802c () T@name)
(declare-fun T.MinimumAddress___unnamed_24_9734802c () T@name)
(declare-fun T.MaximumAddress___unnamed_24_9734802c () T@name)
(declare-fun T.Length64___unnamed_24_af62813f () T@name)
(declare-fun T.Alignment64___unnamed_24_af62813f () T@name)
(declare-fun T.MinimumAddress___unnamed_24_af62813f () T@name)
(declare-fun T.MaximumAddress___unnamed_24_af62813f () T@name)
(declare-fun T.Length48___unnamed_24_c0555099 () T@name)
(declare-fun T.Alignment48___unnamed_24_c0555099 () T@name)
(declare-fun T.MinimumAddress___unnamed_24_c0555099 () T@name)
(declare-fun T.MaximumAddress___unnamed_24_c0555099 () T@name)
(declare-fun T.Port___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.Memory___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.Interrupt___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.Dma___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.Generic___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.DevicePrivate___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.BusNumber___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.ConfigData___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.Memory40___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.Memory48___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.Memory64___unnamed_24_d7c4ec3a () T@name)
(declare-fun T.ReplaceIfExists___unnamed_2_196a7f56 () T@name)
(declare-fun T.AdvanceOnly___unnamed_2_196a7f56 () T@name)
(declare-fun T.__unnamed_16_5fed8f23___unnamed_40_a0414182 () T@name)
(declare-fun T.Thread___unnamed_40_a0414182 () T@name)
(declare-fun T.AuxiliaryBuffer___unnamed_40_a0414182 () T@name)
(declare-fun T.__unnamed_12_c6ed93f3___unnamed_40_a0414182 () T@name)
(declare-fun T.OriginalFileObject___unnamed_40_a0414182 () T@name)
(declare-fun T.ListEntry___unnamed_40_d90496f4 () T@name)
(declare-fun T.Wcb___unnamed_40_d90496f4 () T@name)
(declare-fun T.InitialPrivilegeSet___unnamed_44_a7026dca () T@name)
(declare-fun T.PrivilegeSet___unnamed_44_a7026dca () T@name)
(declare-fun T.Overlay___unnamed_48_c1da9fa5 () T@name)
(declare-fun T.Apc___unnamed_48_c1da9fa5 () T@name)
(declare-fun T.CompletionKey___unnamed_48_c1da9fa5 () T@name)
(declare-fun T.PowerSequence___unnamed_4_0510b147 () T@name)
(declare-fun T.Length___unnamed_4_0a569078 () T@name)
(declare-fun T.Status___unnamed_4_16aff58e () T@name)
(declare-fun T.Pointer___unnamed_4_16aff58e () T@name)
(declare-fun T.IdType___unnamed_4_40bf8e34 () T@name)
(declare-fun T.Address___unnamed_4_46b62f69 () T@name)
(declare-fun T.CreatorBackTraceIndex___unnamed_4_46b62f69 () T@name)
(declare-fun T.Capabilities___unnamed_4_73d46255 () T@name)
(declare-fun T.Srb___unnamed_4_765e3037 () T@name)
(declare-fun T.Type___unnamed_4_846adf3f () T@name)
(declare-fun T.__unnamed_1_2bb39c56___unnamed_4_846adf3f () T@name)
(declare-fun T.__unnamed_1_e30779f5___unnamed_4_846adf3f () T@name)
(declare-fun T.__unnamed_1_9fa0583a___unnamed_4_846adf3f () T@name)
(declare-fun T.PowerState___unnamed_4_8dd73d30 () T@name)
(declare-fun T.Type___unnamed_4_957e0d74 () T@name)
(declare-fun T.Buttons___unnamed_4_9c11ed91 () T@name)
(declare-fun T.__unnamed_4_b5247f10___unnamed_4_9c11ed91 () T@name)
(declare-fun T.IoResourceRequirementList___unnamed_4_a58d40c8 () T@name)
(declare-fun T.CurrentStackLocation___unnamed_4_a7aa989c () T@name)
(declare-fun T.PacketType___unnamed_4_a7aa989c () T@name)
(declare-fun T.__unnamed_2_196a7f56___unnamed_4_a7d0864c () T@name)
(declare-fun T.ClusterCount___unnamed_4_a7d0864c () T@name)
(declare-fun T.DeleteHandle___unnamed_4_a7d0864c () T@name)
(declare-fun T.Length___unnamed_4_aa20b426 () T@name)
(declare-fun T.UserApcRoutine___unnamed_4_ab87ddfd () T@name)
(declare-fun T.IssuingProcess___unnamed_4_ab87ddfd () T@name)
(declare-fun T.Reserved1___unnamed_4_b016b1e1 () T@name)
(declare-fun T.TargetSystemState___unnamed_4_b016b1e1 () T@name)
(declare-fun T.EffectiveSystemState___unnamed_4_b016b1e1 () T@name)
(declare-fun T.CurrentSystemState___unnamed_4_b016b1e1 () T@name)
(declare-fun T.IgnoreHibernationPath___unnamed_4_b016b1e1 () T@name)
(declare-fun T.PseudoTransition___unnamed_4_b016b1e1 () T@name)
(declare-fun T.Reserved2___unnamed_4_b016b1e1 () T@name)
(declare-fun T.SystemContext___unnamed_4_b060dea6 () T@name)
(declare-fun T.SystemPowerStateContext___unnamed_4_b060dea6 () T@name)
(declare-fun T.__unnamed_4_b016b1e1___unnamed_4_b4f5a780 () T@name)
(declare-fun T.ContextAsUlong___unnamed_4_b4f5a780 () T@name)
(declare-fun T.ButtonFlags___unnamed_4_b5247f10 () T@name)
(declare-fun T.ButtonData___unnamed_4_b5247f10 () T@name)
(declare-fun T.OwnerCount___unnamed_4_c1e23b02 () T@name)
(declare-fun T.TableSize___unnamed_4_c1e23b02 () T@name)
(declare-fun T.__unnamed_4_846adf3f___unnamed_4_c9b2e921 () T@name)
(declare-fun T.Lock___unnamed_4_c9b2e921 () T@name)
(declare-fun T.MasterIrp___unnamed_4_fa7b96a7 () T@name)
(declare-fun T.IrpCount___unnamed_4_fa7b96a7 () T@name)
(declare-fun T.SystemBuffer___unnamed_4_fa7b96a7 () T@name)
(declare-fun T.Vpb___unnamed_8_09ad2712 () T@name)
(declare-fun T.DeviceObject___unnamed_8_09ad2712 () T@name)
(declare-fun T.Length___unnamed_8_21ac1dba () T@name)
(declare-fun T.CompletionFilter___unnamed_8_21ac1dba () T@name)
(declare-fun T.Length___unnamed_8_27d3ab76 () T@name)
(declare-fun T.FsInformationClass___unnamed_8_27d3ab76 () T@name)
(declare-fun T.Vpb___unnamed_8_4289df81 () T@name)
(declare-fun T.DeviceObject___unnamed_8_4289df81 () T@name)
(declare-fun T.Length___unnamed_8_47b72724 () T@name)
(declare-fun T.FileInformationClass___unnamed_8_47b72724 () T@name)
(declare-fun T.DeviceTextType___unnamed_8_4b3e3ba3 () T@name)
(declare-fun T.LocaleId___unnamed_8_4b3e3ba3 () T@name)
(declare-fun T.__unnamed_4_ab87ddfd___unnamed_8_4f695993 () T@name)
(declare-fun T.UserApcContext___unnamed_8_4f695993 () T@name)
(declare-fun T.AllocatedResources___unnamed_8_5cfb6ca4 () T@name)
(declare-fun T.AllocatedResourcesTranslated___unnamed_8_5cfb6ca4 () T@name)
(declare-fun T.SecurityInformation___unnamed_8_606438c5 () T@name)
(declare-fun T.Length___unnamed_8_606438c5 () T@name)
(declare-fun T.MinimumChannel___unnamed_8_6ad774c0 () T@name)
(declare-fun T.MaximumChannel___unnamed_8_6ad774c0 () T@name)
(declare-fun T.Length___unnamed_8_805045cb () T@name)
(declare-fun T.FsInformationClass___unnamed_8_805045cb () T@name)
(declare-fun T.LowPart___unnamed_8_8684a3e7 () T@name)
(declare-fun T.HighPart___unnamed_8_8684a3e7 () T@name)
(declare-fun T.SecurityInformation___unnamed_8_8cc410da () T@name)
(declare-fun T.SecurityDescriptor___unnamed_8_8cc410da () T@name)
(declare-fun T.InPath___unnamed_8_a47253e0 () T@name)
(declare-fun T.Reserved___unnamed_8_a47253e0 () T@name)
(declare-fun T.Type___unnamed_8_a47253e0 () T@name)
(declare-fun T.AsynchronousParameters___unnamed_8_bbd07f6c () T@name)
(declare-fun T.AllocationSize___unnamed_8_bbd07f6c () T@name)
(declare-fun T.LowPart___unnamed_8_c9ca8234 () T@name)
(declare-fun T.HighPart___unnamed_8_c9ca8234 () T@name)
(declare-fun T.A1_CM_FULL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.A1_CM_PARTIAL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.A1_IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T.A1_IO_RESOURCE_LIST () T@name)
(declare-fun T.A1_LUID_AND_ATTRIBUTES () T@name)
(declare-fun T.A256UINT2 () T@name)
(declare-fun T.A28PFDRIVER_DISPATCH () T@name)
(declare-fun T.A2UCHAR () T@name)
(declare-fun T.A2UINT2 () T@name)
(declare-fun T.A32UINT2 () T@name)
(declare-fun T.A3UCHAR () T@name)
(declare-fun T.A3UINT4 () T@name)
(declare-fun T.A3_LUID_AND_ATTRIBUTES () T@name)
(declare-fun T.A4PVOID () T@name)
(declare-fun T.A4UINT4 () T@name)
(declare-fun T.A5UINT2 () T@name)
(declare-fun T.A5_DEVICE_POWER_STATE () T@name)
(declare-fun T.A7_DEVICE_POWER_STATE () T@name)
(declare-fun T.A85CHAR () T@name)
(declare-fun T.A8UCHAR () T@name)
(declare-fun T.A9UINT2 () T@name)
(declare-fun T.BUS_QUERY_ID_TYPE () T@name)
(declare-fun T.CHAR () T@name)
(declare-fun T.DEVICE_TEXT_TYPE () T@name)
(declare-fun T.F0 () T@name)
(declare-fun T.F1 () T@name)
(declare-fun T.F10 () T@name)
(declare-fun T.F11 () T@name)
(declare-fun T.F12 () T@name)
(declare-fun T.F13 () T@name)
(declare-fun T.F14 () T@name)
(declare-fun T.F15 () T@name)
(declare-fun T.F16 () T@name)
(declare-fun T.F17 () T@name)
(declare-fun T.F18 () T@name)
(declare-fun T.F19 () T@name)
(declare-fun T.F2 () T@name)
(declare-fun T.F20 () T@name)
(declare-fun T.F21 () T@name)
(declare-fun T.F22 () T@name)
(declare-fun T.F23 () T@name)
(declare-fun T.F24 () T@name)
(declare-fun T.F25 () T@name)
(declare-fun T.F26 () T@name)
(declare-fun T.F27 () T@name)
(declare-fun T.F28 () T@name)
(declare-fun T.F29 () T@name)
(declare-fun T.F3 () T@name)
(declare-fun T.F30 () T@name)
(declare-fun T.F31 () T@name)
(declare-fun T.F32 () T@name)
(declare-fun T.F33 () T@name)
(declare-fun T.F34 () T@name)
(declare-fun T.F35 () T@name)
(declare-fun T.F36 () T@name)
(declare-fun T.F37 () T@name)
(declare-fun T.F38 () T@name)
(declare-fun T.F4 () T@name)
(declare-fun T.F5 () T@name)
(declare-fun T.F6 () T@name)
(declare-fun T.F7 () T@name)
(declare-fun T.F8 () T@name)
(declare-fun T.F9 () T@name)
(declare-fun T.FDRIVER_ADD_DEVICE () T@name)
(declare-fun T.FDRIVER_CANCEL () T@name)
(declare-fun T.FDRIVER_CONTROL () T@name)
(declare-fun T.FDRIVER_DISPATCH () T@name)
(declare-fun T.FDRIVER_INITIALIZE () T@name)
(declare-fun T.FDRIVER_STARTIO () T@name)
(declare-fun T.FDRIVER_UNLOAD () T@name)
(declare-fun T.FFAST_IO_ACQUIRE_FILE () T@name)
(declare-fun T.FFAST_IO_ACQUIRE_FOR_CCFLUSH () T@name)
(declare-fun T.FFAST_IO_ACQUIRE_FOR_MOD_WRITE () T@name)
(declare-fun T.FFAST_IO_CHECK_IF_POSSIBLE () T@name)
(declare-fun T.FFAST_IO_DETACH_DEVICE () T@name)
(declare-fun T.FFAST_IO_DEVICE_CONTROL () T@name)
(declare-fun T.FFAST_IO_LOCK () T@name)
(declare-fun T.FFAST_IO_MDL_READ () T@name)
(declare-fun T.FFAST_IO_MDL_READ_COMPLETE () T@name)
(declare-fun T.FFAST_IO_MDL_READ_COMPLETE_COMPRESSED () T@name)
(declare-fun T.FFAST_IO_MDL_WRITE_COMPLETE () T@name)
(declare-fun T.FFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED () T@name)
(declare-fun T.FFAST_IO_PREPARE_MDL_WRITE () T@name)
(declare-fun T.FFAST_IO_QUERY_BASIC_INFO () T@name)
(declare-fun T.FFAST_IO_QUERY_NETWORK_OPEN_INFO () T@name)
(declare-fun T.FFAST_IO_QUERY_OPEN () T@name)
(declare-fun T.FFAST_IO_QUERY_STANDARD_INFO () T@name)
(declare-fun T.FFAST_IO_READ () T@name)
(declare-fun T.FFAST_IO_READ_COMPRESSED () T@name)
(declare-fun T.FFAST_IO_RELEASE_FILE () T@name)
(declare-fun T.FFAST_IO_RELEASE_FOR_CCFLUSH () T@name)
(declare-fun T.FFAST_IO_RELEASE_FOR_MOD_WRITE () T@name)
(declare-fun T.FFAST_IO_UNLOCK_ALL () T@name)
(declare-fun T.FFAST_IO_UNLOCK_ALL_BY_KEY () T@name)
(declare-fun T.FFAST_IO_UNLOCK_SINGLE () T@name)
(declare-fun T.FFAST_IO_WRITE () T@name)
(declare-fun T.FFAST_IO_WRITE_COMPRESSED () T@name)
(declare-fun T.FIO_COMPLETION_ROUTINE () T@name)
(declare-fun T.FKDEFERRED_ROUTINE () T@name)
(declare-fun T.INT2 () T@name)
(declare-fun T.INT4 () T@name)
(declare-fun T.INT8 () T@name)
(declare-fun T.PA256UINT2 () T@name)
(declare-fun T.PA2UINT2 () T@name)
(declare-fun T.PA4UINT4 () T@name)
(declare-fun T.PA5UINT2 () T@name)
(declare-fun T.PA85CHAR () T@name)
(declare-fun T.PA9UINT2 () T@name)
(declare-fun T.PCHAR () T@name)
(declare-fun T.PF19 () T@name)
(declare-fun T.PF21 () T@name)
(declare-fun T.PF23 () T@name)
(declare-fun T.PF24 () T@name)
(declare-fun T.PF25 () T@name)
(declare-fun T.PF33 () T@name)
(declare-fun T.PF34 () T@name)
(declare-fun T.PF35 () T@name)
(declare-fun T.PF36 () T@name)
(declare-fun T.PF37 () T@name)
(declare-fun T.PF38 () T@name)
(declare-fun T.PFDRIVER_ADD_DEVICE () T@name)
(declare-fun T.PFDRIVER_CANCEL () T@name)
(declare-fun T.PFDRIVER_CONTROL () T@name)
(declare-fun T.PFDRIVER_DISPATCH () T@name)
(declare-fun T.PFDRIVER_INITIALIZE () T@name)
(declare-fun T.PFDRIVER_STARTIO () T@name)
(declare-fun T.PFDRIVER_UNLOAD () T@name)
(declare-fun T.PFFAST_IO_ACQUIRE_FILE () T@name)
(declare-fun T.PFFAST_IO_ACQUIRE_FOR_CCFLUSH () T@name)
(declare-fun T.PFFAST_IO_ACQUIRE_FOR_MOD_WRITE () T@name)
(declare-fun T.PFFAST_IO_CHECK_IF_POSSIBLE () T@name)
(declare-fun T.PFFAST_IO_DETACH_DEVICE () T@name)
(declare-fun T.PFFAST_IO_DEVICE_CONTROL () T@name)
(declare-fun T.PFFAST_IO_LOCK () T@name)
(declare-fun T.PFFAST_IO_MDL_READ () T@name)
(declare-fun T.PFFAST_IO_MDL_READ_COMPLETE () T@name)
(declare-fun T.PFFAST_IO_MDL_READ_COMPLETE_COMPRESSED () T@name)
(declare-fun T.PFFAST_IO_MDL_WRITE_COMPLETE () T@name)
(declare-fun T.PFFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED () T@name)
(declare-fun T.PFFAST_IO_PREPARE_MDL_WRITE () T@name)
(declare-fun T.PFFAST_IO_QUERY_BASIC_INFO () T@name)
(declare-fun T.PFFAST_IO_QUERY_NETWORK_OPEN_INFO () T@name)
(declare-fun T.PFFAST_IO_QUERY_OPEN () T@name)
(declare-fun T.PFFAST_IO_QUERY_STANDARD_INFO () T@name)
(declare-fun T.PFFAST_IO_READ () T@name)
(declare-fun T.PFFAST_IO_READ_COMPRESSED () T@name)
(declare-fun T.PFFAST_IO_RELEASE_FILE () T@name)
(declare-fun T.PFFAST_IO_RELEASE_FOR_CCFLUSH () T@name)
(declare-fun T.PFFAST_IO_RELEASE_FOR_MOD_WRITE () T@name)
(declare-fun T.PFFAST_IO_UNLOCK_ALL () T@name)
(declare-fun T.PFFAST_IO_UNLOCK_ALL_BY_KEY () T@name)
(declare-fun T.PFFAST_IO_UNLOCK_SINGLE () T@name)
(declare-fun T.PFFAST_IO_WRITE () T@name)
(declare-fun T.PFFAST_IO_WRITE_COMPRESSED () T@name)
(declare-fun T.PFIO_COMPLETION_ROUTINE () T@name)
(declare-fun T.PFKDEFERRED_ROUTINE () T@name)
(declare-fun T.PINT4 () T@name)
(declare-fun T.POWER_ACTION () T@name)
(declare-fun T.PPCHAR () T@name)
(declare-fun T.PPF24 () T@name)
(declare-fun T.PPPUINT2 () T@name)
(declare-fun T.PPP_DEVICE_OBJECT () T@name)
(declare-fun T.PPP_FILE_OBJECT () T@name)
(declare-fun T.PPUINT2 () T@name)
(declare-fun T.PPUINT4 () T@name)
(declare-fun T.PPVOID () T@name)
(declare-fun T.PP_DEVICE_EXTENSION () T@name)
(declare-fun T.PP_DEVICE_OBJECT () T@name)
(declare-fun T.PP_DRIVER_OBJECT () T@name)
(declare-fun T.PP_ERESOURCE () T@name)
(declare-fun T.PP_FAST_MUTEX () T@name)
(declare-fun T.PP_FILE_OBJECT () T@name)
(declare-fun T.PP_LIST_ENTRY () T@name)
(declare-fun T.PP_MDL () T@name)
(declare-fun T.PP_PORT () T@name)
(declare-fun T.PP_UNICODE_STRING () T@name)
(declare-fun T.PUCHAR () T@name)
(declare-fun T.PUINT2 () T@name)
(declare-fun T.PUINT4 () T@name)
(declare-fun T.PVOID () T@name)
(declare-fun T.PWMIGUIDREGINFO () T@name)
(declare-fun T.P_ACCESS_STATE () T@name)
(declare-fun T.P_CM_RESOURCE_LIST () T@name)
(declare-fun T.P_COMPRESSED_DATA_INFO () T@name)
(declare-fun T.P_DEVICE_CAPABILITIES () T@name)
(declare-fun T.P_DEVICE_EXTENSION () T@name)
(declare-fun T.P_DEVICE_OBJECT () T@name)
(declare-fun T.P_DEVOBJ_EXTENSION () T@name)
(declare-fun T.P_DRIVER_EXTENSION () T@name)
(declare-fun T.P_DRIVER_OBJECT () T@name)
(declare-fun T.P_EPROCESS () T@name)
(declare-fun T.P_ERESOURCE () T@name)
(declare-fun T.P_ETHREAD () T@name)
(declare-fun T.P_FAST_IO_DISPATCH () T@name)
(declare-fun T.P_FAST_MUTEX () T@name)
(declare-fun T.P_FILE_BASIC_INFORMATION () T@name)
(declare-fun T.P_FILE_GET_QUOTA_INFORMATION () T@name)
(declare-fun T.P_FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T.P_FILE_OBJECT () T@name)
(declare-fun T.P_FILE_STANDARD_INFORMATION () T@name)
(declare-fun T.P_GLOBALS () T@name)
(declare-fun T.P_GUID () T@name)
(declare-fun T.P_INTERFACE () T@name)
(declare-fun T.P_IO_COMPLETION_CONTEXT () T@name)
(declare-fun T.P_IO_REMOVE_LOCK_TRACKING_BLOCK () T@name)
(declare-fun T.P_IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T.P_IO_SECURITY_CONTEXT () T@name)
(declare-fun T.P_IO_STACK_LOCATION () T@name)
(declare-fun T.P_IO_STATUS_BLOCK () T@name)
(declare-fun T.P_IO_TIMER () T@name)
(declare-fun T.P_IRP () T@name)
(declare-fun T.P_KAPC () T@name)
(declare-fun T.P_KDPC () T@name)
(declare-fun T.P_KEVENT () T@name)
(declare-fun T.P_KSEMAPHORE () T@name)
(declare-fun T.P_KTHREAD () T@name)
(declare-fun T.P_LARGE_INTEGER () T@name)
(declare-fun T.P_LIST_ENTRY () T@name)
(declare-fun T.P_MDL () T@name)
(declare-fun T.P_MOUSE_INPUT_DATA () T@name)
(declare-fun T.P_OWNER_ENTRY () T@name)
(declare-fun T.P_POOL_TYPE () T@name)
(declare-fun T.P_PORT () T@name)
(declare-fun T.P_POWER_SEQUENCE () T@name)
(declare-fun T.P_SCSI_REQUEST_BLOCK () T@name)
(declare-fun T.P_SECTION_OBJECT_POINTERS () T@name)
(declare-fun T.P_SECURITY_QUALITY_OF_SERVICE () T@name)
(declare-fun T.P_UNICODE_STRING () T@name)
(declare-fun T.P_VPB () T@name)
(declare-fun T.UCHAR () T@name)
(declare-fun T.UINT2 () T@name)
(declare-fun T.UINT4 () T@name)
(declare-fun T.VOID () T@name)
(declare-fun T.WMIENABLEDISABLECONTROL () T@name)
(declare-fun T.WMIGUIDREGINFO () T@name)
(declare-fun T._ACCESS_STATE () T@name)
(declare-fun T._CM_FULL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T._CM_PARTIAL_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T._CM_PARTIAL_RESOURCE_LIST () T@name)
(declare-fun T._CM_RESOURCE_LIST () T@name)
(declare-fun T._COMPRESSED_DATA_INFO () T@name)
(declare-fun T._DEVICE_CAPABILITIES () T@name)
(declare-fun T._DEVICE_EXTENSION () T@name)
(declare-fun T._DEVICE_OBJECT () T@name)
(declare-fun T._DEVICE_POWER_STATE () T@name)
(declare-fun T._DEVICE_RELATION_TYPE () T@name)
(declare-fun T._DEVICE_USAGE_NOTIFICATION_TYPE () T@name)
(declare-fun T._DEVOBJ_EXTENSION () T@name)
(declare-fun T._DISPATCHER_HEADER () T@name)
(declare-fun T._DRIVER_EXTENSION () T@name)
(declare-fun T._DRIVER_OBJECT () T@name)
(declare-fun T._EPROCESS () T@name)
(declare-fun T._ERESOURCE () T@name)
(declare-fun T._ETHREAD () T@name)
(declare-fun T._FAST_IO_DISPATCH () T@name)
(declare-fun T._FAST_MUTEX () T@name)
(declare-fun T._FILE_BASIC_INFORMATION () T@name)
(declare-fun T._FILE_GET_QUOTA_INFORMATION () T@name)
(declare-fun T._FILE_INFORMATION_CLASS () T@name)
(declare-fun T._FILE_NETWORK_OPEN_INFORMATION () T@name)
(declare-fun T._FILE_OBJECT () T@name)
(declare-fun T._FILE_STANDARD_INFORMATION () T@name)
(declare-fun T._FSINFOCLASS () T@name)
(declare-fun T._GLOBALS () T@name)
(declare-fun T._GUID () T@name)
(declare-fun T._INITIAL_PRIVILEGE_SET () T@name)
(declare-fun T._INTERFACE () T@name)
(declare-fun T._INTERFACE_TYPE () T@name)
(declare-fun T._IO_ALLOCATION_ACTION () T@name)
(declare-fun T._IO_COMPLETION_CONTEXT () T@name)
(declare-fun T._IO_REMOVE_LOCK () T@name)
(declare-fun T._IO_REMOVE_LOCK_COMMON_BLOCK () T@name)
(declare-fun T._IO_REMOVE_LOCK_DBG_BLOCK () T@name)
(declare-fun T._IO_REMOVE_LOCK_TRACKING_BLOCK () T@name)
(declare-fun T._IO_RESOURCE_DESCRIPTOR () T@name)
(declare-fun T._IO_RESOURCE_LIST () T@name)
(declare-fun T._IO_RESOURCE_REQUIREMENTS_LIST () T@name)
(declare-fun T._IO_SECURITY_CONTEXT () T@name)
(declare-fun T._IO_STACK_LOCATION () T@name)
(declare-fun T._IO_STATUS_BLOCK () T@name)
(declare-fun T._IO_TIMER () T@name)
(declare-fun T._IRP () T@name)
(declare-fun T._IRQ_DEVICE_POLICY () T@name)
(declare-fun T._IRQ_PRIORITY () T@name)
(declare-fun T._KAPC () T@name)
(declare-fun T._KDEVICE_QUEUE () T@name)
(declare-fun T._KDEVICE_QUEUE_ENTRY () T@name)
(declare-fun T._KDPC () T@name)
(declare-fun T._KEVENT () T@name)
(declare-fun T._KSEMAPHORE () T@name)
(declare-fun T._KTHREAD () T@name)
(declare-fun T._LARGE_INTEGER () T@name)
(declare-fun T._LIST_ENTRY () T@name)
(declare-fun T._LUID () T@name)
(declare-fun T._LUID_AND_ATTRIBUTES () T@name)
(declare-fun T._MDL () T@name)
(declare-fun T._MOUSE_ATTRIBUTES () T@name)
(declare-fun T._MOUSE_INPUT_DATA () T@name)
(declare-fun T._OWNER_ENTRY () T@name)
(declare-fun T._POOL_TYPE () T@name)
(declare-fun T._PORT () T@name)
(declare-fun T._POWER_SEQUENCE () T@name)
(declare-fun T._POWER_STATE () T@name)
(declare-fun T._POWER_STATE_TYPE () T@name)
(declare-fun T._PRIVILEGE_SET () T@name)
(declare-fun T._SCSI_REQUEST_BLOCK () T@name)
(declare-fun T._SECTION_OBJECT_POINTERS () T@name)
(declare-fun T._SECURITY_IMPERSONATION_LEVEL () T@name)
(declare-fun T._SECURITY_QUALITY_OF_SERVICE () T@name)
(declare-fun T._SECURITY_SUBJECT_CONTEXT () T@name)
(declare-fun T._SYSTEM_POWER_STATE () T@name)
(declare-fun T._SYSTEM_POWER_STATE_CONTEXT () T@name)
(declare-fun T._UNICODE_STRING () T@name)
(declare-fun T._VPB () T@name)
(declare-fun T._WAIT_CONTEXT_BLOCK () T@name)
(declare-fun T._WMILIB_CONTEXT () T@name)
(declare-fun T.__unnamed_12_06b9ee6e () T@name)
(declare-fun T.__unnamed_12_0882bd02 () T@name)
(declare-fun T.__unnamed_12_264d0dab () T@name)
(declare-fun T.__unnamed_12_2e80217b () T@name)
(declare-fun T.__unnamed_12_5cc7ace2 () T@name)
(declare-fun T.__unnamed_12_6374506e () T@name)
(declare-fun T.__unnamed_12_68a4278e () T@name)
(declare-fun T.__unnamed_12_79ed2653 () T@name)
(declare-fun T.__unnamed_12_7da594c0 () T@name)
(declare-fun T.__unnamed_12_9873e05d () T@name)
(declare-fun T.__unnamed_12_9cc8cebc () T@name)
(declare-fun T.__unnamed_12_b98da82e () T@name)
(declare-fun T.__unnamed_12_c2880e88 () T@name)
(declare-fun T.__unnamed_12_c49ab31a () T@name)
(declare-fun T.__unnamed_12_c6ed93f3 () T@name)
(declare-fun T.__unnamed_12_ced61554 () T@name)
(declare-fun T.__unnamed_12_d9c44df5 () T@name)
(declare-fun T.__unnamed_12_db3dcbfc () T@name)
(declare-fun T.__unnamed_12_fb26b3fc () T@name)
(declare-fun T.__unnamed_16_22e4d054 () T@name)
(declare-fun T.__unnamed_16_39b626ad () T@name)
(declare-fun T.__unnamed_16_56c011d7 () T@name)
(declare-fun T.__unnamed_16_5fed8f23 () T@name)
(declare-fun T.__unnamed_16_6be9abe0 () T@name)
(declare-fun T.__unnamed_16_78879a38 () T@name)
(declare-fun T.__unnamed_16_804a2f24 () T@name)
(declare-fun T.__unnamed_16_8586693f () T@name)
(declare-fun T.__unnamed_16_8831e65f () T@name)
(declare-fun T.__unnamed_16_8c2d663a () T@name)
(declare-fun T.__unnamed_16_913b9a7a () T@name)
(declare-fun T.__unnamed_16_94d1d1c7 () T@name)
(declare-fun T.__unnamed_16_a2fab4da () T@name)
(declare-fun T.__unnamed_16_ae643f17 () T@name)
(declare-fun T.__unnamed_16_c1b29316 () T@name)
(declare-fun T.__unnamed_16_cbd53ed4 () T@name)
(declare-fun T.__unnamed_16_db70db6e () T@name)
(declare-fun T.__unnamed_16_ef4b6307 () T@name)
(declare-fun T.__unnamed_16_fdda1f62 () T@name)
(declare-fun T.__unnamed_1_1394de4b () T@name)
(declare-fun T.__unnamed_1_2bb39c56 () T@name)
(declare-fun T.__unnamed_1_9fa0583a () T@name)
(declare-fun T.__unnamed_1_e30779f5 () T@name)
(declare-fun T.__unnamed_20_83d468e4 () T@name)
(declare-fun T.__unnamed_24_035931da () T@name)
(declare-fun T.__unnamed_24_38e128db () T@name)
(declare-fun T.__unnamed_24_9500ea34 () T@name)
(declare-fun T.__unnamed_24_9734802c () T@name)
(declare-fun T.__unnamed_24_af62813f () T@name)
(declare-fun T.__unnamed_24_c0555099 () T@name)
(declare-fun T.__unnamed_24_d7c4ec3a () T@name)
(declare-fun T.__unnamed_2_196a7f56 () T@name)
(declare-fun T.__unnamed_40_a0414182 () T@name)
(declare-fun T.__unnamed_40_d90496f4 () T@name)
(declare-fun T.__unnamed_44_a7026dca () T@name)
(declare-fun T.__unnamed_48_c1da9fa5 () T@name)
(declare-fun T.__unnamed_4_0510b147 () T@name)
(declare-fun T.__unnamed_4_0a569078 () T@name)
(declare-fun T.__unnamed_4_16aff58e () T@name)
(declare-fun T.__unnamed_4_40bf8e34 () T@name)
(declare-fun T.__unnamed_4_46b62f69 () T@name)
(declare-fun T.__unnamed_4_73d46255 () T@name)
(declare-fun T.__unnamed_4_765e3037 () T@name)
(declare-fun T.__unnamed_4_846adf3f () T@name)
(declare-fun T.__unnamed_4_8dd73d30 () T@name)
(declare-fun T.__unnamed_4_957e0d74 () T@name)
(declare-fun T.__unnamed_4_9c11ed91 () T@name)
(declare-fun T.__unnamed_4_a58d40c8 () T@name)
(declare-fun T.__unnamed_4_a7aa989c () T@name)
(declare-fun T.__unnamed_4_a7d0864c () T@name)
(declare-fun T.__unnamed_4_aa20b426 () T@name)
(declare-fun T.__unnamed_4_ab87ddfd () T@name)
(declare-fun T.__unnamed_4_b016b1e1 () T@name)
(declare-fun T.__unnamed_4_b060dea6 () T@name)
(declare-fun T.__unnamed_4_b4f5a780 () T@name)
(declare-fun T.__unnamed_4_b5247f10 () T@name)
(declare-fun T.__unnamed_4_c1e23b02 () T@name)
(declare-fun T.__unnamed_4_c9b2e921 () T@name)
(declare-fun T.__unnamed_4_fa7b96a7 () T@name)
(declare-fun T.__unnamed_8_09ad2712 () T@name)
(declare-fun T.__unnamed_8_21ac1dba () T@name)
(declare-fun T.__unnamed_8_27d3ab76 () T@name)
(declare-fun T.__unnamed_8_4289df81 () T@name)
(declare-fun T.__unnamed_8_47b72724 () T@name)
(declare-fun T.__unnamed_8_4b3e3ba3 () T@name)
(declare-fun T.__unnamed_8_4f695993 () T@name)
(declare-fun T.__unnamed_8_5cfb6ca4 () T@name)
(declare-fun T.__unnamed_8_606438c5 () T@name)
(declare-fun T.__unnamed_8_6ad774c0 () T@name)
(declare-fun T.__unnamed_8_805045cb () T@name)
(declare-fun T.__unnamed_8_8684a3e7 () T@name)
(declare-fun T.__unnamed_8_8cc410da () T@name)
(declare-fun T.__unnamed_8_a47253e0 () T@name)
(declare-fun T.__unnamed_8_bbd07f6c () T@name)
(declare-fun T.__unnamed_8_c9ca8234 () T@name)
(declare-fun Globals () Int)
(declare-fun BOOGIE_LARGE_INT_3221553153 () Int)
(declare-sort |T@[Int]Int| 0)
(declare-fun |Select__T@[Int]Int_| (|T@[Int]Int| Int) Int)
(declare-fun ReachBetween (|T@[Int]Int| Int Int Int) Bool)
(declare-fun choose (Bool Int Int) Int)
(declare-fun BIT_BAND (Int Int) Int)
(declare-fun MINUS_BOTH_PTR_OR_BOTH_INT (Int Int Int) Int)
(declare-fun POW2 (Int) Bool)
(declare-sort |T@[Int]Bool| 0)
(declare-fun AtLeast (Int Int) |T@[Int]Bool|)
(declare-fun Rep (Int Int) Int)
(declare-fun |Select__T@[Int]Bool_| (|T@[Int]Bool| Int) Bool)
(declare-fun File__PORTInv (Int) Int)
(declare-fun Flink__LIST_ENTRYInv (Int) Int)
(declare-fun Length__UNICODE_STRINGInv (Int) Int)
(declare-fun Self__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun MaximumLength__UNICODE_STRINGInv (Int) Int)
(declare-fun Buffer__UNICODE_STRINGInv (Int) Int)
(declare-fun GrandMaster__GLOBALSInv (Int) Int)
(declare-fun Port__PORTInv (Int) Int)
(declare-fun AssocClassList__GLOBALSInv (Int) Int)
(declare-fun TopPort__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun Free__PORTInv (Int) Int)
(declare-fun NumberLegacyPorts__GLOBALSInv (Int) Int)
(declare-fun Mutex__GLOBALSInv (Int) Int)
(declare-fun Flags__DEVICE_OBJECTInv (Int) Int)
(declare-fun DeviceExtension__DEVICE_OBJECTInv (Int) Int)
(declare-fun StackSize__DEVICE_OBJECTInv (Int) Int)
(declare-fun PortsServiced__GLOBALSInv (Int) Int)
(declare-fun InitExtension__GLOBALSInv (Int) Int)
(declare-fun PnP__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun Started__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun WaitWakeSpinLock__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun InputData__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun DataIn__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun DataOut__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SpinLock__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun UnitId__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun Link__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun File__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun BaseClassName__GLOBALSInv (Int) Int)
(declare-fun LegacyDeviceList__GLOBALSInv (Int) Int)
(declare-sort |T@[name][Int]Int| 0)
(declare-fun HasType (Int T@name |T@[name][Int]Int|) Bool)
(declare-fun Values (T@name |T@[name][Int]Int|) |T@[Int]Bool|)
(declare-fun Singleton (Int) |T@[Int]Bool|)
(declare-fun PLUS (Int Int Int) Int)
(declare-fun Dereference (|T@[Int]Bool| |T@[Int]Int|) |T@[Int]Bool|)
(declare-fun MULT (Int Int) Int)
(declare-fun LIFT (Bool) Int)
(declare-fun NOT (Int) Int)
(declare-fun NULL_CHECK (Int) Int)
(declare-fun File__PORT (Int) Int)
(declare-fun Flink__LIST_ENTRY (Int) Int)
(declare-fun Length__UNICODE_STRING (Int) Int)
(declare-fun Self__DEVICE_EXTENSION (Int) Int)
(declare-fun MaximumLength__UNICODE_STRING (Int) Int)
(declare-fun Buffer__UNICODE_STRING (Int) Int)
(declare-fun GrandMaster__GLOBALS (Int) Int)
(declare-fun Port__PORT (Int) Int)
(declare-fun AssocClassList__GLOBALS (Int) Int)
(declare-fun TopPort__DEVICE_EXTENSION (Int) Int)
(declare-fun Free__PORT (Int) Int)
(declare-fun NumberLegacyPorts__GLOBALS (Int) Int)
(declare-fun Mutex__GLOBALS (Int) Int)
(declare-fun Flags__DEVICE_OBJECT (Int) Int)
(declare-fun DeviceExtension__DEVICE_OBJECT (Int) Int)
(declare-fun StackSize__DEVICE_OBJECT (Int) Int)
(declare-fun PortsServiced__GLOBALS (Int) Int)
(declare-fun InitExtension__GLOBALS (Int) Int)
(declare-fun PnP__DEVICE_EXTENSION (Int) Int)
(declare-fun Started__DEVICE_EXTENSION (Int) Int)
(declare-fun WaitWakeSpinLock__DEVICE_EXTENSION (Int) Int)
(declare-fun InputData__DEVICE_EXTENSION (Int) Int)
(declare-fun DataIn__DEVICE_EXTENSION (Int) Int)
(declare-fun DataOut__DEVICE_EXTENSION (Int) Int)
(declare-fun SpinLock__DEVICE_EXTENSION (Int) Int)
(declare-fun UnitId__DEVICE_EXTENSION (Int) Int)
(declare-fun Link__DEVICE_EXTENSION (Int) Int)
(declare-fun File__DEVICE_EXTENSION (Int) Int)
(declare-fun BaseClassName__GLOBALS (Int) Int)
(declare-fun LegacyDeviceList__GLOBALS (Int) Int)
(declare-fun ReachBetweenSet (|T@[Int]Int| Int Int) |T@[Int]Bool|)
(declare-fun Subset (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-sort T@byte 0)
(declare-fun TwoBytesToInt (T@byte T@byte) Int)
(declare-fun OneByteToInt (T@byte) Int)
(declare-fun Unified (|T@[name][Int]Int|) |T@[Int]Int|)
(declare-fun |Select__T@[name][Int]Int_| (|T@[name][Int]Int| T@name) |T@[Int]Int|)
(declare-fun Field (Int) T@name)
(declare-fun Disjoint (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun _S_AssocClassList__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_AssocClassList__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_BaseClassName__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_BaseClassName__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Buffer__UNICODE_STRING (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Buffer__UNICODE_STRINGInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataIn__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataIn__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataOut__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataOut__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DeviceExtension__DEVICE_OBJECT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DeviceExtension__DEVICE_OBJECTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_File__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_File__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_File__PORT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_File__PORTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flags__DEVICE_OBJECT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flags__DEVICE_OBJECTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flink__LIST_ENTRY (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flink__LIST_ENTRYInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Free__PORT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Free__PORTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GrandMaster__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GrandMaster__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InitExtension__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InitExtension__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputData__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputData__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LegacyDeviceList__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LegacyDeviceList__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Length__UNICODE_STRING (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Length__UNICODE_STRINGInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Link__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Link__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MaximumLength__UNICODE_STRING (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MaximumLength__UNICODE_STRINGInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Mutex__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Mutex__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberLegacyPorts__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberLegacyPorts__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PnP__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PnP__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Port__PORT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Port__PORTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PortsServiced__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PortsServiced__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Self__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Self__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SpinLock__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SpinLock__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_StackSize__DEVICE_OBJECT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_StackSize__DEVICE_OBJECTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Started__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Started__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TopPort__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TopPort__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeSpinLock__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeSpinLock__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun T.Ptr (T@name) T@name)
(declare-fun Match (Int T@name) Bool)
(declare-fun Shift_Flink__LIST_ENTRY (|T@[Int]Int|) |T@[Int]Int|)
(declare-fun DIV (Int Int) Int)
(declare-fun |Store__T@[Int]Int_| (|T@[Int]Int| Int Int) |T@[Int]Int|)
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?x2 Int)) (! (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[Int]Int|) ( ?x1 Int) ( ?y1 Int) ( ?x2 Int)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[Int]Int_| (|Store__T@[Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun Equal (|T@[Int]Bool| |T@[Int]Bool|) Bool)
(declare-fun ReachAvoiding (|T@[Int]Int| Int Int Int) Bool)
(declare-fun Intersection (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun Difference (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun Inverse (|T@[Int]Int| Int) |T@[Int]Bool|)
(declare-fun |Store__T@[name][Int]Int_| (|T@[name][Int]Int| T@name |T@[Int]Int|) |T@[name][Int]Int|)
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?x2 |T@[Int]Int|)) (! (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?x1)  ?x2) :weight 0)))
(assert (forall ( ( ?x0 |T@[name][Int]Int|) ( ?x1 T@name) ( ?y1 T@name) ( ?x2 |T@[Int]Int|)) (! (=>  (not (= ?x1 ?y1)) (= (|Select__T@[name][Int]Int_| (|Store__T@[name][Int]Int_| ?x0 ?x1 ?x2) ?y1) (|Select__T@[name][Int]Int_| ?x0 ?y1))) :weight 0)))
(declare-fun q@Array (Int Int Int) |T@[Int]Bool|)
(declare-fun Empty () |T@[Int]Bool|)
(declare-fun SetTrue () |T@[Int]Bool|)
(declare-fun Union (|T@[Int]Bool| |T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun FourBytesToInt (T@byte T@byte T@byte T@byte) Int)
(assert (and (distinct UNALLOCATED ALLOCATED FREED BYTE T.Guid_WMIGUIDREGINFO T.InstanceCount_WMIGUIDREGINFO T.Flags_WMIGUIDREGINFO T.OperationID__ACCESS_STATE T.SecurityEvaluated__ACCESS_STATE T.GenerateAudit__ACCESS_STATE T.GenerateOnClose__ACCESS_STATE T.PrivilegesAllocated__ACCESS_STATE T.Flags__ACCESS_STATE T.RemainingDesiredAccess__ACCESS_STATE T.PreviouslyGrantedAccess__ACCESS_STATE T.OriginalDesiredAccess__ACCESS_STATE T.SubjectSecurityContext__ACCESS_STATE T.SecurityDescriptor__ACCESS_STATE T.AuxData__ACCESS_STATE T.Privileges__ACCESS_STATE T.AuditPrivileges__ACCESS_STATE T.ObjectName__ACCESS_STATE T.ObjectTypeName__ACCESS_STATE T.InterfaceType__CM_FULL_RESOURCE_DESCRIPTOR T.BusNumber__CM_FULL_RESOURCE_DESCRIPTOR T.PartialResourceList__CM_FULL_RESOURCE_DESCRIPTOR T.Type__CM_PARTIAL_RESOURCE_DESCRIPTOR T.ShareDisposition__CM_PARTIAL_RESOURCE_DESCRIPTOR T.Flags__CM_PARTIAL_RESOURCE_DESCRIPTOR T.u__CM_PARTIAL_RESOURCE_DESCRIPTOR T.Version__CM_PARTIAL_RESOURCE_LIST T.Revision__CM_PARTIAL_RESOURCE_LIST T.Count__CM_PARTIAL_RESOURCE_LIST T.PartialDescriptors__CM_PARTIAL_RESOURCE_LIST T.Count__CM_RESOURCE_LIST T.List__CM_RESOURCE_LIST T.Size__DEVICE_CAPABILITIES T.Version__DEVICE_CAPABILITIES T.DeviceD1__DEVICE_CAPABILITIES T.DeviceD2__DEVICE_CAPABILITIES T.LockSupported__DEVICE_CAPABILITIES T.EjectSupported__DEVICE_CAPABILITIES T.Removable__DEVICE_CAPABILITIES T.DockDevice__DEVICE_CAPABILITIES T.UniqueID__DEVICE_CAPABILITIES T.SilentInstall__DEVICE_CAPABILITIES T.RawDeviceOK__DEVICE_CAPABILITIES T.SurpriseRemovalOK__DEVICE_CAPABILITIES T.WakeFromD0__DEVICE_CAPABILITIES T.WakeFromD1__DEVICE_CAPABILITIES T.WakeFromD2__DEVICE_CAPABILITIES T.WakeFromD3__DEVICE_CAPABILITIES T.HardwareDisabled__DEVICE_CAPABILITIES T.NonDynamic__DEVICE_CAPABILITIES T.WarmEjectSupported__DEVICE_CAPABILITIES T.NoDisplayInUI__DEVICE_CAPABILITIES T.Reserved__DEVICE_CAPABILITIES T.Address__DEVICE_CAPABILITIES T.UINumber__DEVICE_CAPABILITIES T.DeviceState__DEVICE_CAPABILITIES T.SystemWake__DEVICE_CAPABILITIES T.DeviceWake__DEVICE_CAPABILITIES T.D1Latency__DEVICE_CAPABILITIES T.D2Latency__DEVICE_CAPABILITIES T.D3Latency__DEVICE_CAPABILITIES T.Self__DEVICE_EXTENSION T.TrueClassDevice__DEVICE_EXTENSION T.TopPort__DEVICE_EXTENSION T.PDO__DEVICE_EXTENSION T.RemoveLock__DEVICE_EXTENSION T.PnP__DEVICE_EXTENSION T.Started__DEVICE_EXTENSION T.OkayToLogOverflow__DEVICE_EXTENSION T.WaitWakeSpinLock__DEVICE_EXTENSION T.TrustedSubsystemCount__DEVICE_EXTENSION T.InputCount__DEVICE_EXTENSION T.SymbolicLinkName__DEVICE_EXTENSION T.InputData__DEVICE_EXTENSION T.DataIn__DEVICE_EXTENSION T.DataOut__DEVICE_EXTENSION T.MouseAttributes__DEVICE_EXTENSION T.SpinLock__DEVICE_EXTENSION T.ReadQueue__DEVICE_EXTENSION T.SequenceNumber__DEVICE_EXTENSION T.DeviceState__DEVICE_EXTENSION T.SystemState__DEVICE_EXTENSION T.UnitId__DEVICE_EXTENSION T.WmiLibInfo__DEVICE_EXTENSION T.SystemToDeviceState__DEVICE_EXTENSION T.MinDeviceWakeState__DEVICE_EXTENSION T.MinSystemWakeState__DEVICE_EXTENSION T.WaitWakeIrp__DEVICE_EXTENSION T.ExtraWaitWakeIrp__DEVICE_EXTENSION T.TargetNotifyHandle__DEVICE_EXTENSION T.Link__DEVICE_EXTENSION T.File__DEVICE_EXTENSION T.Enabled__DEVICE_EXTENSION T.WaitWakeEnabled__DEVICE_EXTENSION T.SurpriseRemoved__DEVICE_EXTENSION T.Type__DEVICE_OBJECT T.Size__DEVICE_OBJECT T.ReferenceCount__DEVICE_OBJECT T.DriverObject__DEVICE_OBJECT T.NextDevice__DEVICE_OBJECT T.AttachedDevice__DEVICE_OBJECT T.CurrentIrp__DEVICE_OBJECT T.Timer__DEVICE_OBJECT T.Flags__DEVICE_OBJECT T.Characteristics__DEVICE_OBJECT T.Vpb__DEVICE_OBJECT T.DeviceExtension__DEVICE_OBJECT T.DeviceType__DEVICE_OBJECT T.StackSize__DEVICE_OBJECT T.Queue__DEVICE_OBJECT T.AlignmentRequirement__DEVICE_OBJECT T.DeviceQueue__DEVICE_OBJECT T.Dpc__DEVICE_OBJECT T.ActiveThreadCount__DEVICE_OBJECT T.SecurityDescriptor__DEVICE_OBJECT T.DeviceLock__DEVICE_OBJECT T.SectorSize__DEVICE_OBJECT T.Spare1__DEVICE_OBJECT T.DeviceObjectExtension__DEVICE_OBJECT T.Reserved__DEVICE_OBJECT T.Type__DEVOBJ_EXTENSION T.Size__DEVOBJ_EXTENSION T.DeviceObject__DEVOBJ_EXTENSION T.__unnamed_4_c9b2e921__DISPATCHER_HEADER T.SignalState__DISPATCHER_HEADER T.WaitListHead__DISPATCHER_HEADER T.DriverObject__DRIVER_EXTENSION T.AddDevice__DRIVER_EXTENSION T.Count__DRIVER_EXTENSION T.ServiceKeyName__DRIVER_EXTENSION T.Type__DRIVER_OBJECT T.Size__DRIVER_OBJECT T.DeviceObject__DRIVER_OBJECT T.Flags__DRIVER_OBJECT T.DriverStart__DRIVER_OBJECT T.DriverSize__DRIVER_OBJECT T.DriverSection__DRIVER_OBJECT T.DriverExtension__DRIVER_OBJECT T.DriverName__DRIVER_OBJECT T.HardwareDatabase__DRIVER_OBJECT T.FastIoDispatch__DRIVER_OBJECT T.DriverInit__DRIVER_OBJECT T.DriverStartIo__DRIVER_OBJECT T.DriverUnload__DRIVER_OBJECT T.MajorFunction__DRIVER_OBJECT T.SystemResourcesList__ERESOURCE T.OwnerTable__ERESOURCE T.ActiveCount__ERESOURCE T.Flag__ERESOURCE T.SharedWaiters__ERESOURCE T.ExclusiveWaiters__ERESOURCE T.OwnerEntry__ERESOURCE T.ActiveEntries__ERESOURCE T.ContentionCount__ERESOURCE T.NumberOfSharedWaiters__ERESOURCE T.NumberOfExclusiveWaiters__ERESOURCE T.__unnamed_4_46b62f69__ERESOURCE T.SpinLock__ERESOURCE T.SizeOfFastIoDispatch__FAST_IO_DISPATCH T.FastIoCheckIfPossible__FAST_IO_DISPATCH T.FastIoRead__FAST_IO_DISPATCH T.FastIoWrite__FAST_IO_DISPATCH T.FastIoQueryBasicInfo__FAST_IO_DISPATCH T.FastIoQueryStandardInfo__FAST_IO_DISPATCH T.FastIoLock__FAST_IO_DISPATCH T.FastIoUnlockSingle__FAST_IO_DISPATCH T.FastIoUnlockAll__FAST_IO_DISPATCH T.FastIoUnlockAllByKey__FAST_IO_DISPATCH T.FastIoDeviceControl__FAST_IO_DISPATCH T.AcquireFileForNtCreateSection__FAST_IO_DISPATCH T.ReleaseFileForNtCreateSection__FAST_IO_DISPATCH T.FastIoDetachDevice__FAST_IO_DISPATCH T.FastIoQueryNetworkOpenInfo__FAST_IO_DISPATCH T.AcquireForModWrite__FAST_IO_DISPATCH T.MdlRead__FAST_IO_DISPATCH T.MdlReadComplete__FAST_IO_DISPATCH T.PrepareMdlWrite__FAST_IO_DISPATCH T.MdlWriteComplete__FAST_IO_DISPATCH T.FastIoReadCompressed__FAST_IO_DISPATCH T.FastIoWriteCompressed__FAST_IO_DISPATCH T.MdlReadCompleteCompressed__FAST_IO_DISPATCH T.MdlWriteCompleteCompressed__FAST_IO_DISPATCH T.FastIoQueryOpen__FAST_IO_DISPATCH T.ReleaseForModWrite__FAST_IO_DISPATCH T.AcquireForCcFlush__FAST_IO_DISPATCH T.ReleaseForCcFlush__FAST_IO_DISPATCH T.Count__FAST_MUTEX T.Owner__FAST_MUTEX T.Contention__FAST_MUTEX T.Gate__FAST_MUTEX T.OldIrql__FAST_MUTEX T.CreationTime__FILE_BASIC_INFORMATION T.LastAccessTime__FILE_BASIC_INFORMATION T.LastWriteTime__FILE_BASIC_INFORMATION T.ChangeTime__FILE_BASIC_INFORMATION T.FileAttributes__FILE_BASIC_INFORMATION T.CreationTime__FILE_NETWORK_OPEN_INFORMATION T.LastAccessTime__FILE_NETWORK_OPEN_INFORMATION T.LastWriteTime__FILE_NETWORK_OPEN_INFORMATION T.ChangeTime__FILE_NETWORK_OPEN_INFORMATION T.AllocationSize__FILE_NETWORK_OPEN_INFORMATION T.EndOfFile__FILE_NETWORK_OPEN_INFORMATION T.FileAttributes__FILE_NETWORK_OPEN_INFORMATION T.Type__FILE_OBJECT T.Size__FILE_OBJECT T.DeviceObject__FILE_OBJECT T.Vpb__FILE_OBJECT T.FsContext__FILE_OBJECT T.FsContext2__FILE_OBJECT T.SectionObjectPointer__FILE_OBJECT T.PrivateCacheMap__FILE_OBJECT T.FinalStatus__FILE_OBJECT T.RelatedFileObject__FILE_OBJECT T.LockOperation__FILE_OBJECT T.DeletePending__FILE_OBJECT T.ReadAccess__FILE_OBJECT T.WriteAccess__FILE_OBJECT T.DeleteAccess__FILE_OBJECT T.SharedRead__FILE_OBJECT T.SharedWrite__FILE_OBJECT T.SharedDelete__FILE_OBJECT T.Flags__FILE_OBJECT T.FileName__FILE_OBJECT T.CurrentByteOffset__FILE_OBJECT T.Waiters__FILE_OBJECT T.Busy__FILE_OBJECT T.LastLock__FILE_OBJECT T.Lock__FILE_OBJECT T.Event__FILE_OBJECT T.CompletionContext__FILE_OBJECT T.IrpListLock__FILE_OBJECT T.IrpList__FILE_OBJECT T.FileObjectExtension__FILE_OBJECT T.AllocationSize__FILE_STANDARD_INFORMATION T.EndOfFile__FILE_STANDARD_INFORMATION T.NumberOfLinks__FILE_STANDARD_INFORMATION T.DeletePending__FILE_STANDARD_INFORMATION T.Directory__FILE_STANDARD_INFORMATION T.Debug__GLOBALS T.GrandMaster__GLOBALS T.AssocClassList__GLOBALS T.NumAssocClass__GLOBALS T.Opens__GLOBALS T.NumberLegacyPorts__GLOBALS T.Mutex__GLOBALS T.ConnectOneClassToOnePort__GLOBALS T.PortsServiced__GLOBALS T.InitExtension__GLOBALS T.RegistryPath__GLOBALS T.BaseClassName__GLOBALS T.BaseClassBuffer__GLOBALS T.LegacyDeviceList__GLOBALS T.Data1__GUID T.Data2__GUID T.Data3__GUID T.Data4__GUID T.PrivilegeCount__INITIAL_PRIVILEGE_SET T.Control__INITIAL_PRIVILEGE_SET T.Privilege__INITIAL_PRIVILEGE_SET T.Size__INTERFACE T.Version__INTERFACE T.Context__INTERFACE T.InterfaceReference__INTERFACE T.InterfaceDereference__INTERFACE T.Port__IO_COMPLETION_CONTEXT T.Key__IO_COMPLETION_CONTEXT T.Common__IO_REMOVE_LOCK T.Dbg__IO_REMOVE_LOCK T.Removed__IO_REMOVE_LOCK_COMMON_BLOCK T.Reserved__IO_REMOVE_LOCK_COMMON_BLOCK T.IoCount__IO_REMOVE_LOCK_COMMON_BLOCK T.RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK T.Signature__IO_REMOVE_LOCK_DBG_BLOCK T.HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK T.MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK T.AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK T.LockList__IO_REMOVE_LOCK_DBG_BLOCK T.Spin__IO_REMOVE_LOCK_DBG_BLOCK T.LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK T.Reserved1__IO_REMOVE_LOCK_DBG_BLOCK T.Reserved2__IO_REMOVE_LOCK_DBG_BLOCK T.Blocks__IO_REMOVE_LOCK_DBG_BLOCK T.Option__IO_RESOURCE_DESCRIPTOR T.Type__IO_RESOURCE_DESCRIPTOR T.ShareDisposition__IO_RESOURCE_DESCRIPTOR T.Spare1__IO_RESOURCE_DESCRIPTOR T.Flags__IO_RESOURCE_DESCRIPTOR T.Spare2__IO_RESOURCE_DESCRIPTOR T.u__IO_RESOURCE_DESCRIPTOR T.Version__IO_RESOURCE_LIST T.Revision__IO_RESOURCE_LIST T.Count__IO_RESOURCE_LIST T.Descriptors__IO_RESOURCE_LIST T.ListSize__IO_RESOURCE_REQUIREMENTS_LIST T.InterfaceType__IO_RESOURCE_REQUIREMENTS_LIST T.BusNumber__IO_RESOURCE_REQUIREMENTS_LIST T.SlotNumber__IO_RESOURCE_REQUIREMENTS_LIST T.Reserved__IO_RESOURCE_REQUIREMENTS_LIST T.AlternativeLists__IO_RESOURCE_REQUIREMENTS_LIST T.List__IO_RESOURCE_REQUIREMENTS_LIST T.SecurityQos__IO_SECURITY_CONTEXT T.AccessState__IO_SECURITY_CONTEXT T.DesiredAccess__IO_SECURITY_CONTEXT T.FullCreateOptions__IO_SECURITY_CONTEXT T.MajorFunction__IO_STACK_LOCATION T.MinorFunction__IO_STACK_LOCATION T.Flags__IO_STACK_LOCATION T.Control__IO_STACK_LOCATION T.Parameters__IO_STACK_LOCATION T.DeviceObject__IO_STACK_LOCATION T.FileObject__IO_STACK_LOCATION T.CompletionRoutine__IO_STACK_LOCATION T.Context__IO_STACK_LOCATION T.__unnamed_4_16aff58e__IO_STATUS_BLOCK T.Information__IO_STATUS_BLOCK T.Type__IRP T.Size__IRP T.MdlAddress__IRP T.Flags__IRP T.AssociatedIrp__IRP T.ThreadListEntry__IRP T.IoStatus__IRP T.RequestorMode__IRP T.PendingReturned__IRP T.StackCount__IRP T.CurrentLocation__IRP T.Cancel__IRP T.CancelIrql__IRP T.ApcEnvironment__IRP T.AllocationFlags__IRP T.UserIosb__IRP T.UserEvent__IRP T.Overlay__IRP T.CancelRoutine__IRP T.UserBuffer__IRP T.Tail__IRP T.Type__KAPC T.SpareByte0__KAPC T.Size__KAPC T.SpareByte1__KAPC T.SpareLong0__KAPC T.Thread__KAPC T.ApcListEntry__KAPC T.KernelRoutine__KAPC T.RundownRoutine__KAPC T.NormalRoutine__KAPC T.NormalContext__KAPC T.SystemArgument1__KAPC T.SystemArgument2__KAPC T.ApcStateIndex__KAPC T.ApcMode__KAPC T.Inserted__KAPC T.Type__KDEVICE_QUEUE T.Size__KDEVICE_QUEUE T.DeviceListHead__KDEVICE_QUEUE T.Lock__KDEVICE_QUEUE T.Busy__KDEVICE_QUEUE T.DeviceListEntry__KDEVICE_QUEUE_ENTRY T.SortKey__KDEVICE_QUEUE_ENTRY T.Inserted__KDEVICE_QUEUE_ENTRY T.Type__KDPC T.Importance__KDPC T.Number__KDPC T.DpcListEntry__KDPC T.DeferredRoutine__KDPC T.DeferredContext__KDPC T.SystemArgument1__KDPC T.SystemArgument2__KDPC T.DpcData__KDPC T.Header__KEVENT T.Header__KSEMAPHORE T.Limit__KSEMAPHORE T.__unnamed_8_8684a3e7__LARGE_INTEGER T.u__LARGE_INTEGER T.QuadPart__LARGE_INTEGER T.Flink__LIST_ENTRY T.Blink__LIST_ENTRY T.LowPart__LUID T.HighPart__LUID T.Luid__LUID_AND_ATTRIBUTES T.Attributes__LUID_AND_ATTRIBUTES T.Next__MDL T.Size__MDL T.MdlFlags__MDL T.Process__MDL T.MappedSystemVa__MDL T.StartVa__MDL T.ByteCount__MDL T.ByteOffset__MDL T.MouseIdentifier__MOUSE_ATTRIBUTES T.NumberOfButtons__MOUSE_ATTRIBUTES T.SampleRate__MOUSE_ATTRIBUTES T.InputDataQueueLength__MOUSE_ATTRIBUTES T.UnitId__MOUSE_INPUT_DATA T.Flags__MOUSE_INPUT_DATA T.__unnamed_4_9c11ed91__MOUSE_INPUT_DATA T.RawButtons__MOUSE_INPUT_DATA T.LastX__MOUSE_INPUT_DATA T.LastY__MOUSE_INPUT_DATA T.ExtraInformation__MOUSE_INPUT_DATA T.OwnerThread__OWNER_ENTRY T.__unnamed_4_c1e23b02__OWNER_ENTRY T.File__PORT T.Port__PORT T.Enabled__PORT T.Reserved__PORT T.Free__PORT T.SequenceD1__POWER_SEQUENCE T.SequenceD2__POWER_SEQUENCE T.SequenceD3__POWER_SEQUENCE T.SystemState__POWER_STATE T.DeviceState__POWER_STATE T.PrivilegeCount__PRIVILEGE_SET T.Control__PRIVILEGE_SET T.Privilege__PRIVILEGE_SET T.DataSectionObject__SECTION_OBJECT_POINTERS T.SharedCacheMap__SECTION_OBJECT_POINTERS T.ImageSectionObject__SECTION_OBJECT_POINTERS T.Length__SECURITY_QUALITY_OF_SERVICE T.ImpersonationLevel__SECURITY_QUALITY_OF_SERVICE T.ContextTrackingMode__SECURITY_QUALITY_OF_SERVICE T.EffectiveOnly__SECURITY_QUALITY_OF_SERVICE T.ClientToken__SECURITY_SUBJECT_CONTEXT T.ImpersonationLevel__SECURITY_SUBJECT_CONTEXT T.PrimaryToken__SECURITY_SUBJECT_CONTEXT T.ProcessAuditId__SECURITY_SUBJECT_CONTEXT T.__unnamed_4_b4f5a780__SYSTEM_POWER_STATE_CONTEXT T.Length__UNICODE_STRING T.MaximumLength__UNICODE_STRING T.Buffer__UNICODE_STRING T.Type__VPB T.Size__VPB T.Flags__VPB T.VolumeLabelLength__VPB T.DeviceObject__VPB T.RealDevice__VPB T.SerialNumber__VPB T.ReferenceCount__VPB T.VolumeLabel__VPB T.WaitQueueEntry__WAIT_CONTEXT_BLOCK T.DeviceRoutine__WAIT_CONTEXT_BLOCK T.DeviceContext__WAIT_CONTEXT_BLOCK T.NumberOfMapRegisters__WAIT_CONTEXT_BLOCK T.DeviceObject__WAIT_CONTEXT_BLOCK T.CurrentIrp__WAIT_CONTEXT_BLOCK T.BufferChainingDpc__WAIT_CONTEXT_BLOCK T.GuidCount__WMILIB_CONTEXT T.GuidList__WMILIB_CONTEXT T.QueryWmiRegInfo__WMILIB_CONTEXT T.QueryWmiDataBlock__WMILIB_CONTEXT T.SetWmiDataBlock__WMILIB_CONTEXT T.SetWmiDataItem__WMILIB_CONTEXT T.ExecuteWmiMethod__WMILIB_CONTEXT T.WmiFunctionControl__WMILIB_CONTEXT T.Start___unnamed_12_06b9ee6e T.Length48___unnamed_12_06b9ee6e T.Start___unnamed_12_0882bd02 T.Length64___unnamed_12_0882bd02 T.__unnamed_12_2e80217b___unnamed_12_264d0dab T.Raw___unnamed_12_2e80217b T.Translated___unnamed_12_2e80217b T.Data___unnamed_12_5cc7ace2 T.Channel___unnamed_12_6374506e T.Port___unnamed_12_6374506e T.Reserved1___unnamed_12_6374506e T.Priority___unnamed_12_68a4278e T.Reserved1___unnamed_12_68a4278e T.Reserved2___unnamed_12_68a4278e T.Generic___unnamed_12_79ed2653 T.Port___unnamed_12_79ed2653 T.Interrupt___unnamed_12_79ed2653 T.MessageInterrupt___unnamed_12_79ed2653 T.Memory___unnamed_12_79ed2653 T.Dma___unnamed_12_79ed2653 T.DevicePrivate___unnamed_12_79ed2653 T.BusNumber___unnamed_12_79ed2653 T.DeviceSpecificData___unnamed_12_79ed2653 T.Memory40___unnamed_12_79ed2653 T.Memory48___unnamed_12_79ed2653 T.Memory64___unnamed_12_79ed2653 T.Start___unnamed_12_7da594c0 T.Length40___unnamed_12_7da594c0 T.Start___unnamed_12_9873e05d T.Length___unnamed_12_9873e05d T.DataSize___unnamed_12_9cc8cebc T.Reserved1___unnamed_12_9cc8cebc T.Reserved2___unnamed_12_9cc8cebc T.Start___unnamed_12_b98da82e T.Length___unnamed_12_b98da82e T.Level___unnamed_12_c2880e88 T.Vector___unnamed_12_c2880e88 T.Affinity___unnamed_12_c2880e88 T.Start___unnamed_12_c49ab31a T.Length___unnamed_12_c49ab31a T.ListEntry___unnamed_12_c6ed93f3 T.__unnamed_4_a7aa989c___unnamed_12_c6ed93f3 T.Data___unnamed_12_ced61554 T.Reserved___unnamed_12_d9c44df5 T.MessageCount___unnamed_12_d9c44df5 T.Vector___unnamed_12_d9c44df5 T.Affinity___unnamed_12_d9c44df5 T.Start___unnamed_12_db3dcbfc T.Length___unnamed_12_db3dcbfc T.Reserved___unnamed_12_db3dcbfc T.Level___unnamed_12_fb26b3fc T.Vector___unnamed_12_fb26b3fc T.Affinity___unnamed_12_fb26b3fc T.OutputBufferLength___unnamed_16_22e4d054 T.InputBufferLength___unnamed_16_22e4d054 T.IoControlCode___unnamed_16_22e4d054 T.Type3InputBuffer___unnamed_16_22e4d054 T.Create___unnamed_16_39b626ad T.Read___unnamed_16_39b626ad T.Write___unnamed_16_39b626ad T.QueryDirectory___unnamed_16_39b626ad T.NotifyDirectory___unnamed_16_39b626ad T.QueryFile___unnamed_16_39b626ad T.SetFile___unnamed_16_39b626ad T.QueryEa___unnamed_16_39b626ad T.SetEa___unnamed_16_39b626ad T.QueryVolume___unnamed_16_39b626ad T.SetVolume___unnamed_16_39b626ad T.FileSystemControl___unnamed_16_39b626ad T.LockControl___unnamed_16_39b626ad T.DeviceIoControl___unnamed_16_39b626ad T.QuerySecurity___unnamed_16_39b626ad T.SetSecurity___unnamed_16_39b626ad T.MountVolume___unnamed_16_39b626ad T.VerifyVolume___unnamed_16_39b626ad T.Scsi___unnamed_16_39b626ad T.QueryQuota___unnamed_16_39b626ad T.SetQuota___unnamed_16_39b626ad T.QueryDeviceRelations___unnamed_16_39b626ad T.QueryInterface___unnamed_16_39b626ad T.DeviceCapabilities___unnamed_16_39b626ad T.FilterResourceRequirements___unnamed_16_39b626ad T.ReadWriteConfig___unnamed_16_39b626ad T.SetLock___unnamed_16_39b626ad T.QueryId___unnamed_16_39b626ad T.QueryDeviceText___unnamed_16_39b626ad T.UsageNotification___unnamed_16_39b626ad T.WaitWake___unnamed_16_39b626ad T.PowerSequence___unnamed_16_39b626ad T.Power___unnamed_16_39b626ad T.StartDevice___unnamed_16_39b626ad T.WMI___unnamed_16_39b626ad T.Others___unnamed_16_39b626ad T.WhichSpace___unnamed_16_56c011d7 T.Buffer___unnamed_16_56c011d7 T.Offset___unnamed_16_56c011d7 T.Length___unnamed_16_56c011d7 T.DeviceQueueEntry___unnamed_16_5fed8f23 T.__unnamed_16_ae643f17___unnamed_16_5fed8f23 T.Length___unnamed_16_6be9abe0 T.FileName___unnamed_16_6be9abe0 T.FileInformationClass___unnamed_16_6be9abe0 T.FileIndex___unnamed_16_6be9abe0 T.InterfaceType___unnamed_16_78879a38 T.Size___unnamed_16_78879a38 T.Version___unnamed_16_78879a38 T.Interface___unnamed_16_78879a38 T.InterfaceSpecificData___unnamed_16_78879a38 T.Length___unnamed_16_804a2f24 T.StartSid___unnamed_16_804a2f24 T.SidList___unnamed_16_804a2f24 T.SidListLength___unnamed_16_804a2f24 T.Argument1___unnamed_16_8586693f T.Argument2___unnamed_16_8586693f T.Argument3___unnamed_16_8586693f T.Argument4___unnamed_16_8586693f T.Length___unnamed_16_8831e65f T.Key___unnamed_16_8831e65f T.ByteOffset___unnamed_16_8831e65f T.SecurityContext___unnamed_16_8c2d663a T.Options___unnamed_16_8c2d663a T.FileAttributes___unnamed_16_8c2d663a T.ShareAccess___unnamed_16_8c2d663a T.EaLength___unnamed_16_8c2d663a T.Length___unnamed_16_913b9a7a T.Key___unnamed_16_913b9a7a T.ByteOffset___unnamed_16_913b9a7a T.OutputBufferLength___unnamed_16_94d1d1c7 T.InputBufferLength___unnamed_16_94d1d1c7 T.FsControlCode___unnamed_16_94d1d1c7 T.Type3InputBuffer___unnamed_16_94d1d1c7 T.Length___unnamed_16_a2fab4da T.FileInformationClass___unnamed_16_a2fab4da T.FileObject___unnamed_16_a2fab4da T.__unnamed_4_a7d0864c___unnamed_16_a2fab4da T.DriverContext___unnamed_16_ae643f17 T.Length___unnamed_16_c1b29316 T.Key___unnamed_16_c1b29316 T.ByteOffset___unnamed_16_c1b29316 T.ProviderId___unnamed_16_cbd53ed4 T.DataPath___unnamed_16_cbd53ed4 T.BufferSize___unnamed_16_cbd53ed4 T.Buffer___unnamed_16_cbd53ed4 T.Length___unnamed_16_db70db6e T.MinBusNumber___unnamed_16_db70db6e T.MaxBusNumber___unnamed_16_db70db6e T.Reserved___unnamed_16_db70db6e T.Length___unnamed_16_ef4b6307 T.EaList___unnamed_16_ef4b6307 T.EaListLength___unnamed_16_ef4b6307 T.EaIndex___unnamed_16_ef4b6307 T.__unnamed_4_b060dea6___unnamed_16_fdda1f62 T.Type___unnamed_16_fdda1f62 T.State___unnamed_16_fdda1f62 T.ShutdownType___unnamed_16_fdda1f62 T.Lock___unnamed_1_1394de4b T.Abandoned___unnamed_1_2bb39c56 T.Absolute___unnamed_1_2bb39c56 T.NpxIrql___unnamed_1_2bb39c56 T.Signalling___unnamed_1_2bb39c56 T.Inserted___unnamed_1_9fa0583a T.DebugActive___unnamed_1_9fa0583a T.DpcActive___unnamed_1_9fa0583a T.Size___unnamed_1_e30779f5 T.Hand___unnamed_1_e30779f5 T.MinimumVector___unnamed_20_83d468e4 T.MaximumVector___unnamed_20_83d468e4 T.AffinityPolicy___unnamed_20_83d468e4 T.PriorityPolicy___unnamed_20_83d468e4 T.TargetedProcessors___unnamed_20_83d468e4 T.Length40___unnamed_24_035931da T.Alignment40___unnamed_24_035931da T.MinimumAddress___unnamed_24_035931da T.MaximumAddress___unnamed_24_035931da T.Length___unnamed_24_38e128db T.Alignment___unnamed_24_38e128db T.MinimumAddress___unnamed_24_38e128db T.MaximumAddress___unnamed_24_38e128db T.Length___unnamed_24_9500ea34 T.Alignment___unnamed_24_9500ea34 T.MinimumAddress___unnamed_24_9500ea34 T.MaximumAddress___unnamed_24_9500ea34 T.Length___unnamed_24_9734802c T.Alignment___unnamed_24_9734802c T.MinimumAddress___unnamed_24_9734802c T.MaximumAddress___unnamed_24_9734802c T.Length64___unnamed_24_af62813f T.Alignment64___unnamed_24_af62813f T.MinimumAddress___unnamed_24_af62813f T.MaximumAddress___unnamed_24_af62813f T.Length48___unnamed_24_c0555099 T.Alignment48___unnamed_24_c0555099 T.MinimumAddress___unnamed_24_c0555099 T.MaximumAddress___unnamed_24_c0555099 T.Port___unnamed_24_d7c4ec3a T.Memory___unnamed_24_d7c4ec3a T.Interrupt___unnamed_24_d7c4ec3a T.Dma___unnamed_24_d7c4ec3a T.Generic___unnamed_24_d7c4ec3a T.DevicePrivate___unnamed_24_d7c4ec3a T.BusNumber___unnamed_24_d7c4ec3a T.ConfigData___unnamed_24_d7c4ec3a T.Memory40___unnamed_24_d7c4ec3a T.Memory48___unnamed_24_d7c4ec3a T.Memory64___unnamed_24_d7c4ec3a T.ReplaceIfExists___unnamed_2_196a7f56 T.AdvanceOnly___unnamed_2_196a7f56 T.__unnamed_16_5fed8f23___unnamed_40_a0414182 T.Thread___unnamed_40_a0414182 T.AuxiliaryBuffer___unnamed_40_a0414182 T.__unnamed_12_c6ed93f3___unnamed_40_a0414182 T.OriginalFileObject___unnamed_40_a0414182 T.ListEntry___unnamed_40_d90496f4 T.Wcb___unnamed_40_d90496f4 T.InitialPrivilegeSet___unnamed_44_a7026dca T.PrivilegeSet___unnamed_44_a7026dca T.Overlay___unnamed_48_c1da9fa5 T.Apc___unnamed_48_c1da9fa5 T.CompletionKey___unnamed_48_c1da9fa5 T.PowerSequence___unnamed_4_0510b147 T.Length___unnamed_4_0a569078 T.Status___unnamed_4_16aff58e T.Pointer___unnamed_4_16aff58e T.IdType___unnamed_4_40bf8e34 T.Address___unnamed_4_46b62f69 T.CreatorBackTraceIndex___unnamed_4_46b62f69 T.Capabilities___unnamed_4_73d46255 T.Srb___unnamed_4_765e3037 T.Type___unnamed_4_846adf3f T.__unnamed_1_2bb39c56___unnamed_4_846adf3f T.__unnamed_1_e30779f5___unnamed_4_846adf3f T.__unnamed_1_9fa0583a___unnamed_4_846adf3f T.PowerState___unnamed_4_8dd73d30 T.Type___unnamed_4_957e0d74 T.Buttons___unnamed_4_9c11ed91 T.__unnamed_4_b5247f10___unnamed_4_9c11ed91 T.IoResourceRequirementList___unnamed_4_a58d40c8 T.CurrentStackLocation___unnamed_4_a7aa989c T.PacketType___unnamed_4_a7aa989c T.__unnamed_2_196a7f56___unnamed_4_a7d0864c T.ClusterCount___unnamed_4_a7d0864c T.DeleteHandle___unnamed_4_a7d0864c T.Length___unnamed_4_aa20b426 T.UserApcRoutine___unnamed_4_ab87ddfd T.IssuingProcess___unnamed_4_ab87ddfd T.Reserved1___unnamed_4_b016b1e1 T.TargetSystemState___unnamed_4_b016b1e1 T.EffectiveSystemState___unnamed_4_b016b1e1 T.CurrentSystemState___unnamed_4_b016b1e1 T.IgnoreHibernationPath___unnamed_4_b016b1e1 T.PseudoTransition___unnamed_4_b016b1e1 T.Reserved2___unnamed_4_b016b1e1 T.SystemContext___unnamed_4_b060dea6 T.SystemPowerStateContext___unnamed_4_b060dea6 T.__unnamed_4_b016b1e1___unnamed_4_b4f5a780 T.ContextAsUlong___unnamed_4_b4f5a780 T.ButtonFlags___unnamed_4_b5247f10 T.ButtonData___unnamed_4_b5247f10 T.OwnerCount___unnamed_4_c1e23b02 T.TableSize___unnamed_4_c1e23b02 T.__unnamed_4_846adf3f___unnamed_4_c9b2e921 T.Lock___unnamed_4_c9b2e921 T.MasterIrp___unnamed_4_fa7b96a7 T.IrpCount___unnamed_4_fa7b96a7 T.SystemBuffer___unnamed_4_fa7b96a7 T.Vpb___unnamed_8_09ad2712 T.DeviceObject___unnamed_8_09ad2712 T.Length___unnamed_8_21ac1dba T.CompletionFilter___unnamed_8_21ac1dba T.Length___unnamed_8_27d3ab76 T.FsInformationClass___unnamed_8_27d3ab76 T.Vpb___unnamed_8_4289df81 T.DeviceObject___unnamed_8_4289df81 T.Length___unnamed_8_47b72724 T.FileInformationClass___unnamed_8_47b72724 T.DeviceTextType___unnamed_8_4b3e3ba3 T.LocaleId___unnamed_8_4b3e3ba3 T.__unnamed_4_ab87ddfd___unnamed_8_4f695993 T.UserApcContext___unnamed_8_4f695993 T.AllocatedResources___unnamed_8_5cfb6ca4 T.AllocatedResourcesTranslated___unnamed_8_5cfb6ca4 T.SecurityInformation___unnamed_8_606438c5 T.Length___unnamed_8_606438c5 T.MinimumChannel___unnamed_8_6ad774c0 T.MaximumChannel___unnamed_8_6ad774c0 T.Length___unnamed_8_805045cb T.FsInformationClass___unnamed_8_805045cb T.LowPart___unnamed_8_8684a3e7 T.HighPart___unnamed_8_8684a3e7 T.SecurityInformation___unnamed_8_8cc410da T.SecurityDescriptor___unnamed_8_8cc410da T.InPath___unnamed_8_a47253e0 T.Reserved___unnamed_8_a47253e0 T.Type___unnamed_8_a47253e0 T.AsynchronousParameters___unnamed_8_bbd07f6c T.AllocationSize___unnamed_8_bbd07f6c T.LowPart___unnamed_8_c9ca8234 T.HighPart___unnamed_8_c9ca8234 T.A1_CM_FULL_RESOURCE_DESCRIPTOR T.A1_CM_PARTIAL_RESOURCE_DESCRIPTOR T.A1_IO_RESOURCE_DESCRIPTOR T.A1_IO_RESOURCE_LIST T.A1_LUID_AND_ATTRIBUTES T.A256UINT2 T.A28PFDRIVER_DISPATCH T.A2UCHAR T.A2UINT2 T.A32UINT2 T.A3UCHAR T.A3UINT4 T.A3_LUID_AND_ATTRIBUTES T.A4PVOID T.A4UINT4 T.A5UINT2 T.A5_DEVICE_POWER_STATE T.A7_DEVICE_POWER_STATE T.A85CHAR T.A8UCHAR T.A9UINT2 T.BUS_QUERY_ID_TYPE T.CHAR T.DEVICE_TEXT_TYPE T.F0 T.F1 T.F10 T.F11 T.F12 T.F13 T.F14 T.F15 T.F16 T.F17 T.F18 T.F19 T.F2 T.F20 T.F21 T.F22 T.F23 T.F24 T.F25 T.F26 T.F27 T.F28 T.F29 T.F3 T.F30 T.F31 T.F32 T.F33 T.F34 T.F35 T.F36 T.F37 T.F38 T.F4 T.F5 T.F6 T.F7 T.F8 T.F9 T.FDRIVER_ADD_DEVICE T.FDRIVER_CANCEL T.FDRIVER_CONTROL T.FDRIVER_DISPATCH T.FDRIVER_INITIALIZE T.FDRIVER_STARTIO T.FDRIVER_UNLOAD T.FFAST_IO_ACQUIRE_FILE T.FFAST_IO_ACQUIRE_FOR_CCFLUSH T.FFAST_IO_ACQUIRE_FOR_MOD_WRITE T.FFAST_IO_CHECK_IF_POSSIBLE T.FFAST_IO_DETACH_DEVICE T.FFAST_IO_DEVICE_CONTROL T.FFAST_IO_LOCK T.FFAST_IO_MDL_READ T.FFAST_IO_MDL_READ_COMPLETE T.FFAST_IO_MDL_READ_COMPLETE_COMPRESSED T.FFAST_IO_MDL_WRITE_COMPLETE T.FFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED T.FFAST_IO_PREPARE_MDL_WRITE T.FFAST_IO_QUERY_BASIC_INFO T.FFAST_IO_QUERY_NETWORK_OPEN_INFO T.FFAST_IO_QUERY_OPEN T.FFAST_IO_QUERY_STANDARD_INFO T.FFAST_IO_READ T.FFAST_IO_READ_COMPRESSED T.FFAST_IO_RELEASE_FILE T.FFAST_IO_RELEASE_FOR_CCFLUSH T.FFAST_IO_RELEASE_FOR_MOD_WRITE T.FFAST_IO_UNLOCK_ALL T.FFAST_IO_UNLOCK_ALL_BY_KEY T.FFAST_IO_UNLOCK_SINGLE T.FFAST_IO_WRITE T.FFAST_IO_WRITE_COMPRESSED T.FIO_COMPLETION_ROUTINE T.FKDEFERRED_ROUTINE T.INT2 T.INT4 T.INT8 T.PA256UINT2 T.PA2UINT2 T.PA4UINT4 T.PA5UINT2 T.PA85CHAR T.PA9UINT2 T.PCHAR T.PF19 T.PF21 T.PF23 T.PF24 T.PF25 T.PF33 T.PF34 T.PF35 T.PF36 T.PF37 T.PF38 T.PFDRIVER_ADD_DEVICE T.PFDRIVER_CANCEL T.PFDRIVER_CONTROL T.PFDRIVER_DISPATCH T.PFDRIVER_INITIALIZE T.PFDRIVER_STARTIO T.PFDRIVER_UNLOAD T.PFFAST_IO_ACQUIRE_FILE T.PFFAST_IO_ACQUIRE_FOR_CCFLUSH T.PFFAST_IO_ACQUIRE_FOR_MOD_WRITE T.PFFAST_IO_CHECK_IF_POSSIBLE T.PFFAST_IO_DETACH_DEVICE T.PFFAST_IO_DEVICE_CONTROL T.PFFAST_IO_LOCK T.PFFAST_IO_MDL_READ T.PFFAST_IO_MDL_READ_COMPLETE T.PFFAST_IO_MDL_READ_COMPLETE_COMPRESSED T.PFFAST_IO_MDL_WRITE_COMPLETE T.PFFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED T.PFFAST_IO_PREPARE_MDL_WRITE T.PFFAST_IO_QUERY_BASIC_INFO T.PFFAST_IO_QUERY_NETWORK_OPEN_INFO T.PFFAST_IO_QUERY_OPEN T.PFFAST_IO_QUERY_STANDARD_INFO T.PFFAST_IO_READ T.PFFAST_IO_READ_COMPRESSED T.PFFAST_IO_RELEASE_FILE T.PFFAST_IO_RELEASE_FOR_CCFLUSH T.PFFAST_IO_RELEASE_FOR_MOD_WRITE T.PFFAST_IO_UNLOCK_ALL T.PFFAST_IO_UNLOCK_ALL_BY_KEY T.PFFAST_IO_UNLOCK_SINGLE T.PFFAST_IO_WRITE T.PFFAST_IO_WRITE_COMPRESSED T.PFIO_COMPLETION_ROUTINE T.PFKDEFERRED_ROUTINE T.PINT4 T.POWER_ACTION T.PPCHAR T.PPF24 T.PPPUINT2 T.PPP_DEVICE_OBJECT T.PPP_FILE_OBJECT T.PPUINT2 T.PPUINT4 T.PPVOID T.PP_DEVICE_EXTENSION T.PP_DEVICE_OBJECT T.PP_DRIVER_OBJECT T.PP_ERESOURCE T.PP_FAST_MUTEX T.PP_FILE_OBJECT T.PP_LIST_ENTRY T.PP_MDL T.PP_PORT T.PP_UNICODE_STRING T.PUCHAR T.PUINT2 T.PUINT4 T.PVOID T.PWMIGUIDREGINFO T.P_ACCESS_STATE T.P_CM_RESOURCE_LIST T.P_COMPRESSED_DATA_INFO T.P_DEVICE_CAPABILITIES T.P_DEVICE_EXTENSION T.P_DEVICE_OBJECT T.P_DEVOBJ_EXTENSION T.P_DRIVER_EXTENSION T.P_DRIVER_OBJECT T.P_EPROCESS T.P_ERESOURCE T.P_ETHREAD T.P_FAST_IO_DISPATCH T.P_FAST_MUTEX T.P_FILE_BASIC_INFORMATION T.P_FILE_GET_QUOTA_INFORMATION T.P_FILE_NETWORK_OPEN_INFORMATION T.P_FILE_OBJECT T.P_FILE_STANDARD_INFORMATION T.P_GLOBALS T.P_GUID T.P_INTERFACE T.P_IO_COMPLETION_CONTEXT T.P_IO_REMOVE_LOCK_TRACKING_BLOCK T.P_IO_RESOURCE_REQUIREMENTS_LIST T.P_IO_SECURITY_CONTEXT T.P_IO_STACK_LOCATION T.P_IO_STATUS_BLOCK T.P_IO_TIMER T.P_IRP T.P_KAPC T.P_KDPC T.P_KEVENT T.P_KSEMAPHORE T.P_KTHREAD T.P_LARGE_INTEGER T.P_LIST_ENTRY T.P_MDL T.P_MOUSE_INPUT_DATA T.P_OWNER_ENTRY T.P_POOL_TYPE T.P_PORT T.P_POWER_SEQUENCE T.P_SCSI_REQUEST_BLOCK T.P_SECTION_OBJECT_POINTERS T.P_SECURITY_QUALITY_OF_SERVICE T.P_UNICODE_STRING T.P_VPB T.UCHAR T.UINT2 T.UINT4 T.VOID T.WMIENABLEDISABLECONTROL T.WMIGUIDREGINFO T._ACCESS_STATE T._CM_FULL_RESOURCE_DESCRIPTOR T._CM_PARTIAL_RESOURCE_DESCRIPTOR T._CM_PARTIAL_RESOURCE_LIST T._CM_RESOURCE_LIST T._COMPRESSED_DATA_INFO T._DEVICE_CAPABILITIES T._DEVICE_EXTENSION T._DEVICE_OBJECT T._DEVICE_POWER_STATE T._DEVICE_RELATION_TYPE T._DEVICE_USAGE_NOTIFICATION_TYPE T._DEVOBJ_EXTENSION T._DISPATCHER_HEADER T._DRIVER_EXTENSION T._DRIVER_OBJECT T._EPROCESS T._ERESOURCE T._ETHREAD T._FAST_IO_DISPATCH T._FAST_MUTEX T._FILE_BASIC_INFORMATION T._FILE_GET_QUOTA_INFORMATION T._FILE_INFORMATION_CLASS T._FILE_NETWORK_OPEN_INFORMATION T._FILE_OBJECT T._FILE_STANDARD_INFORMATION T._FSINFOCLASS T._GLOBALS T._GUID T._INITIAL_PRIVILEGE_SET T._INTERFACE T._INTERFACE_TYPE T._IO_ALLOCATION_ACTION T._IO_COMPLETION_CONTEXT T._IO_REMOVE_LOCK T._IO_REMOVE_LOCK_COMMON_BLOCK T._IO_REMOVE_LOCK_DBG_BLOCK T._IO_REMOVE_LOCK_TRACKING_BLOCK T._IO_RESOURCE_DESCRIPTOR T._IO_RESOURCE_LIST T._IO_RESOURCE_REQUIREMENTS_LIST T._IO_SECURITY_CONTEXT T._IO_STACK_LOCATION T._IO_STATUS_BLOCK T._IO_TIMER T._IRP T._IRQ_DEVICE_POLICY T._IRQ_PRIORITY T._KAPC T._KDEVICE_QUEUE T._KDEVICE_QUEUE_ENTRY T._KDPC T._KEVENT T._KSEMAPHORE T._KTHREAD T._LARGE_INTEGER T._LIST_ENTRY T._LUID T._LUID_AND_ATTRIBUTES T._MDL T._MOUSE_ATTRIBUTES T._MOUSE_INPUT_DATA T._OWNER_ENTRY T._POOL_TYPE T._PORT T._POWER_SEQUENCE T._POWER_STATE T._POWER_STATE_TYPE T._PRIVILEGE_SET T._SCSI_REQUEST_BLOCK T._SECTION_OBJECT_POINTERS T._SECURITY_IMPERSONATION_LEVEL T._SECURITY_QUALITY_OF_SERVICE T._SECURITY_SUBJECT_CONTEXT T._SYSTEM_POWER_STATE T._SYSTEM_POWER_STATE_CONTEXT T._UNICODE_STRING T._VPB T._WAIT_CONTEXT_BLOCK T._WMILIB_CONTEXT T.__unnamed_12_06b9ee6e T.__unnamed_12_0882bd02 T.__unnamed_12_264d0dab T.__unnamed_12_2e80217b T.__unnamed_12_5cc7ace2 T.__unnamed_12_6374506e T.__unnamed_12_68a4278e T.__unnamed_12_79ed2653 T.__unnamed_12_7da594c0 T.__unnamed_12_9873e05d T.__unnamed_12_9cc8cebc T.__unnamed_12_b98da82e T.__unnamed_12_c2880e88 T.__unnamed_12_c49ab31a T.__unnamed_12_c6ed93f3 T.__unnamed_12_ced61554 T.__unnamed_12_d9c44df5 T.__unnamed_12_db3dcbfc T.__unnamed_12_fb26b3fc T.__unnamed_16_22e4d054 T.__unnamed_16_39b626ad T.__unnamed_16_56c011d7 T.__unnamed_16_5fed8f23 T.__unnamed_16_6be9abe0 T.__unnamed_16_78879a38 T.__unnamed_16_804a2f24 T.__unnamed_16_8586693f T.__unnamed_16_8831e65f T.__unnamed_16_8c2d663a T.__unnamed_16_913b9a7a T.__unnamed_16_94d1d1c7 T.__unnamed_16_a2fab4da T.__unnamed_16_ae643f17 T.__unnamed_16_c1b29316 T.__unnamed_16_cbd53ed4 T.__unnamed_16_db70db6e T.__unnamed_16_ef4b6307 T.__unnamed_16_fdda1f62 T.__unnamed_1_1394de4b T.__unnamed_1_2bb39c56 T.__unnamed_1_9fa0583a T.__unnamed_1_e30779f5 T.__unnamed_20_83d468e4 T.__unnamed_24_035931da T.__unnamed_24_38e128db T.__unnamed_24_9500ea34 T.__unnamed_24_9734802c T.__unnamed_24_af62813f T.__unnamed_24_c0555099 T.__unnamed_24_d7c4ec3a T.__unnamed_2_196a7f56 T.__unnamed_40_a0414182 T.__unnamed_40_d90496f4 T.__unnamed_44_a7026dca T.__unnamed_48_c1da9fa5 T.__unnamed_4_0510b147 T.__unnamed_4_0a569078 T.__unnamed_4_16aff58e T.__unnamed_4_40bf8e34 T.__unnamed_4_46b62f69 T.__unnamed_4_73d46255 T.__unnamed_4_765e3037 T.__unnamed_4_846adf3f T.__unnamed_4_8dd73d30 T.__unnamed_4_957e0d74 T.__unnamed_4_9c11ed91 T.__unnamed_4_a58d40c8 T.__unnamed_4_a7aa989c T.__unnamed_4_a7d0864c T.__unnamed_4_aa20b426 T.__unnamed_4_ab87ddfd T.__unnamed_4_b016b1e1 T.__unnamed_4_b060dea6 T.__unnamed_4_b4f5a780 T.__unnamed_4_b5247f10 T.__unnamed_4_c1e23b02 T.__unnamed_4_c9b2e921 T.__unnamed_4_fa7b96a7 T.__unnamed_8_09ad2712 T.__unnamed_8_21ac1dba T.__unnamed_8_27d3ab76 T.__unnamed_8_4289df81 T.__unnamed_8_47b72724 T.__unnamed_8_4b3e3ba3 T.__unnamed_8_4f695993 T.__unnamed_8_5cfb6ca4 T.__unnamed_8_606438c5 T.__unnamed_8_6ad774c0 T.__unnamed_8_805045cb T.__unnamed_8_8684a3e7 T.__unnamed_8_8cc410da T.__unnamed_8_a47253e0 T.__unnamed_8_bbd07f6c T.__unnamed_8_c9ca8234)(distinct Globals BOOGIE_LARGE_INT_3221553153))
)
(assert (forall ((f |T@[Int]Int|) (x Int) (y Int) ) (!  (=> (and (= (|Select__T@[Int]Int_| f x) x) (ReachBetween f x y y)) (= x y))
 :qid |MouseClassFindMorePortsbpl.1959:14|
 :skolemid |369|
 :pattern ( (|Select__T@[Int]Int_| f x) (ReachBetween f x y y))
)))
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (choose a b c) b))
 :qid |MouseClassFindMorePortsbpl.1859:14|
 :skolemid |350|
 :pattern ( (choose a b c))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (=> (or (= a@@0 0) (= b@@0 0)) (= (BIT_BAND a@@0 b@@0) 0))
 :qid |MouseClassFindMorePortsbpl.1865:14|
 :skolemid |354|
 :pattern ( (BIT_BAND a@@0 b@@0))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@0 Int) (y@@0 Int) (z Int) (w Int) ) (! (ReachBetween f@@0 x@@0 (|Select__T@[Int]Int_| f@@0 x@@0) (|Select__T@[Int]Int_| f@@0 x@@0))
 :qid |MouseClassFindMorePortsbpl.1953:14|
 :skolemid |367|
 :pattern ( (ReachBetween f@@0 y@@0 z w) (|Select__T@[Int]Int_| f@@0 x@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) (size Int) ) (!  (and (<= (* size (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size)) (- a@@1 b@@1)) (< (- a@@1 b@@1) (* size (+ (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size) 1))))
 :qid |MouseClassFindMorePortsbpl.1798:16|
 :skolemid |342|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (and (and (POW2 a@@2) (POW2 b@@2)) (not (= a@@2 b@@2))) (= (BIT_BAND a@@2 b@@2) 0))
 :qid |MouseClassFindMorePortsbpl.1864:14|
 :skolemid |353|
 :pattern ( (BIT_BAND a@@2 b@@2))
)))
(assert (forall ((n Int) (x@@1 Int) (y@@1 Int) ) (!  (=> (and (<= x@@1 y@@1) (= (Rep n x@@1) (Rep n y@@1))) (|Select__T@[Int]Bool_| (AtLeast n x@@1) y@@1))
 :qid |MouseClassFindMorePortsbpl.43:14|
 :skolemid |4|
 :pattern ( (AtLeast n x@@1) (Rep n x@@1) (Rep n y@@1))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@2 Int) (y@@2 Int) (z@@0 Int) ) (!  (=> (ReachBetween f@@1 x@@2 y@@2 z@@0) (and (ReachBetween f@@1 x@@2 y@@2 y@@2) (ReachBetween f@@1 y@@2 z@@0 z@@0)))
 :qid |MouseClassFindMorePortsbpl.1968:14|
 :skolemid |372|
 :pattern ( (ReachBetween f@@1 x@@2 y@@2 z@@0))
)))
(assert (forall ((x@@3 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@3 0 1) (File__PORTInv x@@3))
 :qid |MouseClassFindMorePortsbpl.1421:15|
 :skolemid |120|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@3 0 1))
)))
(assert (forall ((x@@4 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@4 0 1) (Flink__LIST_ENTRYInv x@@4))
 :qid |MouseClassFindMorePortsbpl.1455:15|
 :skolemid |140|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@4 0 1))
)))
(assert (forall ((x@@5 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@5 0 1) (Length__UNICODE_STRINGInv x@@5))
 :qid |MouseClassFindMorePortsbpl.1557:15|
 :skolemid |200|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@5 0 1))
)))
(assert (forall ((x@@6 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@6 0 1) (Self__DEVICE_EXTENSIONInv x@@6))
 :qid |MouseClassFindMorePortsbpl.1693:15|
 :skolemid |280|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@6 0 1))
)))
(assert (forall ((x@@7 Int) ) (! (= (MINUS_LEFT_PTR x@@7 1 0) (File__PORTInv x@@7))
 :qid |MouseClassFindMorePortsbpl.1422:15|
 :skolemid |121|
 :pattern ( (MINUS_LEFT_PTR x@@7 1 0))
)))
(assert (forall ((x@@8 Int) ) (! (= (MINUS_LEFT_PTR x@@8 1 0) (Flink__LIST_ENTRYInv x@@8))
 :qid |MouseClassFindMorePortsbpl.1456:15|
 :skolemid |141|
 :pattern ( (MINUS_LEFT_PTR x@@8 1 0))
)))
(assert (forall ((x@@9 Int) ) (! (= (MINUS_LEFT_PTR x@@9 1 0) (Length__UNICODE_STRINGInv x@@9))
 :qid |MouseClassFindMorePortsbpl.1558:15|
 :skolemid |201|
 :pattern ( (MINUS_LEFT_PTR x@@9 1 0))
)))
(assert (forall ((x@@10 Int) ) (! (= (MINUS_LEFT_PTR x@@10 1 0) (Self__DEVICE_EXTENSIONInv x@@10))
 :qid |MouseClassFindMorePortsbpl.1694:15|
 :skolemid |281|
 :pattern ( (MINUS_LEFT_PTR x@@10 1 0))
)))
(assert (forall ((x@@11 Int) ) (! (= (MINUS_LEFT_PTR x@@11 1 2) (MaximumLength__UNICODE_STRINGInv x@@11))
 :qid |MouseClassFindMorePortsbpl.1592:15|
 :skolemid |221|
 :pattern ( (MINUS_LEFT_PTR x@@11 1 2))
)))
(assert (forall ((x@@12 Int) ) (! (= (MINUS_LEFT_PTR x@@12 1 4) (Buffer__UNICODE_STRINGInv x@@12))
 :qid |MouseClassFindMorePortsbpl.1337:15|
 :skolemid |71|
 :pattern ( (MINUS_LEFT_PTR x@@12 1 4))
)))
(assert (forall ((x@@13 Int) ) (! (= (MINUS_LEFT_PTR x@@13 1 4) (GrandMaster__GLOBALSInv x@@13))
 :qid |MouseClassFindMorePortsbpl.1490:15|
 :skolemid |161|
 :pattern ( (MINUS_LEFT_PTR x@@13 1 4))
)))
(assert (forall ((x@@14 Int) ) (! (= (MINUS_LEFT_PTR x@@14 1 4) (Port__PORTInv x@@14))
 :qid |MouseClassFindMorePortsbpl.1660:15|
 :skolemid |261|
 :pattern ( (MINUS_LEFT_PTR x@@14 1 4))
)))
(assert (forall ((x@@15 Int) ) (! (= (MINUS_LEFT_PTR x@@15 1 8) (AssocClassList__GLOBALSInv x@@15))
 :qid |MouseClassFindMorePortsbpl.1303:15|
 :skolemid |51|
 :pattern ( (MINUS_LEFT_PTR x@@15 1 8))
)))
(assert (forall ((x@@16 Int) ) (! (= (MINUS_LEFT_PTR x@@16 1 8) (TopPort__DEVICE_EXTENSIONInv x@@16))
 :qid |MouseClassFindMorePortsbpl.1762:15|
 :skolemid |321|
 :pattern ( (MINUS_LEFT_PTR x@@16 1 8))
)))
(assert (forall ((x@@17 Int) ) (! (= (MINUS_LEFT_PTR x@@17 1 11) (Free__PORTInv x@@17))
 :qid |MouseClassFindMorePortsbpl.1473:15|
 :skolemid |151|
 :pattern ( (MINUS_LEFT_PTR x@@17 1 11))
)))
(assert (forall ((x@@18 Int) ) (! (= (MINUS_LEFT_PTR x@@18 1 20) (NumberLegacyPorts__GLOBALSInv x@@18))
 :qid |MouseClassFindMorePortsbpl.1626:15|
 :skolemid |241|
 :pattern ( (MINUS_LEFT_PTR x@@18 1 20))
)))
(assert (forall ((x@@19 Int) ) (! (= (MINUS_LEFT_PTR x@@19 1 24) (Mutex__GLOBALSInv x@@19))
 :qid |MouseClassFindMorePortsbpl.1609:15|
 :skolemid |231|
 :pattern ( (MINUS_LEFT_PTR x@@19 1 24))
)))
(assert (forall ((x@@20 Int) ) (! (= (MINUS_LEFT_PTR x@@20 1 28) (Flags__DEVICE_OBJECTInv x@@20))
 :qid |MouseClassFindMorePortsbpl.1439:15|
 :skolemid |131|
 :pattern ( (MINUS_LEFT_PTR x@@20 1 28))
)))
(assert (forall ((x@@21 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@21 2 1) (MaximumLength__UNICODE_STRINGInv x@@21))
 :qid |MouseClassFindMorePortsbpl.1591:15|
 :skolemid |220|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@21 2 1))
)))
(assert (forall ((x@@22 Int) ) (! (= (MINUS_LEFT_PTR x@@22 1 40) (DeviceExtension__DEVICE_OBJECTInv x@@22))
 :qid |MouseClassFindMorePortsbpl.1388:15|
 :skolemid |101|
 :pattern ( (MINUS_LEFT_PTR x@@22 1 40))
)))
(assert (forall ((x@@23 Int) ) (! (= (MINUS_LEFT_PTR x@@23 1 48) (StackSize__DEVICE_OBJECTInv x@@23))
 :qid |MouseClassFindMorePortsbpl.1728:15|
 :skolemid |301|
 :pattern ( (MINUS_LEFT_PTR x@@23 1 48))
)))
(assert (forall ((x@@24 Int) ) (! (= (MINUS_LEFT_PTR x@@24 1 60) (PortsServiced__GLOBALSInv x@@24))
 :qid |MouseClassFindMorePortsbpl.1677:15|
 :skolemid |271|
 :pattern ( (MINUS_LEFT_PTR x@@24 1 60))
)))
(assert (forall ((x@@25 Int) ) (! (= (MINUS_LEFT_PTR x@@25 1 64) (InitExtension__GLOBALSInv x@@25))
 :qid |MouseClassFindMorePortsbpl.1507:15|
 :skolemid |171|
 :pattern ( (MINUS_LEFT_PTR x@@25 1 64))
)))
(assert (forall ((x@@26 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@26 4 1) (Buffer__UNICODE_STRINGInv x@@26))
 :qid |MouseClassFindMorePortsbpl.1336:15|
 :skolemid |70|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@26 4 1))
)))
(assert (forall ((x@@27 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@27 4 1) (GrandMaster__GLOBALSInv x@@27))
 :qid |MouseClassFindMorePortsbpl.1489:15|
 :skolemid |160|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@27 4 1))
)))
(assert (forall ((x@@28 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@28 4 1) (Port__PORTInv x@@28))
 :qid |MouseClassFindMorePortsbpl.1659:15|
 :skolemid |260|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@28 4 1))
)))
(assert (forall ((x@@29 Int) ) (! (= (MINUS_LEFT_PTR x@@29 1 104) (PnP__DEVICE_EXTENSIONInv x@@29))
 :qid |MouseClassFindMorePortsbpl.1643:15|
 :skolemid |251|
 :pattern ( (MINUS_LEFT_PTR x@@29 1 104))
)))
(assert (forall ((x@@30 Int) ) (! (= (MINUS_LEFT_PTR x@@30 1 105) (Started__DEVICE_EXTENSIONInv x@@30))
 :qid |MouseClassFindMorePortsbpl.1745:15|
 :skolemid |311|
 :pattern ( (MINUS_LEFT_PTR x@@30 1 105))
)))
(assert (forall ((x@@31 Int) ) (! (= (MINUS_LEFT_PTR x@@31 1 108) (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@31))
 :qid |MouseClassFindMorePortsbpl.1796:15|
 :skolemid |341|
 :pattern ( (MINUS_LEFT_PTR x@@31 1 108))
)))
(assert (forall ((x@@32 Int) ) (! (= (MINUS_LEFT_PTR x@@32 1 128) (InputData__DEVICE_EXTENSIONInv x@@32))
 :qid |MouseClassFindMorePortsbpl.1524:15|
 :skolemid |181|
 :pattern ( (MINUS_LEFT_PTR x@@32 1 128))
)))
(assert (forall ((x@@33 Int) ) (! (= (MINUS_LEFT_PTR x@@33 1 132) (DataIn__DEVICE_EXTENSIONInv x@@33))
 :qid |MouseClassFindMorePortsbpl.1354:15|
 :skolemid |81|
 :pattern ( (MINUS_LEFT_PTR x@@33 1 132))
)))
(assert (forall ((x@@34 Int) ) (! (= (MINUS_LEFT_PTR x@@34 1 136) (DataOut__DEVICE_EXTENSIONInv x@@34))
 :qid |MouseClassFindMorePortsbpl.1371:15|
 :skolemid |91|
 :pattern ( (MINUS_LEFT_PTR x@@34 1 136))
)))
(assert (forall ((x@@35 Int) ) (! (= (MINUS_LEFT_PTR x@@35 1 152) (SpinLock__DEVICE_EXTENSIONInv x@@35))
 :qid |MouseClassFindMorePortsbpl.1711:15|
 :skolemid |291|
 :pattern ( (MINUS_LEFT_PTR x@@35 1 152))
)))
(assert (forall ((x@@36 Int) ) (! (= (MINUS_LEFT_PTR x@@36 1 176) (UnitId__DEVICE_EXTENSIONInv x@@36))
 :qid |MouseClassFindMorePortsbpl.1779:15|
 :skolemid |331|
 :pattern ( (MINUS_LEFT_PTR x@@36 1 176))
)))
(assert (forall ((x@@37 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@37 8 1) (AssocClassList__GLOBALSInv x@@37))
 :qid |MouseClassFindMorePortsbpl.1302:15|
 :skolemid |50|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@37 8 1))
)))
(assert (forall ((x@@38 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@38 8 1) (TopPort__DEVICE_EXTENSIONInv x@@38))
 :qid |MouseClassFindMorePortsbpl.1761:15|
 :skolemid |320|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@38 8 1))
)))
(assert (forall ((x@@39 Int) ) (! (= (MINUS_LEFT_PTR x@@39 1 252) (Link__DEVICE_EXTENSIONInv x@@39))
 :qid |MouseClassFindMorePortsbpl.1575:15|
 :skolemid |211|
 :pattern ( (MINUS_LEFT_PTR x@@39 1 252))
)))
(assert (forall ((x@@40 Int) ) (! (= (MINUS_LEFT_PTR x@@40 1 260) (File__DEVICE_EXTENSIONInv x@@40))
 :qid |MouseClassFindMorePortsbpl.1405:15|
 :skolemid |111|
 :pattern ( (MINUS_LEFT_PTR x@@40 1 260))
)))
(assert (forall ((x@@41 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@41 11 1) (Free__PORTInv x@@41))
 :qid |MouseClassFindMorePortsbpl.1472:15|
 :skolemid |150|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@41 11 1))
)))
(assert (forall ((x@@42 Int) ) (! (= (MINUS_LEFT_PTR x@@42 1 344) (BaseClassName__GLOBALSInv x@@42))
 :qid |MouseClassFindMorePortsbpl.1320:15|
 :skolemid |61|
 :pattern ( (MINUS_LEFT_PTR x@@42 1 344))
)))
(assert (forall ((x@@43 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@43 20 1) (NumberLegacyPorts__GLOBALSInv x@@43))
 :qid |MouseClassFindMorePortsbpl.1625:15|
 :skolemid |240|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@43 20 1))
)))
(assert (forall ((x@@44 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@44 24 1) (Mutex__GLOBALSInv x@@44))
 :qid |MouseClassFindMorePortsbpl.1608:15|
 :skolemid |230|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@44 24 1))
)))
(assert (forall ((x@@45 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@45 28 1) (Flags__DEVICE_OBJECTInv x@@45))
 :qid |MouseClassFindMorePortsbpl.1438:15|
 :skolemid |130|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@45 28 1))
)))
(assert (forall ((x@@46 Int) ) (! (= (MINUS_LEFT_PTR x@@46 1 864) (LegacyDeviceList__GLOBALSInv x@@46))
 :qid |MouseClassFindMorePortsbpl.1541:15|
 :skolemid |191|
 :pattern ( (MINUS_LEFT_PTR x@@46 1 864))
)))
(assert (forall ((x@@47 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@47 40 1) (DeviceExtension__DEVICE_OBJECTInv x@@47))
 :qid |MouseClassFindMorePortsbpl.1387:15|
 :skolemid |100|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@47 40 1))
)))
(assert (forall ((x@@48 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@48 48 1) (StackSize__DEVICE_OBJECTInv x@@48))
 :qid |MouseClassFindMorePortsbpl.1727:15|
 :skolemid |300|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@48 48 1))
)))
(assert (forall ((x@@49 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@49 60 1) (PortsServiced__GLOBALSInv x@@49))
 :qid |MouseClassFindMorePortsbpl.1676:15|
 :skolemid |270|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@49 60 1))
)))
(assert (forall ((x@@50 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@50 64 1) (InitExtension__GLOBALSInv x@@50))
 :qid |MouseClassFindMorePortsbpl.1506:15|
 :skolemid |170|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@50 64 1))
)))
(assert (forall ((x@@51 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@51 104 1) (PnP__DEVICE_EXTENSIONInv x@@51))
 :qid |MouseClassFindMorePortsbpl.1642:15|
 :skolemid |250|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@51 104 1))
)))
(assert (forall ((x@@52 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@52 105 1) (Started__DEVICE_EXTENSIONInv x@@52))
 :qid |MouseClassFindMorePortsbpl.1744:15|
 :skolemid |310|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@52 105 1))
)))
(assert (forall ((x@@53 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@53 108 1) (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@53))
 :qid |MouseClassFindMorePortsbpl.1795:15|
 :skolemid |340|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@53 108 1))
)))
(assert (forall ((x@@54 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@54 128 1) (InputData__DEVICE_EXTENSIONInv x@@54))
 :qid |MouseClassFindMorePortsbpl.1523:15|
 :skolemid |180|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@54 128 1))
)))
(assert (forall ((x@@55 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@55 132 1) (DataIn__DEVICE_EXTENSIONInv x@@55))
 :qid |MouseClassFindMorePortsbpl.1353:15|
 :skolemid |80|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@55 132 1))
)))
(assert (forall ((x@@56 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@56 136 1) (DataOut__DEVICE_EXTENSIONInv x@@56))
 :qid |MouseClassFindMorePortsbpl.1370:15|
 :skolemid |90|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@56 136 1))
)))
(assert (forall ((x@@57 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@57 152 1) (SpinLock__DEVICE_EXTENSIONInv x@@57))
 :qid |MouseClassFindMorePortsbpl.1710:15|
 :skolemid |290|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@57 152 1))
)))
(assert (forall ((x@@58 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@58 176 1) (UnitId__DEVICE_EXTENSIONInv x@@58))
 :qid |MouseClassFindMorePortsbpl.1778:15|
 :skolemid |330|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@58 176 1))
)))
(assert (forall ((x@@59 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@59 252 1) (Link__DEVICE_EXTENSIONInv x@@59))
 :qid |MouseClassFindMorePortsbpl.1574:15|
 :skolemid |210|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@59 252 1))
)))
(assert (forall ((x@@60 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@60 260 1) (File__DEVICE_EXTENSIONInv x@@60))
 :qid |MouseClassFindMorePortsbpl.1404:15|
 :skolemid |110|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@60 260 1))
)))
(assert (forall ((x@@61 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@61 344 1) (BaseClassName__GLOBALSInv x@@61))
 :qid |MouseClassFindMorePortsbpl.1319:15|
 :skolemid |60|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@61 344 1))
)))
(assert (forall ((x@@62 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@62 864 1) (LegacyDeviceList__GLOBALSInv x@@62))
 :qid |MouseClassFindMorePortsbpl.1540:15|
 :skolemid |190|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@62 864 1))
)))
(assert (forall ((v Int) (t T@name) (m |T@[name][Int]Int|) ) (!  (=> (HasType v t m) (|Select__T@[Int]Bool_| (Values t m) v))
 :qid |MouseClassFindMorePortsbpl.111:14|
 :skolemid |38|
 :pattern ( (HasType v t m) (Values t m))
)))
(assert (forall ((x@@63 Int) (y@@3 Int) ) (! (= (|Select__T@[Int]Bool_| (Singleton y@@3) x@@63) (= x@@63 y@@3))
 :qid |MouseClassFindMorePortsbpl.69:14|
 :skolemid |13|
 :pattern ( (|Select__T@[Int]Bool_| (Singleton y@@3) x@@63))
)))
(assert (forall ((a@@3 Int) (a_size Int) (b@@3 Int) ) (! (= (MINUS_LEFT_PTR a@@3 a_size b@@3) (- a@@3 (* a_size b@@3)))
 :qid |MouseClassFindMorePortsbpl.1802:14|
 :skolemid |343|
 :pattern ( (MINUS_LEFT_PTR a@@3 a_size b@@3))
)))
(assert (forall ((a@@4 Int) (a_size@@0 Int) (b@@4 Int) ) (! (= (PLUS a@@4 a_size@@0 b@@4) (+ a@@4 (* a_size@@0 b@@4)))
 :qid |MouseClassFindMorePortsbpl.1805:15|
 :skolemid |344|
 :pattern ( (PLUS a@@4 a_size@@0 b@@4))
)))
(assert (forall ((x@@64 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (Dereference S M) x@@64) (exists ((y@@4 Int) ) (!  (and (= x@@64 (|Select__T@[Int]Int_| M y@@4)) (|Select__T@[Int]Bool_| S y@@4))
 :qid |MouseClassFindMorePortsbpl.90:102|
 :skolemid |29|
)))
 :qid |MouseClassFindMorePortsbpl.90:14|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (Dereference S M) x@@64))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) ) (!  (=> (= a@@5 b@@5) (= (BIT_BAND a@@5 b@@5) a@@5))
 :qid |MouseClassFindMorePortsbpl.1863:14|
 :skolemid |352|
 :pattern ( (BIT_BAND a@@5 b@@5))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) ) (! (= (MULT a@@6 b@@6) (* a@@6 b@@6))
 :qid |MouseClassFindMorePortsbpl.1808:14|
 :skolemid |345|
 :pattern ( (MULT a@@6 b@@6))
)))
(assert (forall ((a@@7 Bool) ) (! (= a@@7 (not (= (LIFT a@@7) 0)))
 :qid |MouseClassFindMorePortsbpl.1874:14|
 :skolemid |355|
 :pattern ( (LIFT a@@7))
)))
(assert (forall ((a@@8 Int) ) (!  (=> (not (= a@@8 0)) (= (NOT a@@8) 0))
 :qid |MouseClassFindMorePortsbpl.1878:14|
 :skolemid |357|
 :pattern ( (NOT a@@8))
)))
(assert (forall ((a@@9 Int) ) (!  (=> (not (= a@@9 0)) (= (NULL_CHECK a@@9) 0))
 :qid |MouseClassFindMorePortsbpl.1882:14|
 :skolemid |359|
 :pattern ( (NULL_CHECK a@@9))
)))
(assert (forall ((a@@10 Int) ) (!  (=> (= a@@10 0) (not (= (NOT a@@10) 0)))
 :qid |MouseClassFindMorePortsbpl.1877:14|
 :skolemid |356|
 :pattern ( (NOT a@@10))
)))
(assert (forall ((a@@11 Int) ) (!  (=> (= a@@11 0) (not (= (NULL_CHECK a@@11) 0)))
 :qid |MouseClassFindMorePortsbpl.1881:14|
 :skolemid |358|
 :pattern ( (NULL_CHECK a@@11))
)))
(assert (forall ((x@@65 Int) ) (! (= (File__PORTInv x@@65) (- x@@65 0))
 :qid |MouseClassFindMorePortsbpl.1420:15|
 :skolemid |119|
 :pattern ( (File__PORTInv x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (Flink__LIST_ENTRYInv x@@66) (- x@@66 0))
 :qid |MouseClassFindMorePortsbpl.1454:15|
 :skolemid |139|
 :pattern ( (Flink__LIST_ENTRYInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (Length__UNICODE_STRINGInv x@@67) (- x@@67 0))
 :qid |MouseClassFindMorePortsbpl.1556:15|
 :skolemid |199|
 :pattern ( (Length__UNICODE_STRINGInv x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (Self__DEVICE_EXTENSIONInv x@@68) (- x@@68 0))
 :qid |MouseClassFindMorePortsbpl.1692:15|
 :skolemid |279|
 :pattern ( (Self__DEVICE_EXTENSIONInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (MaximumLength__UNICODE_STRINGInv x@@69) (- x@@69 2))
 :qid |MouseClassFindMorePortsbpl.1590:15|
 :skolemid |219|
 :pattern ( (MaximumLength__UNICODE_STRINGInv x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (Buffer__UNICODE_STRINGInv x@@70) (- x@@70 4))
 :qid |MouseClassFindMorePortsbpl.1335:15|
 :skolemid |69|
 :pattern ( (Buffer__UNICODE_STRINGInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (GrandMaster__GLOBALSInv x@@71) (- x@@71 4))
 :qid |MouseClassFindMorePortsbpl.1488:15|
 :skolemid |159|
 :pattern ( (GrandMaster__GLOBALSInv x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (Port__PORTInv x@@72) (- x@@72 4))
 :qid |MouseClassFindMorePortsbpl.1658:15|
 :skolemid |259|
 :pattern ( (Port__PORTInv x@@72))
)))
(assert (forall ((x@@73 Int) ) (! (= (AssocClassList__GLOBALSInv x@@73) (- x@@73 8))
 :qid |MouseClassFindMorePortsbpl.1301:15|
 :skolemid |49|
 :pattern ( (AssocClassList__GLOBALSInv x@@73))
)))
(assert (forall ((x@@74 Int) ) (! (= (TopPort__DEVICE_EXTENSIONInv x@@74) (- x@@74 8))
 :qid |MouseClassFindMorePortsbpl.1760:15|
 :skolemid |319|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv x@@74))
)))
(assert (forall ((x@@75 Int) ) (! (= (Free__PORTInv x@@75) (- x@@75 11))
 :qid |MouseClassFindMorePortsbpl.1471:15|
 :skolemid |149|
 :pattern ( (Free__PORTInv x@@75))
)))
(assert (forall ((x@@76 Int) ) (! (= (NumberLegacyPorts__GLOBALSInv x@@76) (- x@@76 20))
 :qid |MouseClassFindMorePortsbpl.1624:15|
 :skolemid |239|
 :pattern ( (NumberLegacyPorts__GLOBALSInv x@@76))
)))
(assert (forall ((x@@77 Int) ) (! (= (Mutex__GLOBALSInv x@@77) (- x@@77 24))
 :qid |MouseClassFindMorePortsbpl.1607:15|
 :skolemid |229|
 :pattern ( (Mutex__GLOBALSInv x@@77))
)))
(assert (forall ((x@@78 Int) ) (! (= (Flags__DEVICE_OBJECTInv x@@78) (- x@@78 28))
 :qid |MouseClassFindMorePortsbpl.1437:15|
 :skolemid |129|
 :pattern ( (Flags__DEVICE_OBJECTInv x@@78))
)))
(assert (forall ((x@@79 Int) ) (! (= (DeviceExtension__DEVICE_OBJECTInv x@@79) (- x@@79 40))
 :qid |MouseClassFindMorePortsbpl.1386:15|
 :skolemid |99|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv x@@79))
)))
(assert (forall ((x@@80 Int) ) (! (= (StackSize__DEVICE_OBJECTInv x@@80) (- x@@80 48))
 :qid |MouseClassFindMorePortsbpl.1726:15|
 :skolemid |299|
 :pattern ( (StackSize__DEVICE_OBJECTInv x@@80))
)))
(assert (forall ((x@@81 Int) ) (! (= (PortsServiced__GLOBALSInv x@@81) (- x@@81 60))
 :qid |MouseClassFindMorePortsbpl.1675:15|
 :skolemid |269|
 :pattern ( (PortsServiced__GLOBALSInv x@@81))
)))
(assert (forall ((x@@82 Int) ) (! (= (InitExtension__GLOBALSInv x@@82) (- x@@82 64))
 :qid |MouseClassFindMorePortsbpl.1505:15|
 :skolemid |169|
 :pattern ( (InitExtension__GLOBALSInv x@@82))
)))
(assert (forall ((x@@83 Int) ) (! (= (PnP__DEVICE_EXTENSIONInv x@@83) (- x@@83 104))
 :qid |MouseClassFindMorePortsbpl.1641:15|
 :skolemid |249|
 :pattern ( (PnP__DEVICE_EXTENSIONInv x@@83))
)))
(assert (forall ((x@@84 Int) ) (! (= (Started__DEVICE_EXTENSIONInv x@@84) (- x@@84 105))
 :qid |MouseClassFindMorePortsbpl.1743:15|
 :skolemid |309|
 :pattern ( (Started__DEVICE_EXTENSIONInv x@@84))
)))
(assert (forall ((x@@85 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@85) (- x@@85 108))
 :qid |MouseClassFindMorePortsbpl.1794:15|
 :skolemid |339|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@85))
)))
(assert (forall ((x@@86 Int) ) (! (= (InputData__DEVICE_EXTENSIONInv x@@86) (- x@@86 128))
 :qid |MouseClassFindMorePortsbpl.1522:15|
 :skolemid |179|
 :pattern ( (InputData__DEVICE_EXTENSIONInv x@@86))
)))
(assert (forall ((x@@87 Int) ) (! (= (DataIn__DEVICE_EXTENSIONInv x@@87) (- x@@87 132))
 :qid |MouseClassFindMorePortsbpl.1352:15|
 :skolemid |79|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv x@@87))
)))
(assert (forall ((x@@88 Int) ) (! (= (DataOut__DEVICE_EXTENSIONInv x@@88) (- x@@88 136))
 :qid |MouseClassFindMorePortsbpl.1369:15|
 :skolemid |89|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv x@@88))
)))
(assert (forall ((x@@89 Int) ) (! (= (SpinLock__DEVICE_EXTENSIONInv x@@89) (- x@@89 152))
 :qid |MouseClassFindMorePortsbpl.1709:15|
 :skolemid |289|
 :pattern ( (SpinLock__DEVICE_EXTENSIONInv x@@89))
)))
(assert (forall ((x@@90 Int) ) (! (= (UnitId__DEVICE_EXTENSIONInv x@@90) (- x@@90 176))
 :qid |MouseClassFindMorePortsbpl.1777:15|
 :skolemid |329|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv x@@90))
)))
(assert (forall ((x@@91 Int) ) (! (= (Link__DEVICE_EXTENSIONInv x@@91) (- x@@91 252))
 :qid |MouseClassFindMorePortsbpl.1573:15|
 :skolemid |209|
 :pattern ( (Link__DEVICE_EXTENSIONInv x@@91))
)))
(assert (forall ((x@@92 Int) ) (! (= (File__DEVICE_EXTENSIONInv x@@92) (- x@@92 260))
 :qid |MouseClassFindMorePortsbpl.1403:15|
 :skolemid |109|
 :pattern ( (File__DEVICE_EXTENSIONInv x@@92))
)))
(assert (forall ((x@@93 Int) ) (! (= (BaseClassName__GLOBALSInv x@@93) (- x@@93 344))
 :qid |MouseClassFindMorePortsbpl.1318:15|
 :skolemid |59|
 :pattern ( (BaseClassName__GLOBALSInv x@@93))
)))
(assert (forall ((x@@94 Int) ) (! (= (LegacyDeviceList__GLOBALSInv x@@94) (- x@@94 864))
 :qid |MouseClassFindMorePortsbpl.1539:15|
 :skolemid |189|
 :pattern ( (LegacyDeviceList__GLOBALSInv x@@94))
)))
(assert (forall ((x@@95 Int) ) (! (= (File__PORT x@@95) (+ x@@95 0))
 :qid |MouseClassFindMorePortsbpl.1419:15|
 :skolemid |118|
 :pattern ( (File__PORT x@@95))
)))
(assert (forall ((x@@96 Int) ) (! (= (Flink__LIST_ENTRY x@@96) (+ x@@96 0))
 :qid |MouseClassFindMorePortsbpl.1453:15|
 :skolemid |138|
 :pattern ( (Flink__LIST_ENTRY x@@96))
)))
(assert (forall ((x@@97 Int) ) (! (= (Length__UNICODE_STRING x@@97) (+ x@@97 0))
 :qid |MouseClassFindMorePortsbpl.1555:15|
 :skolemid |198|
 :pattern ( (Length__UNICODE_STRING x@@97))
)))
(assert (forall ((x@@98 Int) ) (! (= (Self__DEVICE_EXTENSION x@@98) (+ x@@98 0))
 :qid |MouseClassFindMorePortsbpl.1691:15|
 :skolemid |278|
 :pattern ( (Self__DEVICE_EXTENSION x@@98))
)))
(assert (forall ((x@@99 Int) ) (! (= (MaximumLength__UNICODE_STRING x@@99) (+ x@@99 2))
 :qid |MouseClassFindMorePortsbpl.1589:15|
 :skolemid |218|
 :pattern ( (MaximumLength__UNICODE_STRING x@@99))
)))
(assert (forall ((x@@100 Int) ) (! (= (Buffer__UNICODE_STRING x@@100) (+ x@@100 4))
 :qid |MouseClassFindMorePortsbpl.1334:15|
 :skolemid |68|
 :pattern ( (Buffer__UNICODE_STRING x@@100))
)))
(assert (forall ((x@@101 Int) ) (! (= (GrandMaster__GLOBALS x@@101) (+ x@@101 4))
 :qid |MouseClassFindMorePortsbpl.1487:15|
 :skolemid |158|
 :pattern ( (GrandMaster__GLOBALS x@@101))
)))
(assert (forall ((x@@102 Int) ) (! (= (Port__PORT x@@102) (+ x@@102 4))
 :qid |MouseClassFindMorePortsbpl.1657:15|
 :skolemid |258|
 :pattern ( (Port__PORT x@@102))
)))
(assert (forall ((x@@103 Int) ) (! (= (AssocClassList__GLOBALS x@@103) (+ x@@103 8))
 :qid |MouseClassFindMorePortsbpl.1300:15|
 :skolemid |48|
 :pattern ( (AssocClassList__GLOBALS x@@103))
)))
(assert (forall ((x@@104 Int) ) (! (= (TopPort__DEVICE_EXTENSION x@@104) (+ x@@104 8))
 :qid |MouseClassFindMorePortsbpl.1759:15|
 :skolemid |318|
 :pattern ( (TopPort__DEVICE_EXTENSION x@@104))
)))
(assert (forall ((x@@105 Int) ) (! (= (Free__PORT x@@105) (+ x@@105 11))
 :qid |MouseClassFindMorePortsbpl.1470:15|
 :skolemid |148|
 :pattern ( (Free__PORT x@@105))
)))
(assert (forall ((x@@106 Int) ) (! (= (NumberLegacyPorts__GLOBALS x@@106) (+ x@@106 20))
 :qid |MouseClassFindMorePortsbpl.1623:15|
 :skolemid |238|
 :pattern ( (NumberLegacyPorts__GLOBALS x@@106))
)))
(assert (forall ((x@@107 Int) ) (! (= (Mutex__GLOBALS x@@107) (+ x@@107 24))
 :qid |MouseClassFindMorePortsbpl.1606:15|
 :skolemid |228|
 :pattern ( (Mutex__GLOBALS x@@107))
)))
(assert (forall ((x@@108 Int) ) (! (= (Flags__DEVICE_OBJECT x@@108) (+ x@@108 28))
 :qid |MouseClassFindMorePortsbpl.1436:15|
 :skolemid |128|
 :pattern ( (Flags__DEVICE_OBJECT x@@108))
)))
(assert (forall ((x@@109 Int) ) (! (= (DeviceExtension__DEVICE_OBJECT x@@109) (+ x@@109 40))
 :qid |MouseClassFindMorePortsbpl.1385:15|
 :skolemid |98|
 :pattern ( (DeviceExtension__DEVICE_OBJECT x@@109))
)))
(assert (forall ((x@@110 Int) ) (! (= (StackSize__DEVICE_OBJECT x@@110) (+ x@@110 48))
 :qid |MouseClassFindMorePortsbpl.1725:15|
 :skolemid |298|
 :pattern ( (StackSize__DEVICE_OBJECT x@@110))
)))
(assert (forall ((x@@111 Int) ) (! (= (PortsServiced__GLOBALS x@@111) (+ x@@111 60))
 :qid |MouseClassFindMorePortsbpl.1674:15|
 :skolemid |268|
 :pattern ( (PortsServiced__GLOBALS x@@111))
)))
(assert (forall ((x@@112 Int) ) (! (= (InitExtension__GLOBALS x@@112) (+ x@@112 64))
 :qid |MouseClassFindMorePortsbpl.1504:15|
 :skolemid |168|
 :pattern ( (InitExtension__GLOBALS x@@112))
)))
(assert (forall ((x@@113 Int) ) (! (= (PnP__DEVICE_EXTENSION x@@113) (+ x@@113 104))
 :qid |MouseClassFindMorePortsbpl.1640:15|
 :skolemid |248|
 :pattern ( (PnP__DEVICE_EXTENSION x@@113))
)))
(assert (forall ((x@@114 Int) ) (! (= (Started__DEVICE_EXTENSION x@@114) (+ x@@114 105))
 :qid |MouseClassFindMorePortsbpl.1742:15|
 :skolemid |308|
 :pattern ( (Started__DEVICE_EXTENSION x@@114))
)))
(assert (forall ((x@@115 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSION x@@115) (+ x@@115 108))
 :qid |MouseClassFindMorePortsbpl.1793:15|
 :skolemid |338|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSION x@@115))
)))
(assert (forall ((x@@116 Int) ) (! (= (InputData__DEVICE_EXTENSION x@@116) (+ x@@116 128))
 :qid |MouseClassFindMorePortsbpl.1521:15|
 :skolemid |178|
 :pattern ( (InputData__DEVICE_EXTENSION x@@116))
)))
(assert (forall ((x@@117 Int) ) (! (= (DataIn__DEVICE_EXTENSION x@@117) (+ x@@117 132))
 :qid |MouseClassFindMorePortsbpl.1351:15|
 :skolemid |78|
 :pattern ( (DataIn__DEVICE_EXTENSION x@@117))
)))
(assert (forall ((x@@118 Int) ) (! (= (DataOut__DEVICE_EXTENSION x@@118) (+ x@@118 136))
 :qid |MouseClassFindMorePortsbpl.1368:15|
 :skolemid |88|
 :pattern ( (DataOut__DEVICE_EXTENSION x@@118))
)))
(assert (forall ((x@@119 Int) ) (! (= (SpinLock__DEVICE_EXTENSION x@@119) (+ x@@119 152))
 :qid |MouseClassFindMorePortsbpl.1708:15|
 :skolemid |288|
 :pattern ( (SpinLock__DEVICE_EXTENSION x@@119))
)))
(assert (forall ((x@@120 Int) ) (! (= (UnitId__DEVICE_EXTENSION x@@120) (+ x@@120 176))
 :qid |MouseClassFindMorePortsbpl.1776:15|
 :skolemid |328|
 :pattern ( (UnitId__DEVICE_EXTENSION x@@120))
)))
(assert (forall ((x@@121 Int) ) (! (= (Link__DEVICE_EXTENSION x@@121) (+ x@@121 252))
 :qid |MouseClassFindMorePortsbpl.1572:15|
 :skolemid |208|
 :pattern ( (Link__DEVICE_EXTENSION x@@121))
)))
(assert (forall ((x@@122 Int) ) (! (= (File__DEVICE_EXTENSION x@@122) (+ x@@122 260))
 :qid |MouseClassFindMorePortsbpl.1402:15|
 :skolemid |108|
 :pattern ( (File__DEVICE_EXTENSION x@@122))
)))
(assert (forall ((x@@123 Int) ) (! (= (BaseClassName__GLOBALS x@@123) (+ x@@123 344))
 :qid |MouseClassFindMorePortsbpl.1317:15|
 :skolemid |58|
 :pattern ( (BaseClassName__GLOBALS x@@123))
)))
(assert (forall ((x@@124 Int) ) (! (= (LegacyDeviceList__GLOBALS x@@124) (+ x@@124 864))
 :qid |MouseClassFindMorePortsbpl.1538:15|
 :skolemid |188|
 :pattern ( (LegacyDeviceList__GLOBALS x@@124))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@125 Int) (y@@5 Int) (z@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (ReachBetweenSet f@@2 x@@125 z@@1) y@@5) (ReachBetween f@@2 x@@125 y@@5 z@@1))
 :qid |MouseClassFindMorePortsbpl.1939:14|
 :skolemid |363|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet f@@2 x@@125 z@@1) y@@5))
)))
(assert (forall ((x@@126 Int) (S@@0 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@0 x@@126) (Subset S@@0 T)) (|Select__T@[Int]Bool_| T x@@126))
 :qid |MouseClassFindMorePortsbpl.79:14|
 :skolemid |19|
 :pattern ( (|Select__T@[Int]Bool_| S@@0 x@@126) (Subset S@@0 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@126) (Subset S@@0 T))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (TwoBytesToInt b0 b1) (TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |MouseClassFindMorePortsbpl.8:14|
 :skolemid |1|
 :pattern ( (TwoBytesToInt b0 b1) (TwoBytesToInt c0 c1))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@127 Int) (y@@6 Int) (z@@2 Int) (w@@0 Int) ) (!  (=> (and (ReachBetween f@@3 x@@127 y@@6 z@@2) (ReachBetween f@@3 y@@6 w@@0 z@@2)) (and (ReachBetween f@@3 x@@127 y@@6 w@@0) (ReachBetween f@@3 x@@127 w@@0 z@@2)))
 :qid |MouseClassFindMorePortsbpl.1974:14|
 :skolemid |374|
 :pattern ( (ReachBetween f@@3 x@@127 y@@6 z@@2) (ReachBetween f@@3 y@@6 w@@0 z@@2))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@128 Int) (y@@7 Int) (z@@3 Int) (w@@1 Int) ) (!  (=> (and (ReachBetween f@@4 x@@128 y@@7 z@@3) (ReachBetween f@@4 x@@128 w@@1 y@@7)) (and (ReachBetween f@@4 x@@128 w@@1 z@@3) (ReachBetween f@@4 w@@1 y@@7 z@@3)))
 :qid |MouseClassFindMorePortsbpl.1977:14|
 :skolemid |375|
 :pattern ( (ReachBetween f@@4 x@@128 y@@7 z@@3) (ReachBetween f@@4 x@@128 w@@1 y@@7))
)))
(assert (forall ((b0@@0 T@byte) (c0@@0 T@byte) ) (!  (=> (= (OneByteToInt b0@@0) (OneByteToInt c0@@0)) (= b0@@0 c0@@0))
 :qid |MouseClassFindMorePortsbpl.7:14|
 :skolemid |0|
 :pattern ( (OneByteToInt b0@@0) (OneByteToInt c0@@0))
)))
(assert (forall ((M@@0 |T@[name][Int]Int|) (x@@129 Int) ) (! (= (|Select__T@[Int]Int_| (Unified M@@0) x@@129) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@0 (Field x@@129)) x@@129))
 :qid |MouseClassFindMorePortsbpl.99:14|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]Int_| (Unified M@@0) x@@129))
)))
(assert (forall ((x@@130 Int) (S@@1 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@1 x@@130) (Disjoint S@@1 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@130)))
 :qid |MouseClassFindMorePortsbpl.81:14|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@130) (Disjoint S@@1 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@130) (Disjoint S@@1 T@@0))
)))
(assert (forall ((v@@0 Int) (t@@0 T@name) (m@@0 |T@[name][Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (Values t@@0 m@@0) v@@0) (HasType v@@0 t@@0 m@@0))
 :qid |MouseClassFindMorePortsbpl.110:14|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Bool_| (Values t@@0 m@@0) v@@0))
)))
(assert (forall ((x@@131 Int) (S@@2 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALS S@@2) x@@131) (|Select__T@[Int]Bool_| S@@2 (AssocClassList__GLOBALSInv x@@131)))
 :qid |MouseClassFindMorePortsbpl.1295:15|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALS S@@2) x@@131))
)))
(assert (forall ((x@@132 Int) (S@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALSInv S@@3) x@@132) (|Select__T@[Int]Bool_| S@@3 (AssocClassList__GLOBALS x@@132)))
 :qid |MouseClassFindMorePortsbpl.1296:15|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALSInv S@@3) x@@132))
)))
(assert (forall ((x@@133 Int) (S@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@4) x@@133) (|Select__T@[Int]Bool_| S@@4 (BaseClassName__GLOBALSInv x@@133)))
 :qid |MouseClassFindMorePortsbpl.1312:15|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@4) x@@133))
)))
(assert (forall ((x@@134 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@5) x@@134) (|Select__T@[Int]Bool_| S@@5 (BaseClassName__GLOBALS x@@134)))
 :qid |MouseClassFindMorePortsbpl.1313:15|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@5) x@@134))
)))
(assert (forall ((x@@135 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@6) x@@135) (|Select__T@[Int]Bool_| S@@6 (Buffer__UNICODE_STRINGInv x@@135)))
 :qid |MouseClassFindMorePortsbpl.1329:15|
 :skolemid |64|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@6) x@@135))
)))
(assert (forall ((x@@136 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@7) x@@136) (|Select__T@[Int]Bool_| S@@7 (Buffer__UNICODE_STRING x@@136)))
 :qid |MouseClassFindMorePortsbpl.1330:15|
 :skolemid |65|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@7) x@@136))
)))
(assert (forall ((x@@137 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@8) x@@137) (|Select__T@[Int]Bool_| S@@8 (DataIn__DEVICE_EXTENSIONInv x@@137)))
 :qid |MouseClassFindMorePortsbpl.1346:15|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@8) x@@137))
)))
(assert (forall ((x@@138 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@9) x@@138) (|Select__T@[Int]Bool_| S@@9 (DataIn__DEVICE_EXTENSION x@@138)))
 :qid |MouseClassFindMorePortsbpl.1347:15|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@9) x@@138))
)))
(assert (forall ((x@@139 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@10) x@@139) (|Select__T@[Int]Bool_| S@@10 (DataOut__DEVICE_EXTENSIONInv x@@139)))
 :qid |MouseClassFindMorePortsbpl.1363:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@10) x@@139))
)))
(assert (forall ((x@@140 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@11) x@@140) (|Select__T@[Int]Bool_| S@@11 (DataOut__DEVICE_EXTENSION x@@140)))
 :qid |MouseClassFindMorePortsbpl.1364:15|
 :skolemid |85|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@11) x@@140))
)))
(assert (forall ((x@@141 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@12) x@@141) (|Select__T@[Int]Bool_| S@@12 (DeviceExtension__DEVICE_OBJECTInv x@@141)))
 :qid |MouseClassFindMorePortsbpl.1380:15|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@12) x@@141))
)))
(assert (forall ((x@@142 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@13) x@@142) (|Select__T@[Int]Bool_| S@@13 (DeviceExtension__DEVICE_OBJECT x@@142)))
 :qid |MouseClassFindMorePortsbpl.1381:15|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@13) x@@142))
)))
(assert (forall ((x@@143 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@14) x@@143) (|Select__T@[Int]Bool_| S@@14 (File__DEVICE_EXTENSIONInv x@@143)))
 :qid |MouseClassFindMorePortsbpl.1397:15|
 :skolemid |104|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@14) x@@143))
)))
(assert (forall ((x@@144 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@15) x@@144) (|Select__T@[Int]Bool_| S@@15 (File__DEVICE_EXTENSION x@@144)))
 :qid |MouseClassFindMorePortsbpl.1398:15|
 :skolemid |105|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@15) x@@144))
)))
(assert (forall ((x@@145 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__PORT S@@16) x@@145) (|Select__T@[Int]Bool_| S@@16 (File__PORTInv x@@145)))
 :qid |MouseClassFindMorePortsbpl.1414:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__PORT S@@16) x@@145))
)))
(assert (forall ((x@@146 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__PORTInv S@@17) x@@146) (|Select__T@[Int]Bool_| S@@17 (File__PORT x@@146)))
 :qid |MouseClassFindMorePortsbpl.1415:15|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__PORTInv S@@17) x@@146))
)))
(assert (forall ((x@@147 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@18) x@@147) (|Select__T@[Int]Bool_| S@@18 (Flags__DEVICE_OBJECTInv x@@147)))
 :qid |MouseClassFindMorePortsbpl.1431:15|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@18) x@@147))
)))
(assert (forall ((x@@148 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@19) x@@148) (|Select__T@[Int]Bool_| S@@19 (Flags__DEVICE_OBJECT x@@148)))
 :qid |MouseClassFindMorePortsbpl.1432:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@19) x@@148))
)))
(assert (forall ((x@@149 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@20) x@@149) (|Select__T@[Int]Bool_| S@@20 (Flink__LIST_ENTRYInv x@@149)))
 :qid |MouseClassFindMorePortsbpl.1448:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@20) x@@149))
)))
(assert (forall ((x@@150 Int) (S@@21 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@21) x@@150) (|Select__T@[Int]Bool_| S@@21 (Flink__LIST_ENTRY x@@150)))
 :qid |MouseClassFindMorePortsbpl.1449:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@21) x@@150))
)))
(assert (forall ((x@@151 Int) (S@@22 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Free__PORT S@@22) x@@151) (|Select__T@[Int]Bool_| S@@22 (Free__PORTInv x@@151)))
 :qid |MouseClassFindMorePortsbpl.1465:15|
 :skolemid |144|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Free__PORT S@@22) x@@151))
)))
(assert (forall ((x@@152 Int) (S@@23 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Free__PORTInv S@@23) x@@152) (|Select__T@[Int]Bool_| S@@23 (Free__PORT x@@152)))
 :qid |MouseClassFindMorePortsbpl.1466:15|
 :skolemid |145|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Free__PORTInv S@@23) x@@152))
)))
(assert (forall ((x@@153 Int) (S@@24 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@24) x@@153) (|Select__T@[Int]Bool_| S@@24 (GrandMaster__GLOBALSInv x@@153)))
 :qid |MouseClassFindMorePortsbpl.1482:15|
 :skolemid |154|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@24) x@@153))
)))
(assert (forall ((x@@154 Int) (S@@25 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@25) x@@154) (|Select__T@[Int]Bool_| S@@25 (GrandMaster__GLOBALS x@@154)))
 :qid |MouseClassFindMorePortsbpl.1483:15|
 :skolemid |155|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@25) x@@154))
)))
(assert (forall ((x@@155 Int) (S@@26 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALS S@@26) x@@155) (|Select__T@[Int]Bool_| S@@26 (InitExtension__GLOBALSInv x@@155)))
 :qid |MouseClassFindMorePortsbpl.1499:15|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALS S@@26) x@@155))
)))
(assert (forall ((x@@156 Int) (S@@27 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALSInv S@@27) x@@156) (|Select__T@[Int]Bool_| S@@27 (InitExtension__GLOBALS x@@156)))
 :qid |MouseClassFindMorePortsbpl.1500:15|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALSInv S@@27) x@@156))
)))
(assert (forall ((x@@157 Int) (S@@28 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@28) x@@157) (|Select__T@[Int]Bool_| S@@28 (InputData__DEVICE_EXTENSIONInv x@@157)))
 :qid |MouseClassFindMorePortsbpl.1516:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@28) x@@157))
)))
(assert (forall ((x@@158 Int) (S@@29 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@29) x@@158) (|Select__T@[Int]Bool_| S@@29 (InputData__DEVICE_EXTENSION x@@158)))
 :qid |MouseClassFindMorePortsbpl.1517:15|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@29) x@@158))
)))
(assert (forall ((x@@159 Int) (S@@30 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@30) x@@159) (|Select__T@[Int]Bool_| S@@30 (LegacyDeviceList__GLOBALSInv x@@159)))
 :qid |MouseClassFindMorePortsbpl.1533:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@30) x@@159))
)))
(assert (forall ((x@@160 Int) (S@@31 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@31) x@@160) (|Select__T@[Int]Bool_| S@@31 (LegacyDeviceList__GLOBALS x@@160)))
 :qid |MouseClassFindMorePortsbpl.1534:15|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@31) x@@160))
)))
(assert (forall ((x@@161 Int) (S@@32 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@32) x@@161) (|Select__T@[Int]Bool_| S@@32 (Length__UNICODE_STRINGInv x@@161)))
 :qid |MouseClassFindMorePortsbpl.1550:15|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@32) x@@161))
)))
(assert (forall ((x@@162 Int) (S@@33 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@33) x@@162) (|Select__T@[Int]Bool_| S@@33 (Length__UNICODE_STRING x@@162)))
 :qid |MouseClassFindMorePortsbpl.1551:15|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@33) x@@162))
)))
(assert (forall ((x@@163 Int) (S@@34 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@34) x@@163) (|Select__T@[Int]Bool_| S@@34 (Link__DEVICE_EXTENSIONInv x@@163)))
 :qid |MouseClassFindMorePortsbpl.1567:15|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@34) x@@163))
)))
(assert (forall ((x@@164 Int) (S@@35 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@35) x@@164) (|Select__T@[Int]Bool_| S@@35 (Link__DEVICE_EXTENSION x@@164)))
 :qid |MouseClassFindMorePortsbpl.1568:15|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@35) x@@164))
)))
(assert (forall ((x@@165 Int) (S@@36 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@36) x@@165) (|Select__T@[Int]Bool_| S@@36 (MaximumLength__UNICODE_STRINGInv x@@165)))
 :qid |MouseClassFindMorePortsbpl.1584:15|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@36) x@@165))
)))
(assert (forall ((x@@166 Int) (S@@37 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@37) x@@166) (|Select__T@[Int]Bool_| S@@37 (MaximumLength__UNICODE_STRING x@@166)))
 :qid |MouseClassFindMorePortsbpl.1585:15|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@37) x@@166))
)))
(assert (forall ((x@@167 Int) (S@@38 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@38) x@@167) (|Select__T@[Int]Bool_| S@@38 (Mutex__GLOBALSInv x@@167)))
 :qid |MouseClassFindMorePortsbpl.1601:15|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@38) x@@167))
)))
(assert (forall ((x@@168 Int) (S@@39 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@39) x@@168) (|Select__T@[Int]Bool_| S@@39 (Mutex__GLOBALS x@@168)))
 :qid |MouseClassFindMorePortsbpl.1602:15|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@39) x@@168))
)))
(assert (forall ((x@@169 Int) (S@@40 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALS S@@40) x@@169) (|Select__T@[Int]Bool_| S@@40 (NumberLegacyPorts__GLOBALSInv x@@169)))
 :qid |MouseClassFindMorePortsbpl.1618:15|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALS S@@40) x@@169))
)))
(assert (forall ((x@@170 Int) (S@@41 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALSInv S@@41) x@@170) (|Select__T@[Int]Bool_| S@@41 (NumberLegacyPorts__GLOBALS x@@170)))
 :qid |MouseClassFindMorePortsbpl.1619:15|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALSInv S@@41) x@@170))
)))
(assert (forall ((x@@171 Int) (S@@42 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@42) x@@171) (|Select__T@[Int]Bool_| S@@42 (PnP__DEVICE_EXTENSIONInv x@@171)))
 :qid |MouseClassFindMorePortsbpl.1635:15|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@42) x@@171))
)))
(assert (forall ((x@@172 Int) (S@@43 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@43) x@@172) (|Select__T@[Int]Bool_| S@@43 (PnP__DEVICE_EXTENSION x@@172)))
 :qid |MouseClassFindMorePortsbpl.1636:15|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@43) x@@172))
)))
(assert (forall ((x@@173 Int) (S@@44 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Port__PORT S@@44) x@@173) (|Select__T@[Int]Bool_| S@@44 (Port__PORTInv x@@173)))
 :qid |MouseClassFindMorePortsbpl.1652:15|
 :skolemid |254|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Port__PORT S@@44) x@@173))
)))
(assert (forall ((x@@174 Int) (S@@45 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Port__PORTInv S@@45) x@@174) (|Select__T@[Int]Bool_| S@@45 (Port__PORT x@@174)))
 :qid |MouseClassFindMorePortsbpl.1653:15|
 :skolemid |255|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Port__PORTInv S@@45) x@@174))
)))
(assert (forall ((x@@175 Int) (S@@46 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALS S@@46) x@@175) (|Select__T@[Int]Bool_| S@@46 (PortsServiced__GLOBALSInv x@@175)))
 :qid |MouseClassFindMorePortsbpl.1669:15|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALS S@@46) x@@175))
)))
(assert (forall ((x@@176 Int) (S@@47 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALSInv S@@47) x@@176) (|Select__T@[Int]Bool_| S@@47 (PortsServiced__GLOBALS x@@176)))
 :qid |MouseClassFindMorePortsbpl.1670:15|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALSInv S@@47) x@@176))
)))
(assert (forall ((x@@177 Int) (S@@48 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@48) x@@177) (|Select__T@[Int]Bool_| S@@48 (Self__DEVICE_EXTENSIONInv x@@177)))
 :qid |MouseClassFindMorePortsbpl.1686:15|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@48) x@@177))
)))
(assert (forall ((x@@178 Int) (S@@49 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@49) x@@178) (|Select__T@[Int]Bool_| S@@49 (Self__DEVICE_EXTENSION x@@178)))
 :qid |MouseClassFindMorePortsbpl.1687:15|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@49) x@@178))
)))
(assert (forall ((x@@179 Int) (S@@50 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSION S@@50) x@@179) (|Select__T@[Int]Bool_| S@@50 (SpinLock__DEVICE_EXTENSIONInv x@@179)))
 :qid |MouseClassFindMorePortsbpl.1703:15|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSION S@@50) x@@179))
)))
(assert (forall ((x@@180 Int) (S@@51 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSIONInv S@@51) x@@180) (|Select__T@[Int]Bool_| S@@51 (SpinLock__DEVICE_EXTENSION x@@180)))
 :qid |MouseClassFindMorePortsbpl.1704:15|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSIONInv S@@51) x@@180))
)))
(assert (forall ((x@@181 Int) (S@@52 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECT S@@52) x@@181) (|Select__T@[Int]Bool_| S@@52 (StackSize__DEVICE_OBJECTInv x@@181)))
 :qid |MouseClassFindMorePortsbpl.1720:15|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECT S@@52) x@@181))
)))
(assert (forall ((x@@182 Int) (S@@53 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECTInv S@@53) x@@182) (|Select__T@[Int]Bool_| S@@53 (StackSize__DEVICE_OBJECT x@@182)))
 :qid |MouseClassFindMorePortsbpl.1721:15|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECTInv S@@53) x@@182))
)))
(assert (forall ((x@@183 Int) (S@@54 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@54) x@@183) (|Select__T@[Int]Bool_| S@@54 (Started__DEVICE_EXTENSIONInv x@@183)))
 :qid |MouseClassFindMorePortsbpl.1737:15|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@54) x@@183))
)))
(assert (forall ((x@@184 Int) (S@@55 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@55) x@@184) (|Select__T@[Int]Bool_| S@@55 (Started__DEVICE_EXTENSION x@@184)))
 :qid |MouseClassFindMorePortsbpl.1738:15|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@55) x@@184))
)))
(assert (forall ((x@@185 Int) (S@@56 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@56) x@@185) (|Select__T@[Int]Bool_| S@@56 (TopPort__DEVICE_EXTENSIONInv x@@185)))
 :qid |MouseClassFindMorePortsbpl.1754:15|
 :skolemid |314|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@56) x@@185))
)))
(assert (forall ((x@@186 Int) (S@@57 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@57) x@@186) (|Select__T@[Int]Bool_| S@@57 (TopPort__DEVICE_EXTENSION x@@186)))
 :qid |MouseClassFindMorePortsbpl.1755:15|
 :skolemid |315|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@57) x@@186))
)))
(assert (forall ((x@@187 Int) (S@@58 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@58) x@@187) (|Select__T@[Int]Bool_| S@@58 (UnitId__DEVICE_EXTENSIONInv x@@187)))
 :qid |MouseClassFindMorePortsbpl.1771:15|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@58) x@@187))
)))
(assert (forall ((x@@188 Int) (S@@59 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@59) x@@188) (|Select__T@[Int]Bool_| S@@59 (UnitId__DEVICE_EXTENSION x@@188)))
 :qid |MouseClassFindMorePortsbpl.1772:15|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@59) x@@188))
)))
(assert (forall ((x@@189 Int) (S@@60 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@60) x@@189) (|Select__T@[Int]Bool_| S@@60 (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@189)))
 :qid |MouseClassFindMorePortsbpl.1788:15|
 :skolemid |334|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@60) x@@189))
)))
(assert (forall ((x@@190 Int) (S@@61 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@61) x@@190) (|Select__T@[Int]Bool_| S@@61 (WaitWakeSpinLock__DEVICE_EXTENSION x@@190)))
 :qid |MouseClassFindMorePortsbpl.1789:15|
 :skolemid |335|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@61) x@@190))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@191 Int) ) (! (ReachBetween f@@5 x@@191 x@@191 x@@191)
 :qid |MouseClassFindMorePortsbpl.1949:14|
 :skolemid |366|
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@192 Int) (z@@4 Int) ) (! (ReachBetween f@@6 x@@192 x@@192 x@@192)
 :qid |MouseClassFindMorePortsbpl.1941:14|
 :skolemid |365|
 :pattern ( (ReachBetweenSet f@@6 x@@192 z@@4))
)))
(assert (forall ((v@@1 Int) (t@@1 T@name) (m@@1 |T@[name][Int]Int|) ) (! (= (HasType v@@1 (T.Ptr t@@1) m@@1)  (or (= v@@1 0) (and (> v@@1 0) (Match v@@1 t@@1))))
 :qid |MouseClassFindMorePortsbpl.114:14|
 :skolemid |40|
 :pattern ( (HasType v@@1 (T.Ptr t@@1) m@@1))
)))
(assert (forall ((x@@193 Int) (S@@62 |T@[Int]Bool|) (M@@1 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@62 x@@193) (|Select__T@[Int]Bool_| (Dereference S@@62 M@@1) (|Select__T@[Int]Int_| M@@1 x@@193)))
 :qid |MouseClassFindMorePortsbpl.91:14|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| M@@1 x@@193) (|Select__T@[Int]Bool_| S@@62 x@@193) (Dereference S@@62 M@@1))
)))
(assert (POW2 1))
(assert (POW2 2))
(assert (POW2 4))
(assert (POW2 8))
(assert (POW2 16))
(assert (POW2 32))
(assert (POW2 64))
(assert (POW2 128))
(assert (POW2 256))
(assert (POW2 512))
(assert (POW2 1024))
(assert (POW2 2048))
(assert (POW2 4096))
(assert (POW2 8192))
(assert (POW2 16384))
(assert (POW2 32768))
(assert (POW2 65536))
(assert (POW2 131072))
(assert (POW2 262144))
(assert (POW2 524288))
(assert (POW2 1048576))
(assert (POW2 2097152))
(assert (POW2 4194304))
(assert (POW2 8388608))
(assert (POW2 16777216))
(assert (POW2 33554432))
(assert (forall ((f@@7 |T@[Int]Int|) (__x Int) ) (! (= (|Select__T@[Int]Int_| (Shift_Flink__LIST_ENTRY f@@7) __x) (|Select__T@[Int]Int_| f@@7 (Flink__LIST_ENTRY __x)))
 :qid |MouseClassFindMorePortsbpl.1992:15|
 :skolemid |379|
 :pattern ( (|Select__T@[Int]Int_| f@@7 (Flink__LIST_ENTRY __x)) (Shift_Flink__LIST_ENTRY f@@7))
 :pattern ( (|Select__T@[Int]Int_| (Shift_Flink__LIST_ENTRY f@@7) __x))
)))
(assert (forall ((a@@12 Int) (b@@7 Int) ) (!  (=> (and (< a@@12 0) (< b@@7 0)) (and (>= (* b@@7 (DIV a@@12 b@@7)) a@@12) (> a@@12 (* b@@7 (+ (DIV a@@12 b@@7) 1)))))
 :qid |MouseClassFindMorePortsbpl.1824:14|
 :skolemid |349|
 :pattern ( (DIV a@@12 b@@7))
)))
(assert (forall ((a@@13 Int) (b@@8 Int) ) (!  (=> (and (< a@@13 0) (> b@@8 0)) (and (>= (* b@@8 (DIV a@@13 b@@8)) a@@13) (> a@@13 (* b@@8 (- (DIV a@@13 b@@8) 1)))))
 :qid |MouseClassFindMorePortsbpl.1820:14|
 :skolemid |348|
 :pattern ( (DIV a@@13 b@@8))
)))
(assert (forall ((a@@14 Int) (t@@2 T@name) ) (! (= (Match a@@14 (T.Ptr t@@2)) (= (Field a@@14) (T.Ptr t@@2)))
 :qid |MouseClassFindMorePortsbpl.113:14|
 :skolemid |39|
 :pattern ( (Match a@@14 (T.Ptr t@@2)))
)))
(assert (forall ((f@@8 |T@[Int]Int|) (x@@194 Int) (y@@8 Int) (z@@5 Int) ) (!  (=> (ReachBetween f@@8 x@@194 y@@8 z@@5) (|Select__T@[Int]Bool_| (ReachBetweenSet f@@8 x@@194 z@@5) y@@8))
 :qid |MouseClassFindMorePortsbpl.1940:14|
 :skolemid |364|
 :pattern ( (ReachBetween f@@8 x@@194 y@@8 z@@5) (ReachBetweenSet f@@8 x@@194 z@@5))
)))
(assert (forall ((x@@195 Int) (y@@9 Int) (S@@63 |T@[Int]Bool|) (M@@2 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@63 x@@195)) (Equal (Dereference S@@63 (|Store__T@[Int]Int_| M@@2 x@@195 y@@9)) (Dereference S@@63 M@@2)))
 :qid |MouseClassFindMorePortsbpl.92:14|
 :skolemid |32|
 :pattern ( (Dereference S@@63 (|Store__T@[Int]Int_| M@@2 x@@195 y@@9)))
)))
(assert (forall ((n@@0 Int) (x@@196 Int) ) (! (exists ((k Int) ) (! (= (- (Rep n@@0 x@@196) x@@196) (* n@@0 k))
 :qid |MouseClassFindMorePortsbpl.46:49|
 :skolemid |7|
))
 :qid |MouseClassFindMorePortsbpl.46:14|
 :skolemid |8|
 :pattern ( (Rep n@@0 x@@196))
)))
(assert (forall ((f@@9 |T@[Int]Int|) (x@@197 Int) (y@@10 Int) (z@@6 Int) ) (! (= (ReachAvoiding f@@9 x@@197 y@@10 z@@6)  (or (ReachBetween f@@9 x@@197 y@@10 z@@6) (and (ReachBetween f@@9 x@@197 y@@10 y@@10) (not (ReachBetween f@@9 x@@197 z@@6 z@@6)))))
 :qid |MouseClassFindMorePortsbpl.1984:14|
 :skolemid |377|
 :pattern ( (ReachAvoiding f@@9 x@@197 y@@10 z@@6))
 :pattern ( (ReachBetween f@@9 x@@197 y@@10 z@@6))
)))
(assert (forall ((x@@198 Int) (S@@64 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Intersection S@@64 T@@1) x@@198)  (and (|Select__T@[Int]Bool_| S@@64 x@@198) (|Select__T@[Int]Bool_| T@@1 x@@198)))
 :qid |MouseClassFindMorePortsbpl.75:14|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| (Intersection S@@64 T@@1) x@@198))
 :pattern ( (Intersection S@@64 T@@1) (|Select__T@[Int]Bool_| S@@64 x@@198))
 :pattern ( (Intersection S@@64 T@@1) (|Select__T@[Int]Bool_| T@@1 x@@198))
)))
(assert (forall ((x@@199 Int) (S@@65 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Difference S@@65 T@@2) x@@199)  (and (|Select__T@[Int]Bool_| S@@65 x@@199) (not (|Select__T@[Int]Bool_| T@@2 x@@199))))
 :qid |MouseClassFindMorePortsbpl.76:14|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| (Difference S@@65 T@@2) x@@199))
 :pattern ( (Difference S@@65 T@@2) (|Select__T@[Int]Bool_| S@@65 x@@199))
 :pattern ( (Difference S@@65 T@@2) (|Select__T@[Int]Bool_| T@@2 x@@199))
)))
(assert (forall ((a@@15 Bool) (b@@9 Int) (c@@0 Int) ) (!  (=> (not a@@15) (= (choose a@@15 b@@9 c@@0) c@@0))
 :qid |MouseClassFindMorePortsbpl.1860:14|
 :skolemid |351|
 :pattern ( (choose a@@15 b@@9 c@@0))
)))
(assert (forall ((f@@10 |T@[Int]Int|) (__x@@0 Int) (__v Int) ) (! (= (Shift_Flink__LIST_ENTRY (|Store__T@[Int]Int_| f@@10 (Flink__LIST_ENTRY __x@@0) __v)) (|Store__T@[Int]Int_| (Shift_Flink__LIST_ENTRY f@@10) __x@@0 __v))
 :qid |MouseClassFindMorePortsbpl.1993:14|
 :skolemid |380|
 :pattern ( (Shift_Flink__LIST_ENTRY (|Store__T@[Int]Int_| f@@10 (Flink__LIST_ENTRY __x@@0) __v)))
)))
(assert (forall ((f@@11 |T@[Int]Int|) (x@@200 Int) ) (! (|Select__T@[Int]Bool_| (Inverse f@@11 (|Select__T@[Int]Int_| f@@11 x@@200)) x@@200)
 :qid |MouseClassFindMorePortsbpl.84:14|
 :skolemid |25|
 :pattern ( (Inverse f@@11 (|Select__T@[Int]Int_| f@@11 x@@200)))
)))
(assert (forall ((n@@1 Int) (x@@201 Int) (y@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (AtLeast n@@1 x@@201) y@@11) (and (<= x@@201 y@@11) (= (Rep n@@1 x@@201) (Rep n@@1 y@@11))))
 :qid |MouseClassFindMorePortsbpl.42:14|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (AtLeast n@@1 x@@201) y@@11))
)))
(assert (forall ((f@@12 |T@[Int]Int|) (x@@202 Int) (y@@12 Int) ) (!  (=> (ReachBetween f@@12 x@@202 y@@12 y@@12) (or (= x@@202 y@@12) (ReachBetween f@@12 x@@202 (|Select__T@[Int]Int_| f@@12 x@@202) y@@12)))
 :qid |MouseClassFindMorePortsbpl.1956:14|
 :skolemid |368|
 :pattern ( (|Select__T@[Int]Int_| f@@12 x@@202) (ReachBetween f@@12 x@@202 y@@12 y@@12))
)))
(assert (forall ((S@@66 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (Equal S@@66 T@@3)  (and (Subset S@@66 T@@3) (Subset T@@3 S@@66)))
 :qid |MouseClassFindMorePortsbpl.78:14|
 :skolemid |18|
 :pattern ( (Equal S@@66 T@@3))
)))
(assert (forall ((M@@3 |T@[name][Int]Int|) (x@@203 Int) (y@@13 Int) ) (! (= (Unified (|Store__T@[name][Int]Int_| M@@3 (Field x@@203) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@3 (Field x@@203)) x@@203 y@@13))) (|Store__T@[Int]Int_| (Unified M@@3) x@@203 y@@13))
 :qid |MouseClassFindMorePortsbpl.100:14|
 :skolemid |36|
 :pattern ( (Unified (|Store__T@[name][Int]Int_| M@@3 (Field x@@203) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@3 (Field x@@203)) x@@203 y@@13))))
)))
(assert (forall ((f@@13 |T@[Int]Int|) (x@@204 Int) (y@@14 Int) (z@@7 Int) ) (!  (=> (and (ReachBetween f@@13 x@@204 y@@14 y@@14) (ReachBetween f@@13 x@@204 z@@7 z@@7)) (or (ReachBetween f@@13 x@@204 y@@14 z@@7) (ReachBetween f@@13 x@@204 z@@7 y@@14)))
 :qid |MouseClassFindMorePortsbpl.1965:14|
 :skolemid |371|
 :pattern ( (ReachBetween f@@13 x@@204 y@@14 y@@14) (ReachBetween f@@13 x@@204 z@@7 z@@7))
)))
(assert (forall ((n@@2 Int) (x@@205 Int) ) (! (|Select__T@[Int]Bool_| (AtLeast n@@2 x@@205) x@@205)
 :qid |MouseClassFindMorePortsbpl.44:14|
 :skolemid |5|
 :pattern ( (AtLeast n@@2 x@@205))
)))
(assert (forall ((a@@16 Int) (b@@10 Int) ) (!  (=> (and (>= a@@16 0) (< b@@10 0)) (and (<= (* b@@10 (DIV a@@16 b@@10)) a@@16) (< a@@16 (* b@@10 (- (DIV a@@16 b@@10) 1)))))
 :qid |MouseClassFindMorePortsbpl.1816:14|
 :skolemid |347|
 :pattern ( (DIV a@@16 b@@10))
)))
(assert (forall ((a@@17 Int) (b@@11 Int) ) (!  (=> (and (>= a@@17 0) (> b@@11 0)) (and (<= (* b@@11 (DIV a@@17 b@@11)) a@@17) (< a@@17 (* b@@11 (+ (DIV a@@17 b@@11) 1)))))
 :qid |MouseClassFindMorePortsbpl.1812:14|
 :skolemid |346|
 :pattern ( (DIV a@@17 b@@11))
)))
(assert (forall ((f@@14 |T@[Int]Int|) (u Int) (x@@206 Int) ) (!  (=> (ReachBetween f@@14 u x@@206 x@@206) (ReachBetween f@@14 u u x@@206))
 :qid |MouseClassFindMorePortsbpl.1981:14|
 :skolemid |376|
 :pattern ( (ReachBetween f@@14 u x@@206 x@@206))
)))
(assert (forall ((x@@207 Int) ) (! (= (AssocClassList__GLOBALSInv (AssocClassList__GLOBALS x@@207)) x@@207)
 :qid |MouseClassFindMorePortsbpl.1292:15|
 :skolemid |42|
 :pattern ( (AssocClassList__GLOBALSInv (AssocClassList__GLOBALS x@@207)))
)))
(assert (forall ((x@@208 Int) ) (! (= (AssocClassList__GLOBALS (AssocClassList__GLOBALSInv x@@208)) x@@208)
 :qid |MouseClassFindMorePortsbpl.1293:15|
 :skolemid |43|
 :pattern ( (AssocClassList__GLOBALSInv x@@208))
)))
(assert (forall ((x@@209 Int) ) (! (= (BaseClassName__GLOBALSInv (BaseClassName__GLOBALS x@@209)) x@@209)
 :qid |MouseClassFindMorePortsbpl.1309:15|
 :skolemid |52|
 :pattern ( (BaseClassName__GLOBALSInv (BaseClassName__GLOBALS x@@209)))
)))
(assert (forall ((x@@210 Int) ) (! (= (BaseClassName__GLOBALS (BaseClassName__GLOBALSInv x@@210)) x@@210)
 :qid |MouseClassFindMorePortsbpl.1310:15|
 :skolemid |53|
 :pattern ( (BaseClassName__GLOBALSInv x@@210))
)))
(assert (forall ((x@@211 Int) ) (! (= (Buffer__UNICODE_STRINGInv (Buffer__UNICODE_STRING x@@211)) x@@211)
 :qid |MouseClassFindMorePortsbpl.1326:15|
 :skolemid |62|
 :pattern ( (Buffer__UNICODE_STRINGInv (Buffer__UNICODE_STRING x@@211)))
)))
(assert (forall ((x@@212 Int) ) (! (= (Buffer__UNICODE_STRING (Buffer__UNICODE_STRINGInv x@@212)) x@@212)
 :qid |MouseClassFindMorePortsbpl.1327:15|
 :skolemid |63|
 :pattern ( (Buffer__UNICODE_STRINGInv x@@212))
)))
(assert (forall ((x@@213 Int) ) (! (= (DataIn__DEVICE_EXTENSIONInv (DataIn__DEVICE_EXTENSION x@@213)) x@@213)
 :qid |MouseClassFindMorePortsbpl.1343:15|
 :skolemid |72|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv (DataIn__DEVICE_EXTENSION x@@213)))
)))
(assert (forall ((x@@214 Int) ) (! (= (DataIn__DEVICE_EXTENSION (DataIn__DEVICE_EXTENSIONInv x@@214)) x@@214)
 :qid |MouseClassFindMorePortsbpl.1344:15|
 :skolemid |73|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv x@@214))
)))
(assert (forall ((x@@215 Int) ) (! (= (DataOut__DEVICE_EXTENSIONInv (DataOut__DEVICE_EXTENSION x@@215)) x@@215)
 :qid |MouseClassFindMorePortsbpl.1360:15|
 :skolemid |82|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv (DataOut__DEVICE_EXTENSION x@@215)))
)))
(assert (forall ((x@@216 Int) ) (! (= (DataOut__DEVICE_EXTENSION (DataOut__DEVICE_EXTENSIONInv x@@216)) x@@216)
 :qid |MouseClassFindMorePortsbpl.1361:15|
 :skolemid |83|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv x@@216))
)))
(assert (forall ((x@@217 Int) ) (! (= (DeviceExtension__DEVICE_OBJECTInv (DeviceExtension__DEVICE_OBJECT x@@217)) x@@217)
 :qid |MouseClassFindMorePortsbpl.1377:15|
 :skolemid |92|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv (DeviceExtension__DEVICE_OBJECT x@@217)))
)))
(assert (forall ((x@@218 Int) ) (! (= (DeviceExtension__DEVICE_OBJECT (DeviceExtension__DEVICE_OBJECTInv x@@218)) x@@218)
 :qid |MouseClassFindMorePortsbpl.1378:15|
 :skolemid |93|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv x@@218))
)))
(assert (forall ((x@@219 Int) ) (! (= (File__DEVICE_EXTENSIONInv (File__DEVICE_EXTENSION x@@219)) x@@219)
 :qid |MouseClassFindMorePortsbpl.1394:15|
 :skolemid |102|
 :pattern ( (File__DEVICE_EXTENSIONInv (File__DEVICE_EXTENSION x@@219)))
)))
(assert (forall ((x@@220 Int) ) (! (= (File__DEVICE_EXTENSION (File__DEVICE_EXTENSIONInv x@@220)) x@@220)
 :qid |MouseClassFindMorePortsbpl.1395:15|
 :skolemid |103|
 :pattern ( (File__DEVICE_EXTENSIONInv x@@220))
)))
(assert (forall ((x@@221 Int) ) (! (= (File__PORTInv (File__PORT x@@221)) x@@221)
 :qid |MouseClassFindMorePortsbpl.1411:15|
 :skolemid |112|
 :pattern ( (File__PORTInv (File__PORT x@@221)))
)))
(assert (forall ((x@@222 Int) ) (! (= (File__PORT (File__PORTInv x@@222)) x@@222)
 :qid |MouseClassFindMorePortsbpl.1412:15|
 :skolemid |113|
 :pattern ( (File__PORTInv x@@222))
)))
(assert (forall ((x@@223 Int) ) (! (= (Flags__DEVICE_OBJECTInv (Flags__DEVICE_OBJECT x@@223)) x@@223)
 :qid |MouseClassFindMorePortsbpl.1428:15|
 :skolemid |122|
 :pattern ( (Flags__DEVICE_OBJECTInv (Flags__DEVICE_OBJECT x@@223)))
)))
(assert (forall ((x@@224 Int) ) (! (= (Flags__DEVICE_OBJECT (Flags__DEVICE_OBJECTInv x@@224)) x@@224)
 :qid |MouseClassFindMorePortsbpl.1429:15|
 :skolemid |123|
 :pattern ( (Flags__DEVICE_OBJECTInv x@@224))
)))
(assert (forall ((x@@225 Int) ) (! (= (Flink__LIST_ENTRYInv (Flink__LIST_ENTRY x@@225)) x@@225)
 :qid |MouseClassFindMorePortsbpl.1445:15|
 :skolemid |132|
 :pattern ( (Flink__LIST_ENTRYInv (Flink__LIST_ENTRY x@@225)))
)))
(assert (forall ((x@@226 Int) ) (! (= (Flink__LIST_ENTRY (Flink__LIST_ENTRYInv x@@226)) x@@226)
 :qid |MouseClassFindMorePortsbpl.1446:15|
 :skolemid |133|
 :pattern ( (Flink__LIST_ENTRYInv x@@226))
)))
(assert (forall ((x@@227 Int) ) (! (= (Free__PORTInv (Free__PORT x@@227)) x@@227)
 :qid |MouseClassFindMorePortsbpl.1462:15|
 :skolemid |142|
 :pattern ( (Free__PORTInv (Free__PORT x@@227)))
)))
(assert (forall ((x@@228 Int) ) (! (= (Free__PORT (Free__PORTInv x@@228)) x@@228)
 :qid |MouseClassFindMorePortsbpl.1463:15|
 :skolemid |143|
 :pattern ( (Free__PORTInv x@@228))
)))
(assert (forall ((x@@229 Int) ) (! (= (GrandMaster__GLOBALSInv (GrandMaster__GLOBALS x@@229)) x@@229)
 :qid |MouseClassFindMorePortsbpl.1479:15|
 :skolemid |152|
 :pattern ( (GrandMaster__GLOBALSInv (GrandMaster__GLOBALS x@@229)))
)))
(assert (forall ((x@@230 Int) ) (! (= (GrandMaster__GLOBALS (GrandMaster__GLOBALSInv x@@230)) x@@230)
 :qid |MouseClassFindMorePortsbpl.1480:15|
 :skolemid |153|
 :pattern ( (GrandMaster__GLOBALSInv x@@230))
)))
(assert (forall ((x@@231 Int) ) (! (= (InitExtension__GLOBALSInv (InitExtension__GLOBALS x@@231)) x@@231)
 :qid |MouseClassFindMorePortsbpl.1496:15|
 :skolemid |162|
 :pattern ( (InitExtension__GLOBALSInv (InitExtension__GLOBALS x@@231)))
)))
(assert (forall ((x@@232 Int) ) (! (= (InitExtension__GLOBALS (InitExtension__GLOBALSInv x@@232)) x@@232)
 :qid |MouseClassFindMorePortsbpl.1497:15|
 :skolemid |163|
 :pattern ( (InitExtension__GLOBALSInv x@@232))
)))
(assert (forall ((x@@233 Int) ) (! (= (InputData__DEVICE_EXTENSIONInv (InputData__DEVICE_EXTENSION x@@233)) x@@233)
 :qid |MouseClassFindMorePortsbpl.1513:15|
 :skolemid |172|
 :pattern ( (InputData__DEVICE_EXTENSIONInv (InputData__DEVICE_EXTENSION x@@233)))
)))
(assert (forall ((x@@234 Int) ) (! (= (InputData__DEVICE_EXTENSION (InputData__DEVICE_EXTENSIONInv x@@234)) x@@234)
 :qid |MouseClassFindMorePortsbpl.1514:15|
 :skolemid |173|
 :pattern ( (InputData__DEVICE_EXTENSIONInv x@@234))
)))
(assert (forall ((x@@235 Int) ) (! (= (LegacyDeviceList__GLOBALSInv (LegacyDeviceList__GLOBALS x@@235)) x@@235)
 :qid |MouseClassFindMorePortsbpl.1530:15|
 :skolemid |182|
 :pattern ( (LegacyDeviceList__GLOBALSInv (LegacyDeviceList__GLOBALS x@@235)))
)))
(assert (forall ((x@@236 Int) ) (! (= (LegacyDeviceList__GLOBALS (LegacyDeviceList__GLOBALSInv x@@236)) x@@236)
 :qid |MouseClassFindMorePortsbpl.1531:15|
 :skolemid |183|
 :pattern ( (LegacyDeviceList__GLOBALSInv x@@236))
)))
(assert (forall ((x@@237 Int) ) (! (= (Length__UNICODE_STRINGInv (Length__UNICODE_STRING x@@237)) x@@237)
 :qid |MouseClassFindMorePortsbpl.1547:15|
 :skolemid |192|
 :pattern ( (Length__UNICODE_STRINGInv (Length__UNICODE_STRING x@@237)))
)))
(assert (forall ((x@@238 Int) ) (! (= (Length__UNICODE_STRING (Length__UNICODE_STRINGInv x@@238)) x@@238)
 :qid |MouseClassFindMorePortsbpl.1548:15|
 :skolemid |193|
 :pattern ( (Length__UNICODE_STRINGInv x@@238))
)))
(assert (forall ((x@@239 Int) ) (! (= (Link__DEVICE_EXTENSIONInv (Link__DEVICE_EXTENSION x@@239)) x@@239)
 :qid |MouseClassFindMorePortsbpl.1564:15|
 :skolemid |202|
 :pattern ( (Link__DEVICE_EXTENSIONInv (Link__DEVICE_EXTENSION x@@239)))
)))
(assert (forall ((x@@240 Int) ) (! (= (Link__DEVICE_EXTENSION (Link__DEVICE_EXTENSIONInv x@@240)) x@@240)
 :qid |MouseClassFindMorePortsbpl.1565:15|
 :skolemid |203|
 :pattern ( (Link__DEVICE_EXTENSIONInv x@@240))
)))
(assert (forall ((x@@241 Int) ) (! (= (MaximumLength__UNICODE_STRINGInv (MaximumLength__UNICODE_STRING x@@241)) x@@241)
 :qid |MouseClassFindMorePortsbpl.1581:15|
 :skolemid |212|
 :pattern ( (MaximumLength__UNICODE_STRINGInv (MaximumLength__UNICODE_STRING x@@241)))
)))
(assert (forall ((x@@242 Int) ) (! (= (MaximumLength__UNICODE_STRING (MaximumLength__UNICODE_STRINGInv x@@242)) x@@242)
 :qid |MouseClassFindMorePortsbpl.1582:15|
 :skolemid |213|
 :pattern ( (MaximumLength__UNICODE_STRINGInv x@@242))
)))
(assert (forall ((x@@243 Int) ) (! (= (Mutex__GLOBALSInv (Mutex__GLOBALS x@@243)) x@@243)
 :qid |MouseClassFindMorePortsbpl.1598:15|
 :skolemid |222|
 :pattern ( (Mutex__GLOBALSInv (Mutex__GLOBALS x@@243)))
)))
(assert (forall ((x@@244 Int) ) (! (= (Mutex__GLOBALS (Mutex__GLOBALSInv x@@244)) x@@244)
 :qid |MouseClassFindMorePortsbpl.1599:15|
 :skolemid |223|
 :pattern ( (Mutex__GLOBALSInv x@@244))
)))
(assert (forall ((x@@245 Int) ) (! (= (NumberLegacyPorts__GLOBALSInv (NumberLegacyPorts__GLOBALS x@@245)) x@@245)
 :qid |MouseClassFindMorePortsbpl.1615:15|
 :skolemid |232|
 :pattern ( (NumberLegacyPorts__GLOBALSInv (NumberLegacyPorts__GLOBALS x@@245)))
)))
(assert (forall ((x@@246 Int) ) (! (= (NumberLegacyPorts__GLOBALS (NumberLegacyPorts__GLOBALSInv x@@246)) x@@246)
 :qid |MouseClassFindMorePortsbpl.1616:15|
 :skolemid |233|
 :pattern ( (NumberLegacyPorts__GLOBALSInv x@@246))
)))
(assert (forall ((x@@247 Int) ) (! (= (PnP__DEVICE_EXTENSIONInv (PnP__DEVICE_EXTENSION x@@247)) x@@247)
 :qid |MouseClassFindMorePortsbpl.1632:15|
 :skolemid |242|
 :pattern ( (PnP__DEVICE_EXTENSIONInv (PnP__DEVICE_EXTENSION x@@247)))
)))
(assert (forall ((x@@248 Int) ) (! (= (PnP__DEVICE_EXTENSION (PnP__DEVICE_EXTENSIONInv x@@248)) x@@248)
 :qid |MouseClassFindMorePortsbpl.1633:15|
 :skolemid |243|
 :pattern ( (PnP__DEVICE_EXTENSIONInv x@@248))
)))
(assert (forall ((x@@249 Int) ) (! (= (Port__PORTInv (Port__PORT x@@249)) x@@249)
 :qid |MouseClassFindMorePortsbpl.1649:15|
 :skolemid |252|
 :pattern ( (Port__PORTInv (Port__PORT x@@249)))
)))
(assert (forall ((x@@250 Int) ) (! (= (Port__PORT (Port__PORTInv x@@250)) x@@250)
 :qid |MouseClassFindMorePortsbpl.1650:15|
 :skolemid |253|
 :pattern ( (Port__PORTInv x@@250))
)))
(assert (forall ((x@@251 Int) ) (! (= (PortsServiced__GLOBALSInv (PortsServiced__GLOBALS x@@251)) x@@251)
 :qid |MouseClassFindMorePortsbpl.1666:15|
 :skolemid |262|
 :pattern ( (PortsServiced__GLOBALSInv (PortsServiced__GLOBALS x@@251)))
)))
(assert (forall ((x@@252 Int) ) (! (= (PortsServiced__GLOBALS (PortsServiced__GLOBALSInv x@@252)) x@@252)
 :qid |MouseClassFindMorePortsbpl.1667:15|
 :skolemid |263|
 :pattern ( (PortsServiced__GLOBALSInv x@@252))
)))
(assert (forall ((x@@253 Int) ) (! (= (Self__DEVICE_EXTENSIONInv (Self__DEVICE_EXTENSION x@@253)) x@@253)
 :qid |MouseClassFindMorePortsbpl.1683:15|
 :skolemid |272|
 :pattern ( (Self__DEVICE_EXTENSIONInv (Self__DEVICE_EXTENSION x@@253)))
)))
(assert (forall ((x@@254 Int) ) (! (= (Self__DEVICE_EXTENSION (Self__DEVICE_EXTENSIONInv x@@254)) x@@254)
 :qid |MouseClassFindMorePortsbpl.1684:15|
 :skolemid |273|
 :pattern ( (Self__DEVICE_EXTENSIONInv x@@254))
)))
(assert (forall ((x@@255 Int) ) (! (= (SpinLock__DEVICE_EXTENSIONInv (SpinLock__DEVICE_EXTENSION x@@255)) x@@255)
 :qid |MouseClassFindMorePortsbpl.1700:15|
 :skolemid |282|
 :pattern ( (SpinLock__DEVICE_EXTENSIONInv (SpinLock__DEVICE_EXTENSION x@@255)))
)))
(assert (forall ((x@@256 Int) ) (! (= (SpinLock__DEVICE_EXTENSION (SpinLock__DEVICE_EXTENSIONInv x@@256)) x@@256)
 :qid |MouseClassFindMorePortsbpl.1701:15|
 :skolemid |283|
 :pattern ( (SpinLock__DEVICE_EXTENSIONInv x@@256))
)))
(assert (forall ((x@@257 Int) ) (! (= (StackSize__DEVICE_OBJECTInv (StackSize__DEVICE_OBJECT x@@257)) x@@257)
 :qid |MouseClassFindMorePortsbpl.1717:15|
 :skolemid |292|
 :pattern ( (StackSize__DEVICE_OBJECTInv (StackSize__DEVICE_OBJECT x@@257)))
)))
(assert (forall ((x@@258 Int) ) (! (= (StackSize__DEVICE_OBJECT (StackSize__DEVICE_OBJECTInv x@@258)) x@@258)
 :qid |MouseClassFindMorePortsbpl.1718:15|
 :skolemid |293|
 :pattern ( (StackSize__DEVICE_OBJECTInv x@@258))
)))
(assert (forall ((x@@259 Int) ) (! (= (Started__DEVICE_EXTENSIONInv (Started__DEVICE_EXTENSION x@@259)) x@@259)
 :qid |MouseClassFindMorePortsbpl.1734:15|
 :skolemid |302|
 :pattern ( (Started__DEVICE_EXTENSIONInv (Started__DEVICE_EXTENSION x@@259)))
)))
(assert (forall ((x@@260 Int) ) (! (= (Started__DEVICE_EXTENSION (Started__DEVICE_EXTENSIONInv x@@260)) x@@260)
 :qid |MouseClassFindMorePortsbpl.1735:15|
 :skolemid |303|
 :pattern ( (Started__DEVICE_EXTENSIONInv x@@260))
)))
(assert (forall ((x@@261 Int) ) (! (= (TopPort__DEVICE_EXTENSIONInv (TopPort__DEVICE_EXTENSION x@@261)) x@@261)
 :qid |MouseClassFindMorePortsbpl.1751:15|
 :skolemid |312|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv (TopPort__DEVICE_EXTENSION x@@261)))
)))
(assert (forall ((x@@262 Int) ) (! (= (TopPort__DEVICE_EXTENSION (TopPort__DEVICE_EXTENSIONInv x@@262)) x@@262)
 :qid |MouseClassFindMorePortsbpl.1752:15|
 :skolemid |313|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv x@@262))
)))
(assert (forall ((x@@263 Int) ) (! (= (UnitId__DEVICE_EXTENSIONInv (UnitId__DEVICE_EXTENSION x@@263)) x@@263)
 :qid |MouseClassFindMorePortsbpl.1768:15|
 :skolemid |322|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv (UnitId__DEVICE_EXTENSION x@@263)))
)))
(assert (forall ((x@@264 Int) ) (! (= (UnitId__DEVICE_EXTENSION (UnitId__DEVICE_EXTENSIONInv x@@264)) x@@264)
 :qid |MouseClassFindMorePortsbpl.1769:15|
 :skolemid |323|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv x@@264))
)))
(assert (forall ((x@@265 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSIONInv (WaitWakeSpinLock__DEVICE_EXTENSION x@@265)) x@@265)
 :qid |MouseClassFindMorePortsbpl.1785:15|
 :skolemid |332|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSIONInv (WaitWakeSpinLock__DEVICE_EXTENSION x@@265)))
)))
(assert (forall ((x@@266 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSION (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@266)) x@@266)
 :qid |MouseClassFindMorePortsbpl.1786:15|
 :skolemid |333|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@266))
)))
(assert (forall ((x@@267 Int) (n@@3 Int) (z@@8 Int) ) (!  (=> (<= z@@8 0) (Equal (q@Array x@@267 n@@3 z@@8) Empty))
 :qid |MouseClassFindMorePortsbpl.61:14|
 :skolemid |9|
 :pattern ( (q@Array x@@267 n@@3 z@@8))
)))
(assert (forall ((S@@67 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (!  (or (Disjoint S@@67 T@@4) (exists ((x@@268 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@67 x@@268) (|Select__T@[Int]Bool_| T@@4 x@@268))
 :qid |MouseClassFindMorePortsbpl.82:83|
 :skolemid |23|
)))
 :qid |MouseClassFindMorePortsbpl.82:14|
 :skolemid |24|
 :pattern ( (Disjoint S@@67 T@@4))
)))
(assert (forall ((y@@15 Int) ) (! (|Select__T@[Int]Bool_| (Singleton y@@15) y@@15)
 :qid |MouseClassFindMorePortsbpl.70:14|
 :skolemid |14|
 :pattern ( (Singleton y@@15))
)))
(assert (forall ((S@@68 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (!  (or (Subset S@@68 T@@5) (exists ((x@@269 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@68 x@@269) (not (|Select__T@[Int]Bool_| T@@5 x@@269)))
 :qid |MouseClassFindMorePortsbpl.80:79|
 :skolemid |20|
)))
 :qid |MouseClassFindMorePortsbpl.80:14|
 :skolemid |21|
 :pattern ( (Subset S@@68 T@@5))
)))
(assert (forall ((n@@4 Int) (x@@270 Int) (z@@9 Int) ) (! (= (Rep n@@4 x@@270) (Rep n@@4 (PLUS x@@270 n@@4 z@@9)))
 :qid |MouseClassFindMorePortsbpl.45:14|
 :skolemid |6|
 :pattern ( (PLUS x@@270 n@@4 z@@9))
)))
(assert (forall ((x@@271 Int) (S@@69 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@69 x@@271) (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALS S@@69) (AssocClassList__GLOBALS x@@271)))
 :qid |MouseClassFindMorePortsbpl.1297:15|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Bool_| S@@69 x@@271) (_S_AssocClassList__GLOBALS S@@69))
)))
(assert (forall ((x@@272 Int) (S@@70 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@70 x@@272) (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALSInv S@@70) (AssocClassList__GLOBALSInv x@@272)))
 :qid |MouseClassFindMorePortsbpl.1298:15|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| S@@70 x@@272) (_S_AssocClassList__GLOBALSInv S@@70))
)))
(assert (forall ((x@@273 Int) (S@@71 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@71 x@@273) (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@71) (BaseClassName__GLOBALS x@@273)))
 :qid |MouseClassFindMorePortsbpl.1314:15|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Bool_| S@@71 x@@273) (_S_BaseClassName__GLOBALS S@@71))
)))
(assert (forall ((x@@274 Int) (S@@72 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@72 x@@274) (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@72) (BaseClassName__GLOBALSInv x@@274)))
 :qid |MouseClassFindMorePortsbpl.1315:15|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Bool_| S@@72 x@@274) (_S_BaseClassName__GLOBALSInv S@@72))
)))
(assert (forall ((x@@275 Int) (S@@73 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@73 x@@275) (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@73) (Buffer__UNICODE_STRING x@@275)))
 :qid |MouseClassFindMorePortsbpl.1331:15|
 :skolemid |66|
 :pattern ( (|Select__T@[Int]Bool_| S@@73 x@@275) (_S_Buffer__UNICODE_STRING S@@73))
)))
(assert (forall ((x@@276 Int) (S@@74 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@74 x@@276) (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@74) (Buffer__UNICODE_STRINGInv x@@276)))
 :qid |MouseClassFindMorePortsbpl.1332:15|
 :skolemid |67|
 :pattern ( (|Select__T@[Int]Bool_| S@@74 x@@276) (_S_Buffer__UNICODE_STRINGInv S@@74))
)))
(assert (forall ((x@@277 Int) (S@@75 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@75 x@@277) (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@75) (DataIn__DEVICE_EXTENSION x@@277)))
 :qid |MouseClassFindMorePortsbpl.1348:15|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]Bool_| S@@75 x@@277) (_S_DataIn__DEVICE_EXTENSION S@@75))
)))
(assert (forall ((x@@278 Int) (S@@76 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@76 x@@278) (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@76) (DataIn__DEVICE_EXTENSIONInv x@@278)))
 :qid |MouseClassFindMorePortsbpl.1349:15|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]Bool_| S@@76 x@@278) (_S_DataIn__DEVICE_EXTENSIONInv S@@76))
)))
(assert (forall ((x@@279 Int) (S@@77 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@77 x@@279) (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@77) (DataOut__DEVICE_EXTENSION x@@279)))
 :qid |MouseClassFindMorePortsbpl.1365:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@77 x@@279) (_S_DataOut__DEVICE_EXTENSION S@@77))
)))
(assert (forall ((x@@280 Int) (S@@78 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@78 x@@280) (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@78) (DataOut__DEVICE_EXTENSIONInv x@@280)))
 :qid |MouseClassFindMorePortsbpl.1366:15|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| S@@78 x@@280) (_S_DataOut__DEVICE_EXTENSIONInv S@@78))
)))
(assert (forall ((x@@281 Int) (S@@79 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@79 x@@281) (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@79) (DeviceExtension__DEVICE_OBJECT x@@281)))
 :qid |MouseClassFindMorePortsbpl.1382:15|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Bool_| S@@79 x@@281) (_S_DeviceExtension__DEVICE_OBJECT S@@79))
)))
(assert (forall ((x@@282 Int) (S@@80 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@80 x@@282) (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@80) (DeviceExtension__DEVICE_OBJECTInv x@@282)))
 :qid |MouseClassFindMorePortsbpl.1383:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| S@@80 x@@282) (_S_DeviceExtension__DEVICE_OBJECTInv S@@80))
)))
(assert (forall ((x@@283 Int) (S@@81 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@81 x@@283) (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@81) (File__DEVICE_EXTENSION x@@283)))
 :qid |MouseClassFindMorePortsbpl.1399:15|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]Bool_| S@@81 x@@283) (_S_File__DEVICE_EXTENSION S@@81))
)))
(assert (forall ((x@@284 Int) (S@@82 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@82 x@@284) (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@82) (File__DEVICE_EXTENSIONInv x@@284)))
 :qid |MouseClassFindMorePortsbpl.1400:15|
 :skolemid |107|
 :pattern ( (|Select__T@[Int]Bool_| S@@82 x@@284) (_S_File__DEVICE_EXTENSIONInv S@@82))
)))
(assert (forall ((x@@285 Int) (S@@83 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@83 x@@285) (|Select__T@[Int]Bool_| (_S_File__PORT S@@83) (File__PORT x@@285)))
 :qid |MouseClassFindMorePortsbpl.1416:15|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]Bool_| S@@83 x@@285) (_S_File__PORT S@@83))
)))
(assert (forall ((x@@286 Int) (S@@84 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@84 x@@286) (|Select__T@[Int]Bool_| (_S_File__PORTInv S@@84) (File__PORTInv x@@286)))
 :qid |MouseClassFindMorePortsbpl.1417:15|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]Bool_| S@@84 x@@286) (_S_File__PORTInv S@@84))
)))
(assert (forall ((x@@287 Int) (S@@85 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@85 x@@287) (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@85) (Flags__DEVICE_OBJECT x@@287)))
 :qid |MouseClassFindMorePortsbpl.1433:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| S@@85 x@@287) (_S_Flags__DEVICE_OBJECT S@@85))
)))
(assert (forall ((x@@288 Int) (S@@86 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@86 x@@288) (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@86) (Flags__DEVICE_OBJECTInv x@@288)))
 :qid |MouseClassFindMorePortsbpl.1434:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@86 x@@288) (_S_Flags__DEVICE_OBJECTInv S@@86))
)))
(assert (forall ((x@@289 Int) (S@@87 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@87 x@@289) (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@87) (Flink__LIST_ENTRY x@@289)))
 :qid |MouseClassFindMorePortsbpl.1450:15|
 :skolemid |136|
 :pattern ( (|Select__T@[Int]Bool_| S@@87 x@@289) (_S_Flink__LIST_ENTRY S@@87))
)))
(assert (forall ((x@@290 Int) (S@@88 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@88 x@@290) (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@88) (Flink__LIST_ENTRYInv x@@290)))
 :qid |MouseClassFindMorePortsbpl.1451:15|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]Bool_| S@@88 x@@290) (_S_Flink__LIST_ENTRYInv S@@88))
)))
(assert (forall ((x@@291 Int) (S@@89 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@89 x@@291) (|Select__T@[Int]Bool_| (_S_Free__PORT S@@89) (Free__PORT x@@291)))
 :qid |MouseClassFindMorePortsbpl.1467:15|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]Bool_| S@@89 x@@291) (_S_Free__PORT S@@89))
)))
(assert (forall ((x@@292 Int) (S@@90 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@90 x@@292) (|Select__T@[Int]Bool_| (_S_Free__PORTInv S@@90) (Free__PORTInv x@@292)))
 :qid |MouseClassFindMorePortsbpl.1468:15|
 :skolemid |147|
 :pattern ( (|Select__T@[Int]Bool_| S@@90 x@@292) (_S_Free__PORTInv S@@90))
)))
(assert (forall ((x@@293 Int) (S@@91 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@91 x@@293) (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@91) (GrandMaster__GLOBALS x@@293)))
 :qid |MouseClassFindMorePortsbpl.1484:15|
 :skolemid |156|
 :pattern ( (|Select__T@[Int]Bool_| S@@91 x@@293) (_S_GrandMaster__GLOBALS S@@91))
)))
(assert (forall ((x@@294 Int) (S@@92 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@92 x@@294) (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@92) (GrandMaster__GLOBALSInv x@@294)))
 :qid |MouseClassFindMorePortsbpl.1485:15|
 :skolemid |157|
 :pattern ( (|Select__T@[Int]Bool_| S@@92 x@@294) (_S_GrandMaster__GLOBALSInv S@@92))
)))
(assert (forall ((x@@295 Int) (S@@93 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@93 x@@295) (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALS S@@93) (InitExtension__GLOBALS x@@295)))
 :qid |MouseClassFindMorePortsbpl.1501:15|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]Bool_| S@@93 x@@295) (_S_InitExtension__GLOBALS S@@93))
)))
(assert (forall ((x@@296 Int) (S@@94 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@94 x@@296) (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALSInv S@@94) (InitExtension__GLOBALSInv x@@296)))
 :qid |MouseClassFindMorePortsbpl.1502:15|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]Bool_| S@@94 x@@296) (_S_InitExtension__GLOBALSInv S@@94))
)))
(assert (forall ((x@@297 Int) (S@@95 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@95 x@@297) (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@95) (InputData__DEVICE_EXTENSION x@@297)))
 :qid |MouseClassFindMorePortsbpl.1518:15|
 :skolemid |176|
 :pattern ( (|Select__T@[Int]Bool_| S@@95 x@@297) (_S_InputData__DEVICE_EXTENSION S@@95))
)))
(assert (forall ((x@@298 Int) (S@@96 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@96 x@@298) (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@96) (InputData__DEVICE_EXTENSIONInv x@@298)))
 :qid |MouseClassFindMorePortsbpl.1519:15|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]Bool_| S@@96 x@@298) (_S_InputData__DEVICE_EXTENSIONInv S@@96))
)))
(assert (forall ((x@@299 Int) (S@@97 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@97 x@@299) (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@97) (LegacyDeviceList__GLOBALS x@@299)))
 :qid |MouseClassFindMorePortsbpl.1535:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| S@@97 x@@299) (_S_LegacyDeviceList__GLOBALS S@@97))
)))
(assert (forall ((x@@300 Int) (S@@98 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@98 x@@300) (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@98) (LegacyDeviceList__GLOBALSInv x@@300)))
 :qid |MouseClassFindMorePortsbpl.1536:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| S@@98 x@@300) (_S_LegacyDeviceList__GLOBALSInv S@@98))
)))
(assert (forall ((x@@301 Int) (S@@99 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@99 x@@301) (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@99) (Length__UNICODE_STRING x@@301)))
 :qid |MouseClassFindMorePortsbpl.1552:15|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]Bool_| S@@99 x@@301) (_S_Length__UNICODE_STRING S@@99))
)))
(assert (forall ((x@@302 Int) (S@@100 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@100 x@@302) (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@100) (Length__UNICODE_STRINGInv x@@302)))
 :qid |MouseClassFindMorePortsbpl.1553:15|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]Bool_| S@@100 x@@302) (_S_Length__UNICODE_STRINGInv S@@100))
)))
(assert (forall ((x@@303 Int) (S@@101 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@101 x@@303) (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@101) (Link__DEVICE_EXTENSION x@@303)))
 :qid |MouseClassFindMorePortsbpl.1569:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Bool_| S@@101 x@@303) (_S_Link__DEVICE_EXTENSION S@@101))
)))
(assert (forall ((x@@304 Int) (S@@102 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@102 x@@304) (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@102) (Link__DEVICE_EXTENSIONInv x@@304)))
 :qid |MouseClassFindMorePortsbpl.1570:15|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]Bool_| S@@102 x@@304) (_S_Link__DEVICE_EXTENSIONInv S@@102))
)))
(assert (forall ((x@@305 Int) (S@@103 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@103 x@@305) (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@103) (MaximumLength__UNICODE_STRING x@@305)))
 :qid |MouseClassFindMorePortsbpl.1586:15|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]Bool_| S@@103 x@@305) (_S_MaximumLength__UNICODE_STRING S@@103))
)))
(assert (forall ((x@@306 Int) (S@@104 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@104 x@@306) (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@104) (MaximumLength__UNICODE_STRINGInv x@@306)))
 :qid |MouseClassFindMorePortsbpl.1587:15|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]Bool_| S@@104 x@@306) (_S_MaximumLength__UNICODE_STRINGInv S@@104))
)))
(assert (forall ((x@@307 Int) (S@@105 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@105 x@@307) (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@105) (Mutex__GLOBALS x@@307)))
 :qid |MouseClassFindMorePortsbpl.1603:15|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]Bool_| S@@105 x@@307) (_S_Mutex__GLOBALS S@@105))
)))
(assert (forall ((x@@308 Int) (S@@106 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@106 x@@308) (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@106) (Mutex__GLOBALSInv x@@308)))
 :qid |MouseClassFindMorePortsbpl.1604:15|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]Bool_| S@@106 x@@308) (_S_Mutex__GLOBALSInv S@@106))
)))
(assert (forall ((x@@309 Int) (S@@107 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@107 x@@309) (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALS S@@107) (NumberLegacyPorts__GLOBALS x@@309)))
 :qid |MouseClassFindMorePortsbpl.1620:15|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]Bool_| S@@107 x@@309) (_S_NumberLegacyPorts__GLOBALS S@@107))
)))
(assert (forall ((x@@310 Int) (S@@108 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@108 x@@310) (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALSInv S@@108) (NumberLegacyPorts__GLOBALSInv x@@310)))
 :qid |MouseClassFindMorePortsbpl.1621:15|
 :skolemid |237|
 :pattern ( (|Select__T@[Int]Bool_| S@@108 x@@310) (_S_NumberLegacyPorts__GLOBALSInv S@@108))
)))
(assert (forall ((x@@311 Int) (S@@109 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@109 x@@311) (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@109) (PnP__DEVICE_EXTENSION x@@311)))
 :qid |MouseClassFindMorePortsbpl.1637:15|
 :skolemid |246|
 :pattern ( (|Select__T@[Int]Bool_| S@@109 x@@311) (_S_PnP__DEVICE_EXTENSION S@@109))
)))
(assert (forall ((x@@312 Int) (S@@110 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@110 x@@312) (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@110) (PnP__DEVICE_EXTENSIONInv x@@312)))
 :qid |MouseClassFindMorePortsbpl.1638:15|
 :skolemid |247|
 :pattern ( (|Select__T@[Int]Bool_| S@@110 x@@312) (_S_PnP__DEVICE_EXTENSIONInv S@@110))
)))
(assert (forall ((x@@313 Int) (S@@111 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@111 x@@313) (|Select__T@[Int]Bool_| (_S_Port__PORT S@@111) (Port__PORT x@@313)))
 :qid |MouseClassFindMorePortsbpl.1654:15|
 :skolemid |256|
 :pattern ( (|Select__T@[Int]Bool_| S@@111 x@@313) (_S_Port__PORT S@@111))
)))
(assert (forall ((x@@314 Int) (S@@112 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@112 x@@314) (|Select__T@[Int]Bool_| (_S_Port__PORTInv S@@112) (Port__PORTInv x@@314)))
 :qid |MouseClassFindMorePortsbpl.1655:15|
 :skolemid |257|
 :pattern ( (|Select__T@[Int]Bool_| S@@112 x@@314) (_S_Port__PORTInv S@@112))
)))
(assert (forall ((x@@315 Int) (S@@113 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@113 x@@315) (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALS S@@113) (PortsServiced__GLOBALS x@@315)))
 :qid |MouseClassFindMorePortsbpl.1671:15|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]Bool_| S@@113 x@@315) (_S_PortsServiced__GLOBALS S@@113))
)))
(assert (forall ((x@@316 Int) (S@@114 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@114 x@@316) (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALSInv S@@114) (PortsServiced__GLOBALSInv x@@316)))
 :qid |MouseClassFindMorePortsbpl.1672:15|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]Bool_| S@@114 x@@316) (_S_PortsServiced__GLOBALSInv S@@114))
)))
(assert (forall ((x@@317 Int) (S@@115 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@115 x@@317) (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@115) (Self__DEVICE_EXTENSION x@@317)))
 :qid |MouseClassFindMorePortsbpl.1688:15|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]Bool_| S@@115 x@@317) (_S_Self__DEVICE_EXTENSION S@@115))
)))
(assert (forall ((x@@318 Int) (S@@116 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@116 x@@318) (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@116) (Self__DEVICE_EXTENSIONInv x@@318)))
 :qid |MouseClassFindMorePortsbpl.1689:15|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]Bool_| S@@116 x@@318) (_S_Self__DEVICE_EXTENSIONInv S@@116))
)))
(assert (forall ((x@@319 Int) (S@@117 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@117 x@@319) (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSION S@@117) (SpinLock__DEVICE_EXTENSION x@@319)))
 :qid |MouseClassFindMorePortsbpl.1705:15|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]Bool_| S@@117 x@@319) (_S_SpinLock__DEVICE_EXTENSION S@@117))
)))
(assert (forall ((x@@320 Int) (S@@118 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@118 x@@320) (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSIONInv S@@118) (SpinLock__DEVICE_EXTENSIONInv x@@320)))
 :qid |MouseClassFindMorePortsbpl.1706:15|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]Bool_| S@@118 x@@320) (_S_SpinLock__DEVICE_EXTENSIONInv S@@118))
)))
(assert (forall ((x@@321 Int) (S@@119 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@119 x@@321) (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECT S@@119) (StackSize__DEVICE_OBJECT x@@321)))
 :qid |MouseClassFindMorePortsbpl.1722:15|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]Bool_| S@@119 x@@321) (_S_StackSize__DEVICE_OBJECT S@@119))
)))
(assert (forall ((x@@322 Int) (S@@120 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@120 x@@322) (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECTInv S@@120) (StackSize__DEVICE_OBJECTInv x@@322)))
 :qid |MouseClassFindMorePortsbpl.1723:15|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]Bool_| S@@120 x@@322) (_S_StackSize__DEVICE_OBJECTInv S@@120))
)))
(assert (forall ((x@@323 Int) (S@@121 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@121 x@@323) (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@121) (Started__DEVICE_EXTENSION x@@323)))
 :qid |MouseClassFindMorePortsbpl.1739:15|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]Bool_| S@@121 x@@323) (_S_Started__DEVICE_EXTENSION S@@121))
)))
(assert (forall ((x@@324 Int) (S@@122 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@122 x@@324) (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@122) (Started__DEVICE_EXTENSIONInv x@@324)))
 :qid |MouseClassFindMorePortsbpl.1740:15|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]Bool_| S@@122 x@@324) (_S_Started__DEVICE_EXTENSIONInv S@@122))
)))
(assert (forall ((x@@325 Int) (S@@123 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@123 x@@325) (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@123) (TopPort__DEVICE_EXTENSION x@@325)))
 :qid |MouseClassFindMorePortsbpl.1756:15|
 :skolemid |316|
 :pattern ( (|Select__T@[Int]Bool_| S@@123 x@@325) (_S_TopPort__DEVICE_EXTENSION S@@123))
)))
(assert (forall ((x@@326 Int) (S@@124 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@124 x@@326) (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@124) (TopPort__DEVICE_EXTENSIONInv x@@326)))
 :qid |MouseClassFindMorePortsbpl.1757:15|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]Bool_| S@@124 x@@326) (_S_TopPort__DEVICE_EXTENSIONInv S@@124))
)))
(assert (forall ((x@@327 Int) (S@@125 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@125 x@@327) (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@125) (UnitId__DEVICE_EXTENSION x@@327)))
 :qid |MouseClassFindMorePortsbpl.1773:15|
 :skolemid |326|
 :pattern ( (|Select__T@[Int]Bool_| S@@125 x@@327) (_S_UnitId__DEVICE_EXTENSION S@@125))
)))
(assert (forall ((x@@328 Int) (S@@126 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@126 x@@328) (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@126) (UnitId__DEVICE_EXTENSIONInv x@@328)))
 :qid |MouseClassFindMorePortsbpl.1774:15|
 :skolemid |327|
 :pattern ( (|Select__T@[Int]Bool_| S@@126 x@@328) (_S_UnitId__DEVICE_EXTENSIONInv S@@126))
)))
(assert (forall ((x@@329 Int) (S@@127 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@127 x@@329) (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@127) (WaitWakeSpinLock__DEVICE_EXTENSION x@@329)))
 :qid |MouseClassFindMorePortsbpl.1790:15|
 :skolemid |336|
 :pattern ( (|Select__T@[Int]Bool_| S@@127 x@@329) (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@127))
)))
(assert (forall ((x@@330 Int) (S@@128 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@128 x@@330) (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@128) (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@330)))
 :qid |MouseClassFindMorePortsbpl.1791:15|
 :skolemid |337|
 :pattern ( (|Select__T@[Int]Bool_| S@@128 x@@330) (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@128))
)))
(assert (forall ((x@@331 Int) ) (! (|Select__T@[Int]Bool_| SetTrue x@@331)
 :qid |MouseClassFindMorePortsbpl.67:14|
 :skolemid |12|
)))
(assert (forall ((x@@332 Int) (y@@16 Int) (S@@129 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@129 x@@332) (Equal (Intersection (Inverse M@@4 (|Select__T@[Int]Int_| M@@4 x@@332)) S@@129) (Singleton x@@332))) (Equal (Dereference S@@129 (|Store__T@[Int]Int_| M@@4 x@@332 y@@16)) (Union (Difference (Dereference S@@129 M@@4) (Singleton (|Select__T@[Int]Int_| M@@4 x@@332))) (Singleton y@@16))))
 :qid |MouseClassFindMorePortsbpl.93:14|
 :skolemid |33|
 :pattern ( (Dereference S@@129 (|Store__T@[Int]Int_| M@@4 x@@332 y@@16)))
)))
(assert (forall ((x@@333 Int) ) (!  (not (|Select__T@[Int]Bool_| Empty x@@333))
 :qid |MouseClassFindMorePortsbpl.65:14|
 :skolemid |11|
)))
(assert (forall ((f@@15 |T@[Int]Int|) (x@@334 Int) (y@@17 Int) ) (! (Equal (Inverse (|Store__T@[Int]Int_| f@@15 x@@334 y@@17) y@@17) (Union (Inverse f@@15 y@@17) (Singleton x@@334)))
 :qid |MouseClassFindMorePortsbpl.86:14|
 :skolemid |27|
 :pattern ( (Inverse (|Store__T@[Int]Int_| f@@15 x@@334 y@@17) y@@17))
)))
(assert (forall ((f@@16 |T@[Int]Int|) (x@@335 Int) (y@@18 Int) (z@@10 Int) ) (!  (or (= y@@18 z@@10) (Equal (Inverse (|Store__T@[Int]Int_| f@@16 x@@335 y@@18) z@@10) (Difference (Inverse f@@16 z@@10) (Singleton x@@335))))
 :qid |MouseClassFindMorePortsbpl.87:14|
 :skolemid |28|
 :pattern ( (Inverse (|Store__T@[Int]Int_| f@@16 x@@335 y@@18) z@@10))
)))
(assert (forall ((f@@17 |T@[Int]Int|) (x@@336 Int) (y@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse f@@17 y@@19) x@@336) (= (|Select__T@[Int]Int_| f@@17 x@@336) y@@19))
 :qid |MouseClassFindMorePortsbpl.85:14|
 :skolemid |26|
 :pattern ( (Inverse f@@17 y@@19) (|Select__T@[Int]Int_| f@@17 x@@336))
)))
(assert (forall ((b0@@1 T@byte) (b1@@0 T@byte) (b2 T@byte) (b3 T@byte) (c0@@1 T@byte) (c1@@0 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (FourBytesToInt b0@@1 b1@@0 b2 b3) (FourBytesToInt c0@@1 c1@@0 c2 c3)) (and (and (and (= b0@@1 c0@@1) (= b1@@0 c1@@0)) (= b2 c2)) (= b3 c3)))
 :qid |MouseClassFindMorePortsbpl.9:14|
 :skolemid |2|
 :pattern ( (FourBytesToInt b0@@1 b1@@0 b2 b3) (FourBytesToInt c0@@1 c1@@0 c2 c3))
)))
(assert (forall ((f@@18 |T@[Int]Int|) (x@@337 Int) (y@@20 Int) (z@@11 Int) ) (!  (=> (and (ReachBetween f@@18 x@@337 y@@20 y@@20) (ReachBetween f@@18 y@@20 z@@11 z@@11)) (ReachBetween f@@18 x@@337 z@@11 z@@11))
 :qid |MouseClassFindMorePortsbpl.1971:14|
 :skolemid |373|
 :pattern ( (ReachBetween f@@18 x@@337 y@@20 y@@20) (ReachBetween f@@18 y@@20 z@@11 z@@11))
)))
(assert (forall ((f@@19 |T@[Int]Int|) (u@@0 Int) (v@@2 Int) (x@@338 Int) (p Int) (q Int) ) (! (= (ReachAvoiding (|Store__T@[Int]Int_| f@@19 p q) u@@0 v@@2 x@@338)  (or (and (ReachAvoiding f@@19 u@@0 v@@2 p) (ReachAvoiding f@@19 u@@0 v@@2 x@@338)) (and (and (and (ReachAvoiding f@@19 u@@0 p x@@338) (not (= p x@@338))) (ReachAvoiding f@@19 q v@@2 p)) (ReachAvoiding f@@19 q v@@2 x@@338))))
 :qid |MouseClassFindMorePortsbpl.1987:14|
 :skolemid |378|
 :pattern ( (ReachAvoiding (|Store__T@[Int]Int_| f@@19 p q) u@@0 v@@2 x@@338))
)))
(assert (forall ((x@@339 Int) (n@@5 Int) (z@@12 Int) ) (!  (=> (> z@@12 0) (Equal (q@Array x@@339 n@@5 z@@12) (Difference (AtLeast n@@5 x@@339) (AtLeast n@@5 (PLUS x@@339 n@@5 z@@12)))))
 :qid |MouseClassFindMorePortsbpl.62:14|
 :skolemid |10|
 :pattern ( (q@Array x@@339 n@@5 z@@12))
)))
(assert (forall ((x@@340 Int) (y@@21 Int) (S@@130 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@130 x@@340) (not (Equal (Intersection (Inverse M@@5 (|Select__T@[Int]Int_| M@@5 x@@340)) S@@130) (Singleton x@@340)))) (Equal (Dereference S@@130 (|Store__T@[Int]Int_| M@@5 x@@340 y@@21)) (Union (Dereference S@@130 M@@5) (Singleton y@@21))))
 :qid |MouseClassFindMorePortsbpl.95:14|
 :skolemid |34|
 :pattern ( (Dereference S@@130 (|Store__T@[Int]Int_| M@@5 x@@340 y@@21)))
)))
(assert (forall ((f@@20 |T@[Int]Int|) (x@@341 Int) (y@@22 Int) ) (!  (=> (ReachBetween f@@20 x@@341 y@@22 x@@341) (= x@@341 y@@22))
 :qid |MouseClassFindMorePortsbpl.1962:14|
 :skolemid |370|
 :pattern ( (ReachBetween f@@20 x@@341 y@@22 x@@341))
)))
(assert (not (= Globals 0)))
(assert (forall ((x@@342 Int) (S@@131 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Union S@@131 T@@6) x@@342)  (or (|Select__T@[Int]Bool_| S@@131 x@@342) (|Select__T@[Int]Bool_| T@@6 x@@342)))
 :qid |MouseClassFindMorePortsbpl.74:14|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (Union S@@131 T@@6) x@@342))
 :pattern ( (Union S@@131 T@@6) (|Select__T@[Int]Bool_| S@@131 x@@342))
 :pattern ( (Union S@@131 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@342))
)))
(assert (forall ((v@@3 Int) (t@@3 T@name) (m1 |T@[name][Int]Int|) (m2 |T@[name][Int]Int|) ) (! (= (HasType v@@3 t@@3 m1) (HasType v@@3 t@@3 m2))
 :qid |MouseClassFindMorePortsbpl.116:14|
 :skolemid |41|
 :pattern ( (HasType v@@3 t@@3 m1) (HasType v@@3 t@@3 m2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $i$8$4617.28$MouseClassFindMorePorts$12@2 () Int)
(declare-fun $i$8$4617.28$MouseClassFindMorePorts$12@1 () Int)
(declare-fun Mem@66 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@36 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@36 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@36 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@36 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@8 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@8 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@8 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@8 () |T@[Int]Int|)
(declare-fun Mem@17 () |T@[name][Int]Int|)
(declare-fun call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 () Int)
(declare-fun Mem@64 () |T@[name][Int]Int|)
(declare-fun $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1 () Int)
(declare-fun Res_DEV_OBJ_INIT@34 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@34 () |T@[Int]Int|)
(declare-fun Mem@65 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@35 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@35 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@35 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@34 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@35 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@34 () |T@[Int]Int|)
(declare-fun Mem@34 () |T@[name][Int]Int|)
(declare-fun Res_SPIN_LOCK@19 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@19 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@19 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@19 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0 () Int)
(declare-fun Mem@60 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@33 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@33 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@33 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@33 () |T@[Int]Int|)
(declare-fun Mem@61 () |T@[name][Int]Int|)
(declare-fun Mem@62 () |T@[name][Int]Int|)
(declare-fun Mem@63 () |T@[name][Int]Int|)
(declare-fun call9formal@$result.IoGetDeviceObjectPointer$21491.0$1$@0 () Int)
(declare-fun call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 () Int)
(declare-fun Mem@58 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@31 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@31 () |T@[Int]Int|)
(declare-fun Mem@59 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@32 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@32 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@32 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@31 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@32 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@31 () |T@[Int]Int|)
(declare-fun Mem@53 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@29 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@29 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@29 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@29 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@0 () Int)
(declare-fun Mem@54 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@30 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@30 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@30 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@30 () |T@[Int]Int|)
(declare-fun Mem@55 () |T@[name][Int]Int|)
(declare-fun Mem@56 () |T@[name][Int]Int|)
(declare-fun Mem@57 () |T@[name][Int]Int|)
(declare-fun Mem@51 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0 () Int)
(declare-fun Res_SPIN_LOCK@27 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@27 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@27 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@27 () |T@[Int]Int|)
(declare-fun call0formal@$Object$1$24931.15$ObfDereferenceObject$41@0 () Int)
(declare-fun Mem@52 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@28 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@28 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@28 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@28 () |T@[Int]Int|)
(declare-fun Mem@41 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@23 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@23 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@23 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@23 () |T@[Int]Int|)
(declare-fun Mem@49 () |T@[name][Int]Int|)
(declare-fun Mem@50 () |T@[name][Int]Int|)
(declare-fun call0formal@$FastMutex$1$15000.16$ExAcquireFastMutex$41@0 () Int)
(declare-fun Mem@43 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@25 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@25 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@25 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@25 () |T@[Int]Int|)
(declare-fun Mem@44 () |T@[name][Int]Int|)
(declare-fun Mem@45 () |T@[name][Int]Int|)
(declare-fun Mem@46 () |T@[name][Int]Int|)
(declare-fun Mem@47 () |T@[name][Int]Int|)
(declare-fun call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0 () Int)
(declare-fun Mem@48 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@26 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@26 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@26 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@26 () |T@[Int]Int|)
(declare-fun call8formal@$result.MouseAddDeviceEx$791.0$1$@0 () Int)
(declare-fun call0formal@$ListHead$1$6980.24$InsertTailList$81@0 () Int)
(declare-fun call1formal@$Entry$2$6981.41$InsertTailList$81@0 () Int)
(declare-fun Res_DEV_OBJ_INIT@24 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@24 () |T@[Int]Int|)
(declare-fun Mem@42 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@24 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@24 () |T@[Int]Int|)
(declare-fun $successfulCreates$10$4619.28$MouseClassFindMorePorts$12@1 () Int)
(declare-fun $successfulCreates$10$4619.28$MouseClassFindMorePorts$12@0 () Int)
(declare-fun Mem@38 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@0 () Int)
(declare-fun Res_SPIN_LOCK@21 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@21 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@21 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@21 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@1 () Int)
(declare-fun Mem@39 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@22 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@22 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@22 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@22 () |T@[Int]Int|)
(declare-fun Mem@40 () |T@[name][Int]Int|)
(declare-fun Mem@36 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@1 () Int)
(declare-fun call1formal@$FullClassName$2$793.29$MouseAddDeviceEx$121@0 () Int)
(declare-fun call2formal@$File$3$794.28$MouseAddDeviceEx$121@0 () Int)
(declare-fun Mem@37 () |T@[name][Int]Int|)
(declare-fun BIT_BNOT (Int) Int)
(declare-fun tempBoogie0@3 () Int)
(declare-fun call10formal@$result.MouCreateClassObject$3164.0$1$@0 () Int)
(declare-fun Mem@31 () |T@[name][Int]Int|)
(declare-fun Mem@32 () |T@[name][Int]Int|)
(declare-fun call3formal@$DeviceObject$4$21495.26$IoGetDeviceObjectPointer$161@0 () Int)
(declare-fun Mem@33 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@18 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@18 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@18 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@18 () |T@[Int]Int|)
(declare-fun Mem@35 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@20 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@20 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@20 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@20 () |T@[Int]Int|)
(declare-fun call1formal@$TmpDeviceExtension$2$3166.28$MouCreateClassObject$201@0 () Int)
(declare-fun Mem@30 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@17 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@17 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@17 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@17 () |T@[Int]Int|)
(declare-fun Mem@21 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@10 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@10 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@10 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@10 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@2 () Int)
(declare-fun Mem@28 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@16 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@16 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@16 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@16 () |T@[Int]Int|)
(declare-fun Mem@29 () |T@[name][Int]Int|)
(declare-fun Mem@20 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@2 () Int)
(declare-fun call2formal@new@0@@3 () Int)
(declare-fun BINARY_BOTH_INT (Int Int) Int)
(declare-fun Mem@67 () |T@[name][Int]Int|)
(declare-fun Res_DEV_EXTN@37 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@37 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@37 () |T@[Int]Int|)
(declare-sort |T@[Int]name| 0)
(declare-fun |Select__T@[Int]name_| (|T@[Int]name| Int) T@name)
(declare-fun alloc@13 () |T@[Int]name|)
(declare-fun call2formal@new@0@@4 () Int)
(declare-fun alloc@12 () |T@[Int]name|)
(declare-fun alloc@14 () |T@[Int]name|)
(declare-fun call2formal@new@0@@5 () Int)
(declare-fun alloc@15 () |T@[Int]name|)
(declare-fun alloc@16 () |T@[Int]name|)
(declare-fun call2formal@new@0@@6 () Int)
(declare-fun alloc@17 () |T@[Int]name|)
(declare-fun alloc@18 () |T@[Int]name|)
(declare-fun alloc@19 () |T@[Int]name|)
(declare-fun alloc@20 () |T@[Int]name|)
(declare-fun Res_DEVICE_STACK@15 () |T@[Int]Int|)
(declare-fun Base (Int) Int)
(declare-fun alloc () |T@[Int]name|)
(declare-fun Res_DEVICE_STACK () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@15 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@15 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@15 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK () |T@[Int]Int|)
(declare-fun Mem@27 () |T@[name][Int]Int|)
(declare-fun Mem () |T@[name][Int]Int|)
(declare-fun Mem@25 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@13 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@13 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@13 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@13 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@3 () Int)
(declare-fun Mem@26 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@14 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@14 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@14 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@14 () |T@[Int]Int|)
(declare-fun Mem@23 () |T@[name][Int]Int|)
(declare-fun Res_SPIN_LOCK@11 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@11 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@11 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@11 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@4 () Int)
(declare-fun Mem@24 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@12 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@12 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@12 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@12 () |T@[Int]Int|)
(declare-fun tempBoogie0@2 () Int)
(declare-fun Mem@22 () |T@[name][Int]Int|)
(declare-fun alloc@10 () |T@[Int]name|)
(declare-fun Mem@13 () |T@[name][Int]Int|)
(declare-fun $memset.arg.3$8$@0 () Int)
(declare-fun call2formal@new@0@@7 () Int)
(declare-fun alloc@9 () |T@[Int]name|)
(declare-fun alloc@8 () |T@[Int]name|)
(declare-fun Mem@14 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@5 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@4 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@5 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@4 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@5 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@4 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@5 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@4 () |T@[Int]Int|)
(declare-fun call1formal@$Source$2$7422.20$RtlAppendUnicodeToString$81@0 () Int)
(declare-fun Mem@15 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@6 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@6 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@6 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@6 () |T@[Int]Int|)
(declare-fun call2formal@new@0@@8 () Int)
(declare-fun Mem@16 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@7 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@7 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@7 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@7 () |T@[Int]Int|)
(declare-fun $i$8$4617.28$MouseClassFindMorePorts$12@0 () Int)
(declare-fun call2formal@new@0@@9 () Int)
(declare-fun alloc@11 () |T@[Int]name|)
(declare-fun Mem@18 () |T@[name][Int]Int|)
(declare-fun call3formal@$FinalStatus$4$4553.13$MouseClassLogError$281@0 () Int)
(declare-fun Mem@19 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@9 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@9 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@9 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@9 () |T@[Int]Int|)
(declare-fun $DriverObject$1$4588.20$MouseClassFindMorePorts$121 () Int)
(declare-fun $Context$2$4589.20$MouseClassFindMorePorts$121 () Int)
(declare-fun alloc@0 () |T@[Int]name|)
(declare-fun alloc@1 () |T@[Int]name|)
(declare-fun alloc@2 () |T@[Int]name|)
(declare-fun alloc@3 () |T@[Int]name|)
(declare-fun alloc@4 () |T@[Int]name|)
(declare-fun alloc@5 () |T@[Int]name|)
(declare-fun alloc@6 () |T@[Int]name|)
(declare-fun alloc@7 () |T@[Int]name|)
(declare-fun Mem@0 () |T@[name][Int]Int|)
(declare-fun Mem@1 () |T@[name][Int]Int|)
(declare-fun Mem@2 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@0 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@0 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@0 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@0 () |T@[Int]Int|)
(declare-fun Mem@3 () |T@[name][Int]Int|)
(declare-fun Mem@4 () |T@[name][Int]Int|)
(declare-fun Mem@5 () |T@[name][Int]Int|)
(declare-fun Mem@6 () |T@[name][Int]Int|)
(declare-fun call1formal@$SourceString$2$7402.30$RtlCopyUnicodeString$81@0 () Int)
(declare-fun Mem@7 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@1 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@1 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@1 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@1 () |T@[Int]Int|)
(declare-fun tempBoogie0@0 () Int)
(declare-fun Mem@8 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@10 () Int)
(declare-fun Mem@9 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@2 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@2 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@2 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@2 () |T@[Int]Int|)
(declare-fun Mem@10 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@3 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@3 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@3 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@3 () |T@[Int]Int|)
(declare-fun Mem@11 () |T@[name][Int]Int|)
(declare-fun $ExAllocatePoolWithTag.arg.2$5$@0 () Int)
(declare-fun Mem@12 () |T@[name][Int]Int|)
(declare-fun call8formal@$result.ExAllocatePoolWithTag$14788.0$1$@0 () Int)
(set-info :boogie-vc-id MouseClassFindMorePorts)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 130) (let ((label_154_correct  (=> (= $i$8$4617.28$MouseClassFindMorePorts$12@2 (PLUS $i$8$4617.28$MouseClassFindMorePorts$12@1 1 1)) (and (=> (= (ControlFlow 0 25) (- 0 42)) (forall ((_H_x Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@36 1) _H_x) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x)))) _H_x) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@36 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x))) 1)))
 :qid |MouseClassFindMorePortsbpl.3318:16|
 :skolemid |658|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x)))
))) (=> (forall ((_H_x@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@36 1) _H_x@@0) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0)))) _H_x@@0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@36 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0))) 1)))
 :qid |MouseClassFindMorePortsbpl.3318:16|
 :skolemid |658|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0)))
)) (and (=> (= (ControlFlow 0 25) (- 0 41)) (forall ((_H_z Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@36 1) _H_z) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@36 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z)))) _H_z)))
 :qid |MouseClassFindMorePortsbpl.3320:16|
 :skolemid |659|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z)))
))) (=> (forall ((_H_z@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@36 1) _H_z@@0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@36 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0)))) _H_z@@0)))
 :qid |MouseClassFindMorePortsbpl.3320:16|
 :skolemid |659|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0)))
)) (and (=> (= (ControlFlow 0 25) (- 0 40)) (and (Subset Empty (Inverse Res_DEV_EXTN@36 1)) (forall ((_H_z@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@36 1) _H_z@@1) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 (SpinLock__DEVICE_EXTENSION _H_z@@1)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@1)) 0)))
 :qid |MouseClassFindMorePortsbpl.3322:61|
 :skolemid |660|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@36 1) _H_z@@1))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@36 1)) (forall ((_H_z@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@36 1) _H_z@@2) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 (SpinLock__DEVICE_EXTENSION _H_z@@2)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@2)) 0)))
 :qid |MouseClassFindMorePortsbpl.3322:61|
 :skolemid |660|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@36 1) _H_z@@2))
))) (and (=> (= (ControlFlow 0 25) (- 0 39)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@36 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@36 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 25) (- 0 38)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 25) (- 0 37)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y) (or (= _H_y (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@36 (MINUS_LEFT_PTR _H_y 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.3328:233|
 :skolemid |661|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@0) (or (= _H_y@@0 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@36 (MINUS_LEFT_PTR _H_y@@0 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.3328:233|
 :skolemid |661|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@0))
)))) (and (=> (= (ControlFlow 0 25) (- 0 36)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 25) (- 0 35)) (and (Subset Empty (Union Empty Empty)) (forall ((r Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r) (|Select__T@[Int]Int_| Res_DEVICE_STACK@36 r)))
 :qid |MouseClassFindMorePortsbpl.3335:62|
 :skolemid |663|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@36 r))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@0 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@0) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@0) (|Select__T@[Int]Int_| Res_DEVICE_STACK@36 r@@0)))
 :qid |MouseClassFindMorePortsbpl.3335:62|
 :skolemid |663|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@36 r@@0))
))) (and (=> (= (ControlFlow 0 25) (- 0 34)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@1 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@1) (|Select__T@[Int]Int_| Res_DEV_EXTN@36 r@@1)))
 :qid |MouseClassFindMorePortsbpl.3338:64|
 :skolemid |664|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@36 r@@1))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@2 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@2) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@2) (|Select__T@[Int]Int_| Res_DEV_EXTN@36 r@@2)))
 :qid |MouseClassFindMorePortsbpl.3338:64|
 :skolemid |664|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@36 r@@2))
))) (and (=> (= (ControlFlow 0 25) (- 0 33)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@3 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@3) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@3) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@36 r@@3)))
 :qid |MouseClassFindMorePortsbpl.3341:64|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@36 r@@3))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@4 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@4) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@4) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@36 r@@4)))
 :qid |MouseClassFindMorePortsbpl.3341:64|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@36 r@@4))
))) (and (=> (= (ControlFlow 0 25) (- 0 32)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@5 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@5) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@5) (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 r@@5)))
 :qid |MouseClassFindMorePortsbpl.3344:64|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 r@@5))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@6 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@6) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@6) (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 r@@6)))
 :qid |MouseClassFindMorePortsbpl.3344:64|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@36 r@@6))
))) (and (=> (= (ControlFlow 0 25) (- 0 31)) (and (Subset Empty (Union Empty Empty)) (forall ((_m Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.MinorFunction__IO_STACK_LOCATION) _m) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m)))
 :qid |MouseClassFindMorePortsbpl.3346:63|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.MinorFunction__IO_STACK_LOCATION) _m))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@0 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@0) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.MinorFunction__IO_STACK_LOCATION) _m@@0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@0)))
 :qid |MouseClassFindMorePortsbpl.3346:63|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.MinorFunction__IO_STACK_LOCATION) _m@@0))
))) (and (=> (= (ControlFlow 0 25) (- 0 30)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@1 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@1)))
 :qid |MouseClassFindMorePortsbpl.3348:63|
 :skolemid |668|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@1))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@2 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@2) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@2) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@2)))
 :qid |MouseClassFindMorePortsbpl.3348:63|
 :skolemid |668|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@2))
))) (and (=> (= (ControlFlow 0 25) (- 0 29)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@3 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@3) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) _m@@3) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@3)))
 :qid |MouseClassFindMorePortsbpl.3350:63|
 :skolemid |669|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) _m@@3))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@4 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@4) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) _m@@4) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@4)))
 :qid |MouseClassFindMorePortsbpl.3350:63|
 :skolemid |669|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.DeviceExtension__DEVICE_OBJECT) _m@@4))
))) (and (=> (= (ControlFlow 0 25) (- 0 28)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@5 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@5) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) _m@@5) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@5)))
 :qid |MouseClassFindMorePortsbpl.3352:65|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) _m@@5))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@6 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@6) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) _m@@6) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@6)))
 :qid |MouseClassFindMorePortsbpl.3352:65|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Self__DEVICE_EXTENSION) _m@@6))
))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@7 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@7) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Started__DEVICE_EXTENSION) _m@@7) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@7)))
 :qid |MouseClassFindMorePortsbpl.3354:63|
 :skolemid |671|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Started__DEVICE_EXTENSION) _m@@7))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@8 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@8) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Started__DEVICE_EXTENSION) _m@@8) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@8)))
 :qid |MouseClassFindMorePortsbpl.3354:63|
 :skolemid |671|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.Started__DEVICE_EXTENSION) _m@@8))
))) (and (=> (= (ControlFlow 0 25) (- 0 26)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@9 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@9) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) _m@@9) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@9)))
 :qid |MouseClassFindMorePortsbpl.3356:63|
 :skolemid |672|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) _m@@9))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@10 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@10) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) _m@@10) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@10)))
 :qid |MouseClassFindMorePortsbpl.3356:63|
 :skolemid |672|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.GrandMaster__GLOBALS) _m@@10))
))) (=> (= (ControlFlow 0 25) (- 0 24)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@11 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@11) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.P_DEVICE_OBJECT) _m@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@11)))
 :qid |MouseClassFindMorePortsbpl.3358:65|
 :skolemid |673|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@66 T.P_DEVICE_OBJECT) _m@@11))
)))))))))))))))))))))))))))))))))))))))))
(let ((label_104_correct  (=> (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))) (and (=> (= (ControlFlow 0 73) (- 0 74)) (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 1)))) (=> (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 1))) (=> (= Mem@65 Mem@64) (=> (and (and (and (and (and (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@35 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 0))) (=> true (and (= Res_DEV_OBJ_INIT@35 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@34 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 0)) (= Res_DEV_EXTN@35 (|Store__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) 0))))) (and (=> (not true) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@35 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)))))) (=> (not true) (and (= Res_DEV_OBJ_INIT@35 Res_DEV_OBJ_INIT@34) (= Res_DEV_EXTN@35 Res_DEV_EXTN@34))))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@7 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@7) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@34 r@@7) (|Select__T@[Int]Int_| Res_DEVICE_STACK@35 r@@7)))
 :qid |MouseClassFindMorePortsbpl.2230:63|
 :skolemid |436|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@35 r@@7))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))))) (forall ((r@@8 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@8) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) r@@8)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 r@@8) (|Select__T@[Int]Int_| Res_DEV_EXTN@35 r@@8)))
 :qid |MouseClassFindMorePortsbpl.2234:196|
 :skolemid |437|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@35 r@@8))
))))) (and (and (and (Subset Empty (Union (Union Empty Empty) (Singleton call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) (forall ((r@@9 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@9) (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 r@@9)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 r@@9) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@35 r@@9)))
 :qid |MouseClassFindMorePortsbpl.2238:125|
 :skolemid |438|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@35 r@@9))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@10 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@10) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@34 r@@10) (|Select__T@[Int]Int_| Res_SPIN_LOCK@35 r@@10)))
 :qid |MouseClassFindMorePortsbpl.2242:63|
 :skolemid |439|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@35 r@@10))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@12 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@12) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.MinorFunction__IO_STACK_LOCATION) _m@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.MinorFunction__IO_STACK_LOCATION) _m@@12)))
 :qid |MouseClassFindMorePortsbpl.2244:64|
 :skolemid |440|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.MinorFunction__IO_STACK_LOCATION) _m@@12))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@13 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@13) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@13) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@13)))
 :qid |MouseClassFindMorePortsbpl.2246:64|
 :skolemid |441|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@13))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@14 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@14) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) _m@@14) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) _m@@14)))
 :qid |MouseClassFindMorePortsbpl.2248:64|
 :skolemid |442|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.DeviceExtension__DEVICE_OBJECT) _m@@14))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@15 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@15) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.Self__DEVICE_EXTENSION) _m@@15) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Self__DEVICE_EXTENSION) _m@@15)))
 :qid |MouseClassFindMorePortsbpl.2250:64|
 :skolemid |443|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.Self__DEVICE_EXTENSION) _m@@15))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@16 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@16) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.Started__DEVICE_EXTENSION) _m@@16) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Started__DEVICE_EXTENSION) _m@@16)))
 :qid |MouseClassFindMorePortsbpl.2252:64|
 :skolemid |444|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.Started__DEVICE_EXTENSION) _m@@16))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@17 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@17) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.GrandMaster__GLOBALS) _m@@17) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.GrandMaster__GLOBALS) _m@@17)))
 :qid |MouseClassFindMorePortsbpl.2254:64|
 :skolemid |445|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.GrandMaster__GLOBALS) _m@@17))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@18 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@18) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.P_DEVICE_OBJECT) _m@@18) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.P_DEVICE_OBJECT) _m@@18)))
 :qid |MouseClassFindMorePortsbpl.2256:64|
 :skolemid |446|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@65 T.P_DEVICE_OBJECT) _m@@18))
))) (and (= Res_SPIN_LOCK@36 Res_SPIN_LOCK@35) (= Res_DEV_OBJ_INIT@36 Res_DEV_OBJ_INIT@35))) (and (and (= Res_DEV_EXTN@36 Res_DEV_EXTN@35) (= Res_DEVICE_STACK@36 Res_DEVICE_STACK@35)) (and (= Mem@66 Mem@65) (= (ControlFlow 0 73) 25)))))) label_154_correct)))))))
(let ((label_97_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0) (=> (and (= Res_SPIN_LOCK@34 Res_SPIN_LOCK@19) (= Res_DEV_OBJ_INIT@34 Res_DEV_OBJ_INIT@19)) (=> (and (and (= Res_DEV_EXTN@34 Res_DEV_EXTN@19) (= Res_DEVICE_STACK@34 Res_DEVICE_STACK@19)) (and (= Mem@64 Mem@34) (= (ControlFlow 0 76) 73))) label_104_correct)))))
(let ((label_97_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0)) (=> (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))) (= Mem@60 Mem@34)) (and (= Res_DEV_OBJ_INIT@33 Res_DEV_OBJ_INIT@19) (= Res_DEV_EXTN@33 Res_DEV_EXTN@19))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@11 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@11) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@11) (|Select__T@[Int]Int_| Res_DEVICE_STACK@33 r@@11)))
 :qid |MouseClassFindMorePortsbpl.2096:63|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@33 r@@11))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@12 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@12) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@12) (|Select__T@[Int]Int_| Res_DEV_EXTN@33 r@@12)))
 :qid |MouseClassFindMorePortsbpl.2100:63|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@33 r@@12))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@13 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@13) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@13) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@33 r@@13)))
 :qid |MouseClassFindMorePortsbpl.2104:63|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@33 r@@13))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@14 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@14) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@14) (|Select__T@[Int]Int_| Res_SPIN_LOCK@33 r@@14)))
 :qid |MouseClassFindMorePortsbpl.2108:63|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@33 r@@14))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@19 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@19) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.MinorFunction__IO_STACK_LOCATION) _m@@19) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.MinorFunction__IO_STACK_LOCATION) _m@@19)))
 :qid |MouseClassFindMorePortsbpl.2110:64|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.MinorFunction__IO_STACK_LOCATION) _m@@19))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@20 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@20) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@20) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@20)))
 :qid |MouseClassFindMorePortsbpl.2112:64|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@20))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@21 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@21) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.DeviceExtension__DEVICE_OBJECT) _m@@21) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) _m@@21)))
 :qid |MouseClassFindMorePortsbpl.2114:64|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.DeviceExtension__DEVICE_OBJECT) _m@@21))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@22 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@22) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.Self__DEVICE_EXTENSION) _m@@22) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) _m@@22)))
 :qid |MouseClassFindMorePortsbpl.2116:64|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.Self__DEVICE_EXTENSION) _m@@22))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@23 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@23) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.Started__DEVICE_EXTENSION) _m@@23) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Started__DEVICE_EXTENSION) _m@@23)))
 :qid |MouseClassFindMorePortsbpl.2118:64|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.Started__DEVICE_EXTENSION) _m@@23))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@24 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@24) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.GrandMaster__GLOBALS) _m@@24) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) _m@@24)))
 :qid |MouseClassFindMorePortsbpl.2120:64|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.GrandMaster__GLOBALS) _m@@24))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@25 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@25) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.P_DEVICE_OBJECT) _m@@25) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) _m@@25)))
 :qid |MouseClassFindMorePortsbpl.2122:64|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.P_DEVICE_OBJECT) _m@@25))
))) (= Mem@61 (|Store__T@[name][Int]Int_| Mem@60 T.DataOut__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@60 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) 0))))) (and (and (and (= Mem@62 (|Store__T@[name][Int]Int_| Mem@61 T.DataIn__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))))) (= Mem@63 (|Store__T@[name][Int]Int_| Mem@62 T.InputData__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)))))) (and (= Res_SPIN_LOCK@34 Res_SPIN_LOCK@33) (= Res_DEV_OBJ_INIT@34 Res_DEV_OBJ_INIT@33))) (and (and (= Res_DEV_EXTN@34 Res_DEV_EXTN@33) (= Res_DEVICE_STACK@34 Res_DEVICE_STACK@33)) (and (= Mem@64 Mem@63) (= (ControlFlow 0 75) 73)))))) label_104_correct)))))
(let ((label_96_true_correct  (=> (not (= call9formal@$result.IoGetDeviceObjectPointer$21491.0$1$@0 0)) (and (=> (= (ControlFlow 0 77) 75) label_97_true_correct) (=> (= (ControlFlow 0 77) 76) label_97_false_correct)))))
(let ((label_146_correct  (=> (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))) (and (=> (= (ControlFlow 0 51) (- 0 52)) (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@31 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@31 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) 1)))) (=> (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@31 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@31 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) 1))) (=> (= Mem@59 Mem@58) (=> (and (and (and (and (and (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@32 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) 0))) (=> true (and (= Res_DEV_OBJ_INIT@32 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@31 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 0)) (= Res_DEV_EXTN@32 (|Store__T@[Int]Int_| Res_DEV_EXTN@31 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)) 0))))) (and (=> (not true) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@31 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@32 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) (|Select__T@[Int]Int_| Res_DEV_EXTN@31 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)))))) (=> (not true) (and (= Res_DEV_OBJ_INIT@32 Res_DEV_OBJ_INIT@31) (= Res_DEV_EXTN@32 Res_DEV_EXTN@31))))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@15 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@15) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@31 r@@15) (|Select__T@[Int]Int_| Res_DEVICE_STACK@32 r@@15)))
 :qid |MouseClassFindMorePortsbpl.2230:63|
 :skolemid |436|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@32 r@@15))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))))) (forall ((r@@16 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@16) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)) r@@16)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@31 r@@16) (|Select__T@[Int]Int_| Res_DEV_EXTN@32 r@@16)))
 :qid |MouseClassFindMorePortsbpl.2234:196|
 :skolemid |437|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@32 r@@16))
))))) (and (and (and (Subset Empty (Union (Union Empty Empty) (Singleton call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) (forall ((r@@17 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@17) (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 r@@17)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@31 r@@17) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 r@@17)))
 :qid |MouseClassFindMorePortsbpl.2238:125|
 :skolemid |438|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 r@@17))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@18 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@18) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@31 r@@18) (|Select__T@[Int]Int_| Res_SPIN_LOCK@32 r@@18)))
 :qid |MouseClassFindMorePortsbpl.2242:63|
 :skolemid |439|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@32 r@@18))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@26 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@26) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.MinorFunction__IO_STACK_LOCATION) _m@@26) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.MinorFunction__IO_STACK_LOCATION) _m@@26)))
 :qid |MouseClassFindMorePortsbpl.2244:64|
 :skolemid |440|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.MinorFunction__IO_STACK_LOCATION) _m@@26))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@27 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@27) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@27) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@27)))
 :qid |MouseClassFindMorePortsbpl.2246:64|
 :skolemid |441|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@27))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@28 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@28) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) _m@@28) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.DeviceExtension__DEVICE_OBJECT) _m@@28)))
 :qid |MouseClassFindMorePortsbpl.2248:64|
 :skolemid |442|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DeviceExtension__DEVICE_OBJECT) _m@@28))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@29 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@29) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.Self__DEVICE_EXTENSION) _m@@29) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.Self__DEVICE_EXTENSION) _m@@29)))
 :qid |MouseClassFindMorePortsbpl.2250:64|
 :skolemid |443|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.Self__DEVICE_EXTENSION) _m@@29))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@30 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@30) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.Started__DEVICE_EXTENSION) _m@@30) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.Started__DEVICE_EXTENSION) _m@@30)))
 :qid |MouseClassFindMorePortsbpl.2252:64|
 :skolemid |444|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.Started__DEVICE_EXTENSION) _m@@30))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@31 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@31) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.GrandMaster__GLOBALS) _m@@31) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.GrandMaster__GLOBALS) _m@@31)))
 :qid |MouseClassFindMorePortsbpl.2254:64|
 :skolemid |445|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.GrandMaster__GLOBALS) _m@@31))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@32 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@32) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.P_DEVICE_OBJECT) _m@@32) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.P_DEVICE_OBJECT) _m@@32)))
 :qid |MouseClassFindMorePortsbpl.2256:64|
 :skolemid |446|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.P_DEVICE_OBJECT) _m@@32))
))) (and (= Res_SPIN_LOCK@36 Res_SPIN_LOCK@32) (= Res_DEV_OBJ_INIT@36 Res_DEV_OBJ_INIT@32))) (and (and (= Res_DEV_EXTN@36 Res_DEV_EXTN@32) (= Res_DEVICE_STACK@36 Res_DEVICE_STACK@32)) (and (= Mem@66 Mem@59) (= (ControlFlow 0 51) 25)))))) label_154_correct)))))))
(let ((label_139_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0) (=> (and (= Mem@58 Mem@53) (= Res_DEVICE_STACK@31 Res_DEVICE_STACK@29)) (=> (and (and (= Res_DEV_EXTN@31 Res_DEV_EXTN@29) (= Res_DEV_OBJ_INIT@31 Res_DEV_OBJ_INIT@29)) (and (= Res_SPIN_LOCK@31 Res_SPIN_LOCK@29) (= (ControlFlow 0 54) 51))) label_146_correct)))))
(let ((label_139_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0)) (=> (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))) (= Mem@54 Mem@53)) (and (= Res_DEV_OBJ_INIT@30 Res_DEV_OBJ_INIT@29) (= Res_DEV_EXTN@30 Res_DEV_EXTN@29))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@19 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@19) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@29 r@@19) (|Select__T@[Int]Int_| Res_DEVICE_STACK@30 r@@19)))
 :qid |MouseClassFindMorePortsbpl.2096:63|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@30 r@@19))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@20 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@20) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@29 r@@20) (|Select__T@[Int]Int_| Res_DEV_EXTN@30 r@@20)))
 :qid |MouseClassFindMorePortsbpl.2100:63|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@30 r@@20))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@21 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@21) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@29 r@@21) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@30 r@@21)))
 :qid |MouseClassFindMorePortsbpl.2104:63|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@30 r@@21))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@22 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@22) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@29 r@@22) (|Select__T@[Int]Int_| Res_SPIN_LOCK@30 r@@22)))
 :qid |MouseClassFindMorePortsbpl.2108:63|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@30 r@@22))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@33 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@33) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.MinorFunction__IO_STACK_LOCATION) _m@@33) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.MinorFunction__IO_STACK_LOCATION) _m@@33)))
 :qid |MouseClassFindMorePortsbpl.2110:64|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.MinorFunction__IO_STACK_LOCATION) _m@@33))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@34 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@34) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@34) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@34)))
 :qid |MouseClassFindMorePortsbpl.2112:64|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@34))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@35 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@35) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.DeviceExtension__DEVICE_OBJECT) _m@@35) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.DeviceExtension__DEVICE_OBJECT) _m@@35)))
 :qid |MouseClassFindMorePortsbpl.2114:64|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.DeviceExtension__DEVICE_OBJECT) _m@@35))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@36 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@36) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.Self__DEVICE_EXTENSION) _m@@36) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.Self__DEVICE_EXTENSION) _m@@36)))
 :qid |MouseClassFindMorePortsbpl.2116:64|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.Self__DEVICE_EXTENSION) _m@@36))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@37 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@37) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.Started__DEVICE_EXTENSION) _m@@37) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.Started__DEVICE_EXTENSION) _m@@37)))
 :qid |MouseClassFindMorePortsbpl.2118:64|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.Started__DEVICE_EXTENSION) _m@@37))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@38 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@38) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.GrandMaster__GLOBALS) _m@@38) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.GrandMaster__GLOBALS) _m@@38)))
 :qid |MouseClassFindMorePortsbpl.2120:64|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.GrandMaster__GLOBALS) _m@@38))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@39 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@39) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.P_DEVICE_OBJECT) _m@@39) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.P_DEVICE_OBJECT) _m@@39)))
 :qid |MouseClassFindMorePortsbpl.2122:64|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.P_DEVICE_OBJECT) _m@@39))
))) (= Mem@55 (|Store__T@[name][Int]Int_| Mem@54 T.DataOut__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@54 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) 0))))) (and (and (and (= Mem@56 (|Store__T@[name][Int]Int_| Mem@55 T.DataIn__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))))) (= Mem@57 (|Store__T@[name][Int]Int_| Mem@56 T.InputData__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)))))) (and (= Mem@58 Mem@57) (= Res_DEVICE_STACK@31 Res_DEVICE_STACK@30))) (and (and (= Res_DEV_EXTN@31 Res_DEV_EXTN@30) (= Res_DEV_OBJ_INIT@31 Res_DEV_OBJ_INIT@30)) (and (= Res_SPIN_LOCK@31 Res_SPIN_LOCK@30) (= (ControlFlow 0 53) 51)))))) label_146_correct)))))
(let ((label_135_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.P_FILE_OBJECT) call2formal@new@0) 0) (= Res_SPIN_LOCK@29 Res_SPIN_LOCK@27)) (=> (and (and (= Res_DEV_OBJ_INIT@29 Res_DEV_OBJ_INIT@27) (= Res_DEV_EXTN@29 Res_DEV_EXTN@27)) (and (= Res_DEVICE_STACK@29 Res_DEVICE_STACK@27) (= Mem@53 Mem@51))) (and (=> (= (ControlFlow 0 56) 53) label_139_true_correct) (=> (= (ControlFlow 0 56) 54) label_139_false_correct))))))
(let ((label_135_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.P_FILE_OBJECT) call2formal@new@0) 0)) (=> (and (and (and (and (and (= call0formal@$Object$1$24931.15$ObfDereferenceObject$41@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.P_FILE_OBJECT) call2formal@new@0)) (= Mem@52 Mem@51)) (and (= Res_DEV_OBJ_INIT@28 Res_DEV_OBJ_INIT@27) (= Res_DEV_EXTN@28 Res_DEV_EXTN@27))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@23 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@23) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@27 r@@23) (|Select__T@[Int]Int_| Res_DEVICE_STACK@28 r@@23)))
 :qid |MouseClassFindMorePortsbpl.2620:63|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@28 r@@23))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@24 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@24) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 r@@24) (|Select__T@[Int]Int_| Res_DEV_EXTN@28 r@@24)))
 :qid |MouseClassFindMorePortsbpl.2624:63|
 :skolemid |532|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@28 r@@24))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@25 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@25) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 r@@25) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@28 r@@25)))
 :qid |MouseClassFindMorePortsbpl.2628:63|
 :skolemid |533|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@28 r@@25))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@26 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@26) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@27 r@@26) (|Select__T@[Int]Int_| Res_SPIN_LOCK@28 r@@26)))
 :qid |MouseClassFindMorePortsbpl.2632:63|
 :skolemid |534|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@28 r@@26))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@40 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@40) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.MinorFunction__IO_STACK_LOCATION) _m@@40) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.MinorFunction__IO_STACK_LOCATION) _m@@40)))
 :qid |MouseClassFindMorePortsbpl.2634:64|
 :skolemid |535|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.MinorFunction__IO_STACK_LOCATION) _m@@40))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@41 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@41) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@41) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@41)))
 :qid |MouseClassFindMorePortsbpl.2636:64|
 :skolemid |536|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@41))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@42 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@42) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.DeviceExtension__DEVICE_OBJECT) _m@@42) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.DeviceExtension__DEVICE_OBJECT) _m@@42)))
 :qid |MouseClassFindMorePortsbpl.2638:64|
 :skolemid |537|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.DeviceExtension__DEVICE_OBJECT) _m@@42))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@43 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@43) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.Self__DEVICE_EXTENSION) _m@@43) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.Self__DEVICE_EXTENSION) _m@@43)))
 :qid |MouseClassFindMorePortsbpl.2640:64|
 :skolemid |538|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.Self__DEVICE_EXTENSION) _m@@43))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@44 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@44) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.Started__DEVICE_EXTENSION) _m@@44) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.Started__DEVICE_EXTENSION) _m@@44)))
 :qid |MouseClassFindMorePortsbpl.2642:64|
 :skolemid |539|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.Started__DEVICE_EXTENSION) _m@@44))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@45 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@45) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.GrandMaster__GLOBALS) _m@@45) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.GrandMaster__GLOBALS) _m@@45)))
 :qid |MouseClassFindMorePortsbpl.2644:64|
 :skolemid |540|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.GrandMaster__GLOBALS) _m@@45))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@46 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@46) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.P_DEVICE_OBJECT) _m@@46) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.P_DEVICE_OBJECT) _m@@46)))
 :qid |MouseClassFindMorePortsbpl.2646:64|
 :skolemid |541|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.P_DEVICE_OBJECT) _m@@46))
))) (= Res_SPIN_LOCK@29 Res_SPIN_LOCK@28)) (and (and (= Res_DEV_OBJ_INIT@29 Res_DEV_OBJ_INIT@28) (= Res_DEV_EXTN@29 Res_DEV_EXTN@28)) (and (= Res_DEVICE_STACK@29 Res_DEVICE_STACK@28) (= Mem@53 Mem@52)))))) (and (=> (= (ControlFlow 0 55) 53) label_139_true_correct) (=> (= (ControlFlow 0 55) 54) label_139_false_correct))))))
(let ((label_121_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0) (= Mem@51 Mem@41)) (=> (and (and (= Res_DEVICE_STACK@27 Res_DEVICE_STACK@23) (= Res_DEV_EXTN@27 Res_DEV_EXTN@23)) (and (= Res_DEV_OBJ_INIT@27 Res_DEV_OBJ_INIT@23) (= Res_SPIN_LOCK@27 Res_SPIN_LOCK@23))) (and (=> (= (ControlFlow 0 59) 55) label_135_true_correct) (=> (= (ControlFlow 0 59) 56) label_135_false_correct))))))
(let ((label_121_true_correct  (=> (and (and (and (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0)) (= Mem@49 (|Store__T@[name][Int]Int_| Mem@41 T.P_FILE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.P_FILE_OBJECT) call2formal@new@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)))))) (and (= Mem@50 (|Store__T@[name][Int]Int_| Mem@49 T.File__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) 0))) (= Mem@51 Mem@50))) (and (and (= Res_DEVICE_STACK@27 Res_DEVICE_STACK@23) (= Res_DEV_EXTN@27 Res_DEV_EXTN@23)) (and (= Res_DEV_OBJ_INIT@27 Res_DEV_OBJ_INIT@23) (= Res_SPIN_LOCK@27 Res_SPIN_LOCK@23)))) (and (=> (= (ControlFlow 0 58) 55) label_135_true_correct) (=> (= (ControlFlow 0 58) 56) label_135_false_correct)))))
(let ((label_120_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0) (and (=> (= (ControlFlow 0 60) 58) label_121_true_correct) (=> (= (ControlFlow 0 60) 59) label_121_false_correct)))))
(let ((label_120_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (=> (and (= call0formal@$FastMutex$1$15000.16$ExAcquireFastMutex$41@0 (Mutex__GLOBALS Globals)) (= Mem@43 Mem@41)) (=> (and (and (= Res_DEV_OBJ_INIT@25 Res_DEV_OBJ_INIT@23) (= Res_DEV_EXTN@25 Res_DEV_EXTN@23)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@27 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@27) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@23 r@@27) (|Select__T@[Int]Int_| Res_DEVICE_STACK@25 r@@27)))
 :qid |MouseClassFindMorePortsbpl.2012:63|
 :skolemid |381|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@25 r@@27))
)))) (=> (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@28 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@28) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@23 r@@28) (|Select__T@[Int]Int_| Res_DEV_EXTN@25 r@@28)))
 :qid |MouseClassFindMorePortsbpl.2016:63|
 :skolemid |382|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@25 r@@28))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@29 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@29) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@23 r@@29) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 r@@29)))
 :qid |MouseClassFindMorePortsbpl.2020:63|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 r@@29))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@30 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@30) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@23 r@@30) (|Select__T@[Int]Int_| Res_SPIN_LOCK@25 r@@30)))
 :qid |MouseClassFindMorePortsbpl.2024:63|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@25 r@@30))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@47 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@47) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.MinorFunction__IO_STACK_LOCATION) _m@@47) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.MinorFunction__IO_STACK_LOCATION) _m@@47)))
 :qid |MouseClassFindMorePortsbpl.2026:64|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.MinorFunction__IO_STACK_LOCATION) _m@@47))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@48 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@48) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@48) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@48)))
 :qid |MouseClassFindMorePortsbpl.2028:64|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@48))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@49 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@49) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) _m@@49) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.DeviceExtension__DEVICE_OBJECT) _m@@49)))
 :qid |MouseClassFindMorePortsbpl.2030:64|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) _m@@49))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@50 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@50) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Self__DEVICE_EXTENSION) _m@@50) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.Self__DEVICE_EXTENSION) _m@@50)))
 :qid |MouseClassFindMorePortsbpl.2032:64|
 :skolemid |388|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Self__DEVICE_EXTENSION) _m@@50))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@51 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@51) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Started__DEVICE_EXTENSION) _m@@51) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.Started__DEVICE_EXTENSION) _m@@51)))
 :qid |MouseClassFindMorePortsbpl.2034:64|
 :skolemid |389|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Started__DEVICE_EXTENSION) _m@@51))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@52 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@52) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.GrandMaster__GLOBALS) _m@@52) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.GrandMaster__GLOBALS) _m@@52)))
 :qid |MouseClassFindMorePortsbpl.2036:64|
 :skolemid |390|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.GrandMaster__GLOBALS) _m@@52))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@53 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@53) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.P_DEVICE_OBJECT) _m@@53) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.P_DEVICE_OBJECT) _m@@53)))
 :qid |MouseClassFindMorePortsbpl.2038:64|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.P_DEVICE_OBJECT) _m@@53))
)))) (and (and (= Mem@44 (|Store__T@[name][Int]Int_| Mem@43 T.P_FILE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.P_FILE_OBJECT) call2formal@new@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.File__PORT) (File__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)))))))) (= Mem@45 (|Store__T@[name][Int]Int_| Mem@44 T.File__PORT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.File__PORT) (File__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)))) 0)))) (and (= Mem@46 (|Store__T@[name][Int]Int_| Mem@45 T.Free__PORT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Free__PORT) (Free__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)))) 1))) (= Mem@47 (|Store__T@[name][Int]Int_| Mem@46 T.Port__PORT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Port__PORT) (Port__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)))) 0))))))) (=> (and (and (and (and (and (= call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0 (Mutex__GLOBALS Globals)) (= Mem@48 Mem@47)) (and (= Res_DEV_OBJ_INIT@26 Res_DEV_OBJ_INIT@25) (= Res_DEV_EXTN@26 Res_DEV_EXTN@25))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@31 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@31) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@25 r@@31) (|Select__T@[Int]Int_| Res_DEVICE_STACK@26 r@@31)))
 :qid |MouseClassFindMorePortsbpl.2138:63|
 :skolemid |414|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@26 r@@31))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@32 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@32) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@25 r@@32) (|Select__T@[Int]Int_| Res_DEV_EXTN@26 r@@32)))
 :qid |MouseClassFindMorePortsbpl.2142:63|
 :skolemid |415|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@26 r@@32))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@33 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@33) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 r@@33) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@26 r@@33)))
 :qid |MouseClassFindMorePortsbpl.2146:63|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@26 r@@33))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@34 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@34) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@25 r@@34) (|Select__T@[Int]Int_| Res_SPIN_LOCK@26 r@@34)))
 :qid |MouseClassFindMorePortsbpl.2150:63|
 :skolemid |417|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@26 r@@34))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@54 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@54) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.MinorFunction__IO_STACK_LOCATION) _m@@54) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@47 T.MinorFunction__IO_STACK_LOCATION) _m@@54)))
 :qid |MouseClassFindMorePortsbpl.2152:64|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.MinorFunction__IO_STACK_LOCATION) _m@@54))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@55 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@55) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@55) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@47 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@55)))
 :qid |MouseClassFindMorePortsbpl.2154:64|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@55))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@56 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@56) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.DeviceExtension__DEVICE_OBJECT) _m@@56) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@47 T.DeviceExtension__DEVICE_OBJECT) _m@@56)))
 :qid |MouseClassFindMorePortsbpl.2156:64|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.DeviceExtension__DEVICE_OBJECT) _m@@56))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@57 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@57) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.Self__DEVICE_EXTENSION) _m@@57) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@47 T.Self__DEVICE_EXTENSION) _m@@57)))
 :qid |MouseClassFindMorePortsbpl.2158:64|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.Self__DEVICE_EXTENSION) _m@@57))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@58 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@58) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.Started__DEVICE_EXTENSION) _m@@58) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@47 T.Started__DEVICE_EXTENSION) _m@@58)))
 :qid |MouseClassFindMorePortsbpl.2160:64|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.Started__DEVICE_EXTENSION) _m@@58))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@59 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@59) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.GrandMaster__GLOBALS) _m@@59) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@47 T.GrandMaster__GLOBALS) _m@@59)))
 :qid |MouseClassFindMorePortsbpl.2162:64|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.GrandMaster__GLOBALS) _m@@59))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@60 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@60) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.P_DEVICE_OBJECT) _m@@60) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@47 T.P_DEVICE_OBJECT) _m@@60)))
 :qid |MouseClassFindMorePortsbpl.2164:64|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.P_DEVICE_OBJECT) _m@@60))
))) (= Mem@51 Mem@48)) (and (and (= Res_DEVICE_STACK@27 Res_DEVICE_STACK@26) (= Res_DEV_EXTN@27 Res_DEV_EXTN@26)) (and (= Res_DEV_OBJ_INIT@27 Res_DEV_OBJ_INIT@26) (= Res_SPIN_LOCK@27 Res_SPIN_LOCK@26)))))) (and (=> (= (ControlFlow 0 57) 55) label_135_true_correct) (=> (= (ControlFlow 0 57) 56) label_135_false_correct))))))))))
(let ((label_119_false_correct  (=> (not (<= 0 call8formal@$result.MouseAddDeviceEx$791.0$1$@0)) (and (=> (= (ControlFlow 0 61) 57) label_120_true_correct) (=> (= (ControlFlow 0 61) 60) label_120_false_correct)))))
(let ((label_119_true_correct  (=> (<= 0 call8formal@$result.MouseAddDeviceEx$791.0$1$@0) (=> (and (= call0formal@$ListHead$1$6980.24$InsertTailList$81@0 (LegacyDeviceList__GLOBALS Globals)) (= call1formal@$Entry$2$6981.41$InsertTailList$81@0 (Link__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))) (=> (and (and (and (= Res_DEV_OBJ_INIT@24 Res_DEV_OBJ_INIT@23) (= Res_DEV_EXTN@24 Res_DEV_EXTN@23)) (and (Subset (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@42 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0) (Union (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@41 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0) (Singleton call1formal@$Entry$2$6981.41$InsertTailList$81@0))) (Subset (Union (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@41 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0) (Singleton call1formal@$Entry$2$6981.41$InsertTailList$81@0)) (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@42 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@35 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@35) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@23 r@@35) (|Select__T@[Int]Int_| Res_DEVICE_STACK@24 r@@35)))
 :qid |MouseClassFindMorePortsbpl.2180:63|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@24 r@@35))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@36 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@36) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@23 r@@36) (|Select__T@[Int]Int_| Res_DEV_EXTN@24 r@@36)))
 :qid |MouseClassFindMorePortsbpl.2184:63|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@24 r@@36))
))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@37 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@37) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@23 r@@37) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 r@@37)))
 :qid |MouseClassFindMorePortsbpl.2188:63|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 r@@37))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@38 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@38) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@23 r@@38) (|Select__T@[Int]Int_| Res_SPIN_LOCK@24 r@@38)))
 :qid |MouseClassFindMorePortsbpl.2192:63|
 :skolemid |428|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@24 r@@38))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@61 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@61) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.MinorFunction__IO_STACK_LOCATION) _m@@61) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.MinorFunction__IO_STACK_LOCATION) _m@@61)))
 :qid |MouseClassFindMorePortsbpl.2194:64|
 :skolemid |429|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.MinorFunction__IO_STACK_LOCATION) _m@@61))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@62 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@62) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@62) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@62)))
 :qid |MouseClassFindMorePortsbpl.2196:64|
 :skolemid |430|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@62))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@63 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@63) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.DeviceExtension__DEVICE_OBJECT) _m@@63) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.DeviceExtension__DEVICE_OBJECT) _m@@63)))
 :qid |MouseClassFindMorePortsbpl.2198:64|
 :skolemid |431|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.DeviceExtension__DEVICE_OBJECT) _m@@63))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@64 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@64) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Self__DEVICE_EXTENSION) _m@@64) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.Self__DEVICE_EXTENSION) _m@@64)))
 :qid |MouseClassFindMorePortsbpl.2200:64|
 :skolemid |432|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Self__DEVICE_EXTENSION) _m@@64))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@65 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@65) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Started__DEVICE_EXTENSION) _m@@65) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.Started__DEVICE_EXTENSION) _m@@65)))
 :qid |MouseClassFindMorePortsbpl.2202:64|
 :skolemid |433|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Started__DEVICE_EXTENSION) _m@@65))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@66 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@66) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.GrandMaster__GLOBALS) _m@@66) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.GrandMaster__GLOBALS) _m@@66)))
 :qid |MouseClassFindMorePortsbpl.2204:64|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.GrandMaster__GLOBALS) _m@@66))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@67 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@67) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.P_DEVICE_OBJECT) _m@@67) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.P_DEVICE_OBJECT) _m@@67)))
 :qid |MouseClassFindMorePortsbpl.2206:64|
 :skolemid |435|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.P_DEVICE_OBJECT) _m@@67))
))) (= $successfulCreates$10$4619.28$MouseClassFindMorePorts$12@1 (PLUS $successfulCreates$10$4619.28$MouseClassFindMorePorts$12@0 1 1))) (and (= Res_SPIN_LOCK@36 Res_SPIN_LOCK@24) (= Res_DEV_OBJ_INIT@36 Res_DEV_OBJ_INIT@24))) (and (and (= Res_DEV_EXTN@36 Res_DEV_EXTN@24) (= Res_DEVICE_STACK@36 Res_DEVICE_STACK@24)) (and (= Mem@66 Mem@42) (= (ControlFlow 0 50) 25))))) label_154_correct))))))
(let ((label_114_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.PUINT2) call2formal@new@0@@0) 0) (= Res_SPIN_LOCK@23 Res_SPIN_LOCK@21)) (=> (and (and (= Res_DEV_OBJ_INIT@23 Res_DEV_OBJ_INIT@21) (= Res_DEV_EXTN@23 Res_DEV_EXTN@21)) (and (= Res_DEVICE_STACK@23 Res_DEVICE_STACK@21) (= Mem@41 Mem@38))) (and (=> (= (ControlFlow 0 63) 50) label_119_true_correct) (=> (= (ControlFlow 0 63) 61) label_119_false_correct))))))
(let ((label_114_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.PUINT2) call2formal@new@0@@0) 0)) (=> (and (and (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.PUINT2) call2formal@new@0@@0)) (= Mem@39 Mem@38)) (and (= Res_DEV_OBJ_INIT@22 Res_DEV_OBJ_INIT@21) (= Res_DEV_EXTN@22 Res_DEV_EXTN@21))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@39 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@39) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@21 r@@39) (|Select__T@[Int]Int_| Res_DEVICE_STACK@22 r@@39)))
 :qid |MouseClassFindMorePortsbpl.2096:63|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@22 r@@39))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@40 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@40) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 r@@40) (|Select__T@[Int]Int_| Res_DEV_EXTN@22 r@@40)))
 :qid |MouseClassFindMorePortsbpl.2100:63|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@22 r@@40))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@41 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@41) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 r@@41) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@22 r@@41)))
 :qid |MouseClassFindMorePortsbpl.2104:63|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@22 r@@41))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@42 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@42) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 r@@42) (|Select__T@[Int]Int_| Res_SPIN_LOCK@22 r@@42)))
 :qid |MouseClassFindMorePortsbpl.2108:63|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@22 r@@42))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@68 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@68) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.MinorFunction__IO_STACK_LOCATION) _m@@68) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.MinorFunction__IO_STACK_LOCATION) _m@@68)))
 :qid |MouseClassFindMorePortsbpl.2110:64|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.MinorFunction__IO_STACK_LOCATION) _m@@68))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@69 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@69) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@69) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@69)))
 :qid |MouseClassFindMorePortsbpl.2112:64|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@69))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@70 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@70) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.DeviceExtension__DEVICE_OBJECT) _m@@70) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) _m@@70)))
 :qid |MouseClassFindMorePortsbpl.2114:64|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.DeviceExtension__DEVICE_OBJECT) _m@@70))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@71 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@71) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Self__DEVICE_EXTENSION) _m@@71) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) _m@@71)))
 :qid |MouseClassFindMorePortsbpl.2116:64|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Self__DEVICE_EXTENSION) _m@@71))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@72 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@72) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Started__DEVICE_EXTENSION) _m@@72) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Started__DEVICE_EXTENSION) _m@@72)))
 :qid |MouseClassFindMorePortsbpl.2118:64|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Started__DEVICE_EXTENSION) _m@@72))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@73 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@73) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.GrandMaster__GLOBALS) _m@@73) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) _m@@73)))
 :qid |MouseClassFindMorePortsbpl.2120:64|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.GrandMaster__GLOBALS) _m@@73))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@74 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@74) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.P_DEVICE_OBJECT) _m@@74) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.P_DEVICE_OBJECT) _m@@74)))
 :qid |MouseClassFindMorePortsbpl.2122:64|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.P_DEVICE_OBJECT) _m@@74))
))) (and (= Mem@40 (|Store__T@[name][Int]Int_| Mem@39 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.PUINT2) call2formal@new@0@@0 0))) (= Res_SPIN_LOCK@23 Res_SPIN_LOCK@22))) (and (and (= Res_DEV_OBJ_INIT@23 Res_DEV_OBJ_INIT@22) (= Res_DEV_EXTN@23 Res_DEV_EXTN@22)) (and (= Res_DEVICE_STACK@23 Res_DEVICE_STACK@22) (= Mem@41 Mem@40)))))) (and (=> (= (ControlFlow 0 62) 50) label_119_true_correct) (=> (= (ControlFlow 0 62) 61) label_119_false_correct))))))
(let ((label_96_false_correct  (=> (and (and (= call9formal@$result.IoGetDeviceObjectPointer$21491.0$1$@0 0) (= Mem@36 (|Store__T@[name][Int]Int_| Mem@34 T.StackSize__DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.StackSize__DEVICE_OBJECT) (StackSize__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) (PLUS 1 1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.StackSize__DEVICE_OBJECT) (StackSize__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.TopPort__DEVICE_EXTENSION) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))))))))) (and (= call1formal@$FullClassName$2$793.29$MouseAddDeviceEx$121@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.PUINT2) call2formal@new@0@@0)) (= call2formal@$File$3$794.28$MouseAddDeviceEx$121@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.P_FILE_OBJECT) call2formal@new@0)))) (and (=> (= (ControlFlow 0 64) (- 0 72)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) 1)) (=> (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) 1) (and (=> (= (ControlFlow 0 64) (- 0 71)) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 (SpinLock__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0)) (=> (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 (SpinLock__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0) (and (=> (= (ControlFlow 0 64) (- 0 70)) (forall ((_H_x@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@19 1) _H_x@@1) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1)))) _H_x@@1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1))) 1)))
 :qid |MouseClassFindMorePortsbpl.2471:18|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1)))
))) (=> (forall ((_H_x@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@19 1) _H_x@@2) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2)))) _H_x@@2) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2))) 1)))
 :qid |MouseClassFindMorePortsbpl.2471:18|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2)))
)) (and (=> (= (ControlFlow 0 64) (- 0 69)) (forall ((_H_z@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@19 1) _H_z@@3) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3)))) _H_z@@3)))
 :qid |MouseClassFindMorePortsbpl.2473:18|
 :skolemid |498|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3)))
))) (=> (forall ((_H_z@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@19 1) _H_z@@4) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4)))) _H_z@@4)))
 :qid |MouseClassFindMorePortsbpl.2473:18|
 :skolemid |498|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4)))
)) (and (=> (= (ControlFlow 0 64) (- 0 68)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 64) (- 0 67)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 64) (- 0 66)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@1) (or (= _H_y@@1 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (MINUS_LEFT_PTR _H_y@@1 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2479:235|
 :skolemid |499|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@1))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@2) (or (= _H_y@@2 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (MINUS_LEFT_PTR _H_y@@2 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2479:235|
 :skolemid |499|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@2))
)))) (and (=> (= (ControlFlow 0 64) (- 0 65)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (and (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) 1) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 (WaitWakeSpinLock__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0)) (=> (and (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 (SpinLock__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) 0) (forall ((_H_x@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@21 1) _H_x@@3) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3)))) _H_x@@3) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3))) 1)))
 :qid |MouseClassFindMorePortsbpl.2489:17|
 :skolemid |500|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3)))
))) (and (forall ((_H_z@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@21 1) _H_z@@5) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@5))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@5)))) _H_z@@5)))
 :qid |MouseClassFindMorePortsbpl.2491:17|
 :skolemid |501|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@5)))
)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))))) (=> (and (and (and (and (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@3) (or (= _H_y@@3 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 (MINUS_LEFT_PTR _H_y@@3 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2497:234|
 :skolemid |502|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@3))
))))) (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@36 T.Flink__LIST_ENTRY)))) (and (and (= Res_DEV_OBJ_INIT@21 Res_DEV_OBJ_INIT@19) (= Res_DEV_EXTN@21 Res_DEV_EXTN@19)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@43 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@43) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@43) (|Select__T@[Int]Int_| Res_DEVICE_STACK@21 r@@43)))
 :qid |MouseClassFindMorePortsbpl.2510:63|
 :skolemid |503|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@21 r@@43))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@44 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@44) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@44) (|Select__T@[Int]Int_| Res_DEV_EXTN@21 r@@44)))
 :qid |MouseClassFindMorePortsbpl.2514:63|
 :skolemid |504|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@21 r@@44))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@45 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@45) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@45) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 r@@45)))
 :qid |MouseClassFindMorePortsbpl.2518:63|
 :skolemid |505|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 r@@45))
)))) (and (and (Subset Empty (Union (Union Empty (Singleton (WaitWakeSpinLock__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))) Empty)) (forall ((r@@46 Int) ) (!  (or (or (= (WaitWakeSpinLock__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) r@@46) (|Select__T@[Int]Bool_| Empty r@@46)) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@46) (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 r@@46)))
 :qid |MouseClassFindMorePortsbpl.2522:159|
 :skolemid |506|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 r@@46))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@75 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@75) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.MinorFunction__IO_STACK_LOCATION) _m@@75) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.MinorFunction__IO_STACK_LOCATION) _m@@75)))
 :qid |MouseClassFindMorePortsbpl.2524:64|
 :skolemid |507|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.MinorFunction__IO_STACK_LOCATION) _m@@75))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@76 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@76) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@76) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@76)))
 :qid |MouseClassFindMorePortsbpl.2526:64|
 :skolemid |508|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@76))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@77 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@77) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) _m@@77) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) _m@@77)))
 :qid |MouseClassFindMorePortsbpl.2528:64|
 :skolemid |509|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) _m@@77))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@78 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@78) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) _m@@78) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) _m@@78)))
 :qid |MouseClassFindMorePortsbpl.2530:64|
 :skolemid |510|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) _m@@78))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@79 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@79) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Started__DEVICE_EXTENSION) _m@@79) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Started__DEVICE_EXTENSION) _m@@79)))
 :qid |MouseClassFindMorePortsbpl.2532:64|
 :skolemid |511|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Started__DEVICE_EXTENSION) _m@@79))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@80 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@80) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) _m@@80) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) _m@@80)))
 :qid |MouseClassFindMorePortsbpl.2534:64|
 :skolemid |512|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) _m@@80))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@81 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@81) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) _m@@81) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.P_DEVICE_OBJECT) _m@@81)))
 :qid |MouseClassFindMorePortsbpl.2536:64|
 :skolemid |513|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) _m@@81))
)))) (and (and (forall ((r@@47 Int) ) (!  (=> (and (and (POW2 r@@47) (POW2 128)) (not (= r@@47 128))) (= (not (= (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) r@@47) 0)) (not (= (BIT_BAND (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128)) r@@47) 0))))
 :qid |MouseClassFindMorePortsbpl.3568:16|
 :skolemid |674|
 :pattern ( (BIT_BAND (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128)) r@@47))
)) (= (BIT_BAND (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128)) 128) 0)) (and (= tempBoogie0@3 (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128))) (= Mem@38 (|Store__T@[name][Int]Int_| Mem@37 T.Flags__DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) tempBoogie0@3)))))))) (and (=> (= (ControlFlow 0 64) 62) label_114_true_correct) (=> (= (ControlFlow 0 64) 63) label_114_false_correct))))))))))))))))))))))))
(let ((label_86_true_correct  (=> (and (and (and (and (and (<= 0 call10formal@$result.MouCreateClassObject$3164.0$1$@0) (= $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1))))) (and (= Mem@32 (|Store__T@[name][Int]Int_| Mem@31 T.PnP__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.PnP__DEVICE_EXTENSION) (PnP__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) 0))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.TopPort__DEVICE_EXTENSION) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.P_DEVICE_OBJECT) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))))) (and (and (= call3formal@$DeviceObject$4$21495.26$IoGetDeviceObjectPointer$161@0 (TopPort__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1)) (= Mem@33 Mem@32)) (and (= Res_DEV_OBJ_INIT@19 Res_DEV_OBJ_INIT@18) (= Res_DEV_EXTN@19 Res_DEV_EXTN@18)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@48 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@48) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@48) (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@48)))
 :qid |MouseClassFindMorePortsbpl.2272:63|
 :skolemid |447|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@48))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@49 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@49) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@49) (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@49)))
 :qid |MouseClassFindMorePortsbpl.2276:63|
 :skolemid |448|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@49))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@50 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@50) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@50) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@50)))
 :qid |MouseClassFindMorePortsbpl.2280:63|
 :skolemid |449|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@50))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@51 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@51) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@51) (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@51)))
 :qid |MouseClassFindMorePortsbpl.2284:63|
 :skolemid |450|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@51))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@82 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@82) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.MinorFunction__IO_STACK_LOCATION) _m@@82) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.MinorFunction__IO_STACK_LOCATION) _m@@82)))
 :qid |MouseClassFindMorePortsbpl.2286:64|
 :skolemid |451|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.MinorFunction__IO_STACK_LOCATION) _m@@82))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@83 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@83) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@83) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@83)))
 :qid |MouseClassFindMorePortsbpl.2288:64|
 :skolemid |452|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@83))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@84 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@84) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) _m@@84) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) _m@@84)))
 :qid |MouseClassFindMorePortsbpl.2290:64|
 :skolemid |453|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) _m@@84))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@85 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@85) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) _m@@85) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) _m@@85)))
 :qid |MouseClassFindMorePortsbpl.2292:64|
 :skolemid |454|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) _m@@85))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@86 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@86) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Started__DEVICE_EXTENSION) _m@@86) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Started__DEVICE_EXTENSION) _m@@86)))
 :qid |MouseClassFindMorePortsbpl.2294:64|
 :skolemid |455|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Started__DEVICE_EXTENSION) _m@@86))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@87 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@87) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) _m@@87) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) _m@@87)))
 :qid |MouseClassFindMorePortsbpl.2296:64|
 :skolemid |456|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) _m@@87))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@88 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@88) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.P_DEVICE_OBJECT) _m@@88) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.P_DEVICE_OBJECT) _m@@88)))
 :qid |MouseClassFindMorePortsbpl.2298:64|
 :skolemid |457|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.P_DEVICE_OBJECT) _m@@88))
))) (= Mem@34 (|Store__T@[name][Int]Int_| Mem@33 T.TopPort__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.TopPort__DEVICE_EXTENSION) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.P_DEVICE_OBJECT) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4614.28$MouseClassFindMorePorts$12@1))))))))) (and (=> (= (ControlFlow 0 78) 77) label_96_true_correct) (=> (= (ControlFlow 0 78) 64) label_96_false_correct)))))
(let ((label_86_false_correct  (=> (not (<= 0 call10formal@$result.MouCreateClassObject$3164.0$1$@0)) (and (=> (= (ControlFlow 0 43) (- 0 49)) (forall ((_H_x@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@18 1) _H_x@@4) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4)))) _H_x@@4) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4))) 1)))
 :qid |MouseClassFindMorePortsbpl.2545:18|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4)))
))) (=> (forall ((_H_x@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@18 1) _H_x@@5) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5)))) _H_x@@5) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5))) 1)))
 :qid |MouseClassFindMorePortsbpl.2545:18|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5)))
)) (and (=> (= (ControlFlow 0 43) (- 0 48)) (forall ((_H_z@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@6) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@6))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@6)))) _H_z@@6)))
 :qid |MouseClassFindMorePortsbpl.2547:18|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@6)))
))) (=> (forall ((_H_z@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@7) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7)))) _H_z@@7)))
 :qid |MouseClassFindMorePortsbpl.2547:18|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7)))
)) (and (=> (= (ControlFlow 0 43) (- 0 47)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 43) (- 0 46)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 43) (- 0 45)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@4) (or (= _H_y@@4 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (MINUS_LEFT_PTR _H_y@@4 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2553:235|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@4))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@5) (or (= _H_y@@5 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (MINUS_LEFT_PTR _H_y@@5 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2553:235|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@5))
)))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (forall ((_H_x@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@20 1) _H_x@@6) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6)))) _H_x@@6) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6))) 1)))
 :qid |MouseClassFindMorePortsbpl.2557:17|
 :skolemid |517|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6)))
)) (=> (and (and (forall ((_H_z@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@20 1) _H_z@@8) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@8))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@8)))) _H_z@@8)))
 :qid |MouseClassFindMorePortsbpl.2559:17|
 :skolemid |518|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@8)))
)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@6) (or (= _H_y@@6 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (MINUS_LEFT_PTR _H_y@@6 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2565:234|
 :skolemid |519|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@6))
)))))) (=> (and (and (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@35 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@20 Res_DEV_OBJ_INIT@18) (= Res_DEV_EXTN@20 Res_DEV_EXTN@18))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@52 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@52) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@52) (|Select__T@[Int]Int_| Res_DEVICE_STACK@20 r@@52)))
 :qid |MouseClassFindMorePortsbpl.2578:63|
 :skolemid |520|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@20 r@@52))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@53 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@53) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@53) (|Select__T@[Int]Int_| Res_DEV_EXTN@20 r@@53)))
 :qid |MouseClassFindMorePortsbpl.2582:63|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@20 r@@53))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@54 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@54) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@54) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 r@@54)))
 :qid |MouseClassFindMorePortsbpl.2586:63|
 :skolemid |522|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 r@@54))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@55 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@55) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@55) (|Select__T@[Int]Int_| Res_SPIN_LOCK@20 r@@55)))
 :qid |MouseClassFindMorePortsbpl.2590:63|
 :skolemid |523|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@20 r@@55))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@89 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@89) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.MinorFunction__IO_STACK_LOCATION) _m@@89) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.MinorFunction__IO_STACK_LOCATION) _m@@89)))
 :qid |MouseClassFindMorePortsbpl.2592:64|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.MinorFunction__IO_STACK_LOCATION) _m@@89))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@90 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@90) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@90) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@90)))
 :qid |MouseClassFindMorePortsbpl.2594:64|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@90))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@91 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@91) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) _m@@91) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) _m@@91)))
 :qid |MouseClassFindMorePortsbpl.2596:64|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) _m@@91))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@92 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@92) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) _m@@92) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) _m@@92)))
 :qid |MouseClassFindMorePortsbpl.2598:64|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) _m@@92))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@93 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@93) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Started__DEVICE_EXTENSION) _m@@93) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Started__DEVICE_EXTENSION) _m@@93)))
 :qid |MouseClassFindMorePortsbpl.2600:64|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Started__DEVICE_EXTENSION) _m@@93))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@94 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@94) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.GrandMaster__GLOBALS) _m@@94) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) _m@@94)))
 :qid |MouseClassFindMorePortsbpl.2602:64|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.GrandMaster__GLOBALS) _m@@94))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@95 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@95) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.P_DEVICE_OBJECT) _m@@95) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) _m@@95)))
 :qid |MouseClassFindMorePortsbpl.2604:64|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.P_DEVICE_OBJECT) _m@@95))
))) (and (= Res_SPIN_LOCK@36 Res_SPIN_LOCK@20) (= Res_DEV_OBJ_INIT@36 Res_DEV_OBJ_INIT@20))) (and (and (= Res_DEV_EXTN@36 Res_DEV_EXTN@20) (= Res_DEVICE_STACK@36 Res_DEVICE_STACK@20)) (and (= Mem@66 Mem@35) (= (ControlFlow 0 43) 25)))))) label_154_correct))))))))))))))))))
(let ((label_82_correct  (=> (= call1formal@$TmpDeviceExtension$2$3166.28$MouCreateClassObject$201@0 (InitExtension__GLOBALS Globals)) (and (=> (= (ControlFlow 0 79) (- 0 86)) (forall ((_H_x@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@17 1) _H_x@@7) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7)))) _H_x@@7) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7))) 1)))
 :qid |MouseClassFindMorePortsbpl.2307:18|
 :skolemid |458|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7)))
))) (=> (forall ((_H_x@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@17 1) _H_x@@8) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8)))) _H_x@@8) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8))) 1)))
 :qid |MouseClassFindMorePortsbpl.2307:18|
 :skolemid |458|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8)))
)) (and (=> (= (ControlFlow 0 79) (- 0 85)) (forall ((_H_z@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@9) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@9))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@9)))) _H_z@@9)))
 :qid |MouseClassFindMorePortsbpl.2309:18|
 :skolemid |459|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@9)))
))) (=> (forall ((_H_z@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@10) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@10))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@10)))) _H_z@@10)))
 :qid |MouseClassFindMorePortsbpl.2309:18|
 :skolemid |459|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@10)))
)) (and (=> (= (ControlFlow 0 79) (- 0 84)) (and (Subset Empty (Inverse Res_DEV_EXTN@17 1)) (forall ((_H_z@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@11) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 (SpinLock__DEVICE_EXTENSION _H_z@@11)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@11)) 0)))
 :qid |MouseClassFindMorePortsbpl.2311:63|
 :skolemid |460|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@11))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@17 1)) (forall ((_H_z@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@12) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 (SpinLock__DEVICE_EXTENSION _H_z@@12)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@12)) 0)))
 :qid |MouseClassFindMorePortsbpl.2311:63|
 :skolemid |460|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@12))
))) (and (=> (= (ControlFlow 0 79) (- 0 83)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 79) (- 0 82)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 79) (- 0 81)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@7) (or (= _H_y@@7 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (MINUS_LEFT_PTR _H_y@@7 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2317:235|
 :skolemid |461|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@7))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@8) (or (= _H_y@@8 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (MINUS_LEFT_PTR _H_y@@8 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2317:235|
 :skolemid |461|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@8))
)))) (and (=> (= (ControlFlow 0 79) (- 0 80)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (forall ((_H_x@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@18 1) _H_x@@9) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9)))) _H_x@@9) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9))) 1)))
 :qid |MouseClassFindMorePortsbpl.2321:17|
 :skolemid |462|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9)))
)) (=> (and (and (and (forall ((_H_z@@13 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@13) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13)))) _H_z@@13)))
 :qid |MouseClassFindMorePortsbpl.2323:17|
 :skolemid |463|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13)))
)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@9) (or (= _H_y@@9 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (MINUS_LEFT_PTR _H_y@@9 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2329:234|
 :skolemid |464|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@9))
)))))) (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@31 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@30 T.Flink__LIST_ENTRY))) (and (=> (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1) 0))) (=> (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) 0)))))) (=> (and (and (and (and (and (=> (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) 1)) (=> (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) 1)))) (and (=> (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) 0))) (=> (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0) (and (= Res_DEV_OBJ_INIT@18 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1) 1)) (= Res_DEV_EXTN@18 (|Store__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) 1)))))) (and (and (=> (not (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0)) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1))))))) (=> (not (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0)) (and (= Res_DEV_OBJ_INIT@18 Res_DEV_OBJ_INIT@17) (= Res_DEV_EXTN@18 Res_DEV_EXTN@17)))) (and (Subset Empty (Inverse Res_DEV_EXTN@18 1)) (forall ((_H_z@@14 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@14) (or (|Select__T@[Int]Bool_| (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) _H_z@@14) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 (SpinLock__DEVICE_EXTENSION _H_z@@14)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@14)) 0))))
 :qid |MouseClassFindMorePortsbpl.2351:62|
 :skolemid |465|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@14))
))))) (and (and (and (=> (not (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0)) (and (Subset Empty (Inverse Res_DEV_EXTN@18 1)) (forall ((_H_z@@15 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@15) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 (SpinLock__DEVICE_EXTENSION _H_z@@15)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@15)) 0)))
 :qid |MouseClassFindMorePortsbpl.2353:116|
 :skolemid |466|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@15))
)))) (=> (>= call10formal@$result.MouCreateClassObject$3164.0$1$@0 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 (SpinLock__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1))))) 0))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@56 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@56) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@56) (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@56)))
 :qid |MouseClassFindMorePortsbpl.2360:63|
 :skolemid |467|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@56))
)))) (and (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))))) (forall ((r@@57 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@57) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) r@@57)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@57) (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@57)))
 :qid |MouseClassFindMorePortsbpl.2364:231|
 :skolemid |468|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@57))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) (forall ((r@@58 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@58) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1) r@@58)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@58) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@58)))
 :qid |MouseClassFindMorePortsbpl.2368:160|
 :skolemid |469|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@58))
)))))) (and (and (and (and (Subset Empty (Union (Union (Union Empty (Singleton (WaitWakeSpinLock__DEVICE_EXTENSION call1formal@$TmpDeviceExtension$2$3166.28$MouCreateClassObject$201@0))) (Singleton (SpinLock__DEVICE_EXTENSION call1formal@$TmpDeviceExtension$2$3166.28$MouCreateClassObject$201@0))) SetTrue)) (forall ((r@@59 Int) ) (!  (or (or (or (= (WaitWakeSpinLock__DEVICE_EXTENSION call1formal@$TmpDeviceExtension$2$3166.28$MouCreateClassObject$201@0) r@@59) (= (SpinLock__DEVICE_EXTENSION call1formal@$TmpDeviceExtension$2$3166.28$MouCreateClassObject$201@0) r@@59)) (|Select__T@[Int]Bool_| SetTrue r@@59)) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@59) (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@59)))
 :qid |MouseClassFindMorePortsbpl.2372:277|
 :skolemid |470|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@59))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@96 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@96) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.MinorFunction__IO_STACK_LOCATION) _m@@96) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.MinorFunction__IO_STACK_LOCATION) _m@@96)))
 :qid |MouseClassFindMorePortsbpl.2374:64|
 :skolemid |471|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.MinorFunction__IO_STACK_LOCATION) _m@@96))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@97 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@97) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@97) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@97)))
 :qid |MouseClassFindMorePortsbpl.2376:64|
 :skolemid |472|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@97))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@98 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@98) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) _m@@98) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) _m@@98)))
 :qid |MouseClassFindMorePortsbpl.2378:64|
 :skolemid |473|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) _m@@98))
))))) (and (and (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@99 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@99) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) _m@@99) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) _m@@99)))
 :qid |MouseClassFindMorePortsbpl.2380:66|
 :skolemid |474|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) _m@@99))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@100 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@100) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Started__DEVICE_EXTENSION) _m@@100) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Started__DEVICE_EXTENSION) _m@@100)))
 :qid |MouseClassFindMorePortsbpl.2382:64|
 :skolemid |475|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Started__DEVICE_EXTENSION) _m@@100))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@101 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@101) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) _m@@101) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) _m@@101)))
 :qid |MouseClassFindMorePortsbpl.2384:64|
 :skolemid |476|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) _m@@101))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton call2formal@new@0@@1))) (forall ((_m@@102 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty _m@@102) (= _m@@102 call2formal@new@0@@1)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) _m@@102) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.P_DEVICE_OBJECT) _m@@102)))
 :qid |MouseClassFindMorePortsbpl.2386:137|
 :skolemid |477|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) _m@@102))
))))))) (and (=> (= (ControlFlow 0 79) 78) label_86_true_correct) (=> (= (ControlFlow 0 79) 43) label_86_false_correct))))))))))))))))))))))
(let ((label_77_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.PUINT2) call2formal@new@0@@0) 0) (=> (and (= Mem@30 Mem@21) (= Res_DEVICE_STACK@17 Res_DEVICE_STACK@10)) (=> (and (and (= Res_DEV_EXTN@17 Res_DEV_EXTN@10) (= Res_DEV_OBJ_INIT@17 Res_DEV_OBJ_INIT@10)) (and (= Res_SPIN_LOCK@17 Res_SPIN_LOCK@10) (= (ControlFlow 0 88) 79))) label_82_correct)))))
(let ((label_77_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.PUINT2) call2formal@new@0@@0) 0)) (=> (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.PUINT2) call2formal@new@0@@0)) (= Mem@28 Mem@21)) (and (= Res_DEV_OBJ_INIT@16 Res_DEV_OBJ_INIT@10) (= Res_DEV_EXTN@16 Res_DEV_EXTN@10))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@60 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@60) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@60) (|Select__T@[Int]Int_| Res_DEVICE_STACK@16 r@@60)))
 :qid |MouseClassFindMorePortsbpl.2096:63|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@16 r@@60))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@61 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@61) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@61) (|Select__T@[Int]Int_| Res_DEV_EXTN@16 r@@61)))
 :qid |MouseClassFindMorePortsbpl.2100:63|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@16 r@@61))
))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@62 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@62) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@62) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@16 r@@62)))
 :qid |MouseClassFindMorePortsbpl.2104:63|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@16 r@@62))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@63 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@63) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@63) (|Select__T@[Int]Int_| Res_SPIN_LOCK@16 r@@63)))
 :qid |MouseClassFindMorePortsbpl.2108:63|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@16 r@@63))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@103 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@103) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.MinorFunction__IO_STACK_LOCATION) _m@@103) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m@@103)))
 :qid |MouseClassFindMorePortsbpl.2110:64|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.MinorFunction__IO_STACK_LOCATION) _m@@103))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@104 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@104) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@104) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@104)))
 :qid |MouseClassFindMorePortsbpl.2112:64|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@104))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@105 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@105) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DeviceExtension__DEVICE_OBJECT) _m@@105) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@105)))
 :qid |MouseClassFindMorePortsbpl.2114:64|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DeviceExtension__DEVICE_OBJECT) _m@@105))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@106 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@106) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Self__DEVICE_EXTENSION) _m@@106) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@106)))
 :qid |MouseClassFindMorePortsbpl.2116:64|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Self__DEVICE_EXTENSION) _m@@106))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@107 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@107) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Started__DEVICE_EXTENSION) _m@@107) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@107)))
 :qid |MouseClassFindMorePortsbpl.2118:64|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Started__DEVICE_EXTENSION) _m@@107))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@108 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@108) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.GrandMaster__GLOBALS) _m@@108) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@108)))
 :qid |MouseClassFindMorePortsbpl.2120:64|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.GrandMaster__GLOBALS) _m@@108))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@109 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@109) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DEVICE_OBJECT) _m@@109) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) _m@@109)))
 :qid |MouseClassFindMorePortsbpl.2122:64|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DEVICE_OBJECT) _m@@109))
))) (= Mem@29 (|Store__T@[name][Int]Int_| Mem@28 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PUINT2) call2formal@new@0@@0 0)))) (and (= Mem@30 Mem@29) (= Res_DEVICE_STACK@17 Res_DEVICE_STACK@16))) (and (and (= Res_DEV_EXTN@17 Res_DEV_EXTN@16) (= Res_DEV_OBJ_INIT@17 Res_DEV_OBJ_INIT@16)) (and (= Res_SPIN_LOCK@17 Res_SPIN_LOCK@16) (= (ControlFlow 0 87) 79))))) label_82_correct)))))
(let ((label_75_true_correct  (=> (and (< $i$8$4617.28$MouseClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.UINT4) call2formal@new@0@@2)) (= Mem@21 (|Store__T@[name][Int]Int_| Mem@20 T.UINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.UINT2) (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 2 (MINUS_BOTH_PTR_OR_BOTH_INT (BINARY_BOTH_INT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@3)) 2) 1 1)) (PLUS 48 1 $i$8$4617.28$MouseClassFindMorePorts$12@1))))) (and (=> (= (ControlFlow 0 89) 87) label_77_true_correct) (=> (= (ControlFlow 0 89) 88) label_77_false_correct)))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@37 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@37 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@10) (or (= _H_y@@10 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@37 (MINUS_LEFT_PTR _H_y@@10 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2839:234|
 :skolemid |590|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@10))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@11) (or (= _H_y@@11 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@37 (MINUS_LEFT_PTR _H_y@@11 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2839:234|
 :skolemid |590|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@11))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((_H_x@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@37 1) _H_x@@10) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10)))) _H_x@@10) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@37 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10))) 1)))
 :qid |MouseClassFindMorePortsbpl.2843:17|
 :skolemid |591|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10)))
))) (=> (forall ((_H_x@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@37 1) _H_x@@11) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11)))) _H_x@@11) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@37 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11))) 1)))
 :qid |MouseClassFindMorePortsbpl.2843:17|
 :skolemid |591|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11)))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (forall ((_H_z@@16 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@37 1) _H_z@@16) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@37 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@16))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@16)))) _H_z@@16)))
 :qid |MouseClassFindMorePortsbpl.2845:18|
 :skolemid |592|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@67 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@16)))
)) (and (Subset Empty (Inverse Res_DEV_EXTN@37 1)) (forall ((_H_z@@17 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@37 1) _H_z@@17) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@37 (SpinLock__DEVICE_EXTENSION _H_z@@17)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@37 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@17)) 0)))
 :qid |MouseClassFindMorePortsbpl.2845:416|
 :skolemid |593|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@37 1) _H_z@@17))
)))))))))))))))))
(let ((label_1_correct  (=> (and (and (forall ((x@@343 Int) ) (!  (or (= x@@343 call2formal@new@0@@4) (= (|Select__T@[Int]name_| alloc@12 x@@343) (|Select__T@[Int]name_| alloc@13 x@@343)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@13 x@@343))
)) (= (|Select__T@[Int]name_| alloc@13 call2formal@new@0@@4) FREED)) (and (forall ((x@@344 Int) ) (!  (or (= x@@344 call2formal@new@0@@5) (= (|Select__T@[Int]name_| alloc@13 x@@344) (|Select__T@[Int]name_| alloc@14 x@@344)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@14 x@@344))
)) (= (|Select__T@[Int]name_| alloc@14 call2formal@new@0@@5) FREED))) (=> (and (and (and (and (forall ((x@@345 Int) ) (!  (or (= x@@345 call2formal@new@0@@1) (= (|Select__T@[Int]name_| alloc@14 x@@345) (|Select__T@[Int]name_| alloc@15 x@@345)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@15 x@@345))
)) (= (|Select__T@[Int]name_| alloc@15 call2formal@new@0@@1) FREED)) (and (forall ((x@@346 Int) ) (!  (or (= x@@346 call2formal@new@0@@6) (= (|Select__T@[Int]name_| alloc@15 x@@346) (|Select__T@[Int]name_| alloc@16 x@@346)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@16 x@@346))
)) (= (|Select__T@[Int]name_| alloc@16 call2formal@new@0@@6) FREED))) (and (and (forall ((x@@347 Int) ) (!  (or (= x@@347 call2formal@new@0) (= (|Select__T@[Int]name_| alloc@16 x@@347) (|Select__T@[Int]name_| alloc@17 x@@347)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@17 x@@347))
)) (= (|Select__T@[Int]name_| alloc@17 call2formal@new@0) FREED)) (and (forall ((x@@348 Int) ) (!  (or (= x@@348 call2formal@new@0@@0) (= (|Select__T@[Int]name_| alloc@17 x@@348) (|Select__T@[Int]name_| alloc@18 x@@348)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@18 x@@348))
)) (= (|Select__T@[Int]name_| alloc@18 call2formal@new@0@@0) FREED)))) (and (and (and (forall ((x@@349 Int) ) (!  (or (= x@@349 call2formal@new@0@@3) (= (|Select__T@[Int]name_| alloc@18 x@@349) (|Select__T@[Int]name_| alloc@19 x@@349)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@19 x@@349))
)) (= (|Select__T@[Int]name_| alloc@19 call2formal@new@0@@3) FREED)) (and (forall ((x@@350 Int) ) (!  (or (= x@@350 call2formal@new@0@@2) (= (|Select__T@[Int]name_| alloc@19 x@@350) (|Select__T@[Int]name_| alloc@20 x@@350)))
 :qid |MouseClassFindMorePortsbpl.1895:17|
 :skolemid |360|
 :pattern ( (|Select__T@[Int]name_| alloc@20 x@@350))
)) (= (|Select__T@[Int]name_| alloc@20 call2formal@new@0@@2) FREED))) (and (and (forall ((m@@2 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@2)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@2)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@15 m@@2) (|Select__T@[Int]Int_| Res_DEVICE_STACK m@@2)))
 :qid |MouseClassFindMorePortsbpl.2957:16|
 :skolemid |595|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@15 m@@2))
)) (forall ((m@@3 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@3)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@3)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@15 m@@3) (|Select__T@[Int]Int_| Res_DEV_EXTN m@@3)))
 :qid |MouseClassFindMorePortsbpl.2958:16|
 :skolemid |596|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@15 m@@3))
))) (and (forall ((m@@4 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@4)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@4)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@15 m@@4) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT m@@4)))
 :qid |MouseClassFindMorePortsbpl.2959:16|
 :skolemid |597|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@15 m@@4))
)) (forall ((m@@5 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@5)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@5)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@15 m@@5) (|Select__T@[Int]Int_| Res_SPIN_LOCK m@@5)))
 :qid |MouseClassFindMorePortsbpl.2960:16|
 :skolemid |598|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@15 m@@5))
)))))) (=> (and (and (and (and (and (and (forall ((m@@6 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@6)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@6)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A256UINT2) m@@6) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A256UINT2) m@@6)))
 :qid |MouseClassFindMorePortsbpl.2961:16|
 :skolemid |599|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A256UINT2) m@@6))
)) (forall ((m@@7 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@7)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@7)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A2UINT2) m@@7) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A2UINT2) m@@7)))
 :qid |MouseClassFindMorePortsbpl.2962:16|
 :skolemid |600|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A2UINT2) m@@7))
))) (and (forall ((m@@8 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@8)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@8)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A4UINT4) m@@8) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A4UINT4) m@@8)))
 :qid |MouseClassFindMorePortsbpl.2963:16|
 :skolemid |601|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A4UINT4) m@@8))
)) (forall ((m@@9 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@9)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@9)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A5UINT2) m@@9) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A5UINT2) m@@9)))
 :qid |MouseClassFindMorePortsbpl.2964:16|
 :skolemid |602|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A5UINT2) m@@9))
)))) (and (and (forall ((m@@10 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@10)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@10)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A85CHAR) m@@10) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A85CHAR) m@@10)))
 :qid |MouseClassFindMorePortsbpl.2965:16|
 :skolemid |603|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A85CHAR) m@@10))
)) (forall ((m@@11 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@11)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@11)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A9UINT2) m@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A9UINT2) m@@11)))
 :qid |MouseClassFindMorePortsbpl.2966:16|
 :skolemid |604|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.A9UINT2) m@@11))
))) (and (forall ((m@@12 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@12)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@12)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.AssocClassList__GLOBALS) m@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.AssocClassList__GLOBALS) m@@12)))
 :qid |MouseClassFindMorePortsbpl.2967:16|
 :skolemid |605|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.AssocClassList__GLOBALS) m@@12))
)) (forall ((m@@13 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@13)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@13)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.BaseClassName__GLOBALS) m@@13) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.BaseClassName__GLOBALS) m@@13)))
 :qid |MouseClassFindMorePortsbpl.2968:16|
 :skolemid |606|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.BaseClassName__GLOBALS) m@@13))
))))) (and (and (and (forall ((m@@14 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@14)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@14)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Buffer__UNICODE_STRING) m@@14) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Buffer__UNICODE_STRING) m@@14)))
 :qid |MouseClassFindMorePortsbpl.2969:16|
 :skolemid |607|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Buffer__UNICODE_STRING) m@@14))
)) (forall ((m@@15 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@15)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@15)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CHAR) m@@15) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CHAR) m@@15)))
 :qid |MouseClassFindMorePortsbpl.2970:16|
 :skolemid |608|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CHAR) m@@15))
))) (and (forall ((m@@16 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@16)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@16)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CurrentStackLocation___unnamed_4_a7aa989c) m@@16) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CurrentStackLocation___unnamed_4_a7aa989c) m@@16)))
 :qid |MouseClassFindMorePortsbpl.2971:16|
 :skolemid |609|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CurrentStackLocation___unnamed_4_a7aa989c) m@@16))
)) (forall ((m@@17 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@17)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@17)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DataIn__DEVICE_EXTENSION) m@@17) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DataIn__DEVICE_EXTENSION) m@@17)))
 :qid |MouseClassFindMorePortsbpl.2972:16|
 :skolemid |610|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DataIn__DEVICE_EXTENSION) m@@17))
)))) (and (and (forall ((m@@18 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@18)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@18)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DataOut__DEVICE_EXTENSION) m@@18) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DataOut__DEVICE_EXTENSION) m@@18)))
 :qid |MouseClassFindMorePortsbpl.2973:16|
 :skolemid |611|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DataOut__DEVICE_EXTENSION) m@@18))
)) (forall ((m@@19 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@19)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@19)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DeviceExtension__DEVICE_OBJECT) m@@19) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) m@@19)))
 :qid |MouseClassFindMorePortsbpl.2974:16|
 :skolemid |612|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DeviceExtension__DEVICE_OBJECT) m@@19))
))) (and (forall ((m@@20 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@20)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@20)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.File__DEVICE_EXTENSION) m@@20) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.File__DEVICE_EXTENSION) m@@20)))
 :qid |MouseClassFindMorePortsbpl.2975:16|
 :skolemid |613|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.File__DEVICE_EXTENSION) m@@20))
)) (forall ((m@@21 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@21)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@21)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.File__PORT) m@@21) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.File__PORT) m@@21)))
 :qid |MouseClassFindMorePortsbpl.2976:16|
 :skolemid |614|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.File__PORT) m@@21))
)))))) (and (and (and (and (forall ((m@@22 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@22)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@22)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Flags__DEVICE_OBJECT) m@@22) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flags__DEVICE_OBJECT) m@@22)))
 :qid |MouseClassFindMorePortsbpl.2977:16|
 :skolemid |615|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Flags__DEVICE_OBJECT) m@@22))
)) (forall ((m@@23 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@23)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@23)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Flink__LIST_ENTRY) m@@23) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) m@@23)))
 :qid |MouseClassFindMorePortsbpl.2978:16|
 :skolemid |616|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Flink__LIST_ENTRY) m@@23))
))) (and (forall ((m@@24 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@24)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@24)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Free__PORT) m@@24) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Free__PORT) m@@24)))
 :qid |MouseClassFindMorePortsbpl.2979:16|
 :skolemid |617|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Free__PORT) m@@24))
)) (forall ((m@@25 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@25)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@25)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.GrandMaster__GLOBALS) m@@25) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) m@@25)))
 :qid |MouseClassFindMorePortsbpl.2980:16|
 :skolemid |618|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.GrandMaster__GLOBALS) m@@25))
)))) (and (and (forall ((m@@26 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@26)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@26)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.INT4) m@@26) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.INT4) m@@26)))
 :qid |MouseClassFindMorePortsbpl.2981:16|
 :skolemid |619|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.INT4) m@@26))
)) (forall ((m@@27 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@27)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@27)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.InitExtension__GLOBALS) m@@27) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.InitExtension__GLOBALS) m@@27)))
 :qid |MouseClassFindMorePortsbpl.2982:16|
 :skolemid |620|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.InitExtension__GLOBALS) m@@27))
))) (and (forall ((m@@28 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@28)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@28)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.InputData__DEVICE_EXTENSION) m@@28) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.InputData__DEVICE_EXTENSION) m@@28)))
 :qid |MouseClassFindMorePortsbpl.2983:16|
 :skolemid |621|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.InputData__DEVICE_EXTENSION) m@@28))
)) (forall ((m@@29 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@29)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@29)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.LegacyDeviceList__GLOBALS) m@@29) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.LegacyDeviceList__GLOBALS) m@@29)))
 :qid |MouseClassFindMorePortsbpl.2984:16|
 :skolemid |622|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.LegacyDeviceList__GLOBALS) m@@29))
))))) (and (and (and (forall ((m@@30 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@30)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@30)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Length__UNICODE_STRING) m@@30) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Length__UNICODE_STRING) m@@30)))
 :qid |MouseClassFindMorePortsbpl.2985:16|
 :skolemid |623|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Length__UNICODE_STRING) m@@30))
)) (forall ((m@@31 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@31)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@31)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Link__DEVICE_EXTENSION) m@@31) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Link__DEVICE_EXTENSION) m@@31)))
 :qid |MouseClassFindMorePortsbpl.2986:16|
 :skolemid |624|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Link__DEVICE_EXTENSION) m@@31))
))) (and (forall ((m@@32 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@32)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@32)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MaximumLength__UNICODE_STRING) m@@32) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MaximumLength__UNICODE_STRING) m@@32)))
 :qid |MouseClassFindMorePortsbpl.2987:16|
 :skolemid |625|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MaximumLength__UNICODE_STRING) m@@32))
)) (forall ((m@@33 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@33)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@33)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MinorFunction__IO_STACK_LOCATION) m@@33) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinorFunction__IO_STACK_LOCATION) m@@33)))
 :qid |MouseClassFindMorePortsbpl.2988:16|
 :skolemid |626|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MinorFunction__IO_STACK_LOCATION) m@@33))
)))) (and (and (forall ((m@@34 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@34)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@34)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Mutex__GLOBALS) m@@34) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Mutex__GLOBALS) m@@34)))
 :qid |MouseClassFindMorePortsbpl.2989:16|
 :skolemid |627|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Mutex__GLOBALS) m@@34))
)) (forall ((m@@35 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@35)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@35)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.NumberLegacyPorts__GLOBALS) m@@35) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.NumberLegacyPorts__GLOBALS) m@@35)))
 :qid |MouseClassFindMorePortsbpl.2990:16|
 :skolemid |628|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.NumberLegacyPorts__GLOBALS) m@@35))
))) (and (forall ((m@@36 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@36)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@36)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PCHAR) m@@36) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PCHAR) m@@36)))
 :qid |MouseClassFindMorePortsbpl.2991:16|
 :skolemid |629|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PCHAR) m@@36))
)) (forall ((m@@37 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@37)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@37)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PPUINT2) m@@37) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PPUINT2) m@@37)))
 :qid |MouseClassFindMorePortsbpl.2992:16|
 :skolemid |630|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PPUINT2) m@@37))
))))))) (and (and (and (and (and (forall ((m@@38 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@38)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@38)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PP_DEVICE_OBJECT) m@@38) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PP_DEVICE_OBJECT) m@@38)))
 :qid |MouseClassFindMorePortsbpl.2993:16|
 :skolemid |631|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PP_DEVICE_OBJECT) m@@38))
)) (forall ((m@@39 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@39)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@39)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PP_FILE_OBJECT) m@@39) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PP_FILE_OBJECT) m@@39)))
 :qid |MouseClassFindMorePortsbpl.2994:16|
 :skolemid |632|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PP_FILE_OBJECT) m@@39))
))) (and (forall ((m@@40 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@40)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@40)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PUINT2) m@@40) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PUINT2) m@@40)))
 :qid |MouseClassFindMorePortsbpl.2995:16|
 :skolemid |633|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PUINT2) m@@40))
)) (forall ((m@@41 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@41)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@41)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PUINT4) m@@41) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PUINT4) m@@41)))
 :qid |MouseClassFindMorePortsbpl.2996:16|
 :skolemid |634|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PUINT4) m@@41))
)))) (and (and (forall ((m@@42 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@42)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@42)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PVOID) m@@42) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PVOID) m@@42)))
 :qid |MouseClassFindMorePortsbpl.2997:16|
 :skolemid |635|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PVOID) m@@42))
)) (forall ((m@@43 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@43)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@43)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_EXTENSION) m@@43) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_EXTENSION) m@@43)))
 :qid |MouseClassFindMorePortsbpl.2998:16|
 :skolemid |636|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_EXTENSION) m@@43))
))) (and (forall ((m@@44 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@44)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@44)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_OBJECT) m@@44) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT) m@@44)))
 :qid |MouseClassFindMorePortsbpl.2999:16|
 :skolemid |637|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_OBJECT) m@@44))
)) (forall ((m@@45 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@45)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@45)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DRIVER_OBJECT) m@@45) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DRIVER_OBJECT) m@@45)))
 :qid |MouseClassFindMorePortsbpl.3000:16|
 :skolemid |638|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DRIVER_OBJECT) m@@45))
))))) (and (and (and (forall ((m@@46 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@46)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@46)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_FAST_MUTEX) m@@46) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_FAST_MUTEX) m@@46)))
 :qid |MouseClassFindMorePortsbpl.3001:16|
 :skolemid |639|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_FAST_MUTEX) m@@46))
)) (forall ((m@@47 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@47)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@47)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_FILE_OBJECT) m@@47) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_FILE_OBJECT) m@@47)))
 :qid |MouseClassFindMorePortsbpl.3002:16|
 :skolemid |640|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_FILE_OBJECT) m@@47))
))) (and (forall ((m@@48 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@48)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@48)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_LIST_ENTRY) m@@48) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_LIST_ENTRY) m@@48)))
 :qid |MouseClassFindMorePortsbpl.3003:16|
 :skolemid |641|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_LIST_ENTRY) m@@48))
)) (forall ((m@@49 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@49)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@49)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_MOUSE_INPUT_DATA) m@@49) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_MOUSE_INPUT_DATA) m@@49)))
 :qid |MouseClassFindMorePortsbpl.3004:16|
 :skolemid |642|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_MOUSE_INPUT_DATA) m@@49))
)))) (and (and (forall ((m@@50 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@50)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@50)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_UNICODE_STRING) m@@50) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_UNICODE_STRING) m@@50)))
 :qid |MouseClassFindMorePortsbpl.3005:16|
 :skolemid |643|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_UNICODE_STRING) m@@50))
)) (forall ((m@@51 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@51)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@51)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PnP__DEVICE_EXTENSION) m@@51) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PnP__DEVICE_EXTENSION) m@@51)))
 :qid |MouseClassFindMorePortsbpl.3006:16|
 :skolemid |644|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PnP__DEVICE_EXTENSION) m@@51))
))) (and (forall ((m@@52 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@52)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@52)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Port__PORT) m@@52) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Port__PORT) m@@52)))
 :qid |MouseClassFindMorePortsbpl.3007:16|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Port__PORT) m@@52))
)) (forall ((m@@53 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@53)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@53)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PortsServiced__GLOBALS) m@@53) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PortsServiced__GLOBALS) m@@53)))
 :qid |MouseClassFindMorePortsbpl.3008:16|
 :skolemid |646|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.PortsServiced__GLOBALS) m@@53))
)))))) (and (and (and (and (forall ((m@@54 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@54)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@54)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Self__DEVICE_EXTENSION) m@@54) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) m@@54)))
 :qid |MouseClassFindMorePortsbpl.3009:16|
 :skolemid |647|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Self__DEVICE_EXTENSION) m@@54))
)) (forall ((m@@55 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@55)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@55)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.SpinLock__DEVICE_EXTENSION) m@@55) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SpinLock__DEVICE_EXTENSION) m@@55)))
 :qid |MouseClassFindMorePortsbpl.3010:16|
 :skolemid |648|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.SpinLock__DEVICE_EXTENSION) m@@55))
))) (and (forall ((m@@56 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@56)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@56)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.StackSize__DEVICE_OBJECT) m@@56) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.StackSize__DEVICE_OBJECT) m@@56)))
 :qid |MouseClassFindMorePortsbpl.3011:16|
 :skolemid |649|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.StackSize__DEVICE_OBJECT) m@@56))
)) (forall ((m@@57 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@57)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@57)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Started__DEVICE_EXTENSION) m@@57) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Started__DEVICE_EXTENSION) m@@57)))
 :qid |MouseClassFindMorePortsbpl.3012:16|
 :skolemid |650|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Started__DEVICE_EXTENSION) m@@57))
)))) (and (and (forall ((m@@58 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@58)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@58)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.TopPort__DEVICE_EXTENSION) m@@58) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.TopPort__DEVICE_EXTENSION) m@@58)))
 :qid |MouseClassFindMorePortsbpl.3013:16|
 :skolemid |651|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.TopPort__DEVICE_EXTENSION) m@@58))
)) (forall ((m@@59 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@59)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@59)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UCHAR) m@@59) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UCHAR) m@@59)))
 :qid |MouseClassFindMorePortsbpl.3014:16|
 :skolemid |652|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UCHAR) m@@59))
))) (and (forall ((m@@60 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@60)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@60)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UINT2) m@@60) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UINT2) m@@60)))
 :qid |MouseClassFindMorePortsbpl.3015:16|
 :skolemid |653|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UINT2) m@@60))
)) (forall ((m@@61 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@61)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@61)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UINT4) m@@61) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UINT4) m@@61)))
 :qid |MouseClassFindMorePortsbpl.3016:16|
 :skolemid |654|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UINT4) m@@61))
))))) (and (and (and (forall ((m@@62 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@62)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@62)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UnitId__DEVICE_EXTENSION) m@@62) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UnitId__DEVICE_EXTENSION) m@@62)))
 :qid |MouseClassFindMorePortsbpl.3017:16|
 :skolemid |655|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UnitId__DEVICE_EXTENSION) m@@62))
)) (forall ((m@@63 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@63)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@63)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.WaitWakeSpinLock__DEVICE_EXTENSION) m@@63) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.WaitWakeSpinLock__DEVICE_EXTENSION) m@@63)))
 :qid |MouseClassFindMorePortsbpl.3018:16|
 :skolemid |656|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.WaitWakeSpinLock__DEVICE_EXTENSION) m@@63))
))) (and (forall ((m@@64 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@64)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@64)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T._POOL_TYPE) m@@64) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T._POOL_TYPE) m@@64)))
 :qid |MouseClassFindMorePortsbpl.3019:16|
 :skolemid |657|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T._POOL_TYPE) m@@64))
)) (= Res_DEV_OBJ_INIT@37 Res_DEV_OBJ_INIT@15))) (and (and (= Res_SPIN_LOCK@37 Res_SPIN_LOCK@15) (= Mem@67 Mem@27)) (and (= Res_DEV_EXTN@37 Res_DEV_EXTN@15) (= (ControlFlow 0 8) 2))))))) GeneratedUnifiedExit_correct)))))
(let ((label_160_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.PUINT2) call2formal@new@0@@0) 0) (=> (and (= Mem@27 Mem@25) (= Res_DEVICE_STACK@15 Res_DEVICE_STACK@13)) (=> (and (and (= Res_DEV_EXTN@15 Res_DEV_EXTN@13) (= Res_DEV_OBJ_INIT@15 Res_DEV_OBJ_INIT@13)) (and (= Res_SPIN_LOCK@15 Res_SPIN_LOCK@13) (= (ControlFlow 0 10) 8))) label_1_correct)))))
(let ((label_160_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.PUINT2) call2formal@new@0@@0) 0)) (=> (and (and (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.PUINT2) call2formal@new@0@@0)) (= Mem@26 Mem@25)) (and (= Res_DEV_OBJ_INIT@14 Res_DEV_OBJ_INIT@13) (= Res_DEV_EXTN@14 Res_DEV_EXTN@13))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@64 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@64) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@13 r@@64) (|Select__T@[Int]Int_| Res_DEVICE_STACK@14 r@@64)))
 :qid |MouseClassFindMorePortsbpl.2096:63|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@14 r@@64))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@65 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@65) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@13 r@@65) (|Select__T@[Int]Int_| Res_DEV_EXTN@14 r@@65)))
 :qid |MouseClassFindMorePortsbpl.2100:63|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@14 r@@65))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@66 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@66) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@13 r@@66) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@14 r@@66)))
 :qid |MouseClassFindMorePortsbpl.2104:63|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@14 r@@66))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@67 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@67) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@13 r@@67) (|Select__T@[Int]Int_| Res_SPIN_LOCK@14 r@@67)))
 :qid |MouseClassFindMorePortsbpl.2108:63|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@14 r@@67))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@110 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@110) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.MinorFunction__IO_STACK_LOCATION) _m@@110) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.MinorFunction__IO_STACK_LOCATION) _m@@110)))
 :qid |MouseClassFindMorePortsbpl.2110:64|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.MinorFunction__IO_STACK_LOCATION) _m@@110))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@111 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@111) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@111) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@111)))
 :qid |MouseClassFindMorePortsbpl.2112:64|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@111))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@112 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@112) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.DeviceExtension__DEVICE_OBJECT) _m@@112) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.DeviceExtension__DEVICE_OBJECT) _m@@112)))
 :qid |MouseClassFindMorePortsbpl.2114:64|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.DeviceExtension__DEVICE_OBJECT) _m@@112))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@113 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@113) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Self__DEVICE_EXTENSION) _m@@113) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Self__DEVICE_EXTENSION) _m@@113)))
 :qid |MouseClassFindMorePortsbpl.2116:64|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Self__DEVICE_EXTENSION) _m@@113))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@114 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@114) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Started__DEVICE_EXTENSION) _m@@114) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Started__DEVICE_EXTENSION) _m@@114)))
 :qid |MouseClassFindMorePortsbpl.2118:64|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Started__DEVICE_EXTENSION) _m@@114))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@115 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@115) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.GrandMaster__GLOBALS) _m@@115) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.GrandMaster__GLOBALS) _m@@115)))
 :qid |MouseClassFindMorePortsbpl.2120:64|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.GrandMaster__GLOBALS) _m@@115))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@116 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@116) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.P_DEVICE_OBJECT) _m@@116) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.P_DEVICE_OBJECT) _m@@116)))
 :qid |MouseClassFindMorePortsbpl.2122:64|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.P_DEVICE_OBJECT) _m@@116))
))) (and (= Mem@27 Mem@26) (= Res_DEVICE_STACK@15 Res_DEVICE_STACK@14))) (and (and (= Res_DEV_EXTN@15 Res_DEV_EXTN@14) (= Res_DEV_OBJ_INIT@15 Res_DEV_OBJ_INIT@14)) (and (= Res_SPIN_LOCK@15 Res_SPIN_LOCK@14) (= (ControlFlow 0 9) 8)))))) label_1_correct))))
(let ((label_156_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0) (= Res_SPIN_LOCK@13 Res_SPIN_LOCK@11)) (=> (and (and (= Res_DEV_OBJ_INIT@13 Res_DEV_OBJ_INIT@11) (= Res_DEV_EXTN@13 Res_DEV_EXTN@11)) (and (= Res_DEVICE_STACK@13 Res_DEVICE_STACK@11) (= Mem@25 Mem@23))) (and (=> (= (ControlFlow 0 12) 9) label_160_true_correct) (=> (= (ControlFlow 0 12) 10) label_160_false_correct))))))
(let ((label_156_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0)) (=> (and (and (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3))) (= Mem@24 Mem@23)) (and (= Res_DEV_OBJ_INIT@12 Res_DEV_OBJ_INIT@11) (= Res_DEV_EXTN@12 Res_DEV_EXTN@11))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@68 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@68) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@68) (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r@@68)))
 :qid |MouseClassFindMorePortsbpl.2096:63|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r@@68))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@69 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@69) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@69) (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@69)))
 :qid |MouseClassFindMorePortsbpl.2100:63|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@69))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@70 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@70) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@70) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@70)))
 :qid |MouseClassFindMorePortsbpl.2104:63|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@70))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@71 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@71) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@71) (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@71)))
 :qid |MouseClassFindMorePortsbpl.2108:63|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@71))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@117 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@117) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.MinorFunction__IO_STACK_LOCATION) _m@@117) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.MinorFunction__IO_STACK_LOCATION) _m@@117)))
 :qid |MouseClassFindMorePortsbpl.2110:64|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.MinorFunction__IO_STACK_LOCATION) _m@@117))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@118 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@118) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@118) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@118)))
 :qid |MouseClassFindMorePortsbpl.2112:64|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@118))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@119 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@119) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.DeviceExtension__DEVICE_OBJECT) _m@@119) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.DeviceExtension__DEVICE_OBJECT) _m@@119)))
 :qid |MouseClassFindMorePortsbpl.2114:64|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.DeviceExtension__DEVICE_OBJECT) _m@@119))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@120 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@120) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Self__DEVICE_EXTENSION) _m@@120) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Self__DEVICE_EXTENSION) _m@@120)))
 :qid |MouseClassFindMorePortsbpl.2116:64|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Self__DEVICE_EXTENSION) _m@@120))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@121 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@121) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Started__DEVICE_EXTENSION) _m@@121) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Started__DEVICE_EXTENSION) _m@@121)))
 :qid |MouseClassFindMorePortsbpl.2118:64|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Started__DEVICE_EXTENSION) _m@@121))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@122 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@122) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.GrandMaster__GLOBALS) _m@@122) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.GrandMaster__GLOBALS) _m@@122)))
 :qid |MouseClassFindMorePortsbpl.2120:64|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.GrandMaster__GLOBALS) _m@@122))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@123 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@123) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.P_DEVICE_OBJECT) _m@@123) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) _m@@123)))
 :qid |MouseClassFindMorePortsbpl.2122:64|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.P_DEVICE_OBJECT) _m@@123))
))) (= Res_SPIN_LOCK@13 Res_SPIN_LOCK@12)) (and (and (= Res_DEV_OBJ_INIT@13 Res_DEV_OBJ_INIT@12) (= Res_DEV_EXTN@13 Res_DEV_EXTN@12)) (and (= Res_DEVICE_STACK@13 Res_DEVICE_STACK@12) (= Mem@25 Mem@24)))))) (and (=> (= (ControlFlow 0 11) 9) label_160_true_correct) (=> (= (ControlFlow 0 11) 10) label_160_false_correct))))))
(let ((label_155_correct  (=> (and (and (and (= tempBoogie0@2 (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.NumberLegacyPorts__GLOBALS) (NumberLegacyPorts__GLOBALS Globals)) 1 $successfulCreates$10$4619.28$MouseClassFindMorePorts$12@0)) (= Mem@22 (|Store__T@[name][Int]Int_| Mem@20 T.NumberLegacyPorts__GLOBALS (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.NumberLegacyPorts__GLOBALS) (NumberLegacyPorts__GLOBALS Globals) tempBoogie0@2)))) (and (= alloc@12 alloc@10) (= Mem@23 Mem@22))) (and (and (= Res_DEVICE_STACK@11 Res_DEVICE_STACK@10) (= Res_DEV_EXTN@11 Res_DEV_EXTN@10)) (and (= Res_DEV_OBJ_INIT@11 Res_DEV_OBJ_INIT@10) (= Res_SPIN_LOCK@11 Res_SPIN_LOCK@10)))) (and (=> (= (ControlFlow 0 21) 11) label_156_true_correct) (=> (= (ControlFlow 0 21) 12) label_156_false_correct)))))
(let ((label_75_false_correct  (=> (and (not (< $i$8$4617.28$MouseClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.UINT4) call2formal@new@0@@2))) (= (ControlFlow 0 23) 21)) label_155_correct)))
(let ((label_74_true_correct  (=> (< $i$8$4617.28$MouseClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.PortsServiced__GLOBALS) (PortsServiced__GLOBALS Globals))) (and (=> (= (ControlFlow 0 90) 89) label_75_true_correct) (=> (= (ControlFlow 0 90) 23) label_75_false_correct)))))
(let ((label_74_false_correct  (=> (and (not (< $i$8$4617.28$MouseClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.PortsServiced__GLOBALS) (PortsServiced__GLOBALS Globals)))) (= (ControlFlow 0 22) 21)) label_155_correct)))
(let ((label_74_head_correct  (=> (and (forall ((_H_x@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@10 1) _H_x@@12) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12)))) _H_x@@12) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12))) 1)))
 :qid |MouseClassFindMorePortsbpl.3318:16|
 :skolemid |658|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12)))
)) (forall ((_H_z@@18 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@18) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@18))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@18)))) _H_z@@18)))
 :qid |MouseClassFindMorePortsbpl.3320:16|
 :skolemid |659|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@18)))
))) (=> (and (and (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@10 1)) (forall ((_H_z@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@19) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 (SpinLock__DEVICE_EXTENSION _H_z@@19)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@19)) 0)))
 :qid |MouseClassFindMorePortsbpl.3322:61|
 :skolemid |660|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@19))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@12) (or (= _H_y@@12 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (MINUS_LEFT_PTR _H_y@@12 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.3328:233|
 :skolemid |661|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@12))
)))))) (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (forall ((f@@21 Int) ) (!  (or (= (|Select__T@[Int]name_| alloc@10 (Base f@@21)) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@10 (Base f@@21)) (|Select__T@[Int]name_| alloc@10 (Base f@@21))))
 :qid |MouseClassFindMorePortsbpl.3331:15|
 :skolemid |662|
 :pattern ( (|Select__T@[Int]name_| alloc@10 (Base f@@21)))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@72 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@72) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@72) (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@72)))
 :qid |MouseClassFindMorePortsbpl.3335:62|
 :skolemid |663|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@72))
)))) (and (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@73 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@73) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@73) (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@73)))
 :qid |MouseClassFindMorePortsbpl.3338:64|
 :skolemid |664|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@73))
))) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@74 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@74) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@74) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@74)))
 :qid |MouseClassFindMorePortsbpl.3341:64|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@74))
)))))) (and (and (and (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@75 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@75) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@75) (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@75)))
 :qid |MouseClassFindMorePortsbpl.3344:64|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@75))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@124 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@124) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.MinorFunction__IO_STACK_LOCATION) _m@@124) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@124)))
 :qid |MouseClassFindMorePortsbpl.3346:63|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.MinorFunction__IO_STACK_LOCATION) _m@@124))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@125 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@125) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@125) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@125)))
 :qid |MouseClassFindMorePortsbpl.3348:63|
 :skolemid |668|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@125))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@126 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@126) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) _m@@126) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@126)))
 :qid |MouseClassFindMorePortsbpl.3350:63|
 :skolemid |669|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) _m@@126))
))))) (and (and (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@127 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@127) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) _m@@127) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@127)))
 :qid |MouseClassFindMorePortsbpl.3352:65|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) _m@@127))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@128 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@128) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Started__DEVICE_EXTENSION) _m@@128) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@128)))
 :qid |MouseClassFindMorePortsbpl.3354:63|
 :skolemid |671|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Started__DEVICE_EXTENSION) _m@@128))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@129 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@129) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) _m@@129) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@129)))
 :qid |MouseClassFindMorePortsbpl.3356:63|
 :skolemid |672|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) _m@@129))
))) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@130 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@130) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.P_DEVICE_OBJECT) _m@@130) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@130)))
 :qid |MouseClassFindMorePortsbpl.3358:65|
 :skolemid |673|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.P_DEVICE_OBJECT) _m@@130))
))))))) (and (=> (= (ControlFlow 0 91) 90) label_74_true_correct) (=> (= (ControlFlow 0 91) 22) label_74_false_correct))))))
(let ((label_45_true_correct  (=> (and (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0)) (= $memset.arg.3$8$@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3)))) (and (=> (= (ControlFlow 0 92) (- 0 119)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@7 0) (=> (and (forall ((x@@351 Int) ) (!  (=> (and (<= call2formal@new@0@@7 x@@351) (< x@@351 (+ call2formal@new@0@@7 1))) (= (Base x@@351) call2formal@new@0@@7))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@351))
)) (forall ((x@@352 Int) ) (!  (or (= x@@352 call2formal@new@0@@7) (= (|Select__T@[Int]name_| alloc@8 x@@352) (|Select__T@[Int]name_| alloc@9 x@@352)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@9 x@@352))
))) (=> (and (and (and (= (|Select__T@[Int]name_| alloc@8 call2formal@new@0@@7) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@9 call2formal@new@0@@7) ALLOCATED)) (= Mem@14 Mem@13)) (and (= Res_DEV_OBJ_INIT@5 Res_DEV_OBJ_INIT@4) (= Res_DEV_EXTN@5 Res_DEV_EXTN@4))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@76 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@76) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@76) (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@76)))
 :qid |MouseClassFindMorePortsbpl.2662:63|
 :skolemid |542|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@76))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@77 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@77) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@77) (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@77)))
 :qid |MouseClassFindMorePortsbpl.2666:63|
 :skolemid |543|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@77))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@78 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@78) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@78) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@78)))
 :qid |MouseClassFindMorePortsbpl.2670:63|
 :skolemid |544|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@78))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@79 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@79) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@79) (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@79)))
 :qid |MouseClassFindMorePortsbpl.2674:63|
 :skolemid |545|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@79))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@131 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@131) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@131) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MinorFunction__IO_STACK_LOCATION) _m@@131)))
 :qid |MouseClassFindMorePortsbpl.2676:64|
 :skolemid |546|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@131))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@132 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@132) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@132) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@132)))
 :qid |MouseClassFindMorePortsbpl.2678:64|
 :skolemid |547|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@132))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@133 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@133) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@133) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.DeviceExtension__DEVICE_OBJECT) _m@@133)))
 :qid |MouseClassFindMorePortsbpl.2680:64|
 :skolemid |548|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@133))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@134 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@134) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@134) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Self__DEVICE_EXTENSION) _m@@134)))
 :qid |MouseClassFindMorePortsbpl.2682:64|
 :skolemid |549|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@134))
)))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@135 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@135) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@135) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Started__DEVICE_EXTENSION) _m@@135)))
 :qid |MouseClassFindMorePortsbpl.2684:64|
 :skolemid |550|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@135))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@136 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@136) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@136) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.GrandMaster__GLOBALS) _m@@136)))
 :qid |MouseClassFindMorePortsbpl.2686:64|
 :skolemid |551|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@136))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@137 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@137) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@137) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.P_DEVICE_OBJECT) _m@@137)))
 :qid |MouseClassFindMorePortsbpl.2688:64|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@137))
))) (and (= call1formal@$Source$2$7422.20$RtlAppendUnicodeToString$81@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@5))) (= Mem@15 Mem@14)))) (and (and (and (= Res_DEV_OBJ_INIT@6 Res_DEV_OBJ_INIT@5) (= Res_DEV_EXTN@6 Res_DEV_EXTN@5)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@80 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@80) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@80) (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@80)))
 :qid |MouseClassFindMorePortsbpl.2662:63|
 :skolemid |542|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@80))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@81 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@81) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@81) (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@81)))
 :qid |MouseClassFindMorePortsbpl.2666:63|
 :skolemid |543|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@81))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@82 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@82) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@82) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@82)))
 :qid |MouseClassFindMorePortsbpl.2670:63|
 :skolemid |544|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@82))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@83 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@83) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@83) (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@83)))
 :qid |MouseClassFindMorePortsbpl.2674:63|
 :skolemid |545|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@83))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@138 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@138) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.MinorFunction__IO_STACK_LOCATION) _m@@138) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@138)))
 :qid |MouseClassFindMorePortsbpl.2676:64|
 :skolemid |546|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.MinorFunction__IO_STACK_LOCATION) _m@@138))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@139 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@139) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@139) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@139)))
 :qid |MouseClassFindMorePortsbpl.2678:64|
 :skolemid |547|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@139))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@140 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@140) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.DeviceExtension__DEVICE_OBJECT) _m@@140) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@140)))
 :qid |MouseClassFindMorePortsbpl.2680:64|
 :skolemid |548|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.DeviceExtension__DEVICE_OBJECT) _m@@140))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@141 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@141) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Self__DEVICE_EXTENSION) _m@@141) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@141)))
 :qid |MouseClassFindMorePortsbpl.2682:64|
 :skolemid |549|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Self__DEVICE_EXTENSION) _m@@141))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@142 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@142) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Started__DEVICE_EXTENSION) _m@@142) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@142)))
 :qid |MouseClassFindMorePortsbpl.2684:64|
 :skolemid |550|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Started__DEVICE_EXTENSION) _m@@142))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@143 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@143) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.GrandMaster__GLOBALS) _m@@143) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@143)))
 :qid |MouseClassFindMorePortsbpl.2686:64|
 :skolemid |551|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.GrandMaster__GLOBALS) _m@@143))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@144 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@144) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.P_DEVICE_OBJECT) _m@@144) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@144)))
 :qid |MouseClassFindMorePortsbpl.2688:64|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.P_DEVICE_OBJECT) _m@@144))
))))))) (and (=> (= (ControlFlow 0 92) (- 0 118)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@8 0) (=> (and (forall ((x@@353 Int) ) (!  (=> (and (<= call2formal@new@0@@8 x@@353) (< x@@353 (+ call2formal@new@0@@8 1))) (= (Base x@@353) call2formal@new@0@@8))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@353))
)) (forall ((x@@354 Int) ) (!  (or (= x@@354 call2formal@new@0@@8) (= (|Select__T@[Int]name_| alloc@9 x@@354) (|Select__T@[Int]name_| alloc@10 x@@354)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@10 x@@354))
))) (=> (and (and (= (|Select__T@[Int]name_| alloc@9 call2formal@new@0@@8) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@10 call2formal@new@0@@8) ALLOCATED)) (= Mem@16 Mem@15)) (=> (and (and (and (= Res_DEV_OBJ_INIT@7 Res_DEV_OBJ_INIT@6) (= Res_DEV_EXTN@7 Res_DEV_EXTN@6)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@84 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@84) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@84) (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@84)))
 :qid |MouseClassFindMorePortsbpl.2662:63|
 :skolemid |542|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@84))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@85 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@85) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@85) (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@85)))
 :qid |MouseClassFindMorePortsbpl.2666:63|
 :skolemid |543|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@85))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@86 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@86) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@86) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@86)))
 :qid |MouseClassFindMorePortsbpl.2670:63|
 :skolemid |544|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@86))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@87 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@87) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@87) (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@87)))
 :qid |MouseClassFindMorePortsbpl.2674:63|
 :skolemid |545|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@87))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@145 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@145) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@145) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.MinorFunction__IO_STACK_LOCATION) _m@@145)))
 :qid |MouseClassFindMorePortsbpl.2676:64|
 :skolemid |546|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@145))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@146 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@146) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@146) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@146)))
 :qid |MouseClassFindMorePortsbpl.2678:64|
 :skolemid |547|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@146))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@147 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@147) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@147) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.DeviceExtension__DEVICE_OBJECT) _m@@147)))
 :qid |MouseClassFindMorePortsbpl.2680:64|
 :skolemid |548|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@147))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@148 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@148) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@148) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Self__DEVICE_EXTENSION) _m@@148)))
 :qid |MouseClassFindMorePortsbpl.2682:64|
 :skolemid |549|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@148))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@149 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@149) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@149) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Started__DEVICE_EXTENSION) _m@@149)))
 :qid |MouseClassFindMorePortsbpl.2684:64|
 :skolemid |550|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@149))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@150 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@150) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@150) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.GrandMaster__GLOBALS) _m@@150)))
 :qid |MouseClassFindMorePortsbpl.2686:64|
 :skolemid |551|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@150))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@151 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@151) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@151) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.P_DEVICE_OBJECT) _m@@151)))
 :qid |MouseClassFindMorePortsbpl.2688:64|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@151))
)))))) (and (=> (= (ControlFlow 0 92) (- 0 117)) (forall ((_H_x@@13 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@7 1) _H_x@@13) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@13)))) _H_x@@13) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@13))) 1)))
 :qid |MouseClassFindMorePortsbpl.2395:18|
 :skolemid |478|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@13)))
))) (=> (forall ((_H_x@@14 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@7 1) _H_x@@14) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@14)))) _H_x@@14) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@14))) 1)))
 :qid |MouseClassFindMorePortsbpl.2395:18|
 :skolemid |478|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@14)))
)) (and (=> (= (ControlFlow 0 92) (- 0 116)) (forall ((_H_z@@20 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@20) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@20))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@20)))) _H_z@@20)))
 :qid |MouseClassFindMorePortsbpl.2397:18|
 :skolemid |479|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@20)))
))) (=> (forall ((_H_z@@21 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@21) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21)))) _H_z@@21)))
 :qid |MouseClassFindMorePortsbpl.2397:18|
 :skolemid |479|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21)))
)) (and (=> (= (ControlFlow 0 92) (- 0 115)) (and (Subset Empty (Inverse Res_DEV_EXTN@7 1)) (forall ((_H_z@@22 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@22) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 (SpinLock__DEVICE_EXTENSION _H_z@@22)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@22)) 0)))
 :qid |MouseClassFindMorePortsbpl.2399:63|
 :skolemid |480|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@22))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@7 1)) (forall ((_H_z@@23 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@23) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 (SpinLock__DEVICE_EXTENSION _H_z@@23)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@23)) 0)))
 :qid |MouseClassFindMorePortsbpl.2399:63|
 :skolemid |480|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@23))
))) (and (=> (= (ControlFlow 0 92) (- 0 114)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 92) (- 0 113)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 92) (- 0 112)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@13 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@13) (or (= _H_y@@13 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (MINUS_LEFT_PTR _H_y@@13 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2405:235|
 :skolemid |481|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@13))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@14 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@14) (or (= _H_y@@14 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (MINUS_LEFT_PTR _H_y@@14 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2405:235|
 :skolemid |481|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@14))
)))) (and (=> (= (ControlFlow 0 92) (- 0 111)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (and (forall ((_H_x@@15 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@8 1) _H_x@@15) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@15)))) _H_x@@15) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@15))) 1)))
 :qid |MouseClassFindMorePortsbpl.2409:17|
 :skolemid |482|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@15)))
)) (forall ((_H_z@@24 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@24) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@24))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@24)))) _H_z@@24)))
 :qid |MouseClassFindMorePortsbpl.2411:17|
 :skolemid |483|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@24)))
))) (=> (and (and (and (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@8 1)) (forall ((_H_z@@25 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@25) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 (SpinLock__DEVICE_EXTENSION _H_z@@25)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@25)) 0)))
 :qid |MouseClassFindMorePortsbpl.2413:62|
 :skolemid |484|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@25))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@15 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@15) (or (= _H_y@@15 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (MINUS_LEFT_PTR _H_y@@15 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2419:234|
 :skolemid |485|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@15))
)))))) (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@8 Res_DEV_OBJ_INIT@7) (= Res_DEV_EXTN@8 Res_DEV_EXTN@7)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@88 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@88) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@88) (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@88)))
 :qid |MouseClassFindMorePortsbpl.2432:63|
 :skolemid |486|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@88))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@89 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@89) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@89) (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@89)))
 :qid |MouseClassFindMorePortsbpl.2436:63|
 :skolemid |487|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@89))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@90 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@90) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@90) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@90)))
 :qid |MouseClassFindMorePortsbpl.2440:63|
 :skolemid |488|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@90))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@91 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@91) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@91) (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@91)))
 :qid |MouseClassFindMorePortsbpl.2444:63|
 :skolemid |489|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@91))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@152 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@152) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@152) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@152)))
 :qid |MouseClassFindMorePortsbpl.2446:64|
 :skolemid |490|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@152))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@153 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@153) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@153) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@153)))
 :qid |MouseClassFindMorePortsbpl.2448:64|
 :skolemid |491|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@153))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@154 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@154) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@154) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@154)))
 :qid |MouseClassFindMorePortsbpl.2450:64|
 :skolemid |492|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@154))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@155 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@155) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@155) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@155)))
 :qid |MouseClassFindMorePortsbpl.2452:64|
 :skolemid |493|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@155))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@156 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@156) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@156) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@156)))
 :qid |MouseClassFindMorePortsbpl.2454:64|
 :skolemid |494|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@156))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@157 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@157) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@157) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@157)))
 :qid |MouseClassFindMorePortsbpl.2456:64|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@157))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@158 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@158) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@158) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@158)))
 :qid |MouseClassFindMorePortsbpl.2458:64|
 :skolemid |496|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@158))
))) (= $i$8$4617.28$MouseClassFindMorePorts$12@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.NumberLegacyPorts__GLOBALS) (NumberLegacyPorts__GLOBALS Globals))))))) (and (=> (= (ControlFlow 0 92) (- 0 110)) (forall ((_H_x@@16 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@8 1) _H_x@@16) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@16)))) _H_x@@16) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@16))) 1)))
 :qid |MouseClassFindMorePortsbpl.3318:16|
 :skolemid |658|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@16)))
))) (=> (forall ((_H_x@@17 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@8 1) _H_x@@17) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@17)))) _H_x@@17) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@17))) 1)))
 :qid |MouseClassFindMorePortsbpl.3318:16|
 :skolemid |658|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@17)))
)) (and (=> (= (ControlFlow 0 92) (- 0 109)) (forall ((_H_z@@26 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@26) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@26))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@26)))) _H_z@@26)))
 :qid |MouseClassFindMorePortsbpl.3320:16|
 :skolemid |659|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@26)))
))) (=> (forall ((_H_z@@27 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@27) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@27))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@27)))) _H_z@@27)))
 :qid |MouseClassFindMorePortsbpl.3320:16|
 :skolemid |659|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@27)))
)) (and (=> (= (ControlFlow 0 92) (- 0 108)) (and (Subset Empty (Inverse Res_DEV_EXTN@8 1)) (forall ((_H_z@@28 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@28) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 (SpinLock__DEVICE_EXTENSION _H_z@@28)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@28)) 0)))
 :qid |MouseClassFindMorePortsbpl.3322:61|
 :skolemid |660|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@28))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@8 1)) (forall ((_H_z@@29 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@29) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 (SpinLock__DEVICE_EXTENSION _H_z@@29)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@29)) 0)))
 :qid |MouseClassFindMorePortsbpl.3322:61|
 :skolemid |660|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@29))
))) (and (=> (= (ControlFlow 0 92) (- 0 107)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 92) (- 0 106)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 92) (- 0 105)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@16 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@16) (or (= _H_y@@16 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (MINUS_LEFT_PTR _H_y@@16 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.3328:233|
 :skolemid |661|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@16))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@17 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@17) (or (= _H_y@@17 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (MINUS_LEFT_PTR _H_y@@17 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.3328:233|
 :skolemid |661|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@17))
)))) (and (=> (= (ControlFlow 0 92) (- 0 104)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 92) (- 0 103)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@92 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@92) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@92) (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@92)))
 :qid |MouseClassFindMorePortsbpl.3335:62|
 :skolemid |663|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@92))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@93 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@93) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@93) (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@93)))
 :qid |MouseClassFindMorePortsbpl.3335:62|
 :skolemid |663|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@93))
))) (and (=> (= (ControlFlow 0 92) (- 0 102)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@94 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@94) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@94) (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@94)))
 :qid |MouseClassFindMorePortsbpl.3338:64|
 :skolemid |664|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@94))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@95 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@95) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@95) (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@95)))
 :qid |MouseClassFindMorePortsbpl.3338:64|
 :skolemid |664|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@95))
))) (and (=> (= (ControlFlow 0 92) (- 0 101)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@96 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@96) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@96) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@96)))
 :qid |MouseClassFindMorePortsbpl.3341:64|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@96))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@97 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@97) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@97) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@97)))
 :qid |MouseClassFindMorePortsbpl.3341:64|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@97))
))) (and (=> (= (ControlFlow 0 92) (- 0 100)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@98 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@98) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@98) (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@98)))
 :qid |MouseClassFindMorePortsbpl.3344:64|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@98))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@99 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@99) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@99) (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@99)))
 :qid |MouseClassFindMorePortsbpl.3344:64|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@99))
))) (and (=> (= (ControlFlow 0 92) (- 0 99)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@159 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@159) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@159) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@159)))
 :qid |MouseClassFindMorePortsbpl.3346:63|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@159))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@160 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@160) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@160) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@160)))
 :qid |MouseClassFindMorePortsbpl.3346:63|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@160))
))) (and (=> (= (ControlFlow 0 92) (- 0 98)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@161 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@161) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@161) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@161)))
 :qid |MouseClassFindMorePortsbpl.3348:63|
 :skolemid |668|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@161))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@162 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@162) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@162) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@162)))
 :qid |MouseClassFindMorePortsbpl.3348:63|
 :skolemid |668|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@162))
))) (and (=> (= (ControlFlow 0 92) (- 0 97)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@163 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@163) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@163) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@163)))
 :qid |MouseClassFindMorePortsbpl.3350:63|
 :skolemid |669|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@163))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@164 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@164) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@164) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@164)))
 :qid |MouseClassFindMorePortsbpl.3350:63|
 :skolemid |669|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@164))
))) (and (=> (= (ControlFlow 0 92) (- 0 96)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@165 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@165) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@165) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@165)))
 :qid |MouseClassFindMorePortsbpl.3352:65|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@165))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@166 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@166) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@166) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@166)))
 :qid |MouseClassFindMorePortsbpl.3352:65|
 :skolemid |670|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@166))
))) (and (=> (= (ControlFlow 0 92) (- 0 95)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@167 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@167) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@167) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@167)))
 :qid |MouseClassFindMorePortsbpl.3354:63|
 :skolemid |671|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@167))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@168 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@168) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@168) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@168)))
 :qid |MouseClassFindMorePortsbpl.3354:63|
 :skolemid |671|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@168))
))) (and (=> (= (ControlFlow 0 92) (- 0 94)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@169 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@169) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@169) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@169)))
 :qid |MouseClassFindMorePortsbpl.3356:63|
 :skolemid |672|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@169))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@170 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@170) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@170) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@170)))
 :qid |MouseClassFindMorePortsbpl.3356:63|
 :skolemid |672|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@170))
))) (and (=> (= (ControlFlow 0 92) (- 0 93)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@171 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@171) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@171) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@171)))
 :qid |MouseClassFindMorePortsbpl.3358:65|
 :skolemid |673|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@171))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@172 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@172) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@172) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@172)))
 :qid |MouseClassFindMorePortsbpl.3358:65|
 :skolemid |673|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@172))
))) (=> (= (ControlFlow 0 92) 91) label_74_head_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((label_45_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0) (and (=> (= (ControlFlow 0 13) (- 0 20)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@9 0) (=> (and (forall ((x@@355 Int) ) (!  (=> (and (<= call2formal@new@0@@9 x@@355) (< x@@355 (+ call2formal@new@0@@9 1))) (= (Base x@@355) call2formal@new@0@@9))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@355))
)) (forall ((x@@356 Int) ) (!  (or (= x@@356 call2formal@new@0@@9) (= (|Select__T@[Int]name_| alloc@8 x@@356) (|Select__T@[Int]name_| alloc@11 x@@356)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@11 x@@356))
))) (=> (and (and (= (|Select__T@[Int]name_| alloc@8 call2formal@new@0@@9) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@11 call2formal@new@0@@9) ALLOCATED)) (and (= Mem@18 (|Store__T@[name][Int]Int_| Mem@13 T.UINT4 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.UINT4) (PLUS call2formal@new@0@@6 4 0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3))))) (= call3formal@$FinalStatus$4$4553.13$MouseClassLogError$281@0 (- 0 1073741823)))) (and (=> (= (ControlFlow 0 13) (- 0 19)) (forall ((_H_x@@18 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@4 1) _H_x@@18) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@18)))) _H_x@@18) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@18))) 1)))
 :qid |MouseClassFindMorePortsbpl.2545:18|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@18)))
))) (=> (forall ((_H_x@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@4 1) _H_x@@19) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@19)))) _H_x@@19) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@19))) 1)))
 :qid |MouseClassFindMorePortsbpl.2545:18|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@19)))
)) (and (=> (= (ControlFlow 0 13) (- 0 18)) (forall ((_H_z@@30 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@30) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@30))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@30)))) _H_z@@30)))
 :qid |MouseClassFindMorePortsbpl.2547:18|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@30)))
))) (=> (forall ((_H_z@@31 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@31) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@31))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@31)))) _H_z@@31)))
 :qid |MouseClassFindMorePortsbpl.2547:18|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@31)))
)) (and (=> (= (ControlFlow 0 13) (- 0 17)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@18 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@18) (or (= _H_y@@18 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (MINUS_LEFT_PTR _H_y@@18 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2553:235|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@18))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@19) (or (= _H_y@@19 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (MINUS_LEFT_PTR _H_y@@19 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2553:235|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@19))
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (forall ((_H_x@@20 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@9 1) _H_x@@20) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@20)))) _H_x@@20) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@9 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@20))) 1)))
 :qid |MouseClassFindMorePortsbpl.2557:17|
 :skolemid |517|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@20)))
)) (=> (and (and (forall ((_H_z@@32 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@9 1) _H_z@@32) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@9 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@32))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@32)))) _H_z@@32)))
 :qid |MouseClassFindMorePortsbpl.2559:17|
 :skolemid |518|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@32)))
)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@9 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@20 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@20) (or (= _H_y@@20 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@9 (MINUS_LEFT_PTR _H_y@@20 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2565:234|
 :skolemid |519|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@20))
)))))) (=> (and (and (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@9 Res_DEV_OBJ_INIT@4) (= Res_DEV_EXTN@9 Res_DEV_EXTN@4))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@100 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@100) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@100) (|Select__T@[Int]Int_| Res_DEVICE_STACK@9 r@@100)))
 :qid |MouseClassFindMorePortsbpl.2578:63|
 :skolemid |520|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@9 r@@100))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@101 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@101) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@101) (|Select__T@[Int]Int_| Res_DEV_EXTN@9 r@@101)))
 :qid |MouseClassFindMorePortsbpl.2582:63|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@9 r@@101))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@102 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@102) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@102) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@9 r@@102)))
 :qid |MouseClassFindMorePortsbpl.2586:63|
 :skolemid |522|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@9 r@@102))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@103 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@103) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@103) (|Select__T@[Int]Int_| Res_SPIN_LOCK@9 r@@103)))
 :qid |MouseClassFindMorePortsbpl.2590:63|
 :skolemid |523|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@9 r@@103))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@173 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@173) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.MinorFunction__IO_STACK_LOCATION) _m@@173) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@173)))
 :qid |MouseClassFindMorePortsbpl.2592:64|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.MinorFunction__IO_STACK_LOCATION) _m@@173))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@174 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@174) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@174) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@174)))
 :qid |MouseClassFindMorePortsbpl.2594:64|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@174))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@175 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@175) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) _m@@175) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@175)))
 :qid |MouseClassFindMorePortsbpl.2596:64|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) _m@@175))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@176 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@176) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) _m@@176) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@176)))
 :qid |MouseClassFindMorePortsbpl.2598:64|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) _m@@176))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@177 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@177) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Started__DEVICE_EXTENSION) _m@@177) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@177)))
 :qid |MouseClassFindMorePortsbpl.2600:64|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Started__DEVICE_EXTENSION) _m@@177))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@178 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@178) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) _m@@178) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@178)))
 :qid |MouseClassFindMorePortsbpl.2602:64|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) _m@@178))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@179 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@179) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.P_DEVICE_OBJECT) _m@@179) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@179)))
 :qid |MouseClassFindMorePortsbpl.2604:64|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.P_DEVICE_OBJECT) _m@@179))
))) (and (= alloc@12 alloc@11) (= Mem@23 Mem@19))) (and (and (= Res_DEVICE_STACK@11 Res_DEVICE_STACK@9) (= Res_DEV_EXTN@11 Res_DEV_EXTN@9)) (and (= Res_DEV_OBJ_INIT@11 Res_DEV_OBJ_INIT@9) (= Res_SPIN_LOCK@11 Res_SPIN_LOCK@9)))))) (and (=> (= (ControlFlow 0 13) 11) label_156_true_correct) (=> (= (ControlFlow 0 13) 12) label_156_false_correct)))))))))))))))))))))))))
(let ((start_correct  (=> (and (not (= (|Select__T@[Int]name_| alloc $DriverObject$1$4588.20$MouseClassFindMorePorts$121) UNALLOCATED)) (not (= (|Select__T@[Int]name_| alloc $Context$2$4589.20$MouseClassFindMorePorts$121) UNALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 129)) (>= 512 0)) (=> (>= 512 0) (=> (> call2formal@new@0@@4 0) (=> (and (and (forall ((x@@357 Int) ) (!  (=> (and (<= call2formal@new@0@@4 x@@357) (< x@@357 (+ call2formal@new@0@@4 512))) (= (Base x@@357) call2formal@new@0@@4))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@357))
)) (forall ((x@@358 Int) ) (!  (or (= x@@358 call2formal@new@0@@4) (= (|Select__T@[Int]name_| alloc x@@358) (|Select__T@[Int]name_| alloc@0 x@@358)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@0 x@@358))
))) (and (= (|Select__T@[Int]name_| alloc call2formal@new@0@@4) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@0 call2formal@new@0@@4) ALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 128)) (>= 8 0)) (=> (>= 8 0) (=> (> call2formal@new@0@@5 0) (=> (and (and (forall ((x@@359 Int) ) (!  (=> (and (<= call2formal@new@0@@5 x@@359) (< x@@359 (+ call2formal@new@0@@5 8))) (= (Base x@@359) call2formal@new@0@@5))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@359))
)) (forall ((x@@360 Int) ) (!  (or (= x@@360 call2formal@new@0@@5) (= (|Select__T@[Int]name_| alloc@0 x@@360) (|Select__T@[Int]name_| alloc@1 x@@360)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@1 x@@360))
))) (and (= (|Select__T@[Int]name_| alloc@0 call2formal@new@0@@5) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@1 call2formal@new@0@@5) ALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 127)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0@@1 0) (=> (and (and (forall ((x@@361 Int) ) (!  (=> (and (<= call2formal@new@0@@1 x@@361) (< x@@361 (+ call2formal@new@0@@1 4))) (= (Base x@@361) call2formal@new@0@@1))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@361))
)) (forall ((x@@362 Int) ) (!  (or (= x@@362 call2formal@new@0@@1) (= (|Select__T@[Int]name_| alloc@1 x@@362) (|Select__T@[Int]name_| alloc@2 x@@362)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@2 x@@362))
))) (and (= (|Select__T@[Int]name_| alloc@1 call2formal@new@0@@1) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@2 call2formal@new@0@@1) ALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 126)) (>= 16 0)) (=> (>= 16 0) (=> (> call2formal@new@0@@6 0) (=> (and (and (forall ((x@@363 Int) ) (!  (=> (and (<= call2formal@new@0@@6 x@@363) (< x@@363 (+ call2formal@new@0@@6 16))) (= (Base x@@363) call2formal@new@0@@6))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@363))
)) (forall ((x@@364 Int) ) (!  (or (= x@@364 call2formal@new@0@@6) (= (|Select__T@[Int]name_| alloc@2 x@@364) (|Select__T@[Int]name_| alloc@3 x@@364)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@3 x@@364))
))) (and (= (|Select__T@[Int]name_| alloc@2 call2formal@new@0@@6) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@3 call2formal@new@0@@6) ALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 125)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0 0) (=> (and (and (forall ((x@@365 Int) ) (!  (=> (and (<= call2formal@new@0 x@@365) (< x@@365 (+ call2formal@new@0 4))) (= (Base x@@365) call2formal@new@0))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@365))
)) (forall ((x@@366 Int) ) (!  (or (= x@@366 call2formal@new@0) (= (|Select__T@[Int]name_| alloc@3 x@@366) (|Select__T@[Int]name_| alloc@4 x@@366)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@4 x@@366))
))) (and (= (|Select__T@[Int]name_| alloc@3 call2formal@new@0) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@4 call2formal@new@0) ALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 124)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0@@0 0) (=> (and (and (forall ((x@@367 Int) ) (!  (=> (and (<= call2formal@new@0@@0 x@@367) (< x@@367 (+ call2formal@new@0@@0 4))) (= (Base x@@367) call2formal@new@0@@0))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@367))
)) (forall ((x@@368 Int) ) (!  (or (= x@@368 call2formal@new@0@@0) (= (|Select__T@[Int]name_| alloc@4 x@@368) (|Select__T@[Int]name_| alloc@5 x@@368)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@5 x@@368))
))) (and (= (|Select__T@[Int]name_| alloc@4 call2formal@new@0@@0) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@5 call2formal@new@0@@0) ALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 123)) (>= 8 0)) (=> (>= 8 0) (=> (> call2formal@new@0@@3 0) (=> (and (and (forall ((x@@369 Int) ) (!  (=> (and (<= call2formal@new@0@@3 x@@369) (< x@@369 (+ call2formal@new@0@@3 8))) (= (Base x@@369) call2formal@new@0@@3))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@369))
)) (forall ((x@@370 Int) ) (!  (or (= x@@370 call2formal@new@0@@3) (= (|Select__T@[Int]name_| alloc@5 x@@370) (|Select__T@[Int]name_| alloc@6 x@@370)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@6 x@@370))
))) (and (= (|Select__T@[Int]name_| alloc@5 call2formal@new@0@@3) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@6 call2formal@new@0@@3) ALLOCATED))) (and (=> (= (ControlFlow 0 120) (- 0 122)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0@@2 0) (=> (and (forall ((x@@371 Int) ) (!  (=> (and (<= call2formal@new@0@@2 x@@371) (< x@@371 (+ call2formal@new@0@@2 4))) (= (Base x@@371) call2formal@new@0@@2))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@371))
)) (forall ((x@@372 Int) ) (!  (or (= x@@372 call2formal@new@0@@2) (= (|Select__T@[Int]name_| alloc@6 x@@372) (|Select__T@[Int]name_| alloc@7 x@@372)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@7 x@@372))
))) (=> (and (and (and (and (and (and (= (|Select__T@[Int]name_| alloc@6 call2formal@new@0@@2) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@7 call2formal@new@0@@2) ALLOCATED)) (= Mem@0 (|Store__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT) call2formal@new@0@@1 0)))) (and (= Mem@1 (|Store__T@[name][Int]Int_| Mem@0 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.PUINT2) call2formal@new@0@@0 0))) (= Mem@2 Mem@1))) (and (and (and (= Res_DEV_OBJ_INIT@0 Res_DEV_OBJ_INIT) (= Res_DEV_EXTN@0 Res_DEV_EXTN)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@104 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@104) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK r@@104) (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@104)))
 :qid |MouseClassFindMorePortsbpl.2788:63|
 :skolemid |575|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@104))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@105 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@105) (= (|Select__T@[Int]Int_| Res_DEV_EXTN r@@105) (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@105)))
 :qid |MouseClassFindMorePortsbpl.2792:63|
 :skolemid |576|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@105))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@106 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@106) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT r@@106) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@106)))
 :qid |MouseClassFindMorePortsbpl.2796:63|
 :skolemid |577|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@106))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@107 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@107) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK r@@107) (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@107)))
 :qid |MouseClassFindMorePortsbpl.2800:63|
 :skolemid |578|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@107))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@180 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@180) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MinorFunction__IO_STACK_LOCATION) _m@@180) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.MinorFunction__IO_STACK_LOCATION) _m@@180)))
 :qid |MouseClassFindMorePortsbpl.2802:64|
 :skolemid |579|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MinorFunction__IO_STACK_LOCATION) _m@@180))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@181 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@181) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@181) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@181)))
 :qid |MouseClassFindMorePortsbpl.2804:64|
 :skolemid |580|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@181))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@182 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@182) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.DeviceExtension__DEVICE_OBJECT) _m@@182) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.DeviceExtension__DEVICE_OBJECT) _m@@182)))
 :qid |MouseClassFindMorePortsbpl.2806:64|
 :skolemid |581|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.DeviceExtension__DEVICE_OBJECT) _m@@182))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@183 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@183) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Self__DEVICE_EXTENSION) _m@@183) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Self__DEVICE_EXTENSION) _m@@183)))
 :qid |MouseClassFindMorePortsbpl.2808:64|
 :skolemid |582|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Self__DEVICE_EXTENSION) _m@@183))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@184 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@184) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Started__DEVICE_EXTENSION) _m@@184) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Started__DEVICE_EXTENSION) _m@@184)))
 :qid |MouseClassFindMorePortsbpl.2810:64|
 :skolemid |583|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Started__DEVICE_EXTENSION) _m@@184))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@185 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@185) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) _m@@185) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.GrandMaster__GLOBALS) _m@@185)))
 :qid |MouseClassFindMorePortsbpl.2812:64|
 :skolemid |584|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) _m@@185))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@186 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@186) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.P_DEVICE_OBJECT) _m@@186) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.P_DEVICE_OBJECT) _m@@186)))
 :qid |MouseClassFindMorePortsbpl.2814:64|
 :skolemid |585|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.P_DEVICE_OBJECT) _m@@186))
))))))) (and (and (and (and (and (= Mem@3 (|Store__T@[name][Int]Int_| Mem@2 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3) 0))) (= Mem@4 (|Store__T@[name][Int]Int_| Mem@3 T.Buffer__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@5) call2formal@new@0@@4)))) (and (= Mem@5 (|Store__T@[name][Int]Int_| Mem@4 T.Length__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5) 0))) (= Mem@6 (|Store__T@[name][Int]Int_| Mem@5 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@5 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@5) 512))))) (and (and (= call1formal@$SourceString$2$7402.30$RtlCopyUnicodeString$81@0 (BaseClassName__GLOBALS Globals)) (= Mem@7 Mem@6)) (and (= Res_DEV_OBJ_INIT@1 Res_DEV_OBJ_INIT@0) (= Res_DEV_EXTN@1 Res_DEV_EXTN@0)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@108 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@108) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@108) (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@108)))
 :qid |MouseClassFindMorePortsbpl.2704:63|
 :skolemid |553|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@108))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@109 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@109) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@109) (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@109)))
 :qid |MouseClassFindMorePortsbpl.2708:63|
 :skolemid |554|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@109))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@110 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@110) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@110) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@110)))
 :qid |MouseClassFindMorePortsbpl.2712:63|
 :skolemid |555|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@110))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@111 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@111) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@111) (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@111)))
 :qid |MouseClassFindMorePortsbpl.2716:63|
 :skolemid |556|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@111))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@187 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@187) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.MinorFunction__IO_STACK_LOCATION) _m@@187) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.MinorFunction__IO_STACK_LOCATION) _m@@187)))
 :qid |MouseClassFindMorePortsbpl.2718:64|
 :skolemid |557|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.MinorFunction__IO_STACK_LOCATION) _m@@187))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@188 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@188) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@188) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@188)))
 :qid |MouseClassFindMorePortsbpl.2720:64|
 :skolemid |558|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@188))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@189 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@189) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.DeviceExtension__DEVICE_OBJECT) _m@@189) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.DeviceExtension__DEVICE_OBJECT) _m@@189)))
 :qid |MouseClassFindMorePortsbpl.2722:64|
 :skolemid |559|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.DeviceExtension__DEVICE_OBJECT) _m@@189))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@190 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@190) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Self__DEVICE_EXTENSION) _m@@190) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Self__DEVICE_EXTENSION) _m@@190)))
 :qid |MouseClassFindMorePortsbpl.2724:64|
 :skolemid |560|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Self__DEVICE_EXTENSION) _m@@190))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@191 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@191) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Started__DEVICE_EXTENSION) _m@@191) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Started__DEVICE_EXTENSION) _m@@191)))
 :qid |MouseClassFindMorePortsbpl.2726:64|
 :skolemid |561|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Started__DEVICE_EXTENSION) _m@@191))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@192 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@192) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.GrandMaster__GLOBALS) _m@@192) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.GrandMaster__GLOBALS) _m@@192)))
 :qid |MouseClassFindMorePortsbpl.2728:64|
 :skolemid |562|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.GrandMaster__GLOBALS) _m@@192))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@193 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@193) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.P_DEVICE_OBJECT) _m@@193) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.P_DEVICE_OBJECT) _m@@193)))
 :qid |MouseClassFindMorePortsbpl.2730:64|
 :skolemid |563|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.P_DEVICE_OBJECT) _m@@193))
))) (and (= tempBoogie0@0 (MINUS_BOTH_PTR_OR_BOTH_INT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5)) 10 1)) (= Mem@8 (|Store__T@[name][Int]Int_| Mem@7 T.Length__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5) tempBoogie0@0))))))))) (and (=> (= (ControlFlow 0 120) (- 0 121)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@10 0) (=> (and (forall ((x@@373 Int) ) (!  (=> (and (<= call2formal@new@0@@10 x@@373) (< x@@373 (+ call2formal@new@0@@10 1))) (= (Base x@@373) call2formal@new@0@@10))
 :qid |MouseClassFindMorePortsbpl.1905:17|
 :skolemid |361|
 :pattern ( (Base x@@373))
)) (forall ((x@@374 Int) ) (!  (or (= x@@374 call2formal@new@0@@10) (= (|Select__T@[Int]name_| alloc@7 x@@374) (|Select__T@[Int]name_| alloc@8 x@@374)))
 :qid |MouseClassFindMorePortsbpl.1906:17|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]name_| alloc@8 x@@374))
))) (=> (and (and (and (and (and (= (|Select__T@[Int]name_| alloc@7 call2formal@new@0@@10) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@8 call2formal@new@0@@10) ALLOCATED)) (= Mem@9 Mem@8)) (and (= Res_DEV_OBJ_INIT@2 Res_DEV_OBJ_INIT@1) (= Res_DEV_EXTN@2 Res_DEV_EXTN@1))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@112 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@112) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@112) (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@112)))
 :qid |MouseClassFindMorePortsbpl.2662:63|
 :skolemid |542|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@112))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@113 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@113) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@113) (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@113)))
 :qid |MouseClassFindMorePortsbpl.2666:63|
 :skolemid |543|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@113))
))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@114 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@114) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@114) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@114)))
 :qid |MouseClassFindMorePortsbpl.2670:63|
 :skolemid |544|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@114))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@115 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@115) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@115) (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@115)))
 :qid |MouseClassFindMorePortsbpl.2674:63|
 :skolemid |545|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@115))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@194 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@194) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.MinorFunction__IO_STACK_LOCATION) _m@@194) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.MinorFunction__IO_STACK_LOCATION) _m@@194)))
 :qid |MouseClassFindMorePortsbpl.2676:64|
 :skolemid |546|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.MinorFunction__IO_STACK_LOCATION) _m@@194))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@195 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@195) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@195) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@195)))
 :qid |MouseClassFindMorePortsbpl.2678:64|
 :skolemid |547|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@195))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@196 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@196) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.DeviceExtension__DEVICE_OBJECT) _m@@196) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.DeviceExtension__DEVICE_OBJECT) _m@@196)))
 :qid |MouseClassFindMorePortsbpl.2680:64|
 :skolemid |548|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.DeviceExtension__DEVICE_OBJECT) _m@@196))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@197 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@197) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Self__DEVICE_EXTENSION) _m@@197) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.Self__DEVICE_EXTENSION) _m@@197)))
 :qid |MouseClassFindMorePortsbpl.2682:64|
 :skolemid |549|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Self__DEVICE_EXTENSION) _m@@197))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@198 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@198) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Started__DEVICE_EXTENSION) _m@@198) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.Started__DEVICE_EXTENSION) _m@@198)))
 :qid |MouseClassFindMorePortsbpl.2684:64|
 :skolemid |550|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Started__DEVICE_EXTENSION) _m@@198))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@199 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@199) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.GrandMaster__GLOBALS) _m@@199) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.GrandMaster__GLOBALS) _m@@199)))
 :qid |MouseClassFindMorePortsbpl.2686:64|
 :skolemid |551|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.GrandMaster__GLOBALS) _m@@199))
))))))) (=> (and (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@200 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@200) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.P_DEVICE_OBJECT) _m@@200) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.P_DEVICE_OBJECT) _m@@200)))
 :qid |MouseClassFindMorePortsbpl.2688:64|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.P_DEVICE_OBJECT) _m@@200))
))) (= Mem@10 Mem@9)) (and (= Res_DEV_OBJ_INIT@3 Res_DEV_OBJ_INIT@2) (= Res_DEV_EXTN@3 Res_DEV_EXTN@2))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@116 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@116) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@116) (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@116)))
 :qid |MouseClassFindMorePortsbpl.2746:63|
 :skolemid |564|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@116))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@117 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@117) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@117) (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@117)))
 :qid |MouseClassFindMorePortsbpl.2750:63|
 :skolemid |565|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@117))
))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@118 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@118) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@118) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@118)))
 :qid |MouseClassFindMorePortsbpl.2754:63|
 :skolemid |566|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@118))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@119 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@119) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@119) (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@119)))
 :qid |MouseClassFindMorePortsbpl.2758:63|
 :skolemid |567|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@119))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@201 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@201) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MinorFunction__IO_STACK_LOCATION) _m@@201) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.MinorFunction__IO_STACK_LOCATION) _m@@201)))
 :qid |MouseClassFindMorePortsbpl.2760:64|
 :skolemid |568|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MinorFunction__IO_STACK_LOCATION) _m@@201))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@202 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@202) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@202) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@202)))
 :qid |MouseClassFindMorePortsbpl.2762:64|
 :skolemid |569|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@202))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@203 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@203) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.DeviceExtension__DEVICE_OBJECT) _m@@203) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.DeviceExtension__DEVICE_OBJECT) _m@@203)))
 :qid |MouseClassFindMorePortsbpl.2764:64|
 :skolemid |570|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.DeviceExtension__DEVICE_OBJECT) _m@@203))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@204 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@204) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Self__DEVICE_EXTENSION) _m@@204) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Self__DEVICE_EXTENSION) _m@@204)))
 :qid |MouseClassFindMorePortsbpl.2766:64|
 :skolemid |571|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Self__DEVICE_EXTENSION) _m@@204))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@205 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@205) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Started__DEVICE_EXTENSION) _m@@205) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Started__DEVICE_EXTENSION) _m@@205)))
 :qid |MouseClassFindMorePortsbpl.2768:64|
 :skolemid |572|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Started__DEVICE_EXTENSION) _m@@205))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@206 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@206) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.GrandMaster__GLOBALS) _m@@206) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.GrandMaster__GLOBALS) _m@@206)))
 :qid |MouseClassFindMorePortsbpl.2770:64|
 :skolemid |573|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.GrandMaster__GLOBALS) _m@@206))
))))))) (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@207 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@207) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.P_DEVICE_OBJECT) _m@@207) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.P_DEVICE_OBJECT) _m@@207)))
 :qid |MouseClassFindMorePortsbpl.2772:64|
 :skolemid |574|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.P_DEVICE_OBJECT) _m@@207))
))) (= Mem@11 (|Store__T@[name][Int]Int_| Mem@10 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3) (PLUS (PLUS 18 1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5))) 1 2))))) (and (and (= $ExAllocatePoolWithTag.arg.2$5$@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3))) (= Mem@12 Mem@11)) (and (= Res_DEV_OBJ_INIT@4 Res_DEV_OBJ_INIT@3) (= Res_DEV_EXTN@4 Res_DEV_EXTN@3)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@120 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@120) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@120) (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@120)))
 :qid |MouseClassFindMorePortsbpl.2054:63|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@120))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@121 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@121) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@121) (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@121)))
 :qid |MouseClassFindMorePortsbpl.2058:63|
 :skolemid |393|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@121))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@122 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@122) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@122) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@122)))
 :qid |MouseClassFindMorePortsbpl.2062:63|
 :skolemid |394|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@122))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@123 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@123) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@123) (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@123)))
 :qid |MouseClassFindMorePortsbpl.2066:63|
 :skolemid |395|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@123))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@208 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@208) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.MinorFunction__IO_STACK_LOCATION) _m@@208) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.MinorFunction__IO_STACK_LOCATION) _m@@208)))
 :qid |MouseClassFindMorePortsbpl.2068:64|
 :skolemid |396|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.MinorFunction__IO_STACK_LOCATION) _m@@208))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@209 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@209) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@209) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@209)))
 :qid |MouseClassFindMorePortsbpl.2070:64|
 :skolemid |397|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.CurrentStackLocation___unnamed_4_a7aa989c) _m@@209))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@210 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@210) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.DeviceExtension__DEVICE_OBJECT) _m@@210) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.DeviceExtension__DEVICE_OBJECT) _m@@210)))
 :qid |MouseClassFindMorePortsbpl.2072:64|
 :skolemid |398|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.DeviceExtension__DEVICE_OBJECT) _m@@210))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@211 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@211) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Self__DEVICE_EXTENSION) _m@@211) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Self__DEVICE_EXTENSION) _m@@211)))
 :qid |MouseClassFindMorePortsbpl.2074:64|
 :skolemid |399|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Self__DEVICE_EXTENSION) _m@@211))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@212 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@212) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Started__DEVICE_EXTENSION) _m@@212) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Started__DEVICE_EXTENSION) _m@@212)))
 :qid |MouseClassFindMorePortsbpl.2076:64|
 :skolemid |400|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Started__DEVICE_EXTENSION) _m@@212))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@213 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@213) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.GrandMaster__GLOBALS) _m@@213) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.GrandMaster__GLOBALS) _m@@213)))
 :qid |MouseClassFindMorePortsbpl.2078:64|
 :skolemid |401|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.GrandMaster__GLOBALS) _m@@213))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@214 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@214) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.P_DEVICE_OBJECT) _m@@214) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.P_DEVICE_OBJECT) _m@@214)))
 :qid |MouseClassFindMorePortsbpl.2080:64|
 :skolemid |402|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.P_DEVICE_OBJECT) _m@@214))
))) (= Mem@13 (|Store__T@[name][Int]Int_| Mem@12 T.Buffer__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3) call8formal@$result.ExAllocatePoolWithTag$14788.0$1$@0)))))))) (and (=> (= (ControlFlow 0 120) 92) label_45_true_correct) (=> (= (ControlFlow 0 120) 13) label_45_false_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (=> (and (and (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@21 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@21) (or (= _H_y@@21 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (MINUS_LEFT_PTR _H_y@@21 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |MouseClassFindMorePortsbpl.2827:235|
 :skolemid |586|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@21))
))))) (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (forall ((_H_x@@21 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT 1) _H_x@@21) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@21)))) _H_x@@21) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@21))) 1)))
 :qid |MouseClassFindMorePortsbpl.2831:18|
 :skolemid |587|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@21)))
)))) (and (and (forall ((_H_z@@33 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@33) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@33))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@33)))) _H_z@@33)))
 :qid |MouseClassFindMorePortsbpl.2833:19|
 :skolemid |588|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@33)))
)) (and (Subset Empty (Inverse Res_DEV_EXTN 1)) (forall ((_H_z@@34 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@34) (and (= (|Select__T@[Int]Int_| Res_SPIN_LOCK (SpinLock__DEVICE_EXTENSION _H_z@@34)) 0) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK (WaitWakeSpinLock__DEVICE_EXTENSION _H_z@@34)) 0)))
 :qid |MouseClassFindMorePortsbpl.2833:417|
 :skolemid |589|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@34))
)))) (= (ControlFlow 0 130) 120))) start_correct))))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
