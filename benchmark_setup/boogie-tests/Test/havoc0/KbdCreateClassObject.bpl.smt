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
(declare-fun T.AllowDisable__DEVICE_EXTENSION () T@name)
(declare-fun T.WaitWakeSpinLock__DEVICE_EXTENSION () T@name)
(declare-fun T.TrustedSubsystemCount__DEVICE_EXTENSION () T@name)
(declare-fun T.InputCount__DEVICE_EXTENSION () T@name)
(declare-fun T.SymbolicLinkName__DEVICE_EXTENSION () T@name)
(declare-fun T.InputData__DEVICE_EXTENSION () T@name)
(declare-fun T.DataIn__DEVICE_EXTENSION () T@name)
(declare-fun T.DataOut__DEVICE_EXTENSION () T@name)
(declare-fun T.KeyboardAttributes__DEVICE_EXTENSION () T@name)
(declare-fun T.IndicatorParameters__DEVICE_EXTENSION () T@name)
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
(declare-fun T.OkayToLogOverflow__DEVICE_EXTENSION () T@name)
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
(declare-fun T.__unnamed_4_a97c65a1__DISPATCHER_HEADER () T@name)
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
(declare-fun T.__unnamed_4_52c594f7__ERESOURCE () T@name)
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
(declare-fun T.SendOutputToAllPorts__GLOBALS () T@name)
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
(declare-fun T.__unnamed_4_d99b6e2b__IO_STATUS_BLOCK () T@name)
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
(declare-fun T.KeyboardIdentifier__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.KeyboardMode__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.NumberOfIndicators__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.NumberOfKeysTotal__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.InputDataQueueLength__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.KeyRepeatMinimum__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.KeyRepeatMaximum__KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T.Type__KEYBOARD_ID () T@name)
(declare-fun T.Subtype__KEYBOARD_ID () T@name)
(declare-fun T.UnitId__KEYBOARD_INDICATOR_PARAMETERS () T@name)
(declare-fun T.LedFlags__KEYBOARD_INDICATOR_PARAMETERS () T@name)
(declare-fun T.UnitId__KEYBOARD_INPUT_DATA () T@name)
(declare-fun T.MakeCode__KEYBOARD_INPUT_DATA () T@name)
(declare-fun T.Flags__KEYBOARD_INPUT_DATA () T@name)
(declare-fun T.Reserved__KEYBOARD_INPUT_DATA () T@name)
(declare-fun T.ExtraInformation__KEYBOARD_INPUT_DATA () T@name)
(declare-fun T.UnitId__KEYBOARD_TYPEMATIC_PARAMETERS () T@name)
(declare-fun T.Rate__KEYBOARD_TYPEMATIC_PARAMETERS () T@name)
(declare-fun T.Delay__KEYBOARD_TYPEMATIC_PARAMETERS () T@name)
(declare-fun T.Header__KSEMAPHORE () T@name)
(declare-fun T.Limit__KSEMAPHORE () T@name)
(declare-fun T.__unnamed_8_58ee4a31__LARGE_INTEGER () T@name)
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
(declare-fun T.OwnerThread__OWNER_ENTRY () T@name)
(declare-fun T.__unnamed_4_6f9ac8e1__OWNER_ENTRY () T@name)
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
(declare-fun T.__unnamed_4_3a2fdc5e__SYSTEM_POWER_STATE_CONTEXT () T@name)
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
(declare-fun T.Reserved___unnamed_12_0d6a30de () T@name)
(declare-fun T.MessageCount___unnamed_12_0d6a30de () T@name)
(declare-fun T.Vector___unnamed_12_0d6a30de () T@name)
(declare-fun T.Affinity___unnamed_12_0d6a30de () T@name)
(declare-fun T.Start___unnamed_12_17f5c211 () T@name)
(declare-fun T.Length48___unnamed_12_17f5c211 () T@name)
(declare-fun T.Start___unnamed_12_1fb42e39 () T@name)
(declare-fun T.Length___unnamed_12_1fb42e39 () T@name)
(declare-fun T.Reserved___unnamed_12_1fb42e39 () T@name)
(declare-fun T.Start___unnamed_12_2a1563c6 () T@name)
(declare-fun T.Length___unnamed_12_2a1563c6 () T@name)
(declare-fun T.DataSize___unnamed_12_31347272 () T@name)
(declare-fun T.Reserved1___unnamed_12_31347272 () T@name)
(declare-fun T.Reserved2___unnamed_12_31347272 () T@name)
(declare-fun T.Raw___unnamed_12_429aadc0 () T@name)
(declare-fun T.Translated___unnamed_12_429aadc0 () T@name)
(declare-fun T.Start___unnamed_12_4719de1a () T@name)
(declare-fun T.Length___unnamed_12_4719de1a () T@name)
(declare-fun T.Data___unnamed_12_4be56faa () T@name)
(declare-fun T.Data___unnamed_12_5ce25b92 () T@name)
(declare-fun T.Generic___unnamed_12_7a698b72 () T@name)
(declare-fun T.Port___unnamed_12_7a698b72 () T@name)
(declare-fun T.Interrupt___unnamed_12_7a698b72 () T@name)
(declare-fun T.MessageInterrupt___unnamed_12_7a698b72 () T@name)
(declare-fun T.Memory___unnamed_12_7a698b72 () T@name)
(declare-fun T.Dma___unnamed_12_7a698b72 () T@name)
(declare-fun T.DevicePrivate___unnamed_12_7a698b72 () T@name)
(declare-fun T.BusNumber___unnamed_12_7a698b72 () T@name)
(declare-fun T.DeviceSpecificData___unnamed_12_7a698b72 () T@name)
(declare-fun T.Memory40___unnamed_12_7a698b72 () T@name)
(declare-fun T.Memory48___unnamed_12_7a698b72 () T@name)
(declare-fun T.Memory64___unnamed_12_7a698b72 () T@name)
(declare-fun T.Start___unnamed_12_87c0de8d () T@name)
(declare-fun T.Length64___unnamed_12_87c0de8d () T@name)
(declare-fun T.Start___unnamed_12_98bfc55a () T@name)
(declare-fun T.Length40___unnamed_12_98bfc55a () T@name)
(declare-fun T.Priority___unnamed_12_ab1bd9d7 () T@name)
(declare-fun T.Reserved1___unnamed_12_ab1bd9d7 () T@name)
(declare-fun T.Reserved2___unnamed_12_ab1bd9d7 () T@name)
(declare-fun T.Level___unnamed_12_b0429be9 () T@name)
(declare-fun T.Vector___unnamed_12_b0429be9 () T@name)
(declare-fun T.Affinity___unnamed_12_b0429be9 () T@name)
(declare-fun T.ListEntry___unnamed_12_b43e8de8 () T@name)
(declare-fun T.__unnamed_4_f19b65c1___unnamed_12_b43e8de8 () T@name)
(declare-fun T.Level___unnamed_12_bfdb39ee () T@name)
(declare-fun T.Vector___unnamed_12_bfdb39ee () T@name)
(declare-fun T.Affinity___unnamed_12_bfdb39ee () T@name)
(declare-fun T.Start___unnamed_12_cd42b3c3 () T@name)
(declare-fun T.Length___unnamed_12_cd42b3c3 () T@name)
(declare-fun T.__unnamed_12_429aadc0___unnamed_12_e668effc () T@name)
(declare-fun T.Channel___unnamed_12_e80d029e () T@name)
(declare-fun T.Port___unnamed_12_e80d029e () T@name)
(declare-fun T.Reserved1___unnamed_12_e80d029e () T@name)
(declare-fun T.Length___unnamed_16_07c0bcc5 () T@name)
(declare-fun T.MinBusNumber___unnamed_16_07c0bcc5 () T@name)
(declare-fun T.MaxBusNumber___unnamed_16_07c0bcc5 () T@name)
(declare-fun T.Reserved___unnamed_16_07c0bcc5 () T@name)
(declare-fun T.InterfaceType___unnamed_16_29cb9f2f () T@name)
(declare-fun T.Size___unnamed_16_29cb9f2f () T@name)
(declare-fun T.Version___unnamed_16_29cb9f2f () T@name)
(declare-fun T.Interface___unnamed_16_29cb9f2f () T@name)
(declare-fun T.InterfaceSpecificData___unnamed_16_29cb9f2f () T@name)
(declare-fun T.SecurityContext___unnamed_16_30f11dbf () T@name)
(declare-fun T.Options___unnamed_16_30f11dbf () T@name)
(declare-fun T.FileAttributes___unnamed_16_30f11dbf () T@name)
(declare-fun T.ShareAccess___unnamed_16_30f11dbf () T@name)
(declare-fun T.EaLength___unnamed_16_30f11dbf () T@name)
(declare-fun T.DriverContext___unnamed_16_35034f68 () T@name)
(declare-fun T.Length___unnamed_16_487a9498 () T@name)
(declare-fun T.FileName___unnamed_16_487a9498 () T@name)
(declare-fun T.FileInformationClass___unnamed_16_487a9498 () T@name)
(declare-fun T.FileIndex___unnamed_16_487a9498 () T@name)
(declare-fun T.OutputBufferLength___unnamed_16_5f6a8844 () T@name)
(declare-fun T.InputBufferLength___unnamed_16_5f6a8844 () T@name)
(declare-fun T.FsControlCode___unnamed_16_5f6a8844 () T@name)
(declare-fun T.Type3InputBuffer___unnamed_16_5f6a8844 () T@name)
(declare-fun T.Length___unnamed_16_7177b9f3 () T@name)
(declare-fun T.FileInformationClass___unnamed_16_7177b9f3 () T@name)
(declare-fun T.FileObject___unnamed_16_7177b9f3 () T@name)
(declare-fun T.__unnamed_4_43913aa5___unnamed_16_7177b9f3 () T@name)
(declare-fun T.Length___unnamed_16_88e91ef6 () T@name)
(declare-fun T.Key___unnamed_16_88e91ef6 () T@name)
(declare-fun T.ByteOffset___unnamed_16_88e91ef6 () T@name)
(declare-fun T.Length___unnamed_16_8c506c98 () T@name)
(declare-fun T.Key___unnamed_16_8c506c98 () T@name)
(declare-fun T.ByteOffset___unnamed_16_8c506c98 () T@name)
(declare-fun T.WhichSpace___unnamed_16_9ac2e5f8 () T@name)
(declare-fun T.Buffer___unnamed_16_9ac2e5f8 () T@name)
(declare-fun T.Offset___unnamed_16_9ac2e5f8 () T@name)
(declare-fun T.Length___unnamed_16_9ac2e5f8 () T@name)
(declare-fun T.Create___unnamed_16_b93842ad () T@name)
(declare-fun T.Read___unnamed_16_b93842ad () T@name)
(declare-fun T.Write___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryDirectory___unnamed_16_b93842ad () T@name)
(declare-fun T.NotifyDirectory___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryFile___unnamed_16_b93842ad () T@name)
(declare-fun T.SetFile___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryEa___unnamed_16_b93842ad () T@name)
(declare-fun T.SetEa___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryVolume___unnamed_16_b93842ad () T@name)
(declare-fun T.SetVolume___unnamed_16_b93842ad () T@name)
(declare-fun T.FileSystemControl___unnamed_16_b93842ad () T@name)
(declare-fun T.LockControl___unnamed_16_b93842ad () T@name)
(declare-fun T.DeviceIoControl___unnamed_16_b93842ad () T@name)
(declare-fun T.QuerySecurity___unnamed_16_b93842ad () T@name)
(declare-fun T.SetSecurity___unnamed_16_b93842ad () T@name)
(declare-fun T.MountVolume___unnamed_16_b93842ad () T@name)
(declare-fun T.VerifyVolume___unnamed_16_b93842ad () T@name)
(declare-fun T.Scsi___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryQuota___unnamed_16_b93842ad () T@name)
(declare-fun T.SetQuota___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryDeviceRelations___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryInterface___unnamed_16_b93842ad () T@name)
(declare-fun T.DeviceCapabilities___unnamed_16_b93842ad () T@name)
(declare-fun T.FilterResourceRequirements___unnamed_16_b93842ad () T@name)
(declare-fun T.ReadWriteConfig___unnamed_16_b93842ad () T@name)
(declare-fun T.SetLock___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryId___unnamed_16_b93842ad () T@name)
(declare-fun T.QueryDeviceText___unnamed_16_b93842ad () T@name)
(declare-fun T.UsageNotification___unnamed_16_b93842ad () T@name)
(declare-fun T.WaitWake___unnamed_16_b93842ad () T@name)
(declare-fun T.PowerSequence___unnamed_16_b93842ad () T@name)
(declare-fun T.Power___unnamed_16_b93842ad () T@name)
(declare-fun T.StartDevice___unnamed_16_b93842ad () T@name)
(declare-fun T.WMI___unnamed_16_b93842ad () T@name)
(declare-fun T.Others___unnamed_16_b93842ad () T@name)
(declare-fun T.Length___unnamed_16_b9c62eab () T@name)
(declare-fun T.Key___unnamed_16_b9c62eab () T@name)
(declare-fun T.ByteOffset___unnamed_16_b9c62eab () T@name)
(declare-fun T.__unnamed_4_7d9d0c7e___unnamed_16_bb584060 () T@name)
(declare-fun T.Type___unnamed_16_bb584060 () T@name)
(declare-fun T.State___unnamed_16_bb584060 () T@name)
(declare-fun T.ShutdownType___unnamed_16_bb584060 () T@name)
(declare-fun T.OutputBufferLength___unnamed_16_dba55c7c () T@name)
(declare-fun T.InputBufferLength___unnamed_16_dba55c7c () T@name)
(declare-fun T.IoControlCode___unnamed_16_dba55c7c () T@name)
(declare-fun T.Type3InputBuffer___unnamed_16_dba55c7c () T@name)
(declare-fun T.DeviceQueueEntry___unnamed_16_e70c268b () T@name)
(declare-fun T.__unnamed_16_35034f68___unnamed_16_e70c268b () T@name)
(declare-fun T.Argument1___unnamed_16_e734d694 () T@name)
(declare-fun T.Argument2___unnamed_16_e734d694 () T@name)
(declare-fun T.Argument3___unnamed_16_e734d694 () T@name)
(declare-fun T.Argument4___unnamed_16_e734d694 () T@name)
(declare-fun T.ProviderId___unnamed_16_eac6dbea () T@name)
(declare-fun T.DataPath___unnamed_16_eac6dbea () T@name)
(declare-fun T.BufferSize___unnamed_16_eac6dbea () T@name)
(declare-fun T.Buffer___unnamed_16_eac6dbea () T@name)
(declare-fun T.Length___unnamed_16_f6cae4c2 () T@name)
(declare-fun T.EaList___unnamed_16_f6cae4c2 () T@name)
(declare-fun T.EaListLength___unnamed_16_f6cae4c2 () T@name)
(declare-fun T.EaIndex___unnamed_16_f6cae4c2 () T@name)
(declare-fun T.Length___unnamed_16_fe36e4f4 () T@name)
(declare-fun T.StartSid___unnamed_16_fe36e4f4 () T@name)
(declare-fun T.SidList___unnamed_16_fe36e4f4 () T@name)
(declare-fun T.SidListLength___unnamed_16_fe36e4f4 () T@name)
(declare-fun T.Abandoned___unnamed_1_29794256 () T@name)
(declare-fun T.Absolute___unnamed_1_29794256 () T@name)
(declare-fun T.NpxIrql___unnamed_1_29794256 () T@name)
(declare-fun T.Signalling___unnamed_1_29794256 () T@name)
(declare-fun T.Inserted___unnamed_1_2dc63b48 () T@name)
(declare-fun T.DebugActive___unnamed_1_2dc63b48 () T@name)
(declare-fun T.DpcActive___unnamed_1_2dc63b48 () T@name)
(declare-fun T.Size___unnamed_1_2ef8da39 () T@name)
(declare-fun T.Hand___unnamed_1_2ef8da39 () T@name)
(declare-fun T.Lock___unnamed_1_faa7dc71 () T@name)
(declare-fun T.MinimumVector___unnamed_20_f4d2e6d8 () T@name)
(declare-fun T.MaximumVector___unnamed_20_f4d2e6d8 () T@name)
(declare-fun T.AffinityPolicy___unnamed_20_f4d2e6d8 () T@name)
(declare-fun T.PriorityPolicy___unnamed_20_f4d2e6d8 () T@name)
(declare-fun T.TargetedProcessors___unnamed_20_f4d2e6d8 () T@name)
(declare-fun T.Length___unnamed_24_41cbc8c0 () T@name)
(declare-fun T.Alignment___unnamed_24_41cbc8c0 () T@name)
(declare-fun T.MinimumAddress___unnamed_24_41cbc8c0 () T@name)
(declare-fun T.MaximumAddress___unnamed_24_41cbc8c0 () T@name)
(declare-fun T.Length48___unnamed_24_5419c914 () T@name)
(declare-fun T.Alignment48___unnamed_24_5419c914 () T@name)
(declare-fun T.MinimumAddress___unnamed_24_5419c914 () T@name)
(declare-fun T.MaximumAddress___unnamed_24_5419c914 () T@name)
(declare-fun T.Length___unnamed_24_67a5ff10 () T@name)
(declare-fun T.Alignment___unnamed_24_67a5ff10 () T@name)
(declare-fun T.MinimumAddress___unnamed_24_67a5ff10 () T@name)
(declare-fun T.MaximumAddress___unnamed_24_67a5ff10 () T@name)
(declare-fun T.Port___unnamed_24_72c3976e () T@name)
(declare-fun T.Memory___unnamed_24_72c3976e () T@name)
(declare-fun T.Interrupt___unnamed_24_72c3976e () T@name)
(declare-fun T.Dma___unnamed_24_72c3976e () T@name)
(declare-fun T.Generic___unnamed_24_72c3976e () T@name)
(declare-fun T.DevicePrivate___unnamed_24_72c3976e () T@name)
(declare-fun T.BusNumber___unnamed_24_72c3976e () T@name)
(declare-fun T.ConfigData___unnamed_24_72c3976e () T@name)
(declare-fun T.Memory40___unnamed_24_72c3976e () T@name)
(declare-fun T.Memory48___unnamed_24_72c3976e () T@name)
(declare-fun T.Memory64___unnamed_24_72c3976e () T@name)
(declare-fun T.Length64___unnamed_24_a26050bb () T@name)
(declare-fun T.Alignment64___unnamed_24_a26050bb () T@name)
(declare-fun T.MinimumAddress___unnamed_24_a26050bb () T@name)
(declare-fun T.MaximumAddress___unnamed_24_a26050bb () T@name)
(declare-fun T.Length___unnamed_24_b8f476db () T@name)
(declare-fun T.Alignment___unnamed_24_b8f476db () T@name)
(declare-fun T.MinimumAddress___unnamed_24_b8f476db () T@name)
(declare-fun T.MaximumAddress___unnamed_24_b8f476db () T@name)
(declare-fun T.Length40___unnamed_24_d09044b4 () T@name)
(declare-fun T.Alignment40___unnamed_24_d09044b4 () T@name)
(declare-fun T.MinimumAddress___unnamed_24_d09044b4 () T@name)
(declare-fun T.MaximumAddress___unnamed_24_d09044b4 () T@name)
(declare-fun T.ReplaceIfExists___unnamed_2_46cc4597 () T@name)
(declare-fun T.AdvanceOnly___unnamed_2_46cc4597 () T@name)
(declare-fun T.__unnamed_16_e70c268b___unnamed_40_7218f704 () T@name)
(declare-fun T.Thread___unnamed_40_7218f704 () T@name)
(declare-fun T.AuxiliaryBuffer___unnamed_40_7218f704 () T@name)
(declare-fun T.__unnamed_12_b43e8de8___unnamed_40_7218f704 () T@name)
(declare-fun T.OriginalFileObject___unnamed_40_7218f704 () T@name)
(declare-fun T.ListEntry___unnamed_40_c55c9377 () T@name)
(declare-fun T.Wcb___unnamed_40_c55c9377 () T@name)
(declare-fun T.InitialPrivilegeSet___unnamed_44_5584090d () T@name)
(declare-fun T.PrivilegeSet___unnamed_44_5584090d () T@name)
(declare-fun T.Overlay___unnamed_48_cf99b13f () T@name)
(declare-fun T.Apc___unnamed_48_cf99b13f () T@name)
(declare-fun T.CompletionKey___unnamed_48_cf99b13f () T@name)
(declare-fun T.PowerState___unnamed_4_069846fb () T@name)
(declare-fun T.IdType___unnamed_4_224c32f4 () T@name)
(declare-fun T.Capabilities___unnamed_4_2de698da () T@name)
(declare-fun T.__unnamed_4_c3479730___unnamed_4_3a2fdc5e () T@name)
(declare-fun T.ContextAsUlong___unnamed_4_3a2fdc5e () T@name)
(declare-fun T.Length___unnamed_4_3a4c1a13 () T@name)
(declare-fun T.__unnamed_2_46cc4597___unnamed_4_43913aa5 () T@name)
(declare-fun T.ClusterCount___unnamed_4_43913aa5 () T@name)
(declare-fun T.DeleteHandle___unnamed_4_43913aa5 () T@name)
(declare-fun T.UserApcRoutine___unnamed_4_4e8dd2ba () T@name)
(declare-fun T.IssuingProcess___unnamed_4_4e8dd2ba () T@name)
(declare-fun T.Srb___unnamed_4_52603077 () T@name)
(declare-fun T.Address___unnamed_4_52c594f7 () T@name)
(declare-fun T.CreatorBackTraceIndex___unnamed_4_52c594f7 () T@name)
(declare-fun T.Type___unnamed_4_5ca00198 () T@name)
(declare-fun T.__unnamed_1_29794256___unnamed_4_5ca00198 () T@name)
(declare-fun T.__unnamed_1_2ef8da39___unnamed_4_5ca00198 () T@name)
(declare-fun T.__unnamed_1_2dc63b48___unnamed_4_5ca00198 () T@name)
(declare-fun T.MasterIrp___unnamed_4_6ac6463c () T@name)
(declare-fun T.IrpCount___unnamed_4_6ac6463c () T@name)
(declare-fun T.SystemBuffer___unnamed_4_6ac6463c () T@name)
(declare-fun T.OwnerCount___unnamed_4_6f9ac8e1 () T@name)
(declare-fun T.TableSize___unnamed_4_6f9ac8e1 () T@name)
(declare-fun T.PowerSequence___unnamed_4_7a02167b () T@name)
(declare-fun T.SystemContext___unnamed_4_7d9d0c7e () T@name)
(declare-fun T.SystemPowerStateContext___unnamed_4_7d9d0c7e () T@name)
(declare-fun T.IoResourceRequirementList___unnamed_4_82f7a864 () T@name)
(declare-fun T.Length___unnamed_4_9aec220b () T@name)
(declare-fun T.__unnamed_4_5ca00198___unnamed_4_a97c65a1 () T@name)
(declare-fun T.Lock___unnamed_4_a97c65a1 () T@name)
(declare-fun T.Reserved1___unnamed_4_c3479730 () T@name)
(declare-fun T.TargetSystemState___unnamed_4_c3479730 () T@name)
(declare-fun T.EffectiveSystemState___unnamed_4_c3479730 () T@name)
(declare-fun T.CurrentSystemState___unnamed_4_c3479730 () T@name)
(declare-fun T.IgnoreHibernationPath___unnamed_4_c3479730 () T@name)
(declare-fun T.PseudoTransition___unnamed_4_c3479730 () T@name)
(declare-fun T.Reserved2___unnamed_4_c3479730 () T@name)
(declare-fun T.Status___unnamed_4_d99b6e2b () T@name)
(declare-fun T.Pointer___unnamed_4_d99b6e2b () T@name)
(declare-fun T.CurrentStackLocation___unnamed_4_f19b65c1 () T@name)
(declare-fun T.PacketType___unnamed_4_f19b65c1 () T@name)
(declare-fun T.Type___unnamed_4_fa10fc16 () T@name)
(declare-fun T.SecurityInformation___unnamed_8_01efa60d () T@name)
(declare-fun T.Length___unnamed_8_01efa60d () T@name)
(declare-fun T.MinimumChannel___unnamed_8_08d4cef8 () T@name)
(declare-fun T.MaximumChannel___unnamed_8_08d4cef8 () T@name)
(declare-fun T.__unnamed_4_4e8dd2ba___unnamed_8_0a898c0c () T@name)
(declare-fun T.UserApcContext___unnamed_8_0a898c0c () T@name)
(declare-fun T.SecurityInformation___unnamed_8_1330f93a () T@name)
(declare-fun T.SecurityDescriptor___unnamed_8_1330f93a () T@name)
(declare-fun T.AsynchronousParameters___unnamed_8_181d0de9 () T@name)
(declare-fun T.AllocationSize___unnamed_8_181d0de9 () T@name)
(declare-fun T.Vpb___unnamed_8_4812764d () T@name)
(declare-fun T.DeviceObject___unnamed_8_4812764d () T@name)
(declare-fun T.Length___unnamed_8_559a91e6 () T@name)
(declare-fun T.FsInformationClass___unnamed_8_559a91e6 () T@name)
(declare-fun T.Length___unnamed_8_5845b309 () T@name)
(declare-fun T.FileInformationClass___unnamed_8_5845b309 () T@name)
(declare-fun T.LowPart___unnamed_8_58ee4a31 () T@name)
(declare-fun T.HighPart___unnamed_8_58ee4a31 () T@name)
(declare-fun T.AllocatedResources___unnamed_8_61acf4ce () T@name)
(declare-fun T.AllocatedResourcesTranslated___unnamed_8_61acf4ce () T@name)
(declare-fun T.DeviceTextType___unnamed_8_6acfee04 () T@name)
(declare-fun T.LocaleId___unnamed_8_6acfee04 () T@name)
(declare-fun T.Length___unnamed_8_7f26a9dd () T@name)
(declare-fun T.CompletionFilter___unnamed_8_7f26a9dd () T@name)
(declare-fun T.Vpb___unnamed_8_87add0bd () T@name)
(declare-fun T.DeviceObject___unnamed_8_87add0bd () T@name)
(declare-fun T.InPath___unnamed_8_b2773e4c () T@name)
(declare-fun T.Reserved___unnamed_8_b2773e4c () T@name)
(declare-fun T.Type___unnamed_8_b2773e4c () T@name)
(declare-fun T.Length___unnamed_8_de890d4e () T@name)
(declare-fun T.FsInformationClass___unnamed_8_de890d4e () T@name)
(declare-fun T.LowPart___unnamed_8_ef9ba0d3 () T@name)
(declare-fun T.HighPart___unnamed_8_ef9ba0d3 () T@name)
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
(declare-fun T.A37CHAR () T@name)
(declare-fun T.A3UCHAR () T@name)
(declare-fun T.A3UINT4 () T@name)
(declare-fun T.A3_LUID_AND_ATTRIBUTES () T@name)
(declare-fun T.A40CHAR () T@name)
(declare-fun T.A4PVOID () T@name)
(declare-fun T.A4UINT4 () T@name)
(declare-fun T.A5_DEVICE_POWER_STATE () T@name)
(declare-fun T.A65CHAR () T@name)
(declare-fun T.A75CHAR () T@name)
(declare-fun T.A76CHAR () T@name)
(declare-fun T.A7UINT2 () T@name)
(declare-fun T.A7_DEVICE_POWER_STATE () T@name)
(declare-fun T.A83CHAR () T@name)
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
(declare-fun T.PA2UINT2 () T@name)
(declare-fun T.PA37CHAR () T@name)
(declare-fun T.PA40CHAR () T@name)
(declare-fun T.PA4UINT4 () T@name)
(declare-fun T.PA65CHAR () T@name)
(declare-fun T.PA75CHAR () T@name)
(declare-fun T.PA76CHAR () T@name)
(declare-fun T.PA7UINT2 () T@name)
(declare-fun T.PA83CHAR () T@name)
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
(declare-fun T.PPUINT2 () T@name)
(declare-fun T.PPUINT4 () T@name)
(declare-fun T.PPVOID () T@name)
(declare-fun T.PP_DEVICE_EXTENSION () T@name)
(declare-fun T.PP_DEVICE_OBJECT () T@name)
(declare-fun T.PP_DRIVER_OBJECT () T@name)
(declare-fun T.PP_ERESOURCE () T@name)
(declare-fun T.PP_FAST_MUTEX () T@name)
(declare-fun T.PP_IO_REMOVE_LOCK () T@name)
(declare-fun T.PP_LIST_ENTRY () T@name)
(declare-fun T.PP_MDL () T@name)
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
(declare-fun T.P_IO_REMOVE_LOCK () T@name)
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
(declare-fun T.P_KEYBOARD_INPUT_DATA () T@name)
(declare-fun T.P_KSEMAPHORE () T@name)
(declare-fun T.P_KTHREAD () T@name)
(declare-fun T.P_LARGE_INTEGER () T@name)
(declare-fun T.P_LIST_ENTRY () T@name)
(declare-fun T.P_MDL () T@name)
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
(declare-fun T._KEYBOARD_ATTRIBUTES () T@name)
(declare-fun T._KEYBOARD_ID () T@name)
(declare-fun T._KEYBOARD_INDICATOR_PARAMETERS () T@name)
(declare-fun T._KEYBOARD_INPUT_DATA () T@name)
(declare-fun T._KEYBOARD_TYPEMATIC_PARAMETERS () T@name)
(declare-fun T._KSEMAPHORE () T@name)
(declare-fun T._KTHREAD () T@name)
(declare-fun T._LARGE_INTEGER () T@name)
(declare-fun T._LIST_ENTRY () T@name)
(declare-fun T._LUID () T@name)
(declare-fun T._LUID_AND_ATTRIBUTES () T@name)
(declare-fun T._MDL () T@name)
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
(declare-fun T.__unnamed_12_0d6a30de () T@name)
(declare-fun T.__unnamed_12_17f5c211 () T@name)
(declare-fun T.__unnamed_12_1fb42e39 () T@name)
(declare-fun T.__unnamed_12_2a1563c6 () T@name)
(declare-fun T.__unnamed_12_31347272 () T@name)
(declare-fun T.__unnamed_12_429aadc0 () T@name)
(declare-fun T.__unnamed_12_4719de1a () T@name)
(declare-fun T.__unnamed_12_4be56faa () T@name)
(declare-fun T.__unnamed_12_5ce25b92 () T@name)
(declare-fun T.__unnamed_12_7a698b72 () T@name)
(declare-fun T.__unnamed_12_87c0de8d () T@name)
(declare-fun T.__unnamed_12_98bfc55a () T@name)
(declare-fun T.__unnamed_12_ab1bd9d7 () T@name)
(declare-fun T.__unnamed_12_b0429be9 () T@name)
(declare-fun T.__unnamed_12_b43e8de8 () T@name)
(declare-fun T.__unnamed_12_bfdb39ee () T@name)
(declare-fun T.__unnamed_12_cd42b3c3 () T@name)
(declare-fun T.__unnamed_12_e668effc () T@name)
(declare-fun T.__unnamed_12_e80d029e () T@name)
(declare-fun T.__unnamed_16_07c0bcc5 () T@name)
(declare-fun T.__unnamed_16_29cb9f2f () T@name)
(declare-fun T.__unnamed_16_30f11dbf () T@name)
(declare-fun T.__unnamed_16_35034f68 () T@name)
(declare-fun T.__unnamed_16_487a9498 () T@name)
(declare-fun T.__unnamed_16_5f6a8844 () T@name)
(declare-fun T.__unnamed_16_7177b9f3 () T@name)
(declare-fun T.__unnamed_16_88e91ef6 () T@name)
(declare-fun T.__unnamed_16_8c506c98 () T@name)
(declare-fun T.__unnamed_16_9ac2e5f8 () T@name)
(declare-fun T.__unnamed_16_b93842ad () T@name)
(declare-fun T.__unnamed_16_b9c62eab () T@name)
(declare-fun T.__unnamed_16_bb584060 () T@name)
(declare-fun T.__unnamed_16_dba55c7c () T@name)
(declare-fun T.__unnamed_16_e70c268b () T@name)
(declare-fun T.__unnamed_16_e734d694 () T@name)
(declare-fun T.__unnamed_16_eac6dbea () T@name)
(declare-fun T.__unnamed_16_f6cae4c2 () T@name)
(declare-fun T.__unnamed_16_fe36e4f4 () T@name)
(declare-fun T.__unnamed_1_29794256 () T@name)
(declare-fun T.__unnamed_1_2dc63b48 () T@name)
(declare-fun T.__unnamed_1_2ef8da39 () T@name)
(declare-fun T.__unnamed_1_faa7dc71 () T@name)
(declare-fun T.__unnamed_20_f4d2e6d8 () T@name)
(declare-fun T.__unnamed_24_41cbc8c0 () T@name)
(declare-fun T.__unnamed_24_5419c914 () T@name)
(declare-fun T.__unnamed_24_67a5ff10 () T@name)
(declare-fun T.__unnamed_24_72c3976e () T@name)
(declare-fun T.__unnamed_24_a26050bb () T@name)
(declare-fun T.__unnamed_24_b8f476db () T@name)
(declare-fun T.__unnamed_24_d09044b4 () T@name)
(declare-fun T.__unnamed_2_46cc4597 () T@name)
(declare-fun T.__unnamed_40_7218f704 () T@name)
(declare-fun T.__unnamed_40_c55c9377 () T@name)
(declare-fun T.__unnamed_44_5584090d () T@name)
(declare-fun T.__unnamed_48_cf99b13f () T@name)
(declare-fun T.__unnamed_4_069846fb () T@name)
(declare-fun T.__unnamed_4_224c32f4 () T@name)
(declare-fun T.__unnamed_4_2de698da () T@name)
(declare-fun T.__unnamed_4_3a2fdc5e () T@name)
(declare-fun T.__unnamed_4_3a4c1a13 () T@name)
(declare-fun T.__unnamed_4_43913aa5 () T@name)
(declare-fun T.__unnamed_4_4e8dd2ba () T@name)
(declare-fun T.__unnamed_4_52603077 () T@name)
(declare-fun T.__unnamed_4_52c594f7 () T@name)
(declare-fun T.__unnamed_4_5ca00198 () T@name)
(declare-fun T.__unnamed_4_6ac6463c () T@name)
(declare-fun T.__unnamed_4_6f9ac8e1 () T@name)
(declare-fun T.__unnamed_4_7a02167b () T@name)
(declare-fun T.__unnamed_4_7d9d0c7e () T@name)
(declare-fun T.__unnamed_4_82f7a864 () T@name)
(declare-fun T.__unnamed_4_9aec220b () T@name)
(declare-fun T.__unnamed_4_a97c65a1 () T@name)
(declare-fun T.__unnamed_4_c3479730 () T@name)
(declare-fun T.__unnamed_4_d99b6e2b () T@name)
(declare-fun T.__unnamed_4_f19b65c1 () T@name)
(declare-fun T.__unnamed_4_fa10fc16 () T@name)
(declare-fun T.__unnamed_8_01efa60d () T@name)
(declare-fun T.__unnamed_8_08d4cef8 () T@name)
(declare-fun T.__unnamed_8_0a898c0c () T@name)
(declare-fun T.__unnamed_8_1330f93a () T@name)
(declare-fun T.__unnamed_8_181d0de9 () T@name)
(declare-fun T.__unnamed_8_4812764d () T@name)
(declare-fun T.__unnamed_8_559a91e6 () T@name)
(declare-fun T.__unnamed_8_5845b309 () T@name)
(declare-fun T.__unnamed_8_58ee4a31 () T@name)
(declare-fun T.__unnamed_8_61acf4ce () T@name)
(declare-fun T.__unnamed_8_6acfee04 () T@name)
(declare-fun T.__unnamed_8_7f26a9dd () T@name)
(declare-fun T.__unnamed_8_87add0bd () T@name)
(declare-fun T.__unnamed_8_b2773e4c () T@name)
(declare-fun T.__unnamed_8_de890d4e () T@name)
(declare-fun T.__unnamed_8_ef9ba0d3 () T@name)
(declare-fun Globals () Int)
(declare-fun BOOGIE_LARGE_INT_4294967273 () Int)
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
(declare-fun Abandoned___unnamed_1_29794256Inv (Int) Int)
(declare-fun Absolute___unnamed_1_29794256Inv (Int) Int)
(declare-fun Common__IO_REMOVE_LOCKInv (Int) Int)
(declare-fun DebugActive___unnamed_1_2dc63b48Inv (Int) Int)
(declare-fun DpcActive___unnamed_1_2dc63b48Inv (Int) Int)
(declare-fun Flink__LIST_ENTRYInv (Int) Int)
(declare-fun GuidCount__WMILIB_CONTEXTInv (Int) Int)
(declare-fun Hand___unnamed_1_2ef8da39Inv (Int) Int)
(declare-fun Header__KEVENTInv (Int) Int)
(declare-fun Inserted___unnamed_1_2dc63b48Inv (Int) Int)
(declare-fun KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun Length__UNICODE_STRINGInv (Int) Int)
(declare-fun Lock___unnamed_4_a97c65a1Inv (Int) Int)
(declare-fun NpxIrql___unnamed_1_29794256Inv (Int) Int)
(declare-fun Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv (Int) Int)
(declare-fun Self__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun Signalling___unnamed_1_29794256Inv (Int) Int)
(declare-fun Signature__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun Size___unnamed_1_2ef8da39Inv (Int) Int)
(declare-fun Type__KEYBOARD_IDInv (Int) Int)
(declare-fun Type___unnamed_4_5ca00198Inv (Int) Int)
(declare-fun UnitId__KEYBOARD_INDICATOR_PARAMETERSInv (Int) Int)
(declare-fun UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv (Int) Int)
(declare-fun __unnamed_4_5ca00198___unnamed_4_a97c65a1Inv (Int) Int)
(declare-fun __unnamed_4_a97c65a1__DISPATCHER_HEADERInv (Int) Int)
(declare-fun MINUS_LEFT_PTR (Int Int Int) Int)
(declare-fun Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv (Int) Int)
(declare-fun Subtype__KEYBOARD_IDInv (Int) Int)
(declare-fun __unnamed_1_29794256___unnamed_4_5ca00198Inv (Int) Int)
(declare-fun KeyboardMode__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv (Int) Int)
(declare-fun MaximumLength__UNICODE_STRINGInv (Int) Int)
(declare-fun Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv (Int) Int)
(declare-fun __unnamed_1_2ef8da39___unnamed_4_5ca00198Inv (Int) Int)
(declare-fun __unnamed_1_2dc63b48___unnamed_4_5ca00198Inv (Int) Int)
(declare-fun Blink__LIST_ENTRYInv (Int) Int)
(declare-fun Buffer__UNICODE_STRINGInv (Int) Int)
(declare-fun Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv (Int) Int)
(declare-fun GrandMaster__GLOBALSInv (Int) Int)
(declare-fun GuidList__WMILIB_CONTEXTInv (Int) Int)
(declare-fun HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv (Int) Int)
(declare-fun NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun SignalState__DISPATCHER_HEADERInv (Int) Int)
(declare-fun TrueClassDevice__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun NumberOfIndicators__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun QueryWmiRegInfo__WMILIB_CONTEXTInv (Int) Int)
(declare-fun RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv (Int) Int)
(declare-fun TopPort__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun WaitListHead__DISPATCHER_HEADERInv (Int) Int)
(declare-fun InputDataQueueLength__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun PDO__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun QueryWmiDataBlock__WMILIB_CONTEXTInv (Int) Int)
(declare-fun AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun RemoveLock__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SetWmiDataBlock__WMILIB_CONTEXTInv (Int) Int)
(declare-fun LockList__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun SetWmiDataItem__WMILIB_CONTEXTInv (Int) Int)
(declare-fun KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv (Int) Int)
(declare-fun Dbg__IO_REMOVE_LOCKInv (Int) Int)
(declare-fun ExecuteWmiMethod__WMILIB_CONTEXTInv (Int) Int)
(declare-fun Mutex__GLOBALSInv (Int) Int)
(declare-fun Flags__DEVICE_OBJECTInv (Int) Int)
(declare-fun Spin__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun WmiFunctionControl__WMILIB_CONTEXTInv (Int) Int)
(declare-fun LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun DeviceExtension__DEVICE_OBJECTInv (Int) Int)
(declare-fun Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv (Int) Int)
(declare-fun ConnectOneClassToOnePort__GLOBALSInv (Int) Int)
(declare-fun PnP__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun Started__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun AllowDisable__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun WaitWakeSpinLock__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun TrustedSubsystemCount__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun InputCount__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SymbolicLinkName__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun InputData__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun DataIn__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun DataOut__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun KeyboardAttributes__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun IndicatorParameters__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SpinLock__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun ReadQueue__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SequenceNumber__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun DeviceState__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SystemState__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun UnitId__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun WmiLibInfo__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SystemToDeviceState__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun MinDeviceWakeState__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun MinSystemWakeState__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun WaitWakeIrp__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun ExtraWaitWakeIrp__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun TargetNotifyHandle__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun Link__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun File__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun Enabled__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun OkayToLogOverflow__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun WaitWakeEnabled__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun SurpriseRemoved__DEVICE_EXTENSIONInv (Int) Int)
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
(declare-fun Abandoned___unnamed_1_29794256 (Int) Int)
(declare-fun Absolute___unnamed_1_29794256 (Int) Int)
(declare-fun Common__IO_REMOVE_LOCK (Int) Int)
(declare-fun DebugActive___unnamed_1_2dc63b48 (Int) Int)
(declare-fun DpcActive___unnamed_1_2dc63b48 (Int) Int)
(declare-fun Flink__LIST_ENTRY (Int) Int)
(declare-fun GuidCount__WMILIB_CONTEXT (Int) Int)
(declare-fun Hand___unnamed_1_2ef8da39 (Int) Int)
(declare-fun Header__KEVENT (Int) Int)
(declare-fun Inserted___unnamed_1_2dc63b48 (Int) Int)
(declare-fun KeyboardIdentifier__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun Length__UNICODE_STRING (Int) Int)
(declare-fun Lock___unnamed_4_a97c65a1 (Int) Int)
(declare-fun NpxIrql___unnamed_1_29794256 (Int) Int)
(declare-fun Removed__IO_REMOVE_LOCK_COMMON_BLOCK (Int) Int)
(declare-fun Self__DEVICE_EXTENSION (Int) Int)
(declare-fun Signalling___unnamed_1_29794256 (Int) Int)
(declare-fun Signature__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun Size___unnamed_1_2ef8da39 (Int) Int)
(declare-fun Type__KEYBOARD_ID (Int) Int)
(declare-fun Type___unnamed_4_5ca00198 (Int) Int)
(declare-fun UnitId__KEYBOARD_INDICATOR_PARAMETERS (Int) Int)
(declare-fun UnitId__KEYBOARD_TYPEMATIC_PARAMETERS (Int) Int)
(declare-fun __unnamed_4_5ca00198___unnamed_4_a97c65a1 (Int) Int)
(declare-fun __unnamed_4_a97c65a1__DISPATCHER_HEADER (Int) Int)
(declare-fun Reserved__IO_REMOVE_LOCK_COMMON_BLOCK (Int) Int)
(declare-fun Subtype__KEYBOARD_ID (Int) Int)
(declare-fun __unnamed_1_29794256___unnamed_4_5ca00198 (Int) Int)
(declare-fun KeyboardMode__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun LedFlags__KEYBOARD_INDICATOR_PARAMETERS (Int) Int)
(declare-fun MaximumLength__UNICODE_STRING (Int) Int)
(declare-fun Rate__KEYBOARD_TYPEMATIC_PARAMETERS (Int) Int)
(declare-fun __unnamed_1_2ef8da39___unnamed_4_5ca00198 (Int) Int)
(declare-fun __unnamed_1_2dc63b48___unnamed_4_5ca00198 (Int) Int)
(declare-fun Blink__LIST_ENTRY (Int) Int)
(declare-fun Buffer__UNICODE_STRING (Int) Int)
(declare-fun Delay__KEYBOARD_TYPEMATIC_PARAMETERS (Int) Int)
(declare-fun GrandMaster__GLOBALS (Int) Int)
(declare-fun GuidList__WMILIB_CONTEXT (Int) Int)
(declare-fun HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun IoCount__IO_REMOVE_LOCK_COMMON_BLOCK (Int) Int)
(declare-fun NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun SignalState__DISPATCHER_HEADER (Int) Int)
(declare-fun TrueClassDevice__DEVICE_EXTENSION (Int) Int)
(declare-fun NumberOfIndicators__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun NumberOfKeysTotal__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun QueryWmiRegInfo__WMILIB_CONTEXT (Int) Int)
(declare-fun RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK (Int) Int)
(declare-fun TopPort__DEVICE_EXTENSION (Int) Int)
(declare-fun WaitListHead__DISPATCHER_HEADER (Int) Int)
(declare-fun InputDataQueueLength__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun PDO__DEVICE_EXTENSION (Int) Int)
(declare-fun QueryWmiDataBlock__WMILIB_CONTEXT (Int) Int)
(declare-fun AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun KeyRepeatMinimum__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun RemoveLock__DEVICE_EXTENSION (Int) Int)
(declare-fun SetWmiDataBlock__WMILIB_CONTEXT (Int) Int)
(declare-fun LockList__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun SetWmiDataItem__WMILIB_CONTEXT (Int) Int)
(declare-fun KeyRepeatMaximum__KEYBOARD_ATTRIBUTES (Int) Int)
(declare-fun Dbg__IO_REMOVE_LOCK (Int) Int)
(declare-fun ExecuteWmiMethod__WMILIB_CONTEXT (Int) Int)
(declare-fun Mutex__GLOBALS (Int) Int)
(declare-fun Flags__DEVICE_OBJECT (Int) Int)
(declare-fun Spin__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun WmiFunctionControl__WMILIB_CONTEXT (Int) Int)
(declare-fun LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun Reserved1__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun DeviceExtension__DEVICE_OBJECT (Int) Int)
(declare-fun Reserved2__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun Blocks__IO_REMOVE_LOCK_DBG_BLOCK (Int) Int)
(declare-fun ConnectOneClassToOnePort__GLOBALS (Int) Int)
(declare-fun PnP__DEVICE_EXTENSION (Int) Int)
(declare-fun Started__DEVICE_EXTENSION (Int) Int)
(declare-fun AllowDisable__DEVICE_EXTENSION (Int) Int)
(declare-fun WaitWakeSpinLock__DEVICE_EXTENSION (Int) Int)
(declare-fun TrustedSubsystemCount__DEVICE_EXTENSION (Int) Int)
(declare-fun InputCount__DEVICE_EXTENSION (Int) Int)
(declare-fun SymbolicLinkName__DEVICE_EXTENSION (Int) Int)
(declare-fun InputData__DEVICE_EXTENSION (Int) Int)
(declare-fun DataIn__DEVICE_EXTENSION (Int) Int)
(declare-fun DataOut__DEVICE_EXTENSION (Int) Int)
(declare-fun KeyboardAttributes__DEVICE_EXTENSION (Int) Int)
(declare-fun IndicatorParameters__DEVICE_EXTENSION (Int) Int)
(declare-fun SpinLock__DEVICE_EXTENSION (Int) Int)
(declare-fun ReadQueue__DEVICE_EXTENSION (Int) Int)
(declare-fun SequenceNumber__DEVICE_EXTENSION (Int) Int)
(declare-fun DeviceState__DEVICE_EXTENSION (Int) Int)
(declare-fun SystemState__DEVICE_EXTENSION (Int) Int)
(declare-fun UnitId__DEVICE_EXTENSION (Int) Int)
(declare-fun WmiLibInfo__DEVICE_EXTENSION (Int) Int)
(declare-fun SystemToDeviceState__DEVICE_EXTENSION (Int) Int)
(declare-fun MinDeviceWakeState__DEVICE_EXTENSION (Int) Int)
(declare-fun MinSystemWakeState__DEVICE_EXTENSION (Int) Int)
(declare-fun WaitWakeIrp__DEVICE_EXTENSION (Int) Int)
(declare-fun ExtraWaitWakeIrp__DEVICE_EXTENSION (Int) Int)
(declare-fun TargetNotifyHandle__DEVICE_EXTENSION (Int) Int)
(declare-fun Link__DEVICE_EXTENSION (Int) Int)
(declare-fun File__DEVICE_EXTENSION (Int) Int)
(declare-fun Enabled__DEVICE_EXTENSION (Int) Int)
(declare-fun OkayToLogOverflow__DEVICE_EXTENSION (Int) Int)
(declare-fun WaitWakeEnabled__DEVICE_EXTENSION (Int) Int)
(declare-fun SurpriseRemoved__DEVICE_EXTENSION (Int) Int)
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
(declare-fun _S_Abandoned___unnamed_1_29794256 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Abandoned___unnamed_1_29794256Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Absolute___unnamed_1_29794256 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Absolute___unnamed_1_29794256Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_AllowDisable__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_AllowDisable__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_BaseClassName__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_BaseClassName__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Blink__LIST_ENTRY (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Blink__LIST_ENTRYInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Blocks__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Buffer__UNICODE_STRING (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Buffer__UNICODE_STRINGInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Common__IO_REMOVE_LOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Common__IO_REMOVE_LOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ConnectOneClassToOnePort__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ConnectOneClassToOnePort__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataIn__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataIn__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataOut__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DataOut__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Dbg__IO_REMOVE_LOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Dbg__IO_REMOVE_LOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DebugActive___unnamed_1_2dc63b48 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DebugActive___unnamed_1_2dc63b48Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Delay__KEYBOARD_TYPEMATIC_PARAMETERS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DeviceExtension__DEVICE_OBJECT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DeviceExtension__DEVICE_OBJECTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DeviceState__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DeviceState__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DpcActive___unnamed_1_2dc63b48 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_DpcActive___unnamed_1_2dc63b48Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Enabled__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Enabled__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ExecuteWmiMethod__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ExecuteWmiMethod__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ExtraWaitWakeIrp__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ExtraWaitWakeIrp__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_File__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_File__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flags__DEVICE_OBJECT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flags__DEVICE_OBJECTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flink__LIST_ENTRY (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Flink__LIST_ENTRYInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GrandMaster__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GrandMaster__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GuidCount__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GuidCount__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GuidList__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_GuidList__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Hand___unnamed_1_2ef8da39 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Hand___unnamed_1_2ef8da39Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Header__KEVENT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Header__KEVENTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_IndicatorParameters__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_IndicatorParameters__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputCount__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputCount__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputDataQueueLength__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputDataQueueLength__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputData__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_InputData__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Inserted___unnamed_1_2dc63b48 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Inserted___unnamed_1_2dc63b48Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyboardAttributes__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyboardAttributes__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyboardIdentifier__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyboardMode__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_KeyboardMode__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LedFlags__KEYBOARD_INDICATOR_PARAMETERS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LegacyDeviceList__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LegacyDeviceList__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Length__UNICODE_STRING (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Length__UNICODE_STRINGInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Link__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Link__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LockList__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LockList__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Lock___unnamed_4_a97c65a1 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Lock___unnamed_4_a97c65a1Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MaximumLength__UNICODE_STRING (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MaximumLength__UNICODE_STRINGInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MinDeviceWakeState__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MinDeviceWakeState__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MinSystemWakeState__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_MinSystemWakeState__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Mutex__GLOBALS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Mutex__GLOBALSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NpxIrql___unnamed_1_29794256 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NpxIrql___unnamed_1_29794256Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberOfIndicators__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberOfIndicators__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTES (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_OkayToLogOverflow__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_OkayToLogOverflow__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PDO__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PDO__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PnP__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_PnP__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_QueryWmiDataBlock__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_QueryWmiDataBlock__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_QueryWmiRegInfo__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_QueryWmiRegInfo__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Rate__KEYBOARD_TYPEMATIC_PARAMETERS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ReadQueue__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_ReadQueue__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_RemoveLock__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_RemoveLock__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Removed__IO_REMOVE_LOCK_COMMON_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Self__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Self__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SequenceNumber__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SequenceNumber__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SetWmiDataBlock__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SetWmiDataBlock__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SetWmiDataItem__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SetWmiDataItem__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SignalState__DISPATCHER_HEADER (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SignalState__DISPATCHER_HEADERInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Signalling___unnamed_1_29794256 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Signalling___unnamed_1_29794256Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Signature__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Signature__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Size___unnamed_1_2ef8da39 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Size___unnamed_1_2ef8da39Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SpinLock__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SpinLock__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Spin__IO_REMOVE_LOCK_DBG_BLOCK (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Spin__IO_REMOVE_LOCK_DBG_BLOCKInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Started__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Started__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Subtype__KEYBOARD_ID (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Subtype__KEYBOARD_IDInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SurpriseRemoved__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SurpriseRemoved__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SymbolicLinkName__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SymbolicLinkName__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SystemState__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SystemState__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SystemToDeviceState__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_SystemToDeviceState__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TargetNotifyHandle__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TargetNotifyHandle__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TopPort__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TopPort__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TrueClassDevice__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TrueClassDevice__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TrustedSubsystemCount__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TrustedSubsystemCount__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Type__KEYBOARD_ID (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Type__KEYBOARD_IDInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Type___unnamed_4_5ca00198 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Type___unnamed_4_5ca00198Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__KEYBOARD_INDICATOR_PARAMETERS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__KEYBOARD_INDICATOR_PARAMETERSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERS (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitListHead__DISPATCHER_HEADER (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitListHead__DISPATCHER_HEADERInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeEnabled__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeEnabled__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeIrp__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeIrp__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeSpinLock__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WaitWakeSpinLock__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WmiFunctionControl__WMILIB_CONTEXT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WmiFunctionControl__WMILIB_CONTEXTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WmiLibInfo__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_WmiLibInfo__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_1_29794256___unnamed_4_5ca00198 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_1_29794256___unnamed_4_5ca00198Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_1_2dc63b48___unnamed_4_5ca00198 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_1_2dc63b48___unnamed_4_5ca00198Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_1_2ef8da39___unnamed_4_5ca00198 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_1_2ef8da39___unnamed_4_5ca00198Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_4_5ca00198___unnamed_4_a97c65a1 (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_4_5ca00198___unnamed_4_a97c65a1Inv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_4_a97c65a1__DISPATCHER_HEADER (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S___unnamed_4_a97c65a1__DISPATCHER_HEADERInv (|T@[Int]Bool|) |T@[Int]Bool|)
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
(assert (and (distinct UNALLOCATED ALLOCATED FREED BYTE T.Guid_WMIGUIDREGINFO T.InstanceCount_WMIGUIDREGINFO T.Flags_WMIGUIDREGINFO T.OperationID__ACCESS_STATE T.SecurityEvaluated__ACCESS_STATE T.GenerateAudit__ACCESS_STATE T.GenerateOnClose__ACCESS_STATE T.PrivilegesAllocated__ACCESS_STATE T.Flags__ACCESS_STATE T.RemainingDesiredAccess__ACCESS_STATE T.PreviouslyGrantedAccess__ACCESS_STATE T.OriginalDesiredAccess__ACCESS_STATE T.SubjectSecurityContext__ACCESS_STATE T.SecurityDescriptor__ACCESS_STATE T.AuxData__ACCESS_STATE T.Privileges__ACCESS_STATE T.AuditPrivileges__ACCESS_STATE T.ObjectName__ACCESS_STATE T.ObjectTypeName__ACCESS_STATE T.InterfaceType__CM_FULL_RESOURCE_DESCRIPTOR T.BusNumber__CM_FULL_RESOURCE_DESCRIPTOR T.PartialResourceList__CM_FULL_RESOURCE_DESCRIPTOR T.Type__CM_PARTIAL_RESOURCE_DESCRIPTOR T.ShareDisposition__CM_PARTIAL_RESOURCE_DESCRIPTOR T.Flags__CM_PARTIAL_RESOURCE_DESCRIPTOR T.u__CM_PARTIAL_RESOURCE_DESCRIPTOR T.Version__CM_PARTIAL_RESOURCE_LIST T.Revision__CM_PARTIAL_RESOURCE_LIST T.Count__CM_PARTIAL_RESOURCE_LIST T.PartialDescriptors__CM_PARTIAL_RESOURCE_LIST T.Count__CM_RESOURCE_LIST T.List__CM_RESOURCE_LIST T.Size__DEVICE_CAPABILITIES T.Version__DEVICE_CAPABILITIES T.DeviceD1__DEVICE_CAPABILITIES T.DeviceD2__DEVICE_CAPABILITIES T.LockSupported__DEVICE_CAPABILITIES T.EjectSupported__DEVICE_CAPABILITIES T.Removable__DEVICE_CAPABILITIES T.DockDevice__DEVICE_CAPABILITIES T.UniqueID__DEVICE_CAPABILITIES T.SilentInstall__DEVICE_CAPABILITIES T.RawDeviceOK__DEVICE_CAPABILITIES T.SurpriseRemovalOK__DEVICE_CAPABILITIES T.WakeFromD0__DEVICE_CAPABILITIES T.WakeFromD1__DEVICE_CAPABILITIES T.WakeFromD2__DEVICE_CAPABILITIES T.WakeFromD3__DEVICE_CAPABILITIES T.HardwareDisabled__DEVICE_CAPABILITIES T.NonDynamic__DEVICE_CAPABILITIES T.WarmEjectSupported__DEVICE_CAPABILITIES T.NoDisplayInUI__DEVICE_CAPABILITIES T.Reserved__DEVICE_CAPABILITIES T.Address__DEVICE_CAPABILITIES T.UINumber__DEVICE_CAPABILITIES T.DeviceState__DEVICE_CAPABILITIES T.SystemWake__DEVICE_CAPABILITIES T.DeviceWake__DEVICE_CAPABILITIES T.D1Latency__DEVICE_CAPABILITIES T.D2Latency__DEVICE_CAPABILITIES T.D3Latency__DEVICE_CAPABILITIES T.Self__DEVICE_EXTENSION T.TrueClassDevice__DEVICE_EXTENSION T.TopPort__DEVICE_EXTENSION T.PDO__DEVICE_EXTENSION T.RemoveLock__DEVICE_EXTENSION T.PnP__DEVICE_EXTENSION T.Started__DEVICE_EXTENSION T.AllowDisable__DEVICE_EXTENSION T.WaitWakeSpinLock__DEVICE_EXTENSION T.TrustedSubsystemCount__DEVICE_EXTENSION T.InputCount__DEVICE_EXTENSION T.SymbolicLinkName__DEVICE_EXTENSION T.InputData__DEVICE_EXTENSION T.DataIn__DEVICE_EXTENSION T.DataOut__DEVICE_EXTENSION T.KeyboardAttributes__DEVICE_EXTENSION T.IndicatorParameters__DEVICE_EXTENSION T.SpinLock__DEVICE_EXTENSION T.ReadQueue__DEVICE_EXTENSION T.SequenceNumber__DEVICE_EXTENSION T.DeviceState__DEVICE_EXTENSION T.SystemState__DEVICE_EXTENSION T.UnitId__DEVICE_EXTENSION T.WmiLibInfo__DEVICE_EXTENSION T.SystemToDeviceState__DEVICE_EXTENSION T.MinDeviceWakeState__DEVICE_EXTENSION T.MinSystemWakeState__DEVICE_EXTENSION T.WaitWakeIrp__DEVICE_EXTENSION T.ExtraWaitWakeIrp__DEVICE_EXTENSION T.TargetNotifyHandle__DEVICE_EXTENSION T.Link__DEVICE_EXTENSION T.File__DEVICE_EXTENSION T.Enabled__DEVICE_EXTENSION T.OkayToLogOverflow__DEVICE_EXTENSION T.WaitWakeEnabled__DEVICE_EXTENSION T.SurpriseRemoved__DEVICE_EXTENSION T.Type__DEVICE_OBJECT T.Size__DEVICE_OBJECT T.ReferenceCount__DEVICE_OBJECT T.DriverObject__DEVICE_OBJECT T.NextDevice__DEVICE_OBJECT T.AttachedDevice__DEVICE_OBJECT T.CurrentIrp__DEVICE_OBJECT T.Timer__DEVICE_OBJECT T.Flags__DEVICE_OBJECT T.Characteristics__DEVICE_OBJECT T.Vpb__DEVICE_OBJECT T.DeviceExtension__DEVICE_OBJECT T.DeviceType__DEVICE_OBJECT T.StackSize__DEVICE_OBJECT T.Queue__DEVICE_OBJECT T.AlignmentRequirement__DEVICE_OBJECT T.DeviceQueue__DEVICE_OBJECT T.Dpc__DEVICE_OBJECT T.ActiveThreadCount__DEVICE_OBJECT T.SecurityDescriptor__DEVICE_OBJECT T.DeviceLock__DEVICE_OBJECT T.SectorSize__DEVICE_OBJECT T.Spare1__DEVICE_OBJECT T.DeviceObjectExtension__DEVICE_OBJECT T.Reserved__DEVICE_OBJECT T.Type__DEVOBJ_EXTENSION T.Size__DEVOBJ_EXTENSION T.DeviceObject__DEVOBJ_EXTENSION T.__unnamed_4_a97c65a1__DISPATCHER_HEADER T.SignalState__DISPATCHER_HEADER T.WaitListHead__DISPATCHER_HEADER T.DriverObject__DRIVER_EXTENSION T.AddDevice__DRIVER_EXTENSION T.Count__DRIVER_EXTENSION T.ServiceKeyName__DRIVER_EXTENSION T.Type__DRIVER_OBJECT T.Size__DRIVER_OBJECT T.DeviceObject__DRIVER_OBJECT T.Flags__DRIVER_OBJECT T.DriverStart__DRIVER_OBJECT T.DriverSize__DRIVER_OBJECT T.DriverSection__DRIVER_OBJECT T.DriverExtension__DRIVER_OBJECT T.DriverName__DRIVER_OBJECT T.HardwareDatabase__DRIVER_OBJECT T.FastIoDispatch__DRIVER_OBJECT T.DriverInit__DRIVER_OBJECT T.DriverStartIo__DRIVER_OBJECT T.DriverUnload__DRIVER_OBJECT T.MajorFunction__DRIVER_OBJECT T.SystemResourcesList__ERESOURCE T.OwnerTable__ERESOURCE T.ActiveCount__ERESOURCE T.Flag__ERESOURCE T.SharedWaiters__ERESOURCE T.ExclusiveWaiters__ERESOURCE T.OwnerEntry__ERESOURCE T.ActiveEntries__ERESOURCE T.ContentionCount__ERESOURCE T.NumberOfSharedWaiters__ERESOURCE T.NumberOfExclusiveWaiters__ERESOURCE T.__unnamed_4_52c594f7__ERESOURCE T.SpinLock__ERESOURCE T.SizeOfFastIoDispatch__FAST_IO_DISPATCH T.FastIoCheckIfPossible__FAST_IO_DISPATCH T.FastIoRead__FAST_IO_DISPATCH T.FastIoWrite__FAST_IO_DISPATCH T.FastIoQueryBasicInfo__FAST_IO_DISPATCH T.FastIoQueryStandardInfo__FAST_IO_DISPATCH T.FastIoLock__FAST_IO_DISPATCH T.FastIoUnlockSingle__FAST_IO_DISPATCH T.FastIoUnlockAll__FAST_IO_DISPATCH T.FastIoUnlockAllByKey__FAST_IO_DISPATCH T.FastIoDeviceControl__FAST_IO_DISPATCH T.AcquireFileForNtCreateSection__FAST_IO_DISPATCH T.ReleaseFileForNtCreateSection__FAST_IO_DISPATCH T.FastIoDetachDevice__FAST_IO_DISPATCH T.FastIoQueryNetworkOpenInfo__FAST_IO_DISPATCH T.AcquireForModWrite__FAST_IO_DISPATCH T.MdlRead__FAST_IO_DISPATCH T.MdlReadComplete__FAST_IO_DISPATCH T.PrepareMdlWrite__FAST_IO_DISPATCH T.MdlWriteComplete__FAST_IO_DISPATCH T.FastIoReadCompressed__FAST_IO_DISPATCH T.FastIoWriteCompressed__FAST_IO_DISPATCH T.MdlReadCompleteCompressed__FAST_IO_DISPATCH T.MdlWriteCompleteCompressed__FAST_IO_DISPATCH T.FastIoQueryOpen__FAST_IO_DISPATCH T.ReleaseForModWrite__FAST_IO_DISPATCH T.AcquireForCcFlush__FAST_IO_DISPATCH T.ReleaseForCcFlush__FAST_IO_DISPATCH T.Count__FAST_MUTEX T.Owner__FAST_MUTEX T.Contention__FAST_MUTEX T.Gate__FAST_MUTEX T.OldIrql__FAST_MUTEX T.CreationTime__FILE_BASIC_INFORMATION T.LastAccessTime__FILE_BASIC_INFORMATION T.LastWriteTime__FILE_BASIC_INFORMATION T.ChangeTime__FILE_BASIC_INFORMATION T.FileAttributes__FILE_BASIC_INFORMATION T.CreationTime__FILE_NETWORK_OPEN_INFORMATION T.LastAccessTime__FILE_NETWORK_OPEN_INFORMATION T.LastWriteTime__FILE_NETWORK_OPEN_INFORMATION T.ChangeTime__FILE_NETWORK_OPEN_INFORMATION T.AllocationSize__FILE_NETWORK_OPEN_INFORMATION T.EndOfFile__FILE_NETWORK_OPEN_INFORMATION T.FileAttributes__FILE_NETWORK_OPEN_INFORMATION T.Type__FILE_OBJECT T.Size__FILE_OBJECT T.DeviceObject__FILE_OBJECT T.Vpb__FILE_OBJECT T.FsContext__FILE_OBJECT T.FsContext2__FILE_OBJECT T.SectionObjectPointer__FILE_OBJECT T.PrivateCacheMap__FILE_OBJECT T.FinalStatus__FILE_OBJECT T.RelatedFileObject__FILE_OBJECT T.LockOperation__FILE_OBJECT T.DeletePending__FILE_OBJECT T.ReadAccess__FILE_OBJECT T.WriteAccess__FILE_OBJECT T.DeleteAccess__FILE_OBJECT T.SharedRead__FILE_OBJECT T.SharedWrite__FILE_OBJECT T.SharedDelete__FILE_OBJECT T.Flags__FILE_OBJECT T.FileName__FILE_OBJECT T.CurrentByteOffset__FILE_OBJECT T.Waiters__FILE_OBJECT T.Busy__FILE_OBJECT T.LastLock__FILE_OBJECT T.Lock__FILE_OBJECT T.Event__FILE_OBJECT T.CompletionContext__FILE_OBJECT T.IrpListLock__FILE_OBJECT T.IrpList__FILE_OBJECT T.FileObjectExtension__FILE_OBJECT T.AllocationSize__FILE_STANDARD_INFORMATION T.EndOfFile__FILE_STANDARD_INFORMATION T.NumberOfLinks__FILE_STANDARD_INFORMATION T.DeletePending__FILE_STANDARD_INFORMATION T.Directory__FILE_STANDARD_INFORMATION T.Debug__GLOBALS T.GrandMaster__GLOBALS T.AssocClassList__GLOBALS T.NumAssocClass__GLOBALS T.Opens__GLOBALS T.NumberLegacyPorts__GLOBALS T.Mutex__GLOBALS T.ConnectOneClassToOnePort__GLOBALS T.SendOutputToAllPorts__GLOBALS T.PortsServiced__GLOBALS T.InitExtension__GLOBALS T.RegistryPath__GLOBALS T.BaseClassName__GLOBALS T.BaseClassBuffer__GLOBALS T.LegacyDeviceList__GLOBALS T.Data1__GUID T.Data2__GUID T.Data3__GUID T.Data4__GUID T.PrivilegeCount__INITIAL_PRIVILEGE_SET T.Control__INITIAL_PRIVILEGE_SET T.Privilege__INITIAL_PRIVILEGE_SET T.Size__INTERFACE T.Version__INTERFACE T.Context__INTERFACE T.InterfaceReference__INTERFACE T.InterfaceDereference__INTERFACE T.Port__IO_COMPLETION_CONTEXT T.Key__IO_COMPLETION_CONTEXT T.Common__IO_REMOVE_LOCK T.Dbg__IO_REMOVE_LOCK T.Removed__IO_REMOVE_LOCK_COMMON_BLOCK T.Reserved__IO_REMOVE_LOCK_COMMON_BLOCK T.IoCount__IO_REMOVE_LOCK_COMMON_BLOCK T.RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK T.Signature__IO_REMOVE_LOCK_DBG_BLOCK T.HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK T.MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK T.AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK T.LockList__IO_REMOVE_LOCK_DBG_BLOCK T.Spin__IO_REMOVE_LOCK_DBG_BLOCK T.LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK T.Reserved1__IO_REMOVE_LOCK_DBG_BLOCK T.Reserved2__IO_REMOVE_LOCK_DBG_BLOCK T.Blocks__IO_REMOVE_LOCK_DBG_BLOCK T.Option__IO_RESOURCE_DESCRIPTOR T.Type__IO_RESOURCE_DESCRIPTOR T.ShareDisposition__IO_RESOURCE_DESCRIPTOR T.Spare1__IO_RESOURCE_DESCRIPTOR T.Flags__IO_RESOURCE_DESCRIPTOR T.Spare2__IO_RESOURCE_DESCRIPTOR T.u__IO_RESOURCE_DESCRIPTOR T.Version__IO_RESOURCE_LIST T.Revision__IO_RESOURCE_LIST T.Count__IO_RESOURCE_LIST T.Descriptors__IO_RESOURCE_LIST T.ListSize__IO_RESOURCE_REQUIREMENTS_LIST T.InterfaceType__IO_RESOURCE_REQUIREMENTS_LIST T.BusNumber__IO_RESOURCE_REQUIREMENTS_LIST T.SlotNumber__IO_RESOURCE_REQUIREMENTS_LIST T.Reserved__IO_RESOURCE_REQUIREMENTS_LIST T.AlternativeLists__IO_RESOURCE_REQUIREMENTS_LIST T.List__IO_RESOURCE_REQUIREMENTS_LIST T.SecurityQos__IO_SECURITY_CONTEXT T.AccessState__IO_SECURITY_CONTEXT T.DesiredAccess__IO_SECURITY_CONTEXT T.FullCreateOptions__IO_SECURITY_CONTEXT T.MajorFunction__IO_STACK_LOCATION T.MinorFunction__IO_STACK_LOCATION T.Flags__IO_STACK_LOCATION T.Control__IO_STACK_LOCATION T.Parameters__IO_STACK_LOCATION T.DeviceObject__IO_STACK_LOCATION T.FileObject__IO_STACK_LOCATION T.CompletionRoutine__IO_STACK_LOCATION T.Context__IO_STACK_LOCATION T.__unnamed_4_d99b6e2b__IO_STATUS_BLOCK T.Information__IO_STATUS_BLOCK T.Type__IRP T.Size__IRP T.MdlAddress__IRP T.Flags__IRP T.AssociatedIrp__IRP T.ThreadListEntry__IRP T.IoStatus__IRP T.RequestorMode__IRP T.PendingReturned__IRP T.StackCount__IRP T.CurrentLocation__IRP T.Cancel__IRP T.CancelIrql__IRP T.ApcEnvironment__IRP T.AllocationFlags__IRP T.UserIosb__IRP T.UserEvent__IRP T.Overlay__IRP T.CancelRoutine__IRP T.UserBuffer__IRP T.Tail__IRP T.Type__KAPC T.SpareByte0__KAPC T.Size__KAPC T.SpareByte1__KAPC T.SpareLong0__KAPC T.Thread__KAPC T.ApcListEntry__KAPC T.KernelRoutine__KAPC T.RundownRoutine__KAPC T.NormalRoutine__KAPC T.NormalContext__KAPC T.SystemArgument1__KAPC T.SystemArgument2__KAPC T.ApcStateIndex__KAPC T.ApcMode__KAPC T.Inserted__KAPC T.Type__KDEVICE_QUEUE T.Size__KDEVICE_QUEUE T.DeviceListHead__KDEVICE_QUEUE T.Lock__KDEVICE_QUEUE T.Busy__KDEVICE_QUEUE T.DeviceListEntry__KDEVICE_QUEUE_ENTRY T.SortKey__KDEVICE_QUEUE_ENTRY T.Inserted__KDEVICE_QUEUE_ENTRY T.Type__KDPC T.Importance__KDPC T.Number__KDPC T.DpcListEntry__KDPC T.DeferredRoutine__KDPC T.DeferredContext__KDPC T.SystemArgument1__KDPC T.SystemArgument2__KDPC T.DpcData__KDPC T.Header__KEVENT T.KeyboardIdentifier__KEYBOARD_ATTRIBUTES T.KeyboardMode__KEYBOARD_ATTRIBUTES T.NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES T.NumberOfIndicators__KEYBOARD_ATTRIBUTES T.NumberOfKeysTotal__KEYBOARD_ATTRIBUTES T.InputDataQueueLength__KEYBOARD_ATTRIBUTES T.KeyRepeatMinimum__KEYBOARD_ATTRIBUTES T.KeyRepeatMaximum__KEYBOARD_ATTRIBUTES T.Type__KEYBOARD_ID T.Subtype__KEYBOARD_ID T.UnitId__KEYBOARD_INDICATOR_PARAMETERS T.LedFlags__KEYBOARD_INDICATOR_PARAMETERS T.UnitId__KEYBOARD_INPUT_DATA T.MakeCode__KEYBOARD_INPUT_DATA T.Flags__KEYBOARD_INPUT_DATA T.Reserved__KEYBOARD_INPUT_DATA T.ExtraInformation__KEYBOARD_INPUT_DATA T.UnitId__KEYBOARD_TYPEMATIC_PARAMETERS T.Rate__KEYBOARD_TYPEMATIC_PARAMETERS T.Delay__KEYBOARD_TYPEMATIC_PARAMETERS T.Header__KSEMAPHORE T.Limit__KSEMAPHORE T.__unnamed_8_58ee4a31__LARGE_INTEGER T.u__LARGE_INTEGER T.QuadPart__LARGE_INTEGER T.Flink__LIST_ENTRY T.Blink__LIST_ENTRY T.LowPart__LUID T.HighPart__LUID T.Luid__LUID_AND_ATTRIBUTES T.Attributes__LUID_AND_ATTRIBUTES T.Next__MDL T.Size__MDL T.MdlFlags__MDL T.Process__MDL T.MappedSystemVa__MDL T.StartVa__MDL T.ByteCount__MDL T.ByteOffset__MDL T.OwnerThread__OWNER_ENTRY T.__unnamed_4_6f9ac8e1__OWNER_ENTRY T.File__PORT T.Port__PORT T.Enabled__PORT T.Reserved__PORT T.Free__PORT T.SequenceD1__POWER_SEQUENCE T.SequenceD2__POWER_SEQUENCE T.SequenceD3__POWER_SEQUENCE T.SystemState__POWER_STATE T.DeviceState__POWER_STATE T.PrivilegeCount__PRIVILEGE_SET T.Control__PRIVILEGE_SET T.Privilege__PRIVILEGE_SET T.DataSectionObject__SECTION_OBJECT_POINTERS T.SharedCacheMap__SECTION_OBJECT_POINTERS T.ImageSectionObject__SECTION_OBJECT_POINTERS T.Length__SECURITY_QUALITY_OF_SERVICE T.ImpersonationLevel__SECURITY_QUALITY_OF_SERVICE T.ContextTrackingMode__SECURITY_QUALITY_OF_SERVICE T.EffectiveOnly__SECURITY_QUALITY_OF_SERVICE T.ClientToken__SECURITY_SUBJECT_CONTEXT T.ImpersonationLevel__SECURITY_SUBJECT_CONTEXT T.PrimaryToken__SECURITY_SUBJECT_CONTEXT T.ProcessAuditId__SECURITY_SUBJECT_CONTEXT T.__unnamed_4_3a2fdc5e__SYSTEM_POWER_STATE_CONTEXT T.Length__UNICODE_STRING T.MaximumLength__UNICODE_STRING T.Buffer__UNICODE_STRING T.Type__VPB T.Size__VPB T.Flags__VPB T.VolumeLabelLength__VPB T.DeviceObject__VPB T.RealDevice__VPB T.SerialNumber__VPB T.ReferenceCount__VPB T.VolumeLabel__VPB T.WaitQueueEntry__WAIT_CONTEXT_BLOCK T.DeviceRoutine__WAIT_CONTEXT_BLOCK T.DeviceContext__WAIT_CONTEXT_BLOCK T.NumberOfMapRegisters__WAIT_CONTEXT_BLOCK T.DeviceObject__WAIT_CONTEXT_BLOCK T.CurrentIrp__WAIT_CONTEXT_BLOCK T.BufferChainingDpc__WAIT_CONTEXT_BLOCK T.GuidCount__WMILIB_CONTEXT T.GuidList__WMILIB_CONTEXT T.QueryWmiRegInfo__WMILIB_CONTEXT T.QueryWmiDataBlock__WMILIB_CONTEXT T.SetWmiDataBlock__WMILIB_CONTEXT T.SetWmiDataItem__WMILIB_CONTEXT T.ExecuteWmiMethod__WMILIB_CONTEXT T.WmiFunctionControl__WMILIB_CONTEXT T.Reserved___unnamed_12_0d6a30de T.MessageCount___unnamed_12_0d6a30de T.Vector___unnamed_12_0d6a30de T.Affinity___unnamed_12_0d6a30de T.Start___unnamed_12_17f5c211 T.Length48___unnamed_12_17f5c211 T.Start___unnamed_12_1fb42e39 T.Length___unnamed_12_1fb42e39 T.Reserved___unnamed_12_1fb42e39 T.Start___unnamed_12_2a1563c6 T.Length___unnamed_12_2a1563c6 T.DataSize___unnamed_12_31347272 T.Reserved1___unnamed_12_31347272 T.Reserved2___unnamed_12_31347272 T.Raw___unnamed_12_429aadc0 T.Translated___unnamed_12_429aadc0 T.Start___unnamed_12_4719de1a T.Length___unnamed_12_4719de1a T.Data___unnamed_12_4be56faa T.Data___unnamed_12_5ce25b92 T.Generic___unnamed_12_7a698b72 T.Port___unnamed_12_7a698b72 T.Interrupt___unnamed_12_7a698b72 T.MessageInterrupt___unnamed_12_7a698b72 T.Memory___unnamed_12_7a698b72 T.Dma___unnamed_12_7a698b72 T.DevicePrivate___unnamed_12_7a698b72 T.BusNumber___unnamed_12_7a698b72 T.DeviceSpecificData___unnamed_12_7a698b72 T.Memory40___unnamed_12_7a698b72 T.Memory48___unnamed_12_7a698b72 T.Memory64___unnamed_12_7a698b72 T.Start___unnamed_12_87c0de8d T.Length64___unnamed_12_87c0de8d T.Start___unnamed_12_98bfc55a T.Length40___unnamed_12_98bfc55a T.Priority___unnamed_12_ab1bd9d7 T.Reserved1___unnamed_12_ab1bd9d7 T.Reserved2___unnamed_12_ab1bd9d7 T.Level___unnamed_12_b0429be9 T.Vector___unnamed_12_b0429be9 T.Affinity___unnamed_12_b0429be9 T.ListEntry___unnamed_12_b43e8de8 T.__unnamed_4_f19b65c1___unnamed_12_b43e8de8 T.Level___unnamed_12_bfdb39ee T.Vector___unnamed_12_bfdb39ee T.Affinity___unnamed_12_bfdb39ee T.Start___unnamed_12_cd42b3c3 T.Length___unnamed_12_cd42b3c3 T.__unnamed_12_429aadc0___unnamed_12_e668effc T.Channel___unnamed_12_e80d029e T.Port___unnamed_12_e80d029e T.Reserved1___unnamed_12_e80d029e T.Length___unnamed_16_07c0bcc5 T.MinBusNumber___unnamed_16_07c0bcc5 T.MaxBusNumber___unnamed_16_07c0bcc5 T.Reserved___unnamed_16_07c0bcc5 T.InterfaceType___unnamed_16_29cb9f2f T.Size___unnamed_16_29cb9f2f T.Version___unnamed_16_29cb9f2f T.Interface___unnamed_16_29cb9f2f T.InterfaceSpecificData___unnamed_16_29cb9f2f T.SecurityContext___unnamed_16_30f11dbf T.Options___unnamed_16_30f11dbf T.FileAttributes___unnamed_16_30f11dbf T.ShareAccess___unnamed_16_30f11dbf T.EaLength___unnamed_16_30f11dbf T.DriverContext___unnamed_16_35034f68 T.Length___unnamed_16_487a9498 T.FileName___unnamed_16_487a9498 T.FileInformationClass___unnamed_16_487a9498 T.FileIndex___unnamed_16_487a9498 T.OutputBufferLength___unnamed_16_5f6a8844 T.InputBufferLength___unnamed_16_5f6a8844 T.FsControlCode___unnamed_16_5f6a8844 T.Type3InputBuffer___unnamed_16_5f6a8844 T.Length___unnamed_16_7177b9f3 T.FileInformationClass___unnamed_16_7177b9f3 T.FileObject___unnamed_16_7177b9f3 T.__unnamed_4_43913aa5___unnamed_16_7177b9f3 T.Length___unnamed_16_88e91ef6 T.Key___unnamed_16_88e91ef6 T.ByteOffset___unnamed_16_88e91ef6 T.Length___unnamed_16_8c506c98 T.Key___unnamed_16_8c506c98 T.ByteOffset___unnamed_16_8c506c98 T.WhichSpace___unnamed_16_9ac2e5f8 T.Buffer___unnamed_16_9ac2e5f8 T.Offset___unnamed_16_9ac2e5f8 T.Length___unnamed_16_9ac2e5f8 T.Create___unnamed_16_b93842ad T.Read___unnamed_16_b93842ad T.Write___unnamed_16_b93842ad T.QueryDirectory___unnamed_16_b93842ad T.NotifyDirectory___unnamed_16_b93842ad T.QueryFile___unnamed_16_b93842ad T.SetFile___unnamed_16_b93842ad T.QueryEa___unnamed_16_b93842ad T.SetEa___unnamed_16_b93842ad T.QueryVolume___unnamed_16_b93842ad T.SetVolume___unnamed_16_b93842ad T.FileSystemControl___unnamed_16_b93842ad T.LockControl___unnamed_16_b93842ad T.DeviceIoControl___unnamed_16_b93842ad T.QuerySecurity___unnamed_16_b93842ad T.SetSecurity___unnamed_16_b93842ad T.MountVolume___unnamed_16_b93842ad T.VerifyVolume___unnamed_16_b93842ad T.Scsi___unnamed_16_b93842ad T.QueryQuota___unnamed_16_b93842ad T.SetQuota___unnamed_16_b93842ad T.QueryDeviceRelations___unnamed_16_b93842ad T.QueryInterface___unnamed_16_b93842ad T.DeviceCapabilities___unnamed_16_b93842ad T.FilterResourceRequirements___unnamed_16_b93842ad T.ReadWriteConfig___unnamed_16_b93842ad T.SetLock___unnamed_16_b93842ad T.QueryId___unnamed_16_b93842ad T.QueryDeviceText___unnamed_16_b93842ad T.UsageNotification___unnamed_16_b93842ad T.WaitWake___unnamed_16_b93842ad T.PowerSequence___unnamed_16_b93842ad T.Power___unnamed_16_b93842ad T.StartDevice___unnamed_16_b93842ad T.WMI___unnamed_16_b93842ad T.Others___unnamed_16_b93842ad T.Length___unnamed_16_b9c62eab T.Key___unnamed_16_b9c62eab T.ByteOffset___unnamed_16_b9c62eab T.__unnamed_4_7d9d0c7e___unnamed_16_bb584060 T.Type___unnamed_16_bb584060 T.State___unnamed_16_bb584060 T.ShutdownType___unnamed_16_bb584060 T.OutputBufferLength___unnamed_16_dba55c7c T.InputBufferLength___unnamed_16_dba55c7c T.IoControlCode___unnamed_16_dba55c7c T.Type3InputBuffer___unnamed_16_dba55c7c T.DeviceQueueEntry___unnamed_16_e70c268b T.__unnamed_16_35034f68___unnamed_16_e70c268b T.Argument1___unnamed_16_e734d694 T.Argument2___unnamed_16_e734d694 T.Argument3___unnamed_16_e734d694 T.Argument4___unnamed_16_e734d694 T.ProviderId___unnamed_16_eac6dbea T.DataPath___unnamed_16_eac6dbea T.BufferSize___unnamed_16_eac6dbea T.Buffer___unnamed_16_eac6dbea T.Length___unnamed_16_f6cae4c2 T.EaList___unnamed_16_f6cae4c2 T.EaListLength___unnamed_16_f6cae4c2 T.EaIndex___unnamed_16_f6cae4c2 T.Length___unnamed_16_fe36e4f4 T.StartSid___unnamed_16_fe36e4f4 T.SidList___unnamed_16_fe36e4f4 T.SidListLength___unnamed_16_fe36e4f4 T.Abandoned___unnamed_1_29794256 T.Absolute___unnamed_1_29794256 T.NpxIrql___unnamed_1_29794256 T.Signalling___unnamed_1_29794256 T.Inserted___unnamed_1_2dc63b48 T.DebugActive___unnamed_1_2dc63b48 T.DpcActive___unnamed_1_2dc63b48 T.Size___unnamed_1_2ef8da39 T.Hand___unnamed_1_2ef8da39 T.Lock___unnamed_1_faa7dc71 T.MinimumVector___unnamed_20_f4d2e6d8 T.MaximumVector___unnamed_20_f4d2e6d8 T.AffinityPolicy___unnamed_20_f4d2e6d8 T.PriorityPolicy___unnamed_20_f4d2e6d8 T.TargetedProcessors___unnamed_20_f4d2e6d8 T.Length___unnamed_24_41cbc8c0 T.Alignment___unnamed_24_41cbc8c0 T.MinimumAddress___unnamed_24_41cbc8c0 T.MaximumAddress___unnamed_24_41cbc8c0 T.Length48___unnamed_24_5419c914 T.Alignment48___unnamed_24_5419c914 T.MinimumAddress___unnamed_24_5419c914 T.MaximumAddress___unnamed_24_5419c914 T.Length___unnamed_24_67a5ff10 T.Alignment___unnamed_24_67a5ff10 T.MinimumAddress___unnamed_24_67a5ff10 T.MaximumAddress___unnamed_24_67a5ff10 T.Port___unnamed_24_72c3976e T.Memory___unnamed_24_72c3976e T.Interrupt___unnamed_24_72c3976e T.Dma___unnamed_24_72c3976e T.Generic___unnamed_24_72c3976e T.DevicePrivate___unnamed_24_72c3976e T.BusNumber___unnamed_24_72c3976e T.ConfigData___unnamed_24_72c3976e T.Memory40___unnamed_24_72c3976e T.Memory48___unnamed_24_72c3976e T.Memory64___unnamed_24_72c3976e T.Length64___unnamed_24_a26050bb T.Alignment64___unnamed_24_a26050bb T.MinimumAddress___unnamed_24_a26050bb T.MaximumAddress___unnamed_24_a26050bb T.Length___unnamed_24_b8f476db T.Alignment___unnamed_24_b8f476db T.MinimumAddress___unnamed_24_b8f476db T.MaximumAddress___unnamed_24_b8f476db T.Length40___unnamed_24_d09044b4 T.Alignment40___unnamed_24_d09044b4 T.MinimumAddress___unnamed_24_d09044b4 T.MaximumAddress___unnamed_24_d09044b4 T.ReplaceIfExists___unnamed_2_46cc4597 T.AdvanceOnly___unnamed_2_46cc4597 T.__unnamed_16_e70c268b___unnamed_40_7218f704 T.Thread___unnamed_40_7218f704 T.AuxiliaryBuffer___unnamed_40_7218f704 T.__unnamed_12_b43e8de8___unnamed_40_7218f704 T.OriginalFileObject___unnamed_40_7218f704 T.ListEntry___unnamed_40_c55c9377 T.Wcb___unnamed_40_c55c9377 T.InitialPrivilegeSet___unnamed_44_5584090d T.PrivilegeSet___unnamed_44_5584090d T.Overlay___unnamed_48_cf99b13f T.Apc___unnamed_48_cf99b13f T.CompletionKey___unnamed_48_cf99b13f T.PowerState___unnamed_4_069846fb T.IdType___unnamed_4_224c32f4 T.Capabilities___unnamed_4_2de698da T.__unnamed_4_c3479730___unnamed_4_3a2fdc5e T.ContextAsUlong___unnamed_4_3a2fdc5e T.Length___unnamed_4_3a4c1a13 T.__unnamed_2_46cc4597___unnamed_4_43913aa5 T.ClusterCount___unnamed_4_43913aa5 T.DeleteHandle___unnamed_4_43913aa5 T.UserApcRoutine___unnamed_4_4e8dd2ba T.IssuingProcess___unnamed_4_4e8dd2ba T.Srb___unnamed_4_52603077 T.Address___unnamed_4_52c594f7 T.CreatorBackTraceIndex___unnamed_4_52c594f7 T.Type___unnamed_4_5ca00198 T.__unnamed_1_29794256___unnamed_4_5ca00198 T.__unnamed_1_2ef8da39___unnamed_4_5ca00198 T.__unnamed_1_2dc63b48___unnamed_4_5ca00198 T.MasterIrp___unnamed_4_6ac6463c T.IrpCount___unnamed_4_6ac6463c T.SystemBuffer___unnamed_4_6ac6463c T.OwnerCount___unnamed_4_6f9ac8e1 T.TableSize___unnamed_4_6f9ac8e1 T.PowerSequence___unnamed_4_7a02167b T.SystemContext___unnamed_4_7d9d0c7e T.SystemPowerStateContext___unnamed_4_7d9d0c7e T.IoResourceRequirementList___unnamed_4_82f7a864 T.Length___unnamed_4_9aec220b T.__unnamed_4_5ca00198___unnamed_4_a97c65a1 T.Lock___unnamed_4_a97c65a1 T.Reserved1___unnamed_4_c3479730 T.TargetSystemState___unnamed_4_c3479730 T.EffectiveSystemState___unnamed_4_c3479730 T.CurrentSystemState___unnamed_4_c3479730 T.IgnoreHibernationPath___unnamed_4_c3479730 T.PseudoTransition___unnamed_4_c3479730 T.Reserved2___unnamed_4_c3479730 T.Status___unnamed_4_d99b6e2b T.Pointer___unnamed_4_d99b6e2b T.CurrentStackLocation___unnamed_4_f19b65c1 T.PacketType___unnamed_4_f19b65c1 T.Type___unnamed_4_fa10fc16 T.SecurityInformation___unnamed_8_01efa60d T.Length___unnamed_8_01efa60d T.MinimumChannel___unnamed_8_08d4cef8 T.MaximumChannel___unnamed_8_08d4cef8 T.__unnamed_4_4e8dd2ba___unnamed_8_0a898c0c T.UserApcContext___unnamed_8_0a898c0c T.SecurityInformation___unnamed_8_1330f93a T.SecurityDescriptor___unnamed_8_1330f93a T.AsynchronousParameters___unnamed_8_181d0de9 T.AllocationSize___unnamed_8_181d0de9 T.Vpb___unnamed_8_4812764d T.DeviceObject___unnamed_8_4812764d T.Length___unnamed_8_559a91e6 T.FsInformationClass___unnamed_8_559a91e6 T.Length___unnamed_8_5845b309 T.FileInformationClass___unnamed_8_5845b309 T.LowPart___unnamed_8_58ee4a31 T.HighPart___unnamed_8_58ee4a31 T.AllocatedResources___unnamed_8_61acf4ce T.AllocatedResourcesTranslated___unnamed_8_61acf4ce T.DeviceTextType___unnamed_8_6acfee04 T.LocaleId___unnamed_8_6acfee04 T.Length___unnamed_8_7f26a9dd T.CompletionFilter___unnamed_8_7f26a9dd T.Vpb___unnamed_8_87add0bd T.DeviceObject___unnamed_8_87add0bd T.InPath___unnamed_8_b2773e4c T.Reserved___unnamed_8_b2773e4c T.Type___unnamed_8_b2773e4c T.Length___unnamed_8_de890d4e T.FsInformationClass___unnamed_8_de890d4e T.LowPart___unnamed_8_ef9ba0d3 T.HighPart___unnamed_8_ef9ba0d3 T.A1_CM_FULL_RESOURCE_DESCRIPTOR T.A1_CM_PARTIAL_RESOURCE_DESCRIPTOR T.A1_IO_RESOURCE_DESCRIPTOR T.A1_IO_RESOURCE_LIST T.A1_LUID_AND_ATTRIBUTES T.A256UINT2 T.A28PFDRIVER_DISPATCH T.A2UCHAR T.A2UINT2 T.A32UINT2 T.A37CHAR T.A3UCHAR T.A3UINT4 T.A3_LUID_AND_ATTRIBUTES T.A40CHAR T.A4PVOID T.A4UINT4 T.A5_DEVICE_POWER_STATE T.A65CHAR T.A75CHAR T.A76CHAR T.A7UINT2 T.A7_DEVICE_POWER_STATE T.A83CHAR T.A8UCHAR T.A9UINT2 T.BUS_QUERY_ID_TYPE T.CHAR T.DEVICE_TEXT_TYPE T.F0 T.F1 T.F10 T.F11 T.F12 T.F13 T.F14 T.F15 T.F16 T.F17 T.F18 T.F19 T.F2 T.F20 T.F21 T.F22 T.F23 T.F24 T.F25 T.F26 T.F27 T.F28 T.F29 T.F3 T.F30 T.F31 T.F32 T.F33 T.F34 T.F35 T.F36 T.F37 T.F38 T.F4 T.F5 T.F6 T.F7 T.F8 T.F9 T.FDRIVER_ADD_DEVICE T.FDRIVER_CANCEL T.FDRIVER_CONTROL T.FDRIVER_DISPATCH T.FDRIVER_INITIALIZE T.FDRIVER_STARTIO T.FDRIVER_UNLOAD T.FFAST_IO_ACQUIRE_FILE T.FFAST_IO_ACQUIRE_FOR_CCFLUSH T.FFAST_IO_ACQUIRE_FOR_MOD_WRITE T.FFAST_IO_CHECK_IF_POSSIBLE T.FFAST_IO_DETACH_DEVICE T.FFAST_IO_DEVICE_CONTROL T.FFAST_IO_LOCK T.FFAST_IO_MDL_READ T.FFAST_IO_MDL_READ_COMPLETE T.FFAST_IO_MDL_READ_COMPLETE_COMPRESSED T.FFAST_IO_MDL_WRITE_COMPLETE T.FFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED T.FFAST_IO_PREPARE_MDL_WRITE T.FFAST_IO_QUERY_BASIC_INFO T.FFAST_IO_QUERY_NETWORK_OPEN_INFO T.FFAST_IO_QUERY_OPEN T.FFAST_IO_QUERY_STANDARD_INFO T.FFAST_IO_READ T.FFAST_IO_READ_COMPRESSED T.FFAST_IO_RELEASE_FILE T.FFAST_IO_RELEASE_FOR_CCFLUSH T.FFAST_IO_RELEASE_FOR_MOD_WRITE T.FFAST_IO_UNLOCK_ALL T.FFAST_IO_UNLOCK_ALL_BY_KEY T.FFAST_IO_UNLOCK_SINGLE T.FFAST_IO_WRITE T.FFAST_IO_WRITE_COMPRESSED T.FIO_COMPLETION_ROUTINE T.FKDEFERRED_ROUTINE T.INT2 T.INT4 T.INT8 T.PA2UINT2 T.PA37CHAR T.PA40CHAR T.PA4UINT4 T.PA65CHAR T.PA75CHAR T.PA76CHAR T.PA7UINT2 T.PA83CHAR T.PA9UINT2 T.PCHAR T.PF19 T.PF21 T.PF23 T.PF24 T.PF25 T.PF33 T.PF34 T.PF35 T.PF36 T.PF37 T.PF38 T.PFDRIVER_ADD_DEVICE T.PFDRIVER_CANCEL T.PFDRIVER_CONTROL T.PFDRIVER_DISPATCH T.PFDRIVER_INITIALIZE T.PFDRIVER_STARTIO T.PFDRIVER_UNLOAD T.PFFAST_IO_ACQUIRE_FILE T.PFFAST_IO_ACQUIRE_FOR_CCFLUSH T.PFFAST_IO_ACQUIRE_FOR_MOD_WRITE T.PFFAST_IO_CHECK_IF_POSSIBLE T.PFFAST_IO_DETACH_DEVICE T.PFFAST_IO_DEVICE_CONTROL T.PFFAST_IO_LOCK T.PFFAST_IO_MDL_READ T.PFFAST_IO_MDL_READ_COMPLETE T.PFFAST_IO_MDL_READ_COMPLETE_COMPRESSED T.PFFAST_IO_MDL_WRITE_COMPLETE T.PFFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED T.PFFAST_IO_PREPARE_MDL_WRITE T.PFFAST_IO_QUERY_BASIC_INFO T.PFFAST_IO_QUERY_NETWORK_OPEN_INFO T.PFFAST_IO_QUERY_OPEN T.PFFAST_IO_QUERY_STANDARD_INFO T.PFFAST_IO_READ T.PFFAST_IO_READ_COMPRESSED T.PFFAST_IO_RELEASE_FILE T.PFFAST_IO_RELEASE_FOR_CCFLUSH T.PFFAST_IO_RELEASE_FOR_MOD_WRITE T.PFFAST_IO_UNLOCK_ALL T.PFFAST_IO_UNLOCK_ALL_BY_KEY T.PFFAST_IO_UNLOCK_SINGLE T.PFFAST_IO_WRITE T.PFFAST_IO_WRITE_COMPRESSED T.PFIO_COMPLETION_ROUTINE T.PFKDEFERRED_ROUTINE T.PINT4 T.POWER_ACTION T.PPCHAR T.PPF24 T.PPPUINT2 T.PPP_DEVICE_OBJECT T.PPUINT2 T.PPUINT4 T.PPVOID T.PP_DEVICE_EXTENSION T.PP_DEVICE_OBJECT T.PP_DRIVER_OBJECT T.PP_ERESOURCE T.PP_FAST_MUTEX T.PP_IO_REMOVE_LOCK T.PP_LIST_ENTRY T.PP_MDL T.PP_UNICODE_STRING T.PUCHAR T.PUINT2 T.PUINT4 T.PVOID T.PWMIGUIDREGINFO T.P_ACCESS_STATE T.P_CM_RESOURCE_LIST T.P_COMPRESSED_DATA_INFO T.P_DEVICE_CAPABILITIES T.P_DEVICE_EXTENSION T.P_DEVICE_OBJECT T.P_DEVOBJ_EXTENSION T.P_DRIVER_EXTENSION T.P_DRIVER_OBJECT T.P_EPROCESS T.P_ERESOURCE T.P_ETHREAD T.P_FAST_IO_DISPATCH T.P_FAST_MUTEX T.P_FILE_BASIC_INFORMATION T.P_FILE_GET_QUOTA_INFORMATION T.P_FILE_NETWORK_OPEN_INFORMATION T.P_FILE_OBJECT T.P_FILE_STANDARD_INFORMATION T.P_GLOBALS T.P_GUID T.P_INTERFACE T.P_IO_COMPLETION_CONTEXT T.P_IO_REMOVE_LOCK T.P_IO_REMOVE_LOCK_TRACKING_BLOCK T.P_IO_RESOURCE_REQUIREMENTS_LIST T.P_IO_SECURITY_CONTEXT T.P_IO_STACK_LOCATION T.P_IO_STATUS_BLOCK T.P_IO_TIMER T.P_IRP T.P_KAPC T.P_KDPC T.P_KEVENT T.P_KEYBOARD_INPUT_DATA T.P_KSEMAPHORE T.P_KTHREAD T.P_LARGE_INTEGER T.P_LIST_ENTRY T.P_MDL T.P_OWNER_ENTRY T.P_POOL_TYPE T.P_PORT T.P_POWER_SEQUENCE T.P_SCSI_REQUEST_BLOCK T.P_SECTION_OBJECT_POINTERS T.P_SECURITY_QUALITY_OF_SERVICE T.P_UNICODE_STRING T.P_VPB T.UCHAR T.UINT2 T.UINT4 T.VOID T.WMIENABLEDISABLECONTROL T.WMIGUIDREGINFO T._ACCESS_STATE T._CM_FULL_RESOURCE_DESCRIPTOR T._CM_PARTIAL_RESOURCE_DESCRIPTOR T._CM_PARTIAL_RESOURCE_LIST T._CM_RESOURCE_LIST T._COMPRESSED_DATA_INFO T._DEVICE_CAPABILITIES T._DEVICE_EXTENSION T._DEVICE_OBJECT T._DEVICE_POWER_STATE T._DEVICE_RELATION_TYPE T._DEVICE_USAGE_NOTIFICATION_TYPE T._DEVOBJ_EXTENSION T._DISPATCHER_HEADER T._DRIVER_EXTENSION T._DRIVER_OBJECT T._EPROCESS T._ERESOURCE T._ETHREAD T._FAST_IO_DISPATCH T._FAST_MUTEX T._FILE_BASIC_INFORMATION T._FILE_GET_QUOTA_INFORMATION T._FILE_INFORMATION_CLASS T._FILE_NETWORK_OPEN_INFORMATION T._FILE_OBJECT T._FILE_STANDARD_INFORMATION T._FSINFOCLASS T._GLOBALS T._GUID T._INITIAL_PRIVILEGE_SET T._INTERFACE T._INTERFACE_TYPE T._IO_ALLOCATION_ACTION T._IO_COMPLETION_CONTEXT T._IO_REMOVE_LOCK T._IO_REMOVE_LOCK_COMMON_BLOCK T._IO_REMOVE_LOCK_DBG_BLOCK T._IO_REMOVE_LOCK_TRACKING_BLOCK T._IO_RESOURCE_DESCRIPTOR T._IO_RESOURCE_LIST T._IO_RESOURCE_REQUIREMENTS_LIST T._IO_SECURITY_CONTEXT T._IO_STACK_LOCATION T._IO_STATUS_BLOCK T._IO_TIMER T._IRP T._IRQ_DEVICE_POLICY T._IRQ_PRIORITY T._KAPC T._KDEVICE_QUEUE T._KDEVICE_QUEUE_ENTRY T._KDPC T._KEVENT T._KEYBOARD_ATTRIBUTES T._KEYBOARD_ID T._KEYBOARD_INDICATOR_PARAMETERS T._KEYBOARD_INPUT_DATA T._KEYBOARD_TYPEMATIC_PARAMETERS T._KSEMAPHORE T._KTHREAD T._LARGE_INTEGER T._LIST_ENTRY T._LUID T._LUID_AND_ATTRIBUTES T._MDL T._OWNER_ENTRY T._POOL_TYPE T._PORT T._POWER_SEQUENCE T._POWER_STATE T._POWER_STATE_TYPE T._PRIVILEGE_SET T._SCSI_REQUEST_BLOCK T._SECTION_OBJECT_POINTERS T._SECURITY_IMPERSONATION_LEVEL T._SECURITY_QUALITY_OF_SERVICE T._SECURITY_SUBJECT_CONTEXT T._SYSTEM_POWER_STATE T._SYSTEM_POWER_STATE_CONTEXT T._UNICODE_STRING T._VPB T._WAIT_CONTEXT_BLOCK T._WMILIB_CONTEXT T.__unnamed_12_0d6a30de T.__unnamed_12_17f5c211 T.__unnamed_12_1fb42e39 T.__unnamed_12_2a1563c6 T.__unnamed_12_31347272 T.__unnamed_12_429aadc0 T.__unnamed_12_4719de1a T.__unnamed_12_4be56faa T.__unnamed_12_5ce25b92 T.__unnamed_12_7a698b72 T.__unnamed_12_87c0de8d T.__unnamed_12_98bfc55a T.__unnamed_12_ab1bd9d7 T.__unnamed_12_b0429be9 T.__unnamed_12_b43e8de8 T.__unnamed_12_bfdb39ee T.__unnamed_12_cd42b3c3 T.__unnamed_12_e668effc T.__unnamed_12_e80d029e T.__unnamed_16_07c0bcc5 T.__unnamed_16_29cb9f2f T.__unnamed_16_30f11dbf T.__unnamed_16_35034f68 T.__unnamed_16_487a9498 T.__unnamed_16_5f6a8844 T.__unnamed_16_7177b9f3 T.__unnamed_16_88e91ef6 T.__unnamed_16_8c506c98 T.__unnamed_16_9ac2e5f8 T.__unnamed_16_b93842ad T.__unnamed_16_b9c62eab T.__unnamed_16_bb584060 T.__unnamed_16_dba55c7c T.__unnamed_16_e70c268b T.__unnamed_16_e734d694 T.__unnamed_16_eac6dbea T.__unnamed_16_f6cae4c2 T.__unnamed_16_fe36e4f4 T.__unnamed_1_29794256 T.__unnamed_1_2dc63b48 T.__unnamed_1_2ef8da39 T.__unnamed_1_faa7dc71 T.__unnamed_20_f4d2e6d8 T.__unnamed_24_41cbc8c0 T.__unnamed_24_5419c914 T.__unnamed_24_67a5ff10 T.__unnamed_24_72c3976e T.__unnamed_24_a26050bb T.__unnamed_24_b8f476db T.__unnamed_24_d09044b4 T.__unnamed_2_46cc4597 T.__unnamed_40_7218f704 T.__unnamed_40_c55c9377 T.__unnamed_44_5584090d T.__unnamed_48_cf99b13f T.__unnamed_4_069846fb T.__unnamed_4_224c32f4 T.__unnamed_4_2de698da T.__unnamed_4_3a2fdc5e T.__unnamed_4_3a4c1a13 T.__unnamed_4_43913aa5 T.__unnamed_4_4e8dd2ba T.__unnamed_4_52603077 T.__unnamed_4_52c594f7 T.__unnamed_4_5ca00198 T.__unnamed_4_6ac6463c T.__unnamed_4_6f9ac8e1 T.__unnamed_4_7a02167b T.__unnamed_4_7d9d0c7e T.__unnamed_4_82f7a864 T.__unnamed_4_9aec220b T.__unnamed_4_a97c65a1 T.__unnamed_4_c3479730 T.__unnamed_4_d99b6e2b T.__unnamed_4_f19b65c1 T.__unnamed_4_fa10fc16 T.__unnamed_8_01efa60d T.__unnamed_8_08d4cef8 T.__unnamed_8_0a898c0c T.__unnamed_8_1330f93a T.__unnamed_8_181d0de9 T.__unnamed_8_4812764d T.__unnamed_8_559a91e6 T.__unnamed_8_5845b309 T.__unnamed_8_58ee4a31 T.__unnamed_8_61acf4ce T.__unnamed_8_6acfee04 T.__unnamed_8_7f26a9dd T.__unnamed_8_87add0bd T.__unnamed_8_b2773e4c T.__unnamed_8_de890d4e T.__unnamed_8_ef9ba0d3)(distinct Globals BOOGIE_LARGE_INT_4294967273))
)
(assert (forall ((f |T@[Int]Int|) (x Int) (y Int) ) (!  (=> (and (= (|Select__T@[Int]Int_| f x) x) (ReachBetween f x y y)) (= x y))
 :qid |KbdCreateClassObjectbpl.3268:14|
 :skolemid |1129|
 :pattern ( (|Select__T@[Int]Int_| f x) (ReachBetween f x y y))
)))
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (choose a b c) b))
 :qid |KbdCreateClassObjectbpl.3168:14|
 :skolemid |1110|
 :pattern ( (choose a b c))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (=> (or (= a@@0 0) (= b@@0 0)) (= (BIT_BAND a@@0 b@@0) 0))
 :qid |KbdCreateClassObjectbpl.3174:14|
 :skolemid |1114|
 :pattern ( (BIT_BAND a@@0 b@@0))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@0 Int) (y@@0 Int) (z Int) (w Int) ) (! (ReachBetween f@@0 x@@0 (|Select__T@[Int]Int_| f@@0 x@@0) (|Select__T@[Int]Int_| f@@0 x@@0))
 :qid |KbdCreateClassObjectbpl.3262:14|
 :skolemid |1127|
 :pattern ( (ReachBetween f@@0 y@@0 z w) (|Select__T@[Int]Int_| f@@0 x@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) (size Int) ) (!  (and (<= (* size (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size)) (- a@@1 b@@1)) (< (- a@@1 b@@1) (* size (+ (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size) 1))))
 :qid |KbdCreateClassObjectbpl.3107:16|
 :skolemid |1102|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (and (and (POW2 a@@2) (POW2 b@@2)) (not (= a@@2 b@@2))) (= (BIT_BAND a@@2 b@@2) 0))
 :qid |KbdCreateClassObjectbpl.3173:14|
 :skolemid |1113|
 :pattern ( (BIT_BAND a@@2 b@@2))
)))
(assert (forall ((n Int) (x@@1 Int) (y@@1 Int) ) (!  (=> (and (<= x@@1 y@@1) (= (Rep n x@@1) (Rep n y@@1))) (|Select__T@[Int]Bool_| (AtLeast n x@@1) y@@1))
 :qid |KbdCreateClassObjectbpl.43:14|
 :skolemid |4|
 :pattern ( (AtLeast n x@@1) (Rep n x@@1) (Rep n y@@1))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@2 Int) (y@@2 Int) (z@@0 Int) ) (!  (=> (ReachBetween f@@1 x@@2 y@@2 z@@0) (and (ReachBetween f@@1 x@@2 y@@2 y@@2) (ReachBetween f@@1 y@@2 z@@0 z@@0)))
 :qid |KbdCreateClassObjectbpl.3277:14|
 :skolemid |1132|
 :pattern ( (ReachBetween f@@1 x@@2 y@@2 z@@0))
)))
(assert (forall ((x@@3 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@3 0 1) (Abandoned___unnamed_1_29794256Inv x@@3))
 :qid |KbdCreateClassObjectbpl.1319:15|
 :skolemid |50|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@3 0 1))
)))
(assert (forall ((x@@4 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@4 0 1) (Absolute___unnamed_1_29794256Inv x@@4))
 :qid |KbdCreateClassObjectbpl.1336:15|
 :skolemid |60|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@4 0 1))
)))
(assert (forall ((x@@5 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@5 0 1) (Common__IO_REMOVE_LOCKInv x@@5))
 :qid |KbdCreateClassObjectbpl.1455:15|
 :skolemid |130|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@5 0 1))
)))
(assert (forall ((x@@6 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@6 0 1) (DebugActive___unnamed_1_2dc63b48Inv x@@6))
 :qid |KbdCreateClassObjectbpl.1540:15|
 :skolemid |180|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@6 0 1))
)))
(assert (forall ((x@@7 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@7 0 1) (DpcActive___unnamed_1_2dc63b48Inv x@@7))
 :qid |KbdCreateClassObjectbpl.1608:15|
 :skolemid |220|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@7 0 1))
)))
(assert (forall ((x@@8 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@8 0 1) (Flink__LIST_ENTRYInv x@@8))
 :qid |KbdCreateClassObjectbpl.1710:15|
 :skolemid |280|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@8 0 1))
)))
(assert (forall ((x@@9 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@9 0 1) (GuidCount__WMILIB_CONTEXTInv x@@9))
 :qid |KbdCreateClassObjectbpl.1744:15|
 :skolemid |300|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@9 0 1))
)))
(assert (forall ((x@@10 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@10 0 1) (Hand___unnamed_1_2ef8da39Inv x@@10))
 :qid |KbdCreateClassObjectbpl.1778:15|
 :skolemid |320|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@10 0 1))
)))
(assert (forall ((x@@11 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@11 0 1) (Header__KEVENTInv x@@11))
 :qid |KbdCreateClassObjectbpl.1795:15|
 :skolemid |330|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@11 0 1))
)))
(assert (forall ((x@@12 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@12 0 1) (Inserted___unnamed_1_2dc63b48Inv x@@12))
 :qid |KbdCreateClassObjectbpl.1897:15|
 :skolemid |390|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@12 0 1))
)))
(assert (forall ((x@@13 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@13 0 1) (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@13))
 :qid |KbdCreateClassObjectbpl.1982:15|
 :skolemid |440|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@13 0 1))
)))
(assert (forall ((x@@14 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@14 0 1) (Length__UNICODE_STRINGInv x@@14))
 :qid |KbdCreateClassObjectbpl.2050:15|
 :skolemid |480|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@14 0 1))
)))
(assert (forall ((x@@15 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@15 0 1) (Lock___unnamed_4_a97c65a1Inv x@@15))
 :qid |KbdCreateClassObjectbpl.2101:15|
 :skolemid |510|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@15 0 1))
)))
(assert (forall ((x@@16 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@16 0 1) (NpxIrql___unnamed_1_29794256Inv x@@16))
 :qid |KbdCreateClassObjectbpl.2220:15|
 :skolemid |580|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@16 0 1))
)))
(assert (forall ((x@@17 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@17 0 1) (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@17))
 :qid |KbdCreateClassObjectbpl.2441:15|
 :skolemid |710|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@17 0 1))
)))
(assert (forall ((x@@18 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@18 0 1) (Self__DEVICE_EXTENSIONInv x@@18))
 :qid |KbdCreateClassObjectbpl.2509:15|
 :skolemid |750|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@18 0 1))
)))
(assert (forall ((x@@19 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@19 0 1) (Signalling___unnamed_1_29794256Inv x@@19))
 :qid |KbdCreateClassObjectbpl.2594:15|
 :skolemid |800|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@19 0 1))
)))
(assert (forall ((x@@20 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@20 0 1) (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@20))
 :qid |KbdCreateClassObjectbpl.2611:15|
 :skolemid |810|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@20 0 1))
)))
(assert (forall ((x@@21 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@21 0 1) (Size___unnamed_1_2ef8da39Inv x@@21))
 :qid |KbdCreateClassObjectbpl.2628:15|
 :skolemid |820|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@21 0 1))
)))
(assert (forall ((x@@22 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@22 0 1) (Type__KEYBOARD_IDInv x@@22))
 :qid |KbdCreateClassObjectbpl.2849:15|
 :skolemid |950|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@22 0 1))
)))
(assert (forall ((x@@23 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@23 0 1) (Type___unnamed_4_5ca00198Inv x@@23))
 :qid |KbdCreateClassObjectbpl.2866:15|
 :skolemid |960|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@23 0 1))
)))
(assert (forall ((x@@24 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@24 0 1) (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@24))
 :qid |KbdCreateClassObjectbpl.2900:15|
 :skolemid |980|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@24 0 1))
)))
(assert (forall ((x@@25 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@25 0 1) (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@25))
 :qid |KbdCreateClassObjectbpl.2917:15|
 :skolemid |990|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@25 0 1))
)))
(assert (forall ((x@@26 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@26 0 1) (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@26))
 :qid |KbdCreateClassObjectbpl.3087:15|
 :skolemid |1090|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@26 0 1))
)))
(assert (forall ((x@@27 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@27 0 1) (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@27))
 :qid |KbdCreateClassObjectbpl.3104:15|
 :skolemid |1100|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@27 0 1))
)))
(assert (forall ((x@@28 Int) ) (! (= (MINUS_LEFT_PTR x@@28 1 0) (Abandoned___unnamed_1_29794256Inv x@@28))
 :qid |KbdCreateClassObjectbpl.1320:15|
 :skolemid |51|
 :pattern ( (MINUS_LEFT_PTR x@@28 1 0))
)))
(assert (forall ((x@@29 Int) ) (! (= (MINUS_LEFT_PTR x@@29 1 0) (Absolute___unnamed_1_29794256Inv x@@29))
 :qid |KbdCreateClassObjectbpl.1337:15|
 :skolemid |61|
 :pattern ( (MINUS_LEFT_PTR x@@29 1 0))
)))
(assert (forall ((x@@30 Int) ) (! (= (MINUS_LEFT_PTR x@@30 1 0) (Common__IO_REMOVE_LOCKInv x@@30))
 :qid |KbdCreateClassObjectbpl.1456:15|
 :skolemid |131|
 :pattern ( (MINUS_LEFT_PTR x@@30 1 0))
)))
(assert (forall ((x@@31 Int) ) (! (= (MINUS_LEFT_PTR x@@31 1 0) (DebugActive___unnamed_1_2dc63b48Inv x@@31))
 :qid |KbdCreateClassObjectbpl.1541:15|
 :skolemid |181|
 :pattern ( (MINUS_LEFT_PTR x@@31 1 0))
)))
(assert (forall ((x@@32 Int) ) (! (= (MINUS_LEFT_PTR x@@32 1 0) (DpcActive___unnamed_1_2dc63b48Inv x@@32))
 :qid |KbdCreateClassObjectbpl.1609:15|
 :skolemid |221|
 :pattern ( (MINUS_LEFT_PTR x@@32 1 0))
)))
(assert (forall ((x@@33 Int) ) (! (= (MINUS_LEFT_PTR x@@33 1 0) (Flink__LIST_ENTRYInv x@@33))
 :qid |KbdCreateClassObjectbpl.1711:15|
 :skolemid |281|
 :pattern ( (MINUS_LEFT_PTR x@@33 1 0))
)))
(assert (forall ((x@@34 Int) ) (! (= (MINUS_LEFT_PTR x@@34 1 0) (GuidCount__WMILIB_CONTEXTInv x@@34))
 :qid |KbdCreateClassObjectbpl.1745:15|
 :skolemid |301|
 :pattern ( (MINUS_LEFT_PTR x@@34 1 0))
)))
(assert (forall ((x@@35 Int) ) (! (= (MINUS_LEFT_PTR x@@35 1 0) (Hand___unnamed_1_2ef8da39Inv x@@35))
 :qid |KbdCreateClassObjectbpl.1779:15|
 :skolemid |321|
 :pattern ( (MINUS_LEFT_PTR x@@35 1 0))
)))
(assert (forall ((x@@36 Int) ) (! (= (MINUS_LEFT_PTR x@@36 1 0) (Header__KEVENTInv x@@36))
 :qid |KbdCreateClassObjectbpl.1796:15|
 :skolemid |331|
 :pattern ( (MINUS_LEFT_PTR x@@36 1 0))
)))
(assert (forall ((x@@37 Int) ) (! (= (MINUS_LEFT_PTR x@@37 1 0) (Inserted___unnamed_1_2dc63b48Inv x@@37))
 :qid |KbdCreateClassObjectbpl.1898:15|
 :skolemid |391|
 :pattern ( (MINUS_LEFT_PTR x@@37 1 0))
)))
(assert (forall ((x@@38 Int) ) (! (= (MINUS_LEFT_PTR x@@38 1 0) (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@38))
 :qid |KbdCreateClassObjectbpl.1983:15|
 :skolemid |441|
 :pattern ( (MINUS_LEFT_PTR x@@38 1 0))
)))
(assert (forall ((x@@39 Int) ) (! (= (MINUS_LEFT_PTR x@@39 1 0) (Length__UNICODE_STRINGInv x@@39))
 :qid |KbdCreateClassObjectbpl.2051:15|
 :skolemid |481|
 :pattern ( (MINUS_LEFT_PTR x@@39 1 0))
)))
(assert (forall ((x@@40 Int) ) (! (= (MINUS_LEFT_PTR x@@40 1 0) (Lock___unnamed_4_a97c65a1Inv x@@40))
 :qid |KbdCreateClassObjectbpl.2102:15|
 :skolemid |511|
 :pattern ( (MINUS_LEFT_PTR x@@40 1 0))
)))
(assert (forall ((x@@41 Int) ) (! (= (MINUS_LEFT_PTR x@@41 1 0) (NpxIrql___unnamed_1_29794256Inv x@@41))
 :qid |KbdCreateClassObjectbpl.2221:15|
 :skolemid |581|
 :pattern ( (MINUS_LEFT_PTR x@@41 1 0))
)))
(assert (forall ((x@@42 Int) ) (! (= (MINUS_LEFT_PTR x@@42 1 0) (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@42))
 :qid |KbdCreateClassObjectbpl.2442:15|
 :skolemid |711|
 :pattern ( (MINUS_LEFT_PTR x@@42 1 0))
)))
(assert (forall ((x@@43 Int) ) (! (= (MINUS_LEFT_PTR x@@43 1 0) (Self__DEVICE_EXTENSIONInv x@@43))
 :qid |KbdCreateClassObjectbpl.2510:15|
 :skolemid |751|
 :pattern ( (MINUS_LEFT_PTR x@@43 1 0))
)))
(assert (forall ((x@@44 Int) ) (! (= (MINUS_LEFT_PTR x@@44 1 0) (Signalling___unnamed_1_29794256Inv x@@44))
 :qid |KbdCreateClassObjectbpl.2595:15|
 :skolemid |801|
 :pattern ( (MINUS_LEFT_PTR x@@44 1 0))
)))
(assert (forall ((x@@45 Int) ) (! (= (MINUS_LEFT_PTR x@@45 1 0) (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@45))
 :qid |KbdCreateClassObjectbpl.2612:15|
 :skolemid |811|
 :pattern ( (MINUS_LEFT_PTR x@@45 1 0))
)))
(assert (forall ((x@@46 Int) ) (! (= (MINUS_LEFT_PTR x@@46 1 0) (Size___unnamed_1_2ef8da39Inv x@@46))
 :qid |KbdCreateClassObjectbpl.2629:15|
 :skolemid |821|
 :pattern ( (MINUS_LEFT_PTR x@@46 1 0))
)))
(assert (forall ((x@@47 Int) ) (! (= (MINUS_LEFT_PTR x@@47 1 0) (Type__KEYBOARD_IDInv x@@47))
 :qid |KbdCreateClassObjectbpl.2850:15|
 :skolemid |951|
 :pattern ( (MINUS_LEFT_PTR x@@47 1 0))
)))
(assert (forall ((x@@48 Int) ) (! (= (MINUS_LEFT_PTR x@@48 1 0) (Type___unnamed_4_5ca00198Inv x@@48))
 :qid |KbdCreateClassObjectbpl.2867:15|
 :skolemid |961|
 :pattern ( (MINUS_LEFT_PTR x@@48 1 0))
)))
(assert (forall ((x@@49 Int) ) (! (= (MINUS_LEFT_PTR x@@49 1 0) (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@49))
 :qid |KbdCreateClassObjectbpl.2901:15|
 :skolemid |981|
 :pattern ( (MINUS_LEFT_PTR x@@49 1 0))
)))
(assert (forall ((x@@50 Int) ) (! (= (MINUS_LEFT_PTR x@@50 1 0) (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@50))
 :qid |KbdCreateClassObjectbpl.2918:15|
 :skolemid |991|
 :pattern ( (MINUS_LEFT_PTR x@@50 1 0))
)))
(assert (forall ((x@@51 Int) ) (! (= (MINUS_LEFT_PTR x@@51 1 0) (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@51))
 :qid |KbdCreateClassObjectbpl.3088:15|
 :skolemid |1091|
 :pattern ( (MINUS_LEFT_PTR x@@51 1 0))
)))
(assert (forall ((x@@52 Int) ) (! (= (MINUS_LEFT_PTR x@@52 1 0) (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@52))
 :qid |KbdCreateClassObjectbpl.3105:15|
 :skolemid |1101|
 :pattern ( (MINUS_LEFT_PTR x@@52 1 0))
)))
(assert (forall ((x@@53 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@53 1 1) (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@53))
 :qid |KbdCreateClassObjectbpl.2492:15|
 :skolemid |740|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@53 1 1))
)))
(assert (forall ((x@@54 Int) ) (! (= (MINUS_LEFT_PTR x@@54 1 1) (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@54))
 :qid |KbdCreateClassObjectbpl.2493:15|
 :skolemid |741|
 :pattern ( (MINUS_LEFT_PTR x@@54 1 1))
)))
(assert (forall ((x@@55 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@55 1 1) (Subtype__KEYBOARD_IDInv x@@55))
 :qid |KbdCreateClassObjectbpl.2696:15|
 :skolemid |860|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@55 1 1))
)))
(assert (forall ((x@@56 Int) ) (! (= (MINUS_LEFT_PTR x@@56 1 1) (Subtype__KEYBOARD_IDInv x@@56))
 :qid |KbdCreateClassObjectbpl.2697:15|
 :skolemid |861|
 :pattern ( (MINUS_LEFT_PTR x@@56 1 1))
)))
(assert (forall ((x@@57 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@57 1 1) (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@57))
 :qid |KbdCreateClassObjectbpl.3036:15|
 :skolemid |1060|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@57 1 1))
)))
(assert (forall ((x@@58 Int) ) (! (= (MINUS_LEFT_PTR x@@58 1 1) (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@58))
 :qid |KbdCreateClassObjectbpl.3037:15|
 :skolemid |1061|
 :pattern ( (MINUS_LEFT_PTR x@@58 1 1))
)))
(assert (forall ((x@@59 Int) ) (! (= (MINUS_LEFT_PTR x@@59 1 2) (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@59))
 :qid |KbdCreateClassObjectbpl.2000:15|
 :skolemid |451|
 :pattern ( (MINUS_LEFT_PTR x@@59 1 2))
)))
(assert (forall ((x@@60 Int) ) (! (= (MINUS_LEFT_PTR x@@60 1 2) (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@60))
 :qid |KbdCreateClassObjectbpl.2017:15|
 :skolemid |461|
 :pattern ( (MINUS_LEFT_PTR x@@60 1 2))
)))
(assert (forall ((x@@61 Int) ) (! (= (MINUS_LEFT_PTR x@@61 1 2) (MaximumLength__UNICODE_STRINGInv x@@61))
 :qid |KbdCreateClassObjectbpl.2153:15|
 :skolemid |541|
 :pattern ( (MINUS_LEFT_PTR x@@61 1 2))
)))
(assert (forall ((x@@62 Int) ) (! (= (MINUS_LEFT_PTR x@@62 1 2) (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@62))
 :qid |KbdCreateClassObjectbpl.2374:15|
 :skolemid |671|
 :pattern ( (MINUS_LEFT_PTR x@@62 1 2))
)))
(assert (forall ((x@@63 Int) ) (! (= (MINUS_LEFT_PTR x@@63 1 2) (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@63))
 :qid |KbdCreateClassObjectbpl.3071:15|
 :skolemid |1081|
 :pattern ( (MINUS_LEFT_PTR x@@63 1 2))
)))
(assert (forall ((x@@64 Int) ) (! (= (MINUS_LEFT_PTR x@@64 1 3) (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@64))
 :qid |KbdCreateClassObjectbpl.3054:15|
 :skolemid |1071|
 :pattern ( (MINUS_LEFT_PTR x@@64 1 3))
)))
(assert (forall ((x@@65 Int) ) (! (= (MINUS_LEFT_PTR x@@65 1 4) (Blink__LIST_ENTRYInv x@@65))
 :qid |KbdCreateClassObjectbpl.1405:15|
 :skolemid |101|
 :pattern ( (MINUS_LEFT_PTR x@@65 1 4))
)))
(assert (forall ((x@@66 Int) ) (! (= (MINUS_LEFT_PTR x@@66 1 4) (Buffer__UNICODE_STRINGInv x@@66))
 :qid |KbdCreateClassObjectbpl.1439:15|
 :skolemid |121|
 :pattern ( (MINUS_LEFT_PTR x@@66 1 4))
)))
(assert (forall ((x@@67 Int) ) (! (= (MINUS_LEFT_PTR x@@67 1 4) (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@67))
 :qid |KbdCreateClassObjectbpl.1558:15|
 :skolemid |191|
 :pattern ( (MINUS_LEFT_PTR x@@67 1 4))
)))
(assert (forall ((x@@68 Int) ) (! (= (MINUS_LEFT_PTR x@@68 1 4) (GrandMaster__GLOBALSInv x@@68))
 :qid |KbdCreateClassObjectbpl.1728:15|
 :skolemid |291|
 :pattern ( (MINUS_LEFT_PTR x@@68 1 4))
)))
(assert (forall ((x@@69 Int) ) (! (= (MINUS_LEFT_PTR x@@69 1 4) (GuidList__WMILIB_CONTEXTInv x@@69))
 :qid |KbdCreateClassObjectbpl.1762:15|
 :skolemid |311|
 :pattern ( (MINUS_LEFT_PTR x@@69 1 4))
)))
(assert (forall ((x@@70 Int) ) (! (= (MINUS_LEFT_PTR x@@70 1 4) (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@70))
 :qid |KbdCreateClassObjectbpl.1813:15|
 :skolemid |341|
 :pattern ( (MINUS_LEFT_PTR x@@70 1 4))
)))
(assert (forall ((x@@71 Int) ) (! (= (MINUS_LEFT_PTR x@@71 1 4) (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@71))
 :qid |KbdCreateClassObjectbpl.1915:15|
 :skolemid |401|
 :pattern ( (MINUS_LEFT_PTR x@@71 1 4))
)))
(assert (forall ((x@@72 Int) ) (! (= (MINUS_LEFT_PTR x@@72 1 4) (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@72))
 :qid |KbdCreateClassObjectbpl.2238:15|
 :skolemid |591|
 :pattern ( (MINUS_LEFT_PTR x@@72 1 4))
)))
(assert (forall ((x@@73 Int) ) (! (= (MINUS_LEFT_PTR x@@73 1 4) (SignalState__DISPATCHER_HEADERInv x@@73))
 :qid |KbdCreateClassObjectbpl.2578:15|
 :skolemid |791|
 :pattern ( (MINUS_LEFT_PTR x@@73 1 4))
)))
(assert (forall ((x@@74 Int) ) (! (= (MINUS_LEFT_PTR x@@74 1 4) (TrueClassDevice__DEVICE_EXTENSIONInv x@@74))
 :qid |KbdCreateClassObjectbpl.2816:15|
 :skolemid |931|
 :pattern ( (MINUS_LEFT_PTR x@@74 1 4))
)))
(assert (forall ((x@@75 Int) ) (! (= (MINUS_LEFT_PTR x@@75 1 6) (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@75))
 :qid |KbdCreateClassObjectbpl.2255:15|
 :skolemid |601|
 :pattern ( (MINUS_LEFT_PTR x@@75 1 6))
)))
(assert (forall ((x@@76 Int) ) (! (= (MINUS_LEFT_PTR x@@76 1 8) (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@76))
 :qid |KbdCreateClassObjectbpl.2136:15|
 :skolemid |531|
 :pattern ( (MINUS_LEFT_PTR x@@76 1 8))
)))
(assert (forall ((x@@77 Int) ) (! (= (MINUS_LEFT_PTR x@@77 1 8) (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@77))
 :qid |KbdCreateClassObjectbpl.2272:15|
 :skolemid |611|
 :pattern ( (MINUS_LEFT_PTR x@@77 1 8))
)))
(assert (forall ((x@@78 Int) ) (! (= (MINUS_LEFT_PTR x@@78 1 8) (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@78))
 :qid |KbdCreateClassObjectbpl.2357:15|
 :skolemid |661|
 :pattern ( (MINUS_LEFT_PTR x@@78 1 8))
)))
(assert (forall ((x@@79 Int) ) (! (= (MINUS_LEFT_PTR x@@79 1 8) (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@79))
 :qid |KbdCreateClassObjectbpl.2408:15|
 :skolemid |691|
 :pattern ( (MINUS_LEFT_PTR x@@79 1 8))
)))
(assert (forall ((x@@80 Int) ) (! (= (MINUS_LEFT_PTR x@@80 1 8) (TopPort__DEVICE_EXTENSIONInv x@@80))
 :qid |KbdCreateClassObjectbpl.2799:15|
 :skolemid |921|
 :pattern ( (MINUS_LEFT_PTR x@@80 1 8))
)))
(assert (forall ((x@@81 Int) ) (! (= (MINUS_LEFT_PTR x@@81 1 8) (WaitListHead__DISPATCHER_HEADERInv x@@81))
 :qid |KbdCreateClassObjectbpl.2935:15|
 :skolemid |1001|
 :pattern ( (MINUS_LEFT_PTR x@@81 1 8))
)))
(assert (forall ((x@@82 Int) ) (! (= (MINUS_LEFT_PTR x@@82 1 12) (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@82))
 :qid |KbdCreateClassObjectbpl.1864:15|
 :skolemid |371|
 :pattern ( (MINUS_LEFT_PTR x@@82 1 12))
)))
(assert (forall ((x@@83 Int) ) (! (= (MINUS_LEFT_PTR x@@83 1 12) (PDO__DEVICE_EXTENSIONInv x@@83))
 :qid |KbdCreateClassObjectbpl.2306:15|
 :skolemid |631|
 :pattern ( (MINUS_LEFT_PTR x@@83 1 12))
)))
(assert (forall ((x@@84 Int) ) (! (= (MINUS_LEFT_PTR x@@84 1 12) (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@84))
 :qid |KbdCreateClassObjectbpl.2340:15|
 :skolemid |651|
 :pattern ( (MINUS_LEFT_PTR x@@84 1 12))
)))
(assert (forall ((x@@85 Int) ) (! (= (MINUS_LEFT_PTR x@@85 1 16) (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@85))
 :qid |KbdCreateClassObjectbpl.1354:15|
 :skolemid |71|
 :pattern ( (MINUS_LEFT_PTR x@@85 1 16))
)))
(assert (forall ((x@@86 Int) ) (! (= (MINUS_LEFT_PTR x@@86 1 16) (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@86))
 :qid |KbdCreateClassObjectbpl.1949:15|
 :skolemid |421|
 :pattern ( (MINUS_LEFT_PTR x@@86 1 16))
)))
(assert (forall ((x@@87 Int) ) (! (= (MINUS_LEFT_PTR x@@87 1 16) (RemoveLock__DEVICE_EXTENSIONInv x@@87))
 :qid |KbdCreateClassObjectbpl.2425:15|
 :skolemid |701|
 :pattern ( (MINUS_LEFT_PTR x@@87 1 16))
)))
(assert (forall ((x@@88 Int) ) (! (= (MINUS_LEFT_PTR x@@88 1 16) (SetWmiDataBlock__WMILIB_CONTEXTInv x@@88))
 :qid |KbdCreateClassObjectbpl.2544:15|
 :skolemid |771|
 :pattern ( (MINUS_LEFT_PTR x@@88 1 16))
)))
(assert (forall ((x@@89 Int) ) (! (= (MINUS_LEFT_PTR x@@89 1 20) (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@89))
 :qid |KbdCreateClassObjectbpl.2085:15|
 :skolemid |501|
 :pattern ( (MINUS_LEFT_PTR x@@89 1 20))
)))
(assert (forall ((x@@90 Int) ) (! (= (MINUS_LEFT_PTR x@@90 1 20) (SetWmiDataItem__WMILIB_CONTEXTInv x@@90))
 :qid |KbdCreateClassObjectbpl.2561:15|
 :skolemid |781|
 :pattern ( (MINUS_LEFT_PTR x@@90 1 20))
)))
(assert (forall ((x@@91 Int) ) (! (= (MINUS_LEFT_PTR x@@91 1 22) (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@91))
 :qid |KbdCreateClassObjectbpl.1932:15|
 :skolemid |411|
 :pattern ( (MINUS_LEFT_PTR x@@91 1 22))
)))
(assert (forall ((x@@92 Int) ) (! (= (MINUS_LEFT_PTR x@@92 1 24) (Dbg__IO_REMOVE_LOCKInv x@@92))
 :qid |KbdCreateClassObjectbpl.1524:15|
 :skolemid |171|
 :pattern ( (MINUS_LEFT_PTR x@@92 1 24))
)))
(assert (forall ((x@@93 Int) ) (! (= (MINUS_LEFT_PTR x@@93 1 24) (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@93))
 :qid |KbdCreateClassObjectbpl.1643:15|
 :skolemid |241|
 :pattern ( (MINUS_LEFT_PTR x@@93 1 24))
)))
(assert (forall ((x@@94 Int) ) (! (= (MINUS_LEFT_PTR x@@94 1 24) (Mutex__GLOBALSInv x@@94))
 :qid |KbdCreateClassObjectbpl.2204:15|
 :skolemid |571|
 :pattern ( (MINUS_LEFT_PTR x@@94 1 24))
)))
(assert (forall ((x@@95 Int) ) (! (= (MINUS_LEFT_PTR x@@95 1 28) (Flags__DEVICE_OBJECTInv x@@95))
 :qid |KbdCreateClassObjectbpl.1694:15|
 :skolemid |271|
 :pattern ( (MINUS_LEFT_PTR x@@95 1 28))
)))
(assert (forall ((x@@96 Int) ) (! (= (MINUS_LEFT_PTR x@@96 1 28) (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@96))
 :qid |KbdCreateClassObjectbpl.2663:15|
 :skolemid |841|
 :pattern ( (MINUS_LEFT_PTR x@@96 1 28))
)))
(assert (forall ((x@@97 Int) ) (! (= (MINUS_LEFT_PTR x@@97 1 28) (WmiFunctionControl__WMILIB_CONTEXTInv x@@97))
 :qid |KbdCreateClassObjectbpl.3003:15|
 :skolemid |1041|
 :pattern ( (MINUS_LEFT_PTR x@@97 1 28))
)))
(assert (forall ((x@@98 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@98 2 1) (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@98))
 :qid |KbdCreateClassObjectbpl.1999:15|
 :skolemid |450|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@98 2 1))
)))
(assert (forall ((x@@99 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@99 2 1) (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@99))
 :qid |KbdCreateClassObjectbpl.2016:15|
 :skolemid |460|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@99 2 1))
)))
(assert (forall ((x@@100 Int) ) (! (= (MINUS_LEFT_PTR x@@100 1 32) (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@100))
 :qid |KbdCreateClassObjectbpl.2119:15|
 :skolemid |521|
 :pattern ( (MINUS_LEFT_PTR x@@100 1 32))
)))
(assert (forall ((x@@101 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@101 2 1) (MaximumLength__UNICODE_STRINGInv x@@101))
 :qid |KbdCreateClassObjectbpl.2152:15|
 :skolemid |540|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@101 2 1))
)))
(assert (forall ((x@@102 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@102 2 1) (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@102))
 :qid |KbdCreateClassObjectbpl.2373:15|
 :skolemid |670|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@102 2 1))
)))
(assert (forall ((x@@103 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@103 2 1) (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@103))
 :qid |KbdCreateClassObjectbpl.3070:15|
 :skolemid |1080|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@103 2 1))
)))
(assert (forall ((x@@104 Int) ) (! (= (MINUS_LEFT_PTR x@@104 1 36) (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@104))
 :qid |KbdCreateClassObjectbpl.2459:15|
 :skolemid |721|
 :pattern ( (MINUS_LEFT_PTR x@@104 1 36))
)))
(assert (forall ((x@@105 Int) ) (! (= (MINUS_LEFT_PTR x@@105 1 40) (DeviceExtension__DEVICE_OBJECTInv x@@105))
 :qid |KbdCreateClassObjectbpl.1575:15|
 :skolemid |201|
 :pattern ( (MINUS_LEFT_PTR x@@105 1 40))
)))
(assert (forall ((x@@106 Int) ) (! (= (MINUS_LEFT_PTR x@@106 1 52) (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@106))
 :qid |KbdCreateClassObjectbpl.2476:15|
 :skolemid |731|
 :pattern ( (MINUS_LEFT_PTR x@@106 1 52))
)))
(assert (forall ((x@@107 Int) ) (! (= (MINUS_LEFT_PTR x@@107 1 56) (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@107))
 :qid |KbdCreateClassObjectbpl.1422:15|
 :skolemid |111|
 :pattern ( (MINUS_LEFT_PTR x@@107 1 56))
)))
(assert (forall ((x@@108 Int) ) (! (= (MINUS_LEFT_PTR x@@108 1 56) (ConnectOneClassToOnePort__GLOBALSInv x@@108))
 :qid |KbdCreateClassObjectbpl.1473:15|
 :skolemid |141|
 :pattern ( (MINUS_LEFT_PTR x@@108 1 56))
)))
(assert (forall ((x@@109 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@109 3 1) (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@109))
 :qid |KbdCreateClassObjectbpl.3053:15|
 :skolemid |1070|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@109 3 1))
)))
(assert (forall ((x@@110 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@110 4 1) (Blink__LIST_ENTRYInv x@@110))
 :qid |KbdCreateClassObjectbpl.1404:15|
 :skolemid |100|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@110 4 1))
)))
(assert (forall ((x@@111 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@111 4 1) (Buffer__UNICODE_STRINGInv x@@111))
 :qid |KbdCreateClassObjectbpl.1438:15|
 :skolemid |120|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@111 4 1))
)))
(assert (forall ((x@@112 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@112 4 1) (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@112))
 :qid |KbdCreateClassObjectbpl.1557:15|
 :skolemid |190|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@112 4 1))
)))
(assert (forall ((x@@113 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@113 4 1) (GrandMaster__GLOBALSInv x@@113))
 :qid |KbdCreateClassObjectbpl.1727:15|
 :skolemid |290|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@113 4 1))
)))
(assert (forall ((x@@114 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@114 4 1) (GuidList__WMILIB_CONTEXTInv x@@114))
 :qid |KbdCreateClassObjectbpl.1761:15|
 :skolemid |310|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@114 4 1))
)))
(assert (forall ((x@@115 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@115 4 1) (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@115))
 :qid |KbdCreateClassObjectbpl.1812:15|
 :skolemid |340|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@115 4 1))
)))
(assert (forall ((x@@116 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@116 4 1) (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@116))
 :qid |KbdCreateClassObjectbpl.1914:15|
 :skolemid |400|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@116 4 1))
)))
(assert (forall ((x@@117 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@117 4 1) (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@117))
 :qid |KbdCreateClassObjectbpl.2237:15|
 :skolemid |590|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@117 4 1))
)))
(assert (forall ((x@@118 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@118 4 1) (SignalState__DISPATCHER_HEADERInv x@@118))
 :qid |KbdCreateClassObjectbpl.2577:15|
 :skolemid |790|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@118 4 1))
)))
(assert (forall ((x@@119 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@119 4 1) (TrueClassDevice__DEVICE_EXTENSIONInv x@@119))
 :qid |KbdCreateClassObjectbpl.2815:15|
 :skolemid |930|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@119 4 1))
)))
(assert (forall ((x@@120 Int) ) (! (= (MINUS_LEFT_PTR x@@120 1 104) (PnP__DEVICE_EXTENSIONInv x@@120))
 :qid |KbdCreateClassObjectbpl.2323:15|
 :skolemid |641|
 :pattern ( (MINUS_LEFT_PTR x@@120 1 104))
)))
(assert (forall ((x@@121 Int) ) (! (= (MINUS_LEFT_PTR x@@121 1 105) (Started__DEVICE_EXTENSIONInv x@@121))
 :qid |KbdCreateClassObjectbpl.2680:15|
 :skolemid |851|
 :pattern ( (MINUS_LEFT_PTR x@@121 1 105))
)))
(assert (forall ((x@@122 Int) ) (! (= (MINUS_LEFT_PTR x@@122 1 106) (AllowDisable__DEVICE_EXTENSIONInv x@@122))
 :qid |KbdCreateClassObjectbpl.1371:15|
 :skolemid |81|
 :pattern ( (MINUS_LEFT_PTR x@@122 1 106))
)))
(assert (forall ((x@@123 Int) ) (! (= (MINUS_LEFT_PTR x@@123 1 108) (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@123))
 :qid |KbdCreateClassObjectbpl.2986:15|
 :skolemid |1031|
 :pattern ( (MINUS_LEFT_PTR x@@123 1 108))
)))
(assert (forall ((x@@124 Int) ) (! (= (MINUS_LEFT_PTR x@@124 1 112) (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@124))
 :qid |KbdCreateClassObjectbpl.2833:15|
 :skolemid |941|
 :pattern ( (MINUS_LEFT_PTR x@@124 1 112))
)))
(assert (forall ((x@@125 Int) ) (! (= (MINUS_LEFT_PTR x@@125 1 116) (InputCount__DEVICE_EXTENSIONInv x@@125))
 :qid |KbdCreateClassObjectbpl.1847:15|
 :skolemid |361|
 :pattern ( (MINUS_LEFT_PTR x@@125 1 116))
)))
(assert (forall ((x@@126 Int) ) (! (= (MINUS_LEFT_PTR x@@126 1 120) (SymbolicLinkName__DEVICE_EXTENSIONInv x@@126))
 :qid |KbdCreateClassObjectbpl.2731:15|
 :skolemid |881|
 :pattern ( (MINUS_LEFT_PTR x@@126 1 120))
)))
(assert (forall ((x@@127 Int) ) (! (= (MINUS_LEFT_PTR x@@127 1 128) (InputData__DEVICE_EXTENSIONInv x@@127))
 :qid |KbdCreateClassObjectbpl.1881:15|
 :skolemid |381|
 :pattern ( (MINUS_LEFT_PTR x@@127 1 128))
)))
(assert (forall ((x@@128 Int) ) (! (= (MINUS_LEFT_PTR x@@128 1 132) (DataIn__DEVICE_EXTENSIONInv x@@128))
 :qid |KbdCreateClassObjectbpl.1490:15|
 :skolemid |151|
 :pattern ( (MINUS_LEFT_PTR x@@128 1 132))
)))
(assert (forall ((x@@129 Int) ) (! (= (MINUS_LEFT_PTR x@@129 1 136) (DataOut__DEVICE_EXTENSIONInv x@@129))
 :qid |KbdCreateClassObjectbpl.1507:15|
 :skolemid |161|
 :pattern ( (MINUS_LEFT_PTR x@@129 1 136))
)))
(assert (forall ((x@@130 Int) ) (! (= (MINUS_LEFT_PTR x@@130 1 140) (KeyboardAttributes__DEVICE_EXTENSIONInv x@@130))
 :qid |KbdCreateClassObjectbpl.1966:15|
 :skolemid |431|
 :pattern ( (MINUS_LEFT_PTR x@@130 1 140))
)))
(assert (forall ((x@@131 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@131 6 1) (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@131))
 :qid |KbdCreateClassObjectbpl.2254:15|
 :skolemid |600|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@131 6 1))
)))
(assert (forall ((x@@132 Int) ) (! (= (MINUS_LEFT_PTR x@@132 1 168) (IndicatorParameters__DEVICE_EXTENSIONInv x@@132))
 :qid |KbdCreateClassObjectbpl.1830:15|
 :skolemid |351|
 :pattern ( (MINUS_LEFT_PTR x@@132 1 168))
)))
(assert (forall ((x@@133 Int) ) (! (= (MINUS_LEFT_PTR x@@133 1 172) (SpinLock__DEVICE_EXTENSIONInv x@@133))
 :qid |KbdCreateClassObjectbpl.2646:15|
 :skolemid |831|
 :pattern ( (MINUS_LEFT_PTR x@@133 1 172))
)))
(assert (forall ((x@@134 Int) ) (! (= (MINUS_LEFT_PTR x@@134 1 176) (ReadQueue__DEVICE_EXTENSIONInv x@@134))
 :qid |KbdCreateClassObjectbpl.2391:15|
 :skolemid |681|
 :pattern ( (MINUS_LEFT_PTR x@@134 1 176))
)))
(assert (forall ((x@@135 Int) ) (! (= (MINUS_LEFT_PTR x@@135 1 184) (SequenceNumber__DEVICE_EXTENSIONInv x@@135))
 :qid |KbdCreateClassObjectbpl.2527:15|
 :skolemid |761|
 :pattern ( (MINUS_LEFT_PTR x@@135 1 184))
)))
(assert (forall ((x@@136 Int) ) (! (= (MINUS_LEFT_PTR x@@136 1 188) (DeviceState__DEVICE_EXTENSIONInv x@@136))
 :qid |KbdCreateClassObjectbpl.1592:15|
 :skolemid |211|
 :pattern ( (MINUS_LEFT_PTR x@@136 1 188))
)))
(assert (forall ((x@@137 Int) ) (! (= (MINUS_LEFT_PTR x@@137 1 192) (SystemState__DEVICE_EXTENSIONInv x@@137))
 :qid |KbdCreateClassObjectbpl.2748:15|
 :skolemid |891|
 :pattern ( (MINUS_LEFT_PTR x@@137 1 192))
)))
(assert (forall ((x@@138 Int) ) (! (= (MINUS_LEFT_PTR x@@138 1 196) (UnitId__DEVICE_EXTENSIONInv x@@138))
 :qid |KbdCreateClassObjectbpl.2884:15|
 :skolemid |971|
 :pattern ( (MINUS_LEFT_PTR x@@138 1 196))
)))
(assert (forall ((x@@139 Int) ) (! (= (MINUS_LEFT_PTR x@@139 1 200) (WmiLibInfo__DEVICE_EXTENSIONInv x@@139))
 :qid |KbdCreateClassObjectbpl.3020:15|
 :skolemid |1051|
 :pattern ( (MINUS_LEFT_PTR x@@139 1 200))
)))
(assert (forall ((x@@140 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@140 8 1) (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@140))
 :qid |KbdCreateClassObjectbpl.2135:15|
 :skolemid |530|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@140 8 1))
)))
(assert (forall ((x@@141 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@141 8 1) (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@141))
 :qid |KbdCreateClassObjectbpl.2271:15|
 :skolemid |610|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@141 8 1))
)))
(assert (forall ((x@@142 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@142 8 1) (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@142))
 :qid |KbdCreateClassObjectbpl.2356:15|
 :skolemid |660|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@142 8 1))
)))
(assert (forall ((x@@143 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@143 8 1) (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@143))
 :qid |KbdCreateClassObjectbpl.2407:15|
 :skolemid |690|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@143 8 1))
)))
(assert (forall ((x@@144 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@144 8 1) (TopPort__DEVICE_EXTENSIONInv x@@144))
 :qid |KbdCreateClassObjectbpl.2798:15|
 :skolemid |920|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@144 8 1))
)))
(assert (forall ((x@@145 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@145 8 1) (WaitListHead__DISPATCHER_HEADERInv x@@145))
 :qid |KbdCreateClassObjectbpl.2934:15|
 :skolemid |1000|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@145 8 1))
)))
(assert (forall ((x@@146 Int) ) (! (= (MINUS_LEFT_PTR x@@146 1 232) (SystemToDeviceState__DEVICE_EXTENSIONInv x@@146))
 :qid |KbdCreateClassObjectbpl.2765:15|
 :skolemid |901|
 :pattern ( (MINUS_LEFT_PTR x@@146 1 232))
)))
(assert (forall ((x@@147 Int) ) (! (= (MINUS_LEFT_PTR x@@147 1 252) (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@147))
 :qid |KbdCreateClassObjectbpl.2170:15|
 :skolemid |551|
 :pattern ( (MINUS_LEFT_PTR x@@147 1 252))
)))
(assert (forall ((x@@148 Int) ) (! (= (MINUS_LEFT_PTR x@@148 1 256) (MinSystemWakeState__DEVICE_EXTENSIONInv x@@148))
 :qid |KbdCreateClassObjectbpl.2187:15|
 :skolemid |561|
 :pattern ( (MINUS_LEFT_PTR x@@148 1 256))
)))
(assert (forall ((x@@149 Int) ) (! (= (MINUS_LEFT_PTR x@@149 1 260) (WaitWakeIrp__DEVICE_EXTENSIONInv x@@149))
 :qid |KbdCreateClassObjectbpl.2969:15|
 :skolemid |1021|
 :pattern ( (MINUS_LEFT_PTR x@@149 1 260))
)))
(assert (forall ((x@@150 Int) ) (! (= (MINUS_LEFT_PTR x@@150 1 264) (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@150))
 :qid |KbdCreateClassObjectbpl.1660:15|
 :skolemid |251|
 :pattern ( (MINUS_LEFT_PTR x@@150 1 264))
)))
(assert (forall ((x@@151 Int) ) (! (= (MINUS_LEFT_PTR x@@151 1 268) (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@151))
 :qid |KbdCreateClassObjectbpl.2782:15|
 :skolemid |911|
 :pattern ( (MINUS_LEFT_PTR x@@151 1 268))
)))
(assert (forall ((x@@152 Int) ) (! (= (MINUS_LEFT_PTR x@@152 1 272) (Link__DEVICE_EXTENSIONInv x@@152))
 :qid |KbdCreateClassObjectbpl.2068:15|
 :skolemid |491|
 :pattern ( (MINUS_LEFT_PTR x@@152 1 272))
)))
(assert (forall ((x@@153 Int) ) (! (= (MINUS_LEFT_PTR x@@153 1 280) (File__DEVICE_EXTENSIONInv x@@153))
 :qid |KbdCreateClassObjectbpl.1677:15|
 :skolemid |261|
 :pattern ( (MINUS_LEFT_PTR x@@153 1 280))
)))
(assert (forall ((x@@154 Int) ) (! (= (MINUS_LEFT_PTR x@@154 1 284) (Enabled__DEVICE_EXTENSIONInv x@@154))
 :qid |KbdCreateClassObjectbpl.1626:15|
 :skolemid |231|
 :pattern ( (MINUS_LEFT_PTR x@@154 1 284))
)))
(assert (forall ((x@@155 Int) ) (! (= (MINUS_LEFT_PTR x@@155 1 285) (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@155))
 :qid |KbdCreateClassObjectbpl.2289:15|
 :skolemid |621|
 :pattern ( (MINUS_LEFT_PTR x@@155 1 285))
)))
(assert (forall ((x@@156 Int) ) (! (= (MINUS_LEFT_PTR x@@156 1 286) (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@156))
 :qid |KbdCreateClassObjectbpl.2952:15|
 :skolemid |1011|
 :pattern ( (MINUS_LEFT_PTR x@@156 1 286))
)))
(assert (forall ((x@@157 Int) ) (! (= (MINUS_LEFT_PTR x@@157 1 287) (SurpriseRemoved__DEVICE_EXTENSIONInv x@@157))
 :qid |KbdCreateClassObjectbpl.2714:15|
 :skolemid |871|
 :pattern ( (MINUS_LEFT_PTR x@@157 1 287))
)))
(assert (forall ((x@@158 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@158 12 1) (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@158))
 :qid |KbdCreateClassObjectbpl.1863:15|
 :skolemid |370|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@158 12 1))
)))
(assert (forall ((x@@159 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@159 12 1) (PDO__DEVICE_EXTENSIONInv x@@159))
 :qid |KbdCreateClassObjectbpl.2305:15|
 :skolemid |630|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@159 12 1))
)))
(assert (forall ((x@@160 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@160 12 1) (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@160))
 :qid |KbdCreateClassObjectbpl.2339:15|
 :skolemid |650|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@160 12 1))
)))
(assert (forall ((x@@161 Int) ) (! (= (MINUS_LEFT_PTR x@@161 1 368) (BaseClassName__GLOBALSInv x@@161))
 :qid |KbdCreateClassObjectbpl.1388:15|
 :skolemid |91|
 :pattern ( (MINUS_LEFT_PTR x@@161 1 368))
)))
(assert (forall ((x@@162 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@162 16 1) (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@162))
 :qid |KbdCreateClassObjectbpl.1353:15|
 :skolemid |70|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@162 16 1))
)))
(assert (forall ((x@@163 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@163 16 1) (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@163))
 :qid |KbdCreateClassObjectbpl.1948:15|
 :skolemid |420|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@163 16 1))
)))
(assert (forall ((x@@164 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@164 16 1) (RemoveLock__DEVICE_EXTENSIONInv x@@164))
 :qid |KbdCreateClassObjectbpl.2424:15|
 :skolemid |700|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@164 16 1))
)))
(assert (forall ((x@@165 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@165 16 1) (SetWmiDataBlock__WMILIB_CONTEXTInv x@@165))
 :qid |KbdCreateClassObjectbpl.2543:15|
 :skolemid |770|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@165 16 1))
)))
(assert (forall ((x@@166 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@166 20 1) (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@166))
 :qid |KbdCreateClassObjectbpl.2084:15|
 :skolemid |500|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@166 20 1))
)))
(assert (forall ((x@@167 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@167 20 1) (SetWmiDataItem__WMILIB_CONTEXTInv x@@167))
 :qid |KbdCreateClassObjectbpl.2560:15|
 :skolemid |780|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@167 20 1))
)))
(assert (forall ((x@@168 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@168 22 1) (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@168))
 :qid |KbdCreateClassObjectbpl.1931:15|
 :skolemid |410|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@168 22 1))
)))
(assert (forall ((x@@169 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@169 24 1) (Dbg__IO_REMOVE_LOCKInv x@@169))
 :qid |KbdCreateClassObjectbpl.1523:15|
 :skolemid |170|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@169 24 1))
)))
(assert (forall ((x@@170 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@170 24 1) (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@170))
 :qid |KbdCreateClassObjectbpl.1642:15|
 :skolemid |240|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@170 24 1))
)))
(assert (forall ((x@@171 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@171 24 1) (Mutex__GLOBALSInv x@@171))
 :qid |KbdCreateClassObjectbpl.2203:15|
 :skolemid |570|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@171 24 1))
)))
(assert (forall ((x@@172 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@172 28 1) (Flags__DEVICE_OBJECTInv x@@172))
 :qid |KbdCreateClassObjectbpl.1693:15|
 :skolemid |270|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@172 28 1))
)))
(assert (forall ((x@@173 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@173 28 1) (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@173))
 :qid |KbdCreateClassObjectbpl.2662:15|
 :skolemid |840|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@173 28 1))
)))
(assert (forall ((x@@174 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@174 28 1) (WmiFunctionControl__WMILIB_CONTEXTInv x@@174))
 :qid |KbdCreateClassObjectbpl.3002:15|
 :skolemid |1040|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@174 28 1))
)))
(assert (forall ((x@@175 Int) ) (! (= (MINUS_LEFT_PTR x@@175 1 888) (LegacyDeviceList__GLOBALSInv x@@175))
 :qid |KbdCreateClassObjectbpl.2034:15|
 :skolemid |471|
 :pattern ( (MINUS_LEFT_PTR x@@175 1 888))
)))
(assert (forall ((x@@176 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@176 32 1) (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@176))
 :qid |KbdCreateClassObjectbpl.2118:15|
 :skolemid |520|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@176 32 1))
)))
(assert (forall ((x@@177 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@177 36 1) (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@177))
 :qid |KbdCreateClassObjectbpl.2458:15|
 :skolemid |720|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@177 36 1))
)))
(assert (forall ((x@@178 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@178 40 1) (DeviceExtension__DEVICE_OBJECTInv x@@178))
 :qid |KbdCreateClassObjectbpl.1574:15|
 :skolemid |200|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@178 40 1))
)))
(assert (forall ((x@@179 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@179 52 1) (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@179))
 :qid |KbdCreateClassObjectbpl.2475:15|
 :skolemid |730|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@179 52 1))
)))
(assert (forall ((x@@180 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@180 56 1) (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@180))
 :qid |KbdCreateClassObjectbpl.1421:15|
 :skolemid |110|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@180 56 1))
)))
(assert (forall ((x@@181 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@181 56 1) (ConnectOneClassToOnePort__GLOBALSInv x@@181))
 :qid |KbdCreateClassObjectbpl.1472:15|
 :skolemid |140|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@181 56 1))
)))
(assert (forall ((x@@182 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@182 104 1) (PnP__DEVICE_EXTENSIONInv x@@182))
 :qid |KbdCreateClassObjectbpl.2322:15|
 :skolemid |640|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@182 104 1))
)))
(assert (forall ((x@@183 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@183 105 1) (Started__DEVICE_EXTENSIONInv x@@183))
 :qid |KbdCreateClassObjectbpl.2679:15|
 :skolemid |850|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@183 105 1))
)))
(assert (forall ((x@@184 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@184 106 1) (AllowDisable__DEVICE_EXTENSIONInv x@@184))
 :qid |KbdCreateClassObjectbpl.1370:15|
 :skolemid |80|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@184 106 1))
)))
(assert (forall ((x@@185 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@185 108 1) (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@185))
 :qid |KbdCreateClassObjectbpl.2985:15|
 :skolemid |1030|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@185 108 1))
)))
(assert (forall ((x@@186 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@186 112 1) (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@186))
 :qid |KbdCreateClassObjectbpl.2832:15|
 :skolemid |940|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@186 112 1))
)))
(assert (forall ((x@@187 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@187 116 1) (InputCount__DEVICE_EXTENSIONInv x@@187))
 :qid |KbdCreateClassObjectbpl.1846:15|
 :skolemid |360|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@187 116 1))
)))
(assert (forall ((x@@188 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@188 120 1) (SymbolicLinkName__DEVICE_EXTENSIONInv x@@188))
 :qid |KbdCreateClassObjectbpl.2730:15|
 :skolemid |880|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@188 120 1))
)))
(assert (forall ((x@@189 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@189 128 1) (InputData__DEVICE_EXTENSIONInv x@@189))
 :qid |KbdCreateClassObjectbpl.1880:15|
 :skolemid |380|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@189 128 1))
)))
(assert (forall ((x@@190 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@190 132 1) (DataIn__DEVICE_EXTENSIONInv x@@190))
 :qid |KbdCreateClassObjectbpl.1489:15|
 :skolemid |150|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@190 132 1))
)))
(assert (forall ((x@@191 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@191 136 1) (DataOut__DEVICE_EXTENSIONInv x@@191))
 :qid |KbdCreateClassObjectbpl.1506:15|
 :skolemid |160|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@191 136 1))
)))
(assert (forall ((x@@192 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@192 140 1) (KeyboardAttributes__DEVICE_EXTENSIONInv x@@192))
 :qid |KbdCreateClassObjectbpl.1965:15|
 :skolemid |430|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@192 140 1))
)))
(assert (forall ((x@@193 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@193 168 1) (IndicatorParameters__DEVICE_EXTENSIONInv x@@193))
 :qid |KbdCreateClassObjectbpl.1829:15|
 :skolemid |350|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@193 168 1))
)))
(assert (forall ((x@@194 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@194 172 1) (SpinLock__DEVICE_EXTENSIONInv x@@194))
 :qid |KbdCreateClassObjectbpl.2645:15|
 :skolemid |830|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@194 172 1))
)))
(assert (forall ((x@@195 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@195 176 1) (ReadQueue__DEVICE_EXTENSIONInv x@@195))
 :qid |KbdCreateClassObjectbpl.2390:15|
 :skolemid |680|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@195 176 1))
)))
(assert (forall ((x@@196 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@196 184 1) (SequenceNumber__DEVICE_EXTENSIONInv x@@196))
 :qid |KbdCreateClassObjectbpl.2526:15|
 :skolemid |760|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@196 184 1))
)))
(assert (forall ((x@@197 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@197 188 1) (DeviceState__DEVICE_EXTENSIONInv x@@197))
 :qid |KbdCreateClassObjectbpl.1591:15|
 :skolemid |210|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@197 188 1))
)))
(assert (forall ((x@@198 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@198 192 1) (SystemState__DEVICE_EXTENSIONInv x@@198))
 :qid |KbdCreateClassObjectbpl.2747:15|
 :skolemid |890|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@198 192 1))
)))
(assert (forall ((x@@199 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@199 196 1) (UnitId__DEVICE_EXTENSIONInv x@@199))
 :qid |KbdCreateClassObjectbpl.2883:15|
 :skolemid |970|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@199 196 1))
)))
(assert (forall ((x@@200 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@200 200 1) (WmiLibInfo__DEVICE_EXTENSIONInv x@@200))
 :qid |KbdCreateClassObjectbpl.3019:15|
 :skolemid |1050|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@200 200 1))
)))
(assert (forall ((x@@201 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@201 232 1) (SystemToDeviceState__DEVICE_EXTENSIONInv x@@201))
 :qid |KbdCreateClassObjectbpl.2764:15|
 :skolemid |900|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@201 232 1))
)))
(assert (forall ((x@@202 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@202 252 1) (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@202))
 :qid |KbdCreateClassObjectbpl.2169:15|
 :skolemid |550|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@202 252 1))
)))
(assert (forall ((x@@203 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@203 256 1) (MinSystemWakeState__DEVICE_EXTENSIONInv x@@203))
 :qid |KbdCreateClassObjectbpl.2186:15|
 :skolemid |560|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@203 256 1))
)))
(assert (forall ((x@@204 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@204 260 1) (WaitWakeIrp__DEVICE_EXTENSIONInv x@@204))
 :qid |KbdCreateClassObjectbpl.2968:15|
 :skolemid |1020|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@204 260 1))
)))
(assert (forall ((x@@205 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@205 264 1) (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@205))
 :qid |KbdCreateClassObjectbpl.1659:15|
 :skolemid |250|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@205 264 1))
)))
(assert (forall ((x@@206 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@206 268 1) (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@206))
 :qid |KbdCreateClassObjectbpl.2781:15|
 :skolemid |910|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@206 268 1))
)))
(assert (forall ((x@@207 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@207 272 1) (Link__DEVICE_EXTENSIONInv x@@207))
 :qid |KbdCreateClassObjectbpl.2067:15|
 :skolemid |490|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@207 272 1))
)))
(assert (forall ((x@@208 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@208 280 1) (File__DEVICE_EXTENSIONInv x@@208))
 :qid |KbdCreateClassObjectbpl.1676:15|
 :skolemid |260|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@208 280 1))
)))
(assert (forall ((x@@209 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@209 284 1) (Enabled__DEVICE_EXTENSIONInv x@@209))
 :qid |KbdCreateClassObjectbpl.1625:15|
 :skolemid |230|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@209 284 1))
)))
(assert (forall ((x@@210 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@210 285 1) (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@210))
 :qid |KbdCreateClassObjectbpl.2288:15|
 :skolemid |620|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@210 285 1))
)))
(assert (forall ((x@@211 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@211 286 1) (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@211))
 :qid |KbdCreateClassObjectbpl.2951:15|
 :skolemid |1010|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@211 286 1))
)))
(assert (forall ((x@@212 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@212 287 1) (SurpriseRemoved__DEVICE_EXTENSIONInv x@@212))
 :qid |KbdCreateClassObjectbpl.2713:15|
 :skolemid |870|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@212 287 1))
)))
(assert (forall ((x@@213 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@213 368 1) (BaseClassName__GLOBALSInv x@@213))
 :qid |KbdCreateClassObjectbpl.1387:15|
 :skolemid |90|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@213 368 1))
)))
(assert (forall ((x@@214 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@214 888 1) (LegacyDeviceList__GLOBALSInv x@@214))
 :qid |KbdCreateClassObjectbpl.2033:15|
 :skolemid |470|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@214 888 1))
)))
(assert (forall ((v Int) (t T@name) (m |T@[name][Int]Int|) ) (!  (=> (HasType v t m) (|Select__T@[Int]Bool_| (Values t m) v))
 :qid |KbdCreateClassObjectbpl.111:14|
 :skolemid |38|
 :pattern ( (HasType v t m) (Values t m))
)))
(assert (forall ((x@@215 Int) (y@@3 Int) ) (! (= (|Select__T@[Int]Bool_| (Singleton y@@3) x@@215) (= x@@215 y@@3))
 :qid |KbdCreateClassObjectbpl.69:14|
 :skolemid |13|
 :pattern ( (|Select__T@[Int]Bool_| (Singleton y@@3) x@@215))
)))
(assert (forall ((a@@3 Int) (a_size Int) (b@@3 Int) ) (! (= (MINUS_LEFT_PTR a@@3 a_size b@@3) (- a@@3 (* a_size b@@3)))
 :qid |KbdCreateClassObjectbpl.3111:14|
 :skolemid |1103|
 :pattern ( (MINUS_LEFT_PTR a@@3 a_size b@@3))
)))
(assert (forall ((a@@4 Int) (a_size@@0 Int) (b@@4 Int) ) (! (= (PLUS a@@4 a_size@@0 b@@4) (+ a@@4 (* a_size@@0 b@@4)))
 :qid |KbdCreateClassObjectbpl.3114:15|
 :skolemid |1104|
 :pattern ( (PLUS a@@4 a_size@@0 b@@4))
)))
(assert (forall ((x@@216 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (Dereference S M) x@@216) (exists ((y@@4 Int) ) (!  (and (= x@@216 (|Select__T@[Int]Int_| M y@@4)) (|Select__T@[Int]Bool_| S y@@4))
 :qid |KbdCreateClassObjectbpl.90:102|
 :skolemid |29|
)))
 :qid |KbdCreateClassObjectbpl.90:14|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (Dereference S M) x@@216))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) ) (!  (=> (= a@@5 b@@5) (= (BIT_BAND a@@5 b@@5) a@@5))
 :qid |KbdCreateClassObjectbpl.3172:14|
 :skolemid |1112|
 :pattern ( (BIT_BAND a@@5 b@@5))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) ) (! (= (MULT a@@6 b@@6) (* a@@6 b@@6))
 :qid |KbdCreateClassObjectbpl.3117:14|
 :skolemid |1105|
 :pattern ( (MULT a@@6 b@@6))
)))
(assert (forall ((a@@7 Bool) ) (! (= a@@7 (not (= (LIFT a@@7) 0)))
 :qid |KbdCreateClassObjectbpl.3183:14|
 :skolemid |1115|
 :pattern ( (LIFT a@@7))
)))
(assert (forall ((a@@8 Int) ) (!  (=> (not (= a@@8 0)) (= (NOT a@@8) 0))
 :qid |KbdCreateClassObjectbpl.3187:14|
 :skolemid |1117|
 :pattern ( (NOT a@@8))
)))
(assert (forall ((a@@9 Int) ) (!  (=> (not (= a@@9 0)) (= (NULL_CHECK a@@9) 0))
 :qid |KbdCreateClassObjectbpl.3191:14|
 :skolemid |1119|
 :pattern ( (NULL_CHECK a@@9))
)))
(assert (forall ((a@@10 Int) ) (!  (=> (= a@@10 0) (not (= (NOT a@@10) 0)))
 :qid |KbdCreateClassObjectbpl.3186:14|
 :skolemid |1116|
 :pattern ( (NOT a@@10))
)))
(assert (forall ((a@@11 Int) ) (!  (=> (= a@@11 0) (not (= (NULL_CHECK a@@11) 0)))
 :qid |KbdCreateClassObjectbpl.3190:14|
 :skolemid |1118|
 :pattern ( (NULL_CHECK a@@11))
)))
(assert (forall ((x@@217 Int) ) (! (= (Abandoned___unnamed_1_29794256Inv x@@217) (- x@@217 0))
 :qid |KbdCreateClassObjectbpl.1318:15|
 :skolemid |49|
 :pattern ( (Abandoned___unnamed_1_29794256Inv x@@217))
)))
(assert (forall ((x@@218 Int) ) (! (= (Absolute___unnamed_1_29794256Inv x@@218) (- x@@218 0))
 :qid |KbdCreateClassObjectbpl.1335:15|
 :skolemid |59|
 :pattern ( (Absolute___unnamed_1_29794256Inv x@@218))
)))
(assert (forall ((x@@219 Int) ) (! (= (Common__IO_REMOVE_LOCKInv x@@219) (- x@@219 0))
 :qid |KbdCreateClassObjectbpl.1454:15|
 :skolemid |129|
 :pattern ( (Common__IO_REMOVE_LOCKInv x@@219))
)))
(assert (forall ((x@@220 Int) ) (! (= (DebugActive___unnamed_1_2dc63b48Inv x@@220) (- x@@220 0))
 :qid |KbdCreateClassObjectbpl.1539:15|
 :skolemid |179|
 :pattern ( (DebugActive___unnamed_1_2dc63b48Inv x@@220))
)))
(assert (forall ((x@@221 Int) ) (! (= (DpcActive___unnamed_1_2dc63b48Inv x@@221) (- x@@221 0))
 :qid |KbdCreateClassObjectbpl.1607:15|
 :skolemid |219|
 :pattern ( (DpcActive___unnamed_1_2dc63b48Inv x@@221))
)))
(assert (forall ((x@@222 Int) ) (! (= (Flink__LIST_ENTRYInv x@@222) (- x@@222 0))
 :qid |KbdCreateClassObjectbpl.1709:15|
 :skolemid |279|
 :pattern ( (Flink__LIST_ENTRYInv x@@222))
)))
(assert (forall ((x@@223 Int) ) (! (= (GuidCount__WMILIB_CONTEXTInv x@@223) (- x@@223 0))
 :qid |KbdCreateClassObjectbpl.1743:15|
 :skolemid |299|
 :pattern ( (GuidCount__WMILIB_CONTEXTInv x@@223))
)))
(assert (forall ((x@@224 Int) ) (! (= (Hand___unnamed_1_2ef8da39Inv x@@224) (- x@@224 0))
 :qid |KbdCreateClassObjectbpl.1777:15|
 :skolemid |319|
 :pattern ( (Hand___unnamed_1_2ef8da39Inv x@@224))
)))
(assert (forall ((x@@225 Int) ) (! (= (Header__KEVENTInv x@@225) (- x@@225 0))
 :qid |KbdCreateClassObjectbpl.1794:15|
 :skolemid |329|
 :pattern ( (Header__KEVENTInv x@@225))
)))
(assert (forall ((x@@226 Int) ) (! (= (Inserted___unnamed_1_2dc63b48Inv x@@226) (- x@@226 0))
 :qid |KbdCreateClassObjectbpl.1896:15|
 :skolemid |389|
 :pattern ( (Inserted___unnamed_1_2dc63b48Inv x@@226))
)))
(assert (forall ((x@@227 Int) ) (! (= (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@227) (- x@@227 0))
 :qid |KbdCreateClassObjectbpl.1981:15|
 :skolemid |439|
 :pattern ( (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@227))
)))
(assert (forall ((x@@228 Int) ) (! (= (Length__UNICODE_STRINGInv x@@228) (- x@@228 0))
 :qid |KbdCreateClassObjectbpl.2049:15|
 :skolemid |479|
 :pattern ( (Length__UNICODE_STRINGInv x@@228))
)))
(assert (forall ((x@@229 Int) ) (! (= (Lock___unnamed_4_a97c65a1Inv x@@229) (- x@@229 0))
 :qid |KbdCreateClassObjectbpl.2100:15|
 :skolemid |509|
 :pattern ( (Lock___unnamed_4_a97c65a1Inv x@@229))
)))
(assert (forall ((x@@230 Int) ) (! (= (NpxIrql___unnamed_1_29794256Inv x@@230) (- x@@230 0))
 :qid |KbdCreateClassObjectbpl.2219:15|
 :skolemid |579|
 :pattern ( (NpxIrql___unnamed_1_29794256Inv x@@230))
)))
(assert (forall ((x@@231 Int) ) (! (= (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@231) (- x@@231 0))
 :qid |KbdCreateClassObjectbpl.2440:15|
 :skolemid |709|
 :pattern ( (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@231))
)))
(assert (forall ((x@@232 Int) ) (! (= (Self__DEVICE_EXTENSIONInv x@@232) (- x@@232 0))
 :qid |KbdCreateClassObjectbpl.2508:15|
 :skolemid |749|
 :pattern ( (Self__DEVICE_EXTENSIONInv x@@232))
)))
(assert (forall ((x@@233 Int) ) (! (= (Signalling___unnamed_1_29794256Inv x@@233) (- x@@233 0))
 :qid |KbdCreateClassObjectbpl.2593:15|
 :skolemid |799|
 :pattern ( (Signalling___unnamed_1_29794256Inv x@@233))
)))
(assert (forall ((x@@234 Int) ) (! (= (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@234) (- x@@234 0))
 :qid |KbdCreateClassObjectbpl.2610:15|
 :skolemid |809|
 :pattern ( (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@234))
)))
(assert (forall ((x@@235 Int) ) (! (= (Size___unnamed_1_2ef8da39Inv x@@235) (- x@@235 0))
 :qid |KbdCreateClassObjectbpl.2627:15|
 :skolemid |819|
 :pattern ( (Size___unnamed_1_2ef8da39Inv x@@235))
)))
(assert (forall ((x@@236 Int) ) (! (= (Type__KEYBOARD_IDInv x@@236) (- x@@236 0))
 :qid |KbdCreateClassObjectbpl.2848:15|
 :skolemid |949|
 :pattern ( (Type__KEYBOARD_IDInv x@@236))
)))
(assert (forall ((x@@237 Int) ) (! (= (Type___unnamed_4_5ca00198Inv x@@237) (- x@@237 0))
 :qid |KbdCreateClassObjectbpl.2865:15|
 :skolemid |959|
 :pattern ( (Type___unnamed_4_5ca00198Inv x@@237))
)))
(assert (forall ((x@@238 Int) ) (! (= (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@238) (- x@@238 0))
 :qid |KbdCreateClassObjectbpl.2899:15|
 :skolemid |979|
 :pattern ( (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@238))
)))
(assert (forall ((x@@239 Int) ) (! (= (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@239) (- x@@239 0))
 :qid |KbdCreateClassObjectbpl.2916:15|
 :skolemid |989|
 :pattern ( (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@239))
)))
(assert (forall ((x@@240 Int) ) (! (= (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@240) (- x@@240 0))
 :qid |KbdCreateClassObjectbpl.3086:15|
 :skolemid |1089|
 :pattern ( (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@240))
)))
(assert (forall ((x@@241 Int) ) (! (= (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@241) (- x@@241 0))
 :qid |KbdCreateClassObjectbpl.3103:15|
 :skolemid |1099|
 :pattern ( (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@241))
)))
(assert (forall ((x@@242 Int) ) (! (= (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@242) (- x@@242 1))
 :qid |KbdCreateClassObjectbpl.2491:15|
 :skolemid |739|
 :pattern ( (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@242))
)))
(assert (forall ((x@@243 Int) ) (! (= (Subtype__KEYBOARD_IDInv x@@243) (- x@@243 1))
 :qid |KbdCreateClassObjectbpl.2695:15|
 :skolemid |859|
 :pattern ( (Subtype__KEYBOARD_IDInv x@@243))
)))
(assert (forall ((x@@244 Int) ) (! (= (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@244) (- x@@244 1))
 :qid |KbdCreateClassObjectbpl.3035:15|
 :skolemid |1059|
 :pattern ( (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@244))
)))
(assert (forall ((x@@245 Int) ) (! (= (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@245) (- x@@245 2))
 :qid |KbdCreateClassObjectbpl.1998:15|
 :skolemid |449|
 :pattern ( (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@245))
)))
(assert (forall ((x@@246 Int) ) (! (= (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@246) (- x@@246 2))
 :qid |KbdCreateClassObjectbpl.2015:15|
 :skolemid |459|
 :pattern ( (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@246))
)))
(assert (forall ((x@@247 Int) ) (! (= (MaximumLength__UNICODE_STRINGInv x@@247) (- x@@247 2))
 :qid |KbdCreateClassObjectbpl.2151:15|
 :skolemid |539|
 :pattern ( (MaximumLength__UNICODE_STRINGInv x@@247))
)))
(assert (forall ((x@@248 Int) ) (! (= (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@248) (- x@@248 2))
 :qid |KbdCreateClassObjectbpl.2372:15|
 :skolemid |669|
 :pattern ( (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@248))
)))
(assert (forall ((x@@249 Int) ) (! (= (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@249) (- x@@249 2))
 :qid |KbdCreateClassObjectbpl.3069:15|
 :skolemid |1079|
 :pattern ( (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@249))
)))
(assert (forall ((x@@250 Int) ) (! (= (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@250) (- x@@250 3))
 :qid |KbdCreateClassObjectbpl.3052:15|
 :skolemid |1069|
 :pattern ( (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@250))
)))
(assert (forall ((x@@251 Int) ) (! (= (Blink__LIST_ENTRYInv x@@251) (- x@@251 4))
 :qid |KbdCreateClassObjectbpl.1403:15|
 :skolemid |99|
 :pattern ( (Blink__LIST_ENTRYInv x@@251))
)))
(assert (forall ((x@@252 Int) ) (! (= (Buffer__UNICODE_STRINGInv x@@252) (- x@@252 4))
 :qid |KbdCreateClassObjectbpl.1437:15|
 :skolemid |119|
 :pattern ( (Buffer__UNICODE_STRINGInv x@@252))
)))
(assert (forall ((x@@253 Int) ) (! (= (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@253) (- x@@253 4))
 :qid |KbdCreateClassObjectbpl.1556:15|
 :skolemid |189|
 :pattern ( (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@253))
)))
(assert (forall ((x@@254 Int) ) (! (= (GrandMaster__GLOBALSInv x@@254) (- x@@254 4))
 :qid |KbdCreateClassObjectbpl.1726:15|
 :skolemid |289|
 :pattern ( (GrandMaster__GLOBALSInv x@@254))
)))
(assert (forall ((x@@255 Int) ) (! (= (GuidList__WMILIB_CONTEXTInv x@@255) (- x@@255 4))
 :qid |KbdCreateClassObjectbpl.1760:15|
 :skolemid |309|
 :pattern ( (GuidList__WMILIB_CONTEXTInv x@@255))
)))
(assert (forall ((x@@256 Int) ) (! (= (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@256) (- x@@256 4))
 :qid |KbdCreateClassObjectbpl.1811:15|
 :skolemid |339|
 :pattern ( (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@256))
)))
(assert (forall ((x@@257 Int) ) (! (= (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@257) (- x@@257 4))
 :qid |KbdCreateClassObjectbpl.1913:15|
 :skolemid |399|
 :pattern ( (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@257))
)))
(assert (forall ((x@@258 Int) ) (! (= (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@258) (- x@@258 4))
 :qid |KbdCreateClassObjectbpl.2236:15|
 :skolemid |589|
 :pattern ( (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@258))
)))
(assert (forall ((x@@259 Int) ) (! (= (SignalState__DISPATCHER_HEADERInv x@@259) (- x@@259 4))
 :qid |KbdCreateClassObjectbpl.2576:15|
 :skolemid |789|
 :pattern ( (SignalState__DISPATCHER_HEADERInv x@@259))
)))
(assert (forall ((x@@260 Int) ) (! (= (TrueClassDevice__DEVICE_EXTENSIONInv x@@260) (- x@@260 4))
 :qid |KbdCreateClassObjectbpl.2814:15|
 :skolemid |929|
 :pattern ( (TrueClassDevice__DEVICE_EXTENSIONInv x@@260))
)))
(assert (forall ((x@@261 Int) ) (! (= (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@261) (- x@@261 6))
 :qid |KbdCreateClassObjectbpl.2253:15|
 :skolemid |599|
 :pattern ( (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@261))
)))
(assert (forall ((x@@262 Int) ) (! (= (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@262) (- x@@262 8))
 :qid |KbdCreateClassObjectbpl.2134:15|
 :skolemid |529|
 :pattern ( (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@262))
)))
(assert (forall ((x@@263 Int) ) (! (= (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@263) (- x@@263 8))
 :qid |KbdCreateClassObjectbpl.2270:15|
 :skolemid |609|
 :pattern ( (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@263))
)))
(assert (forall ((x@@264 Int) ) (! (= (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@264) (- x@@264 8))
 :qid |KbdCreateClassObjectbpl.2355:15|
 :skolemid |659|
 :pattern ( (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@264))
)))
(assert (forall ((x@@265 Int) ) (! (= (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@265) (- x@@265 8))
 :qid |KbdCreateClassObjectbpl.2406:15|
 :skolemid |689|
 :pattern ( (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@265))
)))
(assert (forall ((x@@266 Int) ) (! (= (TopPort__DEVICE_EXTENSIONInv x@@266) (- x@@266 8))
 :qid |KbdCreateClassObjectbpl.2797:15|
 :skolemid |919|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv x@@266))
)))
(assert (forall ((x@@267 Int) ) (! (= (WaitListHead__DISPATCHER_HEADERInv x@@267) (- x@@267 8))
 :qid |KbdCreateClassObjectbpl.2933:15|
 :skolemid |999|
 :pattern ( (WaitListHead__DISPATCHER_HEADERInv x@@267))
)))
(assert (forall ((x@@268 Int) ) (! (= (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@268) (- x@@268 12))
 :qid |KbdCreateClassObjectbpl.1862:15|
 :skolemid |369|
 :pattern ( (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@268))
)))
(assert (forall ((x@@269 Int) ) (! (= (PDO__DEVICE_EXTENSIONInv x@@269) (- x@@269 12))
 :qid |KbdCreateClassObjectbpl.2304:15|
 :skolemid |629|
 :pattern ( (PDO__DEVICE_EXTENSIONInv x@@269))
)))
(assert (forall ((x@@270 Int) ) (! (= (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@270) (- x@@270 12))
 :qid |KbdCreateClassObjectbpl.2338:15|
 :skolemid |649|
 :pattern ( (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@270))
)))
(assert (forall ((x@@271 Int) ) (! (= (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@271) (- x@@271 16))
 :qid |KbdCreateClassObjectbpl.1352:15|
 :skolemid |69|
 :pattern ( (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@271))
)))
(assert (forall ((x@@272 Int) ) (! (= (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@272) (- x@@272 16))
 :qid |KbdCreateClassObjectbpl.1947:15|
 :skolemid |419|
 :pattern ( (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@272))
)))
(assert (forall ((x@@273 Int) ) (! (= (RemoveLock__DEVICE_EXTENSIONInv x@@273) (- x@@273 16))
 :qid |KbdCreateClassObjectbpl.2423:15|
 :skolemid |699|
 :pattern ( (RemoveLock__DEVICE_EXTENSIONInv x@@273))
)))
(assert (forall ((x@@274 Int) ) (! (= (SetWmiDataBlock__WMILIB_CONTEXTInv x@@274) (- x@@274 16))
 :qid |KbdCreateClassObjectbpl.2542:15|
 :skolemid |769|
 :pattern ( (SetWmiDataBlock__WMILIB_CONTEXTInv x@@274))
)))
(assert (forall ((x@@275 Int) ) (! (= (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@275) (- x@@275 20))
 :qid |KbdCreateClassObjectbpl.2083:15|
 :skolemid |499|
 :pattern ( (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@275))
)))
(assert (forall ((x@@276 Int) ) (! (= (SetWmiDataItem__WMILIB_CONTEXTInv x@@276) (- x@@276 20))
 :qid |KbdCreateClassObjectbpl.2559:15|
 :skolemid |779|
 :pattern ( (SetWmiDataItem__WMILIB_CONTEXTInv x@@276))
)))
(assert (forall ((x@@277 Int) ) (! (= (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@277) (- x@@277 22))
 :qid |KbdCreateClassObjectbpl.1930:15|
 :skolemid |409|
 :pattern ( (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@277))
)))
(assert (forall ((x@@278 Int) ) (! (= (Dbg__IO_REMOVE_LOCKInv x@@278) (- x@@278 24))
 :qid |KbdCreateClassObjectbpl.1522:15|
 :skolemid |169|
 :pattern ( (Dbg__IO_REMOVE_LOCKInv x@@278))
)))
(assert (forall ((x@@279 Int) ) (! (= (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@279) (- x@@279 24))
 :qid |KbdCreateClassObjectbpl.1641:15|
 :skolemid |239|
 :pattern ( (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@279))
)))
(assert (forall ((x@@280 Int) ) (! (= (Mutex__GLOBALSInv x@@280) (- x@@280 24))
 :qid |KbdCreateClassObjectbpl.2202:15|
 :skolemid |569|
 :pattern ( (Mutex__GLOBALSInv x@@280))
)))
(assert (forall ((x@@281 Int) ) (! (= (Flags__DEVICE_OBJECTInv x@@281) (- x@@281 28))
 :qid |KbdCreateClassObjectbpl.1692:15|
 :skolemid |269|
 :pattern ( (Flags__DEVICE_OBJECTInv x@@281))
)))
(assert (forall ((x@@282 Int) ) (! (= (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@282) (- x@@282 28))
 :qid |KbdCreateClassObjectbpl.2661:15|
 :skolemid |839|
 :pattern ( (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@282))
)))
(assert (forall ((x@@283 Int) ) (! (= (WmiFunctionControl__WMILIB_CONTEXTInv x@@283) (- x@@283 28))
 :qid |KbdCreateClassObjectbpl.3001:15|
 :skolemid |1039|
 :pattern ( (WmiFunctionControl__WMILIB_CONTEXTInv x@@283))
)))
(assert (forall ((x@@284 Int) ) (! (= (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@284) (- x@@284 32))
 :qid |KbdCreateClassObjectbpl.2117:15|
 :skolemid |519|
 :pattern ( (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@284))
)))
(assert (forall ((x@@285 Int) ) (! (= (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@285) (- x@@285 36))
 :qid |KbdCreateClassObjectbpl.2457:15|
 :skolemid |719|
 :pattern ( (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@285))
)))
(assert (forall ((x@@286 Int) ) (! (= (DeviceExtension__DEVICE_OBJECTInv x@@286) (- x@@286 40))
 :qid |KbdCreateClassObjectbpl.1573:15|
 :skolemid |199|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv x@@286))
)))
(assert (forall ((x@@287 Int) ) (! (= (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@287) (- x@@287 52))
 :qid |KbdCreateClassObjectbpl.2474:15|
 :skolemid |729|
 :pattern ( (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@287))
)))
(assert (forall ((x@@288 Int) ) (! (= (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@288) (- x@@288 56))
 :qid |KbdCreateClassObjectbpl.1420:15|
 :skolemid |109|
 :pattern ( (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@288))
)))
(assert (forall ((x@@289 Int) ) (! (= (ConnectOneClassToOnePort__GLOBALSInv x@@289) (- x@@289 56))
 :qid |KbdCreateClassObjectbpl.1471:15|
 :skolemid |139|
 :pattern ( (ConnectOneClassToOnePort__GLOBALSInv x@@289))
)))
(assert (forall ((x@@290 Int) ) (! (= (PnP__DEVICE_EXTENSIONInv x@@290) (- x@@290 104))
 :qid |KbdCreateClassObjectbpl.2321:15|
 :skolemid |639|
 :pattern ( (PnP__DEVICE_EXTENSIONInv x@@290))
)))
(assert (forall ((x@@291 Int) ) (! (= (Started__DEVICE_EXTENSIONInv x@@291) (- x@@291 105))
 :qid |KbdCreateClassObjectbpl.2678:15|
 :skolemid |849|
 :pattern ( (Started__DEVICE_EXTENSIONInv x@@291))
)))
(assert (forall ((x@@292 Int) ) (! (= (AllowDisable__DEVICE_EXTENSIONInv x@@292) (- x@@292 106))
 :qid |KbdCreateClassObjectbpl.1369:15|
 :skolemid |79|
 :pattern ( (AllowDisable__DEVICE_EXTENSIONInv x@@292))
)))
(assert (forall ((x@@293 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@293) (- x@@293 108))
 :qid |KbdCreateClassObjectbpl.2984:15|
 :skolemid |1029|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@293))
)))
(assert (forall ((x@@294 Int) ) (! (= (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@294) (- x@@294 112))
 :qid |KbdCreateClassObjectbpl.2831:15|
 :skolemid |939|
 :pattern ( (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@294))
)))
(assert (forall ((x@@295 Int) ) (! (= (InputCount__DEVICE_EXTENSIONInv x@@295) (- x@@295 116))
 :qid |KbdCreateClassObjectbpl.1845:15|
 :skolemid |359|
 :pattern ( (InputCount__DEVICE_EXTENSIONInv x@@295))
)))
(assert (forall ((x@@296 Int) ) (! (= (SymbolicLinkName__DEVICE_EXTENSIONInv x@@296) (- x@@296 120))
 :qid |KbdCreateClassObjectbpl.2729:15|
 :skolemid |879|
 :pattern ( (SymbolicLinkName__DEVICE_EXTENSIONInv x@@296))
)))
(assert (forall ((x@@297 Int) ) (! (= (InputData__DEVICE_EXTENSIONInv x@@297) (- x@@297 128))
 :qid |KbdCreateClassObjectbpl.1879:15|
 :skolemid |379|
 :pattern ( (InputData__DEVICE_EXTENSIONInv x@@297))
)))
(assert (forall ((x@@298 Int) ) (! (= (DataIn__DEVICE_EXTENSIONInv x@@298) (- x@@298 132))
 :qid |KbdCreateClassObjectbpl.1488:15|
 :skolemid |149|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv x@@298))
)))
(assert (forall ((x@@299 Int) ) (! (= (DataOut__DEVICE_EXTENSIONInv x@@299) (- x@@299 136))
 :qid |KbdCreateClassObjectbpl.1505:15|
 :skolemid |159|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv x@@299))
)))
(assert (forall ((x@@300 Int) ) (! (= (KeyboardAttributes__DEVICE_EXTENSIONInv x@@300) (- x@@300 140))
 :qid |KbdCreateClassObjectbpl.1964:15|
 :skolemid |429|
 :pattern ( (KeyboardAttributes__DEVICE_EXTENSIONInv x@@300))
)))
(assert (forall ((x@@301 Int) ) (! (= (IndicatorParameters__DEVICE_EXTENSIONInv x@@301) (- x@@301 168))
 :qid |KbdCreateClassObjectbpl.1828:15|
 :skolemid |349|
 :pattern ( (IndicatorParameters__DEVICE_EXTENSIONInv x@@301))
)))
(assert (forall ((x@@302 Int) ) (! (= (SpinLock__DEVICE_EXTENSIONInv x@@302) (- x@@302 172))
 :qid |KbdCreateClassObjectbpl.2644:15|
 :skolemid |829|
 :pattern ( (SpinLock__DEVICE_EXTENSIONInv x@@302))
)))
(assert (forall ((x@@303 Int) ) (! (= (ReadQueue__DEVICE_EXTENSIONInv x@@303) (- x@@303 176))
 :qid |KbdCreateClassObjectbpl.2389:15|
 :skolemid |679|
 :pattern ( (ReadQueue__DEVICE_EXTENSIONInv x@@303))
)))
(assert (forall ((x@@304 Int) ) (! (= (SequenceNumber__DEVICE_EXTENSIONInv x@@304) (- x@@304 184))
 :qid |KbdCreateClassObjectbpl.2525:15|
 :skolemid |759|
 :pattern ( (SequenceNumber__DEVICE_EXTENSIONInv x@@304))
)))
(assert (forall ((x@@305 Int) ) (! (= (DeviceState__DEVICE_EXTENSIONInv x@@305) (- x@@305 188))
 :qid |KbdCreateClassObjectbpl.1590:15|
 :skolemid |209|
 :pattern ( (DeviceState__DEVICE_EXTENSIONInv x@@305))
)))
(assert (forall ((x@@306 Int) ) (! (= (SystemState__DEVICE_EXTENSIONInv x@@306) (- x@@306 192))
 :qid |KbdCreateClassObjectbpl.2746:15|
 :skolemid |889|
 :pattern ( (SystemState__DEVICE_EXTENSIONInv x@@306))
)))
(assert (forall ((x@@307 Int) ) (! (= (UnitId__DEVICE_EXTENSIONInv x@@307) (- x@@307 196))
 :qid |KbdCreateClassObjectbpl.2882:15|
 :skolemid |969|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv x@@307))
)))
(assert (forall ((x@@308 Int) ) (! (= (WmiLibInfo__DEVICE_EXTENSIONInv x@@308) (- x@@308 200))
 :qid |KbdCreateClassObjectbpl.3018:15|
 :skolemid |1049|
 :pattern ( (WmiLibInfo__DEVICE_EXTENSIONInv x@@308))
)))
(assert (forall ((x@@309 Int) ) (! (= (SystemToDeviceState__DEVICE_EXTENSIONInv x@@309) (- x@@309 232))
 :qid |KbdCreateClassObjectbpl.2763:15|
 :skolemid |899|
 :pattern ( (SystemToDeviceState__DEVICE_EXTENSIONInv x@@309))
)))
(assert (forall ((x@@310 Int) ) (! (= (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@310) (- x@@310 252))
 :qid |KbdCreateClassObjectbpl.2168:15|
 :skolemid |549|
 :pattern ( (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@310))
)))
(assert (forall ((x@@311 Int) ) (! (= (MinSystemWakeState__DEVICE_EXTENSIONInv x@@311) (- x@@311 256))
 :qid |KbdCreateClassObjectbpl.2185:15|
 :skolemid |559|
 :pattern ( (MinSystemWakeState__DEVICE_EXTENSIONInv x@@311))
)))
(assert (forall ((x@@312 Int) ) (! (= (WaitWakeIrp__DEVICE_EXTENSIONInv x@@312) (- x@@312 260))
 :qid |KbdCreateClassObjectbpl.2967:15|
 :skolemid |1019|
 :pattern ( (WaitWakeIrp__DEVICE_EXTENSIONInv x@@312))
)))
(assert (forall ((x@@313 Int) ) (! (= (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@313) (- x@@313 264))
 :qid |KbdCreateClassObjectbpl.1658:15|
 :skolemid |249|
 :pattern ( (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@313))
)))
(assert (forall ((x@@314 Int) ) (! (= (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@314) (- x@@314 268))
 :qid |KbdCreateClassObjectbpl.2780:15|
 :skolemid |909|
 :pattern ( (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@314))
)))
(assert (forall ((x@@315 Int) ) (! (= (Link__DEVICE_EXTENSIONInv x@@315) (- x@@315 272))
 :qid |KbdCreateClassObjectbpl.2066:15|
 :skolemid |489|
 :pattern ( (Link__DEVICE_EXTENSIONInv x@@315))
)))
(assert (forall ((x@@316 Int) ) (! (= (File__DEVICE_EXTENSIONInv x@@316) (- x@@316 280))
 :qid |KbdCreateClassObjectbpl.1675:15|
 :skolemid |259|
 :pattern ( (File__DEVICE_EXTENSIONInv x@@316))
)))
(assert (forall ((x@@317 Int) ) (! (= (Enabled__DEVICE_EXTENSIONInv x@@317) (- x@@317 284))
 :qid |KbdCreateClassObjectbpl.1624:15|
 :skolemid |229|
 :pattern ( (Enabled__DEVICE_EXTENSIONInv x@@317))
)))
(assert (forall ((x@@318 Int) ) (! (= (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@318) (- x@@318 285))
 :qid |KbdCreateClassObjectbpl.2287:15|
 :skolemid |619|
 :pattern ( (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@318))
)))
(assert (forall ((x@@319 Int) ) (! (= (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@319) (- x@@319 286))
 :qid |KbdCreateClassObjectbpl.2950:15|
 :skolemid |1009|
 :pattern ( (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@319))
)))
(assert (forall ((x@@320 Int) ) (! (= (SurpriseRemoved__DEVICE_EXTENSIONInv x@@320) (- x@@320 287))
 :qid |KbdCreateClassObjectbpl.2712:15|
 :skolemid |869|
 :pattern ( (SurpriseRemoved__DEVICE_EXTENSIONInv x@@320))
)))
(assert (forall ((x@@321 Int) ) (! (= (BaseClassName__GLOBALSInv x@@321) (- x@@321 368))
 :qid |KbdCreateClassObjectbpl.1386:15|
 :skolemid |89|
 :pattern ( (BaseClassName__GLOBALSInv x@@321))
)))
(assert (forall ((x@@322 Int) ) (! (= (LegacyDeviceList__GLOBALSInv x@@322) (- x@@322 888))
 :qid |KbdCreateClassObjectbpl.2032:15|
 :skolemid |469|
 :pattern ( (LegacyDeviceList__GLOBALSInv x@@322))
)))
(assert (forall ((x@@323 Int) ) (! (= (Abandoned___unnamed_1_29794256 x@@323) (+ x@@323 0))
 :qid |KbdCreateClassObjectbpl.1317:15|
 :skolemid |48|
 :pattern ( (Abandoned___unnamed_1_29794256 x@@323))
)))
(assert (forall ((x@@324 Int) ) (! (= (Absolute___unnamed_1_29794256 x@@324) (+ x@@324 0))
 :qid |KbdCreateClassObjectbpl.1334:15|
 :skolemid |58|
 :pattern ( (Absolute___unnamed_1_29794256 x@@324))
)))
(assert (forall ((x@@325 Int) ) (! (= (Common__IO_REMOVE_LOCK x@@325) (+ x@@325 0))
 :qid |KbdCreateClassObjectbpl.1453:15|
 :skolemid |128|
 :pattern ( (Common__IO_REMOVE_LOCK x@@325))
)))
(assert (forall ((x@@326 Int) ) (! (= (DebugActive___unnamed_1_2dc63b48 x@@326) (+ x@@326 0))
 :qid |KbdCreateClassObjectbpl.1538:15|
 :skolemid |178|
 :pattern ( (DebugActive___unnamed_1_2dc63b48 x@@326))
)))
(assert (forall ((x@@327 Int) ) (! (= (DpcActive___unnamed_1_2dc63b48 x@@327) (+ x@@327 0))
 :qid |KbdCreateClassObjectbpl.1606:15|
 :skolemid |218|
 :pattern ( (DpcActive___unnamed_1_2dc63b48 x@@327))
)))
(assert (forall ((x@@328 Int) ) (! (= (Flink__LIST_ENTRY x@@328) (+ x@@328 0))
 :qid |KbdCreateClassObjectbpl.1708:15|
 :skolemid |278|
 :pattern ( (Flink__LIST_ENTRY x@@328))
)))
(assert (forall ((x@@329 Int) ) (! (= (GuidCount__WMILIB_CONTEXT x@@329) (+ x@@329 0))
 :qid |KbdCreateClassObjectbpl.1742:15|
 :skolemid |298|
 :pattern ( (GuidCount__WMILIB_CONTEXT x@@329))
)))
(assert (forall ((x@@330 Int) ) (! (= (Hand___unnamed_1_2ef8da39 x@@330) (+ x@@330 0))
 :qid |KbdCreateClassObjectbpl.1776:15|
 :skolemid |318|
 :pattern ( (Hand___unnamed_1_2ef8da39 x@@330))
)))
(assert (forall ((x@@331 Int) ) (! (= (Header__KEVENT x@@331) (+ x@@331 0))
 :qid |KbdCreateClassObjectbpl.1793:15|
 :skolemid |328|
 :pattern ( (Header__KEVENT x@@331))
)))
(assert (forall ((x@@332 Int) ) (! (= (Inserted___unnamed_1_2dc63b48 x@@332) (+ x@@332 0))
 :qid |KbdCreateClassObjectbpl.1895:15|
 :skolemid |388|
 :pattern ( (Inserted___unnamed_1_2dc63b48 x@@332))
)))
(assert (forall ((x@@333 Int) ) (! (= (KeyboardIdentifier__KEYBOARD_ATTRIBUTES x@@333) (+ x@@333 0))
 :qid |KbdCreateClassObjectbpl.1980:15|
 :skolemid |438|
 :pattern ( (KeyboardIdentifier__KEYBOARD_ATTRIBUTES x@@333))
)))
(assert (forall ((x@@334 Int) ) (! (= (Length__UNICODE_STRING x@@334) (+ x@@334 0))
 :qid |KbdCreateClassObjectbpl.2048:15|
 :skolemid |478|
 :pattern ( (Length__UNICODE_STRING x@@334))
)))
(assert (forall ((x@@335 Int) ) (! (= (Lock___unnamed_4_a97c65a1 x@@335) (+ x@@335 0))
 :qid |KbdCreateClassObjectbpl.2099:15|
 :skolemid |508|
 :pattern ( (Lock___unnamed_4_a97c65a1 x@@335))
)))
(assert (forall ((x@@336 Int) ) (! (= (NpxIrql___unnamed_1_29794256 x@@336) (+ x@@336 0))
 :qid |KbdCreateClassObjectbpl.2218:15|
 :skolemid |578|
 :pattern ( (NpxIrql___unnamed_1_29794256 x@@336))
)))
(assert (forall ((x@@337 Int) ) (! (= (Removed__IO_REMOVE_LOCK_COMMON_BLOCK x@@337) (+ x@@337 0))
 :qid |KbdCreateClassObjectbpl.2439:15|
 :skolemid |708|
 :pattern ( (Removed__IO_REMOVE_LOCK_COMMON_BLOCK x@@337))
)))
(assert (forall ((x@@338 Int) ) (! (= (Self__DEVICE_EXTENSION x@@338) (+ x@@338 0))
 :qid |KbdCreateClassObjectbpl.2507:15|
 :skolemid |748|
 :pattern ( (Self__DEVICE_EXTENSION x@@338))
)))
(assert (forall ((x@@339 Int) ) (! (= (Signalling___unnamed_1_29794256 x@@339) (+ x@@339 0))
 :qid |KbdCreateClassObjectbpl.2592:15|
 :skolemid |798|
 :pattern ( (Signalling___unnamed_1_29794256 x@@339))
)))
(assert (forall ((x@@340 Int) ) (! (= (Signature__IO_REMOVE_LOCK_DBG_BLOCK x@@340) (+ x@@340 0))
 :qid |KbdCreateClassObjectbpl.2609:15|
 :skolemid |808|
 :pattern ( (Signature__IO_REMOVE_LOCK_DBG_BLOCK x@@340))
)))
(assert (forall ((x@@341 Int) ) (! (= (Size___unnamed_1_2ef8da39 x@@341) (+ x@@341 0))
 :qid |KbdCreateClassObjectbpl.2626:15|
 :skolemid |818|
 :pattern ( (Size___unnamed_1_2ef8da39 x@@341))
)))
(assert (forall ((x@@342 Int) ) (! (= (Type__KEYBOARD_ID x@@342) (+ x@@342 0))
 :qid |KbdCreateClassObjectbpl.2847:15|
 :skolemid |948|
 :pattern ( (Type__KEYBOARD_ID x@@342))
)))
(assert (forall ((x@@343 Int) ) (! (= (Type___unnamed_4_5ca00198 x@@343) (+ x@@343 0))
 :qid |KbdCreateClassObjectbpl.2864:15|
 :skolemid |958|
 :pattern ( (Type___unnamed_4_5ca00198 x@@343))
)))
(assert (forall ((x@@344 Int) ) (! (= (UnitId__KEYBOARD_INDICATOR_PARAMETERS x@@344) (+ x@@344 0))
 :qid |KbdCreateClassObjectbpl.2898:15|
 :skolemid |978|
 :pattern ( (UnitId__KEYBOARD_INDICATOR_PARAMETERS x@@344))
)))
(assert (forall ((x@@345 Int) ) (! (= (UnitId__KEYBOARD_TYPEMATIC_PARAMETERS x@@345) (+ x@@345 0))
 :qid |KbdCreateClassObjectbpl.2915:15|
 :skolemid |988|
 :pattern ( (UnitId__KEYBOARD_TYPEMATIC_PARAMETERS x@@345))
)))
(assert (forall ((x@@346 Int) ) (! (= (__unnamed_4_5ca00198___unnamed_4_a97c65a1 x@@346) (+ x@@346 0))
 :qid |KbdCreateClassObjectbpl.3085:15|
 :skolemid |1088|
 :pattern ( (__unnamed_4_5ca00198___unnamed_4_a97c65a1 x@@346))
)))
(assert (forall ((x@@347 Int) ) (! (= (__unnamed_4_a97c65a1__DISPATCHER_HEADER x@@347) (+ x@@347 0))
 :qid |KbdCreateClassObjectbpl.3102:15|
 :skolemid |1098|
 :pattern ( (__unnamed_4_a97c65a1__DISPATCHER_HEADER x@@347))
)))
(assert (forall ((x@@348 Int) ) (! (= (Reserved__IO_REMOVE_LOCK_COMMON_BLOCK x@@348) (+ x@@348 1))
 :qid |KbdCreateClassObjectbpl.2490:15|
 :skolemid |738|
 :pattern ( (Reserved__IO_REMOVE_LOCK_COMMON_BLOCK x@@348))
)))
(assert (forall ((x@@349 Int) ) (! (= (Subtype__KEYBOARD_ID x@@349) (+ x@@349 1))
 :qid |KbdCreateClassObjectbpl.2694:15|
 :skolemid |858|
 :pattern ( (Subtype__KEYBOARD_ID x@@349))
)))
(assert (forall ((x@@350 Int) ) (! (= (__unnamed_1_29794256___unnamed_4_5ca00198 x@@350) (+ x@@350 1))
 :qid |KbdCreateClassObjectbpl.3034:15|
 :skolemid |1058|
 :pattern ( (__unnamed_1_29794256___unnamed_4_5ca00198 x@@350))
)))
(assert (forall ((x@@351 Int) ) (! (= (KeyboardMode__KEYBOARD_ATTRIBUTES x@@351) (+ x@@351 2))
 :qid |KbdCreateClassObjectbpl.1997:15|
 :skolemid |448|
 :pattern ( (KeyboardMode__KEYBOARD_ATTRIBUTES x@@351))
)))
(assert (forall ((x@@352 Int) ) (! (= (LedFlags__KEYBOARD_INDICATOR_PARAMETERS x@@352) (+ x@@352 2))
 :qid |KbdCreateClassObjectbpl.2014:15|
 :skolemid |458|
 :pattern ( (LedFlags__KEYBOARD_INDICATOR_PARAMETERS x@@352))
)))
(assert (forall ((x@@353 Int) ) (! (= (MaximumLength__UNICODE_STRING x@@353) (+ x@@353 2))
 :qid |KbdCreateClassObjectbpl.2150:15|
 :skolemid |538|
 :pattern ( (MaximumLength__UNICODE_STRING x@@353))
)))
(assert (forall ((x@@354 Int) ) (! (= (Rate__KEYBOARD_TYPEMATIC_PARAMETERS x@@354) (+ x@@354 2))
 :qid |KbdCreateClassObjectbpl.2371:15|
 :skolemid |668|
 :pattern ( (Rate__KEYBOARD_TYPEMATIC_PARAMETERS x@@354))
)))
(assert (forall ((x@@355 Int) ) (! (= (__unnamed_1_2ef8da39___unnamed_4_5ca00198 x@@355) (+ x@@355 2))
 :qid |KbdCreateClassObjectbpl.3068:15|
 :skolemid |1078|
 :pattern ( (__unnamed_1_2ef8da39___unnamed_4_5ca00198 x@@355))
)))
(assert (forall ((x@@356 Int) ) (! (= (__unnamed_1_2dc63b48___unnamed_4_5ca00198 x@@356) (+ x@@356 3))
 :qid |KbdCreateClassObjectbpl.3051:15|
 :skolemid |1068|
 :pattern ( (__unnamed_1_2dc63b48___unnamed_4_5ca00198 x@@356))
)))
(assert (forall ((x@@357 Int) ) (! (= (Blink__LIST_ENTRY x@@357) (+ x@@357 4))
 :qid |KbdCreateClassObjectbpl.1402:15|
 :skolemid |98|
 :pattern ( (Blink__LIST_ENTRY x@@357))
)))
(assert (forall ((x@@358 Int) ) (! (= (Buffer__UNICODE_STRING x@@358) (+ x@@358 4))
 :qid |KbdCreateClassObjectbpl.1436:15|
 :skolemid |118|
 :pattern ( (Buffer__UNICODE_STRING x@@358))
)))
(assert (forall ((x@@359 Int) ) (! (= (Delay__KEYBOARD_TYPEMATIC_PARAMETERS x@@359) (+ x@@359 4))
 :qid |KbdCreateClassObjectbpl.1555:15|
 :skolemid |188|
 :pattern ( (Delay__KEYBOARD_TYPEMATIC_PARAMETERS x@@359))
)))
(assert (forall ((x@@360 Int) ) (! (= (GrandMaster__GLOBALS x@@360) (+ x@@360 4))
 :qid |KbdCreateClassObjectbpl.1725:15|
 :skolemid |288|
 :pattern ( (GrandMaster__GLOBALS x@@360))
)))
(assert (forall ((x@@361 Int) ) (! (= (GuidList__WMILIB_CONTEXT x@@361) (+ x@@361 4))
 :qid |KbdCreateClassObjectbpl.1759:15|
 :skolemid |308|
 :pattern ( (GuidList__WMILIB_CONTEXT x@@361))
)))
(assert (forall ((x@@362 Int) ) (! (= (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK x@@362) (+ x@@362 4))
 :qid |KbdCreateClassObjectbpl.1810:15|
 :skolemid |338|
 :pattern ( (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK x@@362))
)))
(assert (forall ((x@@363 Int) ) (! (= (IoCount__IO_REMOVE_LOCK_COMMON_BLOCK x@@363) (+ x@@363 4))
 :qid |KbdCreateClassObjectbpl.1912:15|
 :skolemid |398|
 :pattern ( (IoCount__IO_REMOVE_LOCK_COMMON_BLOCK x@@363))
)))
(assert (forall ((x@@364 Int) ) (! (= (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES x@@364) (+ x@@364 4))
 :qid |KbdCreateClassObjectbpl.2235:15|
 :skolemid |588|
 :pattern ( (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES x@@364))
)))
(assert (forall ((x@@365 Int) ) (! (= (SignalState__DISPATCHER_HEADER x@@365) (+ x@@365 4))
 :qid |KbdCreateClassObjectbpl.2575:15|
 :skolemid |788|
 :pattern ( (SignalState__DISPATCHER_HEADER x@@365))
)))
(assert (forall ((x@@366 Int) ) (! (= (TrueClassDevice__DEVICE_EXTENSION x@@366) (+ x@@366 4))
 :qid |KbdCreateClassObjectbpl.2813:15|
 :skolemid |928|
 :pattern ( (TrueClassDevice__DEVICE_EXTENSION x@@366))
)))
(assert (forall ((x@@367 Int) ) (! (= (NumberOfIndicators__KEYBOARD_ATTRIBUTES x@@367) (+ x@@367 6))
 :qid |KbdCreateClassObjectbpl.2252:15|
 :skolemid |598|
 :pattern ( (NumberOfIndicators__KEYBOARD_ATTRIBUTES x@@367))
)))
(assert (forall ((x@@368 Int) ) (! (= (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK x@@368) (+ x@@368 8))
 :qid |KbdCreateClassObjectbpl.2133:15|
 :skolemid |528|
 :pattern ( (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK x@@368))
)))
(assert (forall ((x@@369 Int) ) (! (= (NumberOfKeysTotal__KEYBOARD_ATTRIBUTES x@@369) (+ x@@369 8))
 :qid |KbdCreateClassObjectbpl.2269:15|
 :skolemid |608|
 :pattern ( (NumberOfKeysTotal__KEYBOARD_ATTRIBUTES x@@369))
)))
(assert (forall ((x@@370 Int) ) (! (= (QueryWmiRegInfo__WMILIB_CONTEXT x@@370) (+ x@@370 8))
 :qid |KbdCreateClassObjectbpl.2354:15|
 :skolemid |658|
 :pattern ( (QueryWmiRegInfo__WMILIB_CONTEXT x@@370))
)))
(assert (forall ((x@@371 Int) ) (! (= (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK x@@371) (+ x@@371 8))
 :qid |KbdCreateClassObjectbpl.2405:15|
 :skolemid |688|
 :pattern ( (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK x@@371))
)))
(assert (forall ((x@@372 Int) ) (! (= (TopPort__DEVICE_EXTENSION x@@372) (+ x@@372 8))
 :qid |KbdCreateClassObjectbpl.2796:15|
 :skolemid |918|
 :pattern ( (TopPort__DEVICE_EXTENSION x@@372))
)))
(assert (forall ((x@@373 Int) ) (! (= (WaitListHead__DISPATCHER_HEADER x@@373) (+ x@@373 8))
 :qid |KbdCreateClassObjectbpl.2932:15|
 :skolemid |998|
 :pattern ( (WaitListHead__DISPATCHER_HEADER x@@373))
)))
(assert (forall ((x@@374 Int) ) (! (= (InputDataQueueLength__KEYBOARD_ATTRIBUTES x@@374) (+ x@@374 12))
 :qid |KbdCreateClassObjectbpl.1861:15|
 :skolemid |368|
 :pattern ( (InputDataQueueLength__KEYBOARD_ATTRIBUTES x@@374))
)))
(assert (forall ((x@@375 Int) ) (! (= (PDO__DEVICE_EXTENSION x@@375) (+ x@@375 12))
 :qid |KbdCreateClassObjectbpl.2303:15|
 :skolemid |628|
 :pattern ( (PDO__DEVICE_EXTENSION x@@375))
)))
(assert (forall ((x@@376 Int) ) (! (= (QueryWmiDataBlock__WMILIB_CONTEXT x@@376) (+ x@@376 12))
 :qid |KbdCreateClassObjectbpl.2337:15|
 :skolemid |648|
 :pattern ( (QueryWmiDataBlock__WMILIB_CONTEXT x@@376))
)))
(assert (forall ((x@@377 Int) ) (! (= (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK x@@377) (+ x@@377 16))
 :qid |KbdCreateClassObjectbpl.1351:15|
 :skolemid |68|
 :pattern ( (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK x@@377))
)))
(assert (forall ((x@@378 Int) ) (! (= (KeyRepeatMinimum__KEYBOARD_ATTRIBUTES x@@378) (+ x@@378 16))
 :qid |KbdCreateClassObjectbpl.1946:15|
 :skolemid |418|
 :pattern ( (KeyRepeatMinimum__KEYBOARD_ATTRIBUTES x@@378))
)))
(assert (forall ((x@@379 Int) ) (! (= (RemoveLock__DEVICE_EXTENSION x@@379) (+ x@@379 16))
 :qid |KbdCreateClassObjectbpl.2422:15|
 :skolemid |698|
 :pattern ( (RemoveLock__DEVICE_EXTENSION x@@379))
)))
(assert (forall ((x@@380 Int) ) (! (= (SetWmiDataBlock__WMILIB_CONTEXT x@@380) (+ x@@380 16))
 :qid |KbdCreateClassObjectbpl.2541:15|
 :skolemid |768|
 :pattern ( (SetWmiDataBlock__WMILIB_CONTEXT x@@380))
)))
(assert (forall ((x@@381 Int) ) (! (= (LockList__IO_REMOVE_LOCK_DBG_BLOCK x@@381) (+ x@@381 20))
 :qid |KbdCreateClassObjectbpl.2082:15|
 :skolemid |498|
 :pattern ( (LockList__IO_REMOVE_LOCK_DBG_BLOCK x@@381))
)))
(assert (forall ((x@@382 Int) ) (! (= (SetWmiDataItem__WMILIB_CONTEXT x@@382) (+ x@@382 20))
 :qid |KbdCreateClassObjectbpl.2558:15|
 :skolemid |778|
 :pattern ( (SetWmiDataItem__WMILIB_CONTEXT x@@382))
)))
(assert (forall ((x@@383 Int) ) (! (= (KeyRepeatMaximum__KEYBOARD_ATTRIBUTES x@@383) (+ x@@383 22))
 :qid |KbdCreateClassObjectbpl.1929:15|
 :skolemid |408|
 :pattern ( (KeyRepeatMaximum__KEYBOARD_ATTRIBUTES x@@383))
)))
(assert (forall ((x@@384 Int) ) (! (= (Dbg__IO_REMOVE_LOCK x@@384) (+ x@@384 24))
 :qid |KbdCreateClassObjectbpl.1521:15|
 :skolemid |168|
 :pattern ( (Dbg__IO_REMOVE_LOCK x@@384))
)))
(assert (forall ((x@@385 Int) ) (! (= (ExecuteWmiMethod__WMILIB_CONTEXT x@@385) (+ x@@385 24))
 :qid |KbdCreateClassObjectbpl.1640:15|
 :skolemid |238|
 :pattern ( (ExecuteWmiMethod__WMILIB_CONTEXT x@@385))
)))
(assert (forall ((x@@386 Int) ) (! (= (Mutex__GLOBALS x@@386) (+ x@@386 24))
 :qid |KbdCreateClassObjectbpl.2201:15|
 :skolemid |568|
 :pattern ( (Mutex__GLOBALS x@@386))
)))
(assert (forall ((x@@387 Int) ) (! (= (Flags__DEVICE_OBJECT x@@387) (+ x@@387 28))
 :qid |KbdCreateClassObjectbpl.1691:15|
 :skolemid |268|
 :pattern ( (Flags__DEVICE_OBJECT x@@387))
)))
(assert (forall ((x@@388 Int) ) (! (= (Spin__IO_REMOVE_LOCK_DBG_BLOCK x@@388) (+ x@@388 28))
 :qid |KbdCreateClassObjectbpl.2660:15|
 :skolemid |838|
 :pattern ( (Spin__IO_REMOVE_LOCK_DBG_BLOCK x@@388))
)))
(assert (forall ((x@@389 Int) ) (! (= (WmiFunctionControl__WMILIB_CONTEXT x@@389) (+ x@@389 28))
 :qid |KbdCreateClassObjectbpl.3000:15|
 :skolemid |1038|
 :pattern ( (WmiFunctionControl__WMILIB_CONTEXT x@@389))
)))
(assert (forall ((x@@390 Int) ) (! (= (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK x@@390) (+ x@@390 32))
 :qid |KbdCreateClassObjectbpl.2116:15|
 :skolemid |518|
 :pattern ( (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK x@@390))
)))
(assert (forall ((x@@391 Int) ) (! (= (Reserved1__IO_REMOVE_LOCK_DBG_BLOCK x@@391) (+ x@@391 36))
 :qid |KbdCreateClassObjectbpl.2456:15|
 :skolemid |718|
 :pattern ( (Reserved1__IO_REMOVE_LOCK_DBG_BLOCK x@@391))
)))
(assert (forall ((x@@392 Int) ) (! (= (DeviceExtension__DEVICE_OBJECT x@@392) (+ x@@392 40))
 :qid |KbdCreateClassObjectbpl.1572:15|
 :skolemid |198|
 :pattern ( (DeviceExtension__DEVICE_OBJECT x@@392))
)))
(assert (forall ((x@@393 Int) ) (! (= (Reserved2__IO_REMOVE_LOCK_DBG_BLOCK x@@393) (+ x@@393 52))
 :qid |KbdCreateClassObjectbpl.2473:15|
 :skolemid |728|
 :pattern ( (Reserved2__IO_REMOVE_LOCK_DBG_BLOCK x@@393))
)))
(assert (forall ((x@@394 Int) ) (! (= (Blocks__IO_REMOVE_LOCK_DBG_BLOCK x@@394) (+ x@@394 56))
 :qid |KbdCreateClassObjectbpl.1419:15|
 :skolemid |108|
 :pattern ( (Blocks__IO_REMOVE_LOCK_DBG_BLOCK x@@394))
)))
(assert (forall ((x@@395 Int) ) (! (= (ConnectOneClassToOnePort__GLOBALS x@@395) (+ x@@395 56))
 :qid |KbdCreateClassObjectbpl.1470:15|
 :skolemid |138|
 :pattern ( (ConnectOneClassToOnePort__GLOBALS x@@395))
)))
(assert (forall ((x@@396 Int) ) (! (= (PnP__DEVICE_EXTENSION x@@396) (+ x@@396 104))
 :qid |KbdCreateClassObjectbpl.2320:15|
 :skolemid |638|
 :pattern ( (PnP__DEVICE_EXTENSION x@@396))
)))
(assert (forall ((x@@397 Int) ) (! (= (Started__DEVICE_EXTENSION x@@397) (+ x@@397 105))
 :qid |KbdCreateClassObjectbpl.2677:15|
 :skolemid |848|
 :pattern ( (Started__DEVICE_EXTENSION x@@397))
)))
(assert (forall ((x@@398 Int) ) (! (= (AllowDisable__DEVICE_EXTENSION x@@398) (+ x@@398 106))
 :qid |KbdCreateClassObjectbpl.1368:15|
 :skolemid |78|
 :pattern ( (AllowDisable__DEVICE_EXTENSION x@@398))
)))
(assert (forall ((x@@399 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSION x@@399) (+ x@@399 108))
 :qid |KbdCreateClassObjectbpl.2983:15|
 :skolemid |1028|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSION x@@399))
)))
(assert (forall ((x@@400 Int) ) (! (= (TrustedSubsystemCount__DEVICE_EXTENSION x@@400) (+ x@@400 112))
 :qid |KbdCreateClassObjectbpl.2830:15|
 :skolemid |938|
 :pattern ( (TrustedSubsystemCount__DEVICE_EXTENSION x@@400))
)))
(assert (forall ((x@@401 Int) ) (! (= (InputCount__DEVICE_EXTENSION x@@401) (+ x@@401 116))
 :qid |KbdCreateClassObjectbpl.1844:15|
 :skolemid |358|
 :pattern ( (InputCount__DEVICE_EXTENSION x@@401))
)))
(assert (forall ((x@@402 Int) ) (! (= (SymbolicLinkName__DEVICE_EXTENSION x@@402) (+ x@@402 120))
 :qid |KbdCreateClassObjectbpl.2728:15|
 :skolemid |878|
 :pattern ( (SymbolicLinkName__DEVICE_EXTENSION x@@402))
)))
(assert (forall ((x@@403 Int) ) (! (= (InputData__DEVICE_EXTENSION x@@403) (+ x@@403 128))
 :qid |KbdCreateClassObjectbpl.1878:15|
 :skolemid |378|
 :pattern ( (InputData__DEVICE_EXTENSION x@@403))
)))
(assert (forall ((x@@404 Int) ) (! (= (DataIn__DEVICE_EXTENSION x@@404) (+ x@@404 132))
 :qid |KbdCreateClassObjectbpl.1487:15|
 :skolemid |148|
 :pattern ( (DataIn__DEVICE_EXTENSION x@@404))
)))
(assert (forall ((x@@405 Int) ) (! (= (DataOut__DEVICE_EXTENSION x@@405) (+ x@@405 136))
 :qid |KbdCreateClassObjectbpl.1504:15|
 :skolemid |158|
 :pattern ( (DataOut__DEVICE_EXTENSION x@@405))
)))
(assert (forall ((x@@406 Int) ) (! (= (KeyboardAttributes__DEVICE_EXTENSION x@@406) (+ x@@406 140))
 :qid |KbdCreateClassObjectbpl.1963:15|
 :skolemid |428|
 :pattern ( (KeyboardAttributes__DEVICE_EXTENSION x@@406))
)))
(assert (forall ((x@@407 Int) ) (! (= (IndicatorParameters__DEVICE_EXTENSION x@@407) (+ x@@407 168))
 :qid |KbdCreateClassObjectbpl.1827:15|
 :skolemid |348|
 :pattern ( (IndicatorParameters__DEVICE_EXTENSION x@@407))
)))
(assert (forall ((x@@408 Int) ) (! (= (SpinLock__DEVICE_EXTENSION x@@408) (+ x@@408 172))
 :qid |KbdCreateClassObjectbpl.2643:15|
 :skolemid |828|
 :pattern ( (SpinLock__DEVICE_EXTENSION x@@408))
)))
(assert (forall ((x@@409 Int) ) (! (= (ReadQueue__DEVICE_EXTENSION x@@409) (+ x@@409 176))
 :qid |KbdCreateClassObjectbpl.2388:15|
 :skolemid |678|
 :pattern ( (ReadQueue__DEVICE_EXTENSION x@@409))
)))
(assert (forall ((x@@410 Int) ) (! (= (SequenceNumber__DEVICE_EXTENSION x@@410) (+ x@@410 184))
 :qid |KbdCreateClassObjectbpl.2524:15|
 :skolemid |758|
 :pattern ( (SequenceNumber__DEVICE_EXTENSION x@@410))
)))
(assert (forall ((x@@411 Int) ) (! (= (DeviceState__DEVICE_EXTENSION x@@411) (+ x@@411 188))
 :qid |KbdCreateClassObjectbpl.1589:15|
 :skolemid |208|
 :pattern ( (DeviceState__DEVICE_EXTENSION x@@411))
)))
(assert (forall ((x@@412 Int) ) (! (= (SystemState__DEVICE_EXTENSION x@@412) (+ x@@412 192))
 :qid |KbdCreateClassObjectbpl.2745:15|
 :skolemid |888|
 :pattern ( (SystemState__DEVICE_EXTENSION x@@412))
)))
(assert (forall ((x@@413 Int) ) (! (= (UnitId__DEVICE_EXTENSION x@@413) (+ x@@413 196))
 :qid |KbdCreateClassObjectbpl.2881:15|
 :skolemid |968|
 :pattern ( (UnitId__DEVICE_EXTENSION x@@413))
)))
(assert (forall ((x@@414 Int) ) (! (= (WmiLibInfo__DEVICE_EXTENSION x@@414) (+ x@@414 200))
 :qid |KbdCreateClassObjectbpl.3017:15|
 :skolemid |1048|
 :pattern ( (WmiLibInfo__DEVICE_EXTENSION x@@414))
)))
(assert (forall ((x@@415 Int) ) (! (= (SystemToDeviceState__DEVICE_EXTENSION x@@415) (+ x@@415 232))
 :qid |KbdCreateClassObjectbpl.2762:15|
 :skolemid |898|
 :pattern ( (SystemToDeviceState__DEVICE_EXTENSION x@@415))
)))
(assert (forall ((x@@416 Int) ) (! (= (MinDeviceWakeState__DEVICE_EXTENSION x@@416) (+ x@@416 252))
 :qid |KbdCreateClassObjectbpl.2167:15|
 :skolemid |548|
 :pattern ( (MinDeviceWakeState__DEVICE_EXTENSION x@@416))
)))
(assert (forall ((x@@417 Int) ) (! (= (MinSystemWakeState__DEVICE_EXTENSION x@@417) (+ x@@417 256))
 :qid |KbdCreateClassObjectbpl.2184:15|
 :skolemid |558|
 :pattern ( (MinSystemWakeState__DEVICE_EXTENSION x@@417))
)))
(assert (forall ((x@@418 Int) ) (! (= (WaitWakeIrp__DEVICE_EXTENSION x@@418) (+ x@@418 260))
 :qid |KbdCreateClassObjectbpl.2966:15|
 :skolemid |1018|
 :pattern ( (WaitWakeIrp__DEVICE_EXTENSION x@@418))
)))
(assert (forall ((x@@419 Int) ) (! (= (ExtraWaitWakeIrp__DEVICE_EXTENSION x@@419) (+ x@@419 264))
 :qid |KbdCreateClassObjectbpl.1657:15|
 :skolemid |248|
 :pattern ( (ExtraWaitWakeIrp__DEVICE_EXTENSION x@@419))
)))
(assert (forall ((x@@420 Int) ) (! (= (TargetNotifyHandle__DEVICE_EXTENSION x@@420) (+ x@@420 268))
 :qid |KbdCreateClassObjectbpl.2779:15|
 :skolemid |908|
 :pattern ( (TargetNotifyHandle__DEVICE_EXTENSION x@@420))
)))
(assert (forall ((x@@421 Int) ) (! (= (Link__DEVICE_EXTENSION x@@421) (+ x@@421 272))
 :qid |KbdCreateClassObjectbpl.2065:15|
 :skolemid |488|
 :pattern ( (Link__DEVICE_EXTENSION x@@421))
)))
(assert (forall ((x@@422 Int) ) (! (= (File__DEVICE_EXTENSION x@@422) (+ x@@422 280))
 :qid |KbdCreateClassObjectbpl.1674:15|
 :skolemid |258|
 :pattern ( (File__DEVICE_EXTENSION x@@422))
)))
(assert (forall ((x@@423 Int) ) (! (= (Enabled__DEVICE_EXTENSION x@@423) (+ x@@423 284))
 :qid |KbdCreateClassObjectbpl.1623:15|
 :skolemid |228|
 :pattern ( (Enabled__DEVICE_EXTENSION x@@423))
)))
(assert (forall ((x@@424 Int) ) (! (= (OkayToLogOverflow__DEVICE_EXTENSION x@@424) (+ x@@424 285))
 :qid |KbdCreateClassObjectbpl.2286:15|
 :skolemid |618|
 :pattern ( (OkayToLogOverflow__DEVICE_EXTENSION x@@424))
)))
(assert (forall ((x@@425 Int) ) (! (= (WaitWakeEnabled__DEVICE_EXTENSION x@@425) (+ x@@425 286))
 :qid |KbdCreateClassObjectbpl.2949:15|
 :skolemid |1008|
 :pattern ( (WaitWakeEnabled__DEVICE_EXTENSION x@@425))
)))
(assert (forall ((x@@426 Int) ) (! (= (SurpriseRemoved__DEVICE_EXTENSION x@@426) (+ x@@426 287))
 :qid |KbdCreateClassObjectbpl.2711:15|
 :skolemid |868|
 :pattern ( (SurpriseRemoved__DEVICE_EXTENSION x@@426))
)))
(assert (forall ((x@@427 Int) ) (! (= (BaseClassName__GLOBALS x@@427) (+ x@@427 368))
 :qid |KbdCreateClassObjectbpl.1385:15|
 :skolemid |88|
 :pattern ( (BaseClassName__GLOBALS x@@427))
)))
(assert (forall ((x@@428 Int) ) (! (= (LegacyDeviceList__GLOBALS x@@428) (+ x@@428 888))
 :qid |KbdCreateClassObjectbpl.2031:15|
 :skolemid |468|
 :pattern ( (LegacyDeviceList__GLOBALS x@@428))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@429 Int) (y@@5 Int) (z@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (ReachBetweenSet f@@2 x@@429 z@@1) y@@5) (ReachBetween f@@2 x@@429 y@@5 z@@1))
 :qid |KbdCreateClassObjectbpl.3248:14|
 :skolemid |1123|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet f@@2 x@@429 z@@1) y@@5))
)))
(assert (forall ((x@@430 Int) (S@@0 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@0 x@@430) (Subset S@@0 T)) (|Select__T@[Int]Bool_| T x@@430))
 :qid |KbdCreateClassObjectbpl.79:14|
 :skolemid |19|
 :pattern ( (|Select__T@[Int]Bool_| S@@0 x@@430) (Subset S@@0 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@430) (Subset S@@0 T))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (TwoBytesToInt b0 b1) (TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |KbdCreateClassObjectbpl.8:14|
 :skolemid |1|
 :pattern ( (TwoBytesToInt b0 b1) (TwoBytesToInt c0 c1))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@431 Int) (y@@6 Int) (z@@2 Int) (w@@0 Int) ) (!  (=> (and (ReachBetween f@@3 x@@431 y@@6 z@@2) (ReachBetween f@@3 y@@6 w@@0 z@@2)) (and (ReachBetween f@@3 x@@431 y@@6 w@@0) (ReachBetween f@@3 x@@431 w@@0 z@@2)))
 :qid |KbdCreateClassObjectbpl.3283:14|
 :skolemid |1134|
 :pattern ( (ReachBetween f@@3 x@@431 y@@6 z@@2) (ReachBetween f@@3 y@@6 w@@0 z@@2))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@432 Int) (y@@7 Int) (z@@3 Int) (w@@1 Int) ) (!  (=> (and (ReachBetween f@@4 x@@432 y@@7 z@@3) (ReachBetween f@@4 x@@432 w@@1 y@@7)) (and (ReachBetween f@@4 x@@432 w@@1 z@@3) (ReachBetween f@@4 w@@1 y@@7 z@@3)))
 :qid |KbdCreateClassObjectbpl.3286:14|
 :skolemid |1135|
 :pattern ( (ReachBetween f@@4 x@@432 y@@7 z@@3) (ReachBetween f@@4 x@@432 w@@1 y@@7))
)))
(assert (forall ((b0@@0 T@byte) (c0@@0 T@byte) ) (!  (=> (= (OneByteToInt b0@@0) (OneByteToInt c0@@0)) (= b0@@0 c0@@0))
 :qid |KbdCreateClassObjectbpl.7:14|
 :skolemid |0|
 :pattern ( (OneByteToInt b0@@0) (OneByteToInt c0@@0))
)))
(assert (forall ((M@@0 |T@[name][Int]Int|) (x@@433 Int) ) (! (= (|Select__T@[Int]Int_| (Unified M@@0) x@@433) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@0 (Field x@@433)) x@@433))
 :qid |KbdCreateClassObjectbpl.99:14|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]Int_| (Unified M@@0) x@@433))
)))
(assert (forall ((x@@434 Int) (S@@1 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@1 x@@434) (Disjoint S@@1 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@434)))
 :qid |KbdCreateClassObjectbpl.81:14|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@434) (Disjoint S@@1 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@434) (Disjoint S@@1 T@@0))
)))
(assert (forall ((v@@0 Int) (t@@0 T@name) (m@@0 |T@[name][Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (Values t@@0 m@@0) v@@0) (HasType v@@0 t@@0 m@@0))
 :qid |KbdCreateClassObjectbpl.110:14|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Bool_| (Values t@@0 m@@0) v@@0))
)))
(assert (forall ((x@@435 Int) (S@@2 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Abandoned___unnamed_1_29794256 S@@2) x@@435) (|Select__T@[Int]Bool_| S@@2 (Abandoned___unnamed_1_29794256Inv x@@435)))
 :qid |KbdCreateClassObjectbpl.1312:15|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Abandoned___unnamed_1_29794256 S@@2) x@@435))
)))
(assert (forall ((x@@436 Int) (S@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Abandoned___unnamed_1_29794256Inv S@@3) x@@436) (|Select__T@[Int]Bool_| S@@3 (Abandoned___unnamed_1_29794256 x@@436)))
 :qid |KbdCreateClassObjectbpl.1313:15|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Abandoned___unnamed_1_29794256Inv S@@3) x@@436))
)))
(assert (forall ((x@@437 Int) (S@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Absolute___unnamed_1_29794256 S@@4) x@@437) (|Select__T@[Int]Bool_| S@@4 (Absolute___unnamed_1_29794256Inv x@@437)))
 :qid |KbdCreateClassObjectbpl.1329:15|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Absolute___unnamed_1_29794256 S@@4) x@@437))
)))
(assert (forall ((x@@438 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Absolute___unnamed_1_29794256Inv S@@5) x@@438) (|Select__T@[Int]Bool_| S@@5 (Absolute___unnamed_1_29794256 x@@438)))
 :qid |KbdCreateClassObjectbpl.1330:15|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Absolute___unnamed_1_29794256Inv S@@5) x@@438))
)))
(assert (forall ((x@@439 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK S@@6) x@@439) (|Select__T@[Int]Bool_| S@@6 (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@439)))
 :qid |KbdCreateClassObjectbpl.1346:15|
 :skolemid |64|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK S@@6) x@@439))
)))
(assert (forall ((x@@440 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv S@@7) x@@440) (|Select__T@[Int]Bool_| S@@7 (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK x@@440)))
 :qid |KbdCreateClassObjectbpl.1347:15|
 :skolemid |65|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv S@@7) x@@440))
)))
(assert (forall ((x@@441 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AllowDisable__DEVICE_EXTENSION S@@8) x@@441) (|Select__T@[Int]Bool_| S@@8 (AllowDisable__DEVICE_EXTENSIONInv x@@441)))
 :qid |KbdCreateClassObjectbpl.1363:15|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AllowDisable__DEVICE_EXTENSION S@@8) x@@441))
)))
(assert (forall ((x@@442 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AllowDisable__DEVICE_EXTENSIONInv S@@9) x@@442) (|Select__T@[Int]Bool_| S@@9 (AllowDisable__DEVICE_EXTENSION x@@442)))
 :qid |KbdCreateClassObjectbpl.1364:15|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AllowDisable__DEVICE_EXTENSIONInv S@@9) x@@442))
)))
(assert (forall ((x@@443 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@10) x@@443) (|Select__T@[Int]Bool_| S@@10 (BaseClassName__GLOBALSInv x@@443)))
 :qid |KbdCreateClassObjectbpl.1380:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@10) x@@443))
)))
(assert (forall ((x@@444 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@11) x@@444) (|Select__T@[Int]Bool_| S@@11 (BaseClassName__GLOBALS x@@444)))
 :qid |KbdCreateClassObjectbpl.1381:15|
 :skolemid |85|
 :pattern ( (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@11) x@@444))
)))
(assert (forall ((x@@445 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Blink__LIST_ENTRY S@@12) x@@445) (|Select__T@[Int]Bool_| S@@12 (Blink__LIST_ENTRYInv x@@445)))
 :qid |KbdCreateClassObjectbpl.1397:15|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Blink__LIST_ENTRY S@@12) x@@445))
)))
(assert (forall ((x@@446 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Blink__LIST_ENTRYInv S@@13) x@@446) (|Select__T@[Int]Bool_| S@@13 (Blink__LIST_ENTRY x@@446)))
 :qid |KbdCreateClassObjectbpl.1398:15|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Blink__LIST_ENTRYInv S@@13) x@@446))
)))
(assert (forall ((x@@447 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCK S@@14) x@@447) (|Select__T@[Int]Bool_| S@@14 (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@447)))
 :qid |KbdCreateClassObjectbpl.1414:15|
 :skolemid |104|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCK S@@14) x@@447))
)))
(assert (forall ((x@@448 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@15) x@@448) (|Select__T@[Int]Bool_| S@@15 (Blocks__IO_REMOVE_LOCK_DBG_BLOCK x@@448)))
 :qid |KbdCreateClassObjectbpl.1415:15|
 :skolemid |105|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@15) x@@448))
)))
(assert (forall ((x@@449 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@16) x@@449) (|Select__T@[Int]Bool_| S@@16 (Buffer__UNICODE_STRINGInv x@@449)))
 :qid |KbdCreateClassObjectbpl.1431:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@16) x@@449))
)))
(assert (forall ((x@@450 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@17) x@@450) (|Select__T@[Int]Bool_| S@@17 (Buffer__UNICODE_STRING x@@450)))
 :qid |KbdCreateClassObjectbpl.1432:15|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@17) x@@450))
)))
(assert (forall ((x@@451 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Common__IO_REMOVE_LOCK S@@18) x@@451) (|Select__T@[Int]Bool_| S@@18 (Common__IO_REMOVE_LOCKInv x@@451)))
 :qid |KbdCreateClassObjectbpl.1448:15|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Common__IO_REMOVE_LOCK S@@18) x@@451))
)))
(assert (forall ((x@@452 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Common__IO_REMOVE_LOCKInv S@@19) x@@452) (|Select__T@[Int]Bool_| S@@19 (Common__IO_REMOVE_LOCK x@@452)))
 :qid |KbdCreateClassObjectbpl.1449:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Common__IO_REMOVE_LOCKInv S@@19) x@@452))
)))
(assert (forall ((x@@453 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ConnectOneClassToOnePort__GLOBALS S@@20) x@@453) (|Select__T@[Int]Bool_| S@@20 (ConnectOneClassToOnePort__GLOBALSInv x@@453)))
 :qid |KbdCreateClassObjectbpl.1465:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ConnectOneClassToOnePort__GLOBALS S@@20) x@@453))
)))
(assert (forall ((x@@454 Int) (S@@21 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ConnectOneClassToOnePort__GLOBALSInv S@@21) x@@454) (|Select__T@[Int]Bool_| S@@21 (ConnectOneClassToOnePort__GLOBALS x@@454)))
 :qid |KbdCreateClassObjectbpl.1466:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ConnectOneClassToOnePort__GLOBALSInv S@@21) x@@454))
)))
(assert (forall ((x@@455 Int) (S@@22 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@22) x@@455) (|Select__T@[Int]Bool_| S@@22 (DataIn__DEVICE_EXTENSIONInv x@@455)))
 :qid |KbdCreateClassObjectbpl.1482:15|
 :skolemid |144|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@22) x@@455))
)))
(assert (forall ((x@@456 Int) (S@@23 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@23) x@@456) (|Select__T@[Int]Bool_| S@@23 (DataIn__DEVICE_EXTENSION x@@456)))
 :qid |KbdCreateClassObjectbpl.1483:15|
 :skolemid |145|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@23) x@@456))
)))
(assert (forall ((x@@457 Int) (S@@24 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@24) x@@457) (|Select__T@[Int]Bool_| S@@24 (DataOut__DEVICE_EXTENSIONInv x@@457)))
 :qid |KbdCreateClassObjectbpl.1499:15|
 :skolemid |154|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@24) x@@457))
)))
(assert (forall ((x@@458 Int) (S@@25 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@25) x@@458) (|Select__T@[Int]Bool_| S@@25 (DataOut__DEVICE_EXTENSION x@@458)))
 :qid |KbdCreateClassObjectbpl.1500:15|
 :skolemid |155|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@25) x@@458))
)))
(assert (forall ((x@@459 Int) (S@@26 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Dbg__IO_REMOVE_LOCK S@@26) x@@459) (|Select__T@[Int]Bool_| S@@26 (Dbg__IO_REMOVE_LOCKInv x@@459)))
 :qid |KbdCreateClassObjectbpl.1516:15|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Dbg__IO_REMOVE_LOCK S@@26) x@@459))
)))
(assert (forall ((x@@460 Int) (S@@27 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Dbg__IO_REMOVE_LOCKInv S@@27) x@@460) (|Select__T@[Int]Bool_| S@@27 (Dbg__IO_REMOVE_LOCK x@@460)))
 :qid |KbdCreateClassObjectbpl.1517:15|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Dbg__IO_REMOVE_LOCKInv S@@27) x@@460))
)))
(assert (forall ((x@@461 Int) (S@@28 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DebugActive___unnamed_1_2dc63b48 S@@28) x@@461) (|Select__T@[Int]Bool_| S@@28 (DebugActive___unnamed_1_2dc63b48Inv x@@461)))
 :qid |KbdCreateClassObjectbpl.1533:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DebugActive___unnamed_1_2dc63b48 S@@28) x@@461))
)))
(assert (forall ((x@@462 Int) (S@@29 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DebugActive___unnamed_1_2dc63b48Inv S@@29) x@@462) (|Select__T@[Int]Bool_| S@@29 (DebugActive___unnamed_1_2dc63b48 x@@462)))
 :qid |KbdCreateClassObjectbpl.1534:15|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DebugActive___unnamed_1_2dc63b48Inv S@@29) x@@462))
)))
(assert (forall ((x@@463 Int) (S@@30 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERS S@@30) x@@463) (|Select__T@[Int]Bool_| S@@30 (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@463)))
 :qid |KbdCreateClassObjectbpl.1550:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERS S@@30) x@@463))
)))
(assert (forall ((x@@464 Int) (S@@31 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@31) x@@464) (|Select__T@[Int]Bool_| S@@31 (Delay__KEYBOARD_TYPEMATIC_PARAMETERS x@@464)))
 :qid |KbdCreateClassObjectbpl.1551:15|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@31) x@@464))
)))
(assert (forall ((x@@465 Int) (S@@32 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@32) x@@465) (|Select__T@[Int]Bool_| S@@32 (DeviceExtension__DEVICE_OBJECTInv x@@465)))
 :qid |KbdCreateClassObjectbpl.1567:15|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@32) x@@465))
)))
(assert (forall ((x@@466 Int) (S@@33 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@33) x@@466) (|Select__T@[Int]Bool_| S@@33 (DeviceExtension__DEVICE_OBJECT x@@466)))
 :qid |KbdCreateClassObjectbpl.1568:15|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@33) x@@466))
)))
(assert (forall ((x@@467 Int) (S@@34 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceState__DEVICE_EXTENSION S@@34) x@@467) (|Select__T@[Int]Bool_| S@@34 (DeviceState__DEVICE_EXTENSIONInv x@@467)))
 :qid |KbdCreateClassObjectbpl.1584:15|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceState__DEVICE_EXTENSION S@@34) x@@467))
)))
(assert (forall ((x@@468 Int) (S@@35 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceState__DEVICE_EXTENSIONInv S@@35) x@@468) (|Select__T@[Int]Bool_| S@@35 (DeviceState__DEVICE_EXTENSION x@@468)))
 :qid |KbdCreateClassObjectbpl.1585:15|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceState__DEVICE_EXTENSIONInv S@@35) x@@468))
)))
(assert (forall ((x@@469 Int) (S@@36 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DpcActive___unnamed_1_2dc63b48 S@@36) x@@469) (|Select__T@[Int]Bool_| S@@36 (DpcActive___unnamed_1_2dc63b48Inv x@@469)))
 :qid |KbdCreateClassObjectbpl.1601:15|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DpcActive___unnamed_1_2dc63b48 S@@36) x@@469))
)))
(assert (forall ((x@@470 Int) (S@@37 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DpcActive___unnamed_1_2dc63b48Inv S@@37) x@@470) (|Select__T@[Int]Bool_| S@@37 (DpcActive___unnamed_1_2dc63b48 x@@470)))
 :qid |KbdCreateClassObjectbpl.1602:15|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DpcActive___unnamed_1_2dc63b48Inv S@@37) x@@470))
)))
(assert (forall ((x@@471 Int) (S@@38 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Enabled__DEVICE_EXTENSION S@@38) x@@471) (|Select__T@[Int]Bool_| S@@38 (Enabled__DEVICE_EXTENSIONInv x@@471)))
 :qid |KbdCreateClassObjectbpl.1618:15|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Enabled__DEVICE_EXTENSION S@@38) x@@471))
)))
(assert (forall ((x@@472 Int) (S@@39 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Enabled__DEVICE_EXTENSIONInv S@@39) x@@472) (|Select__T@[Int]Bool_| S@@39 (Enabled__DEVICE_EXTENSION x@@472)))
 :qid |KbdCreateClassObjectbpl.1619:15|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Enabled__DEVICE_EXTENSIONInv S@@39) x@@472))
)))
(assert (forall ((x@@473 Int) (S@@40 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ExecuteWmiMethod__WMILIB_CONTEXT S@@40) x@@473) (|Select__T@[Int]Bool_| S@@40 (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@473)))
 :qid |KbdCreateClassObjectbpl.1635:15|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ExecuteWmiMethod__WMILIB_CONTEXT S@@40) x@@473))
)))
(assert (forall ((x@@474 Int) (S@@41 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ExecuteWmiMethod__WMILIB_CONTEXTInv S@@41) x@@474) (|Select__T@[Int]Bool_| S@@41 (ExecuteWmiMethod__WMILIB_CONTEXT x@@474)))
 :qid |KbdCreateClassObjectbpl.1636:15|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ExecuteWmiMethod__WMILIB_CONTEXTInv S@@41) x@@474))
)))
(assert (forall ((x@@475 Int) (S@@42 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ExtraWaitWakeIrp__DEVICE_EXTENSION S@@42) x@@475) (|Select__T@[Int]Bool_| S@@42 (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@475)))
 :qid |KbdCreateClassObjectbpl.1652:15|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ExtraWaitWakeIrp__DEVICE_EXTENSION S@@42) x@@475))
)))
(assert (forall ((x@@476 Int) (S@@43 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ExtraWaitWakeIrp__DEVICE_EXTENSIONInv S@@43) x@@476) (|Select__T@[Int]Bool_| S@@43 (ExtraWaitWakeIrp__DEVICE_EXTENSION x@@476)))
 :qid |KbdCreateClassObjectbpl.1653:15|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ExtraWaitWakeIrp__DEVICE_EXTENSIONInv S@@43) x@@476))
)))
(assert (forall ((x@@477 Int) (S@@44 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@44) x@@477) (|Select__T@[Int]Bool_| S@@44 (File__DEVICE_EXTENSIONInv x@@477)))
 :qid |KbdCreateClassObjectbpl.1669:15|
 :skolemid |254|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@44) x@@477))
)))
(assert (forall ((x@@478 Int) (S@@45 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@45) x@@478) (|Select__T@[Int]Bool_| S@@45 (File__DEVICE_EXTENSION x@@478)))
 :qid |KbdCreateClassObjectbpl.1670:15|
 :skolemid |255|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@45) x@@478))
)))
(assert (forall ((x@@479 Int) (S@@46 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@46) x@@479) (|Select__T@[Int]Bool_| S@@46 (Flags__DEVICE_OBJECTInv x@@479)))
 :qid |KbdCreateClassObjectbpl.1686:15|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@46) x@@479))
)))
(assert (forall ((x@@480 Int) (S@@47 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@47) x@@480) (|Select__T@[Int]Bool_| S@@47 (Flags__DEVICE_OBJECT x@@480)))
 :qid |KbdCreateClassObjectbpl.1687:15|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@47) x@@480))
)))
(assert (forall ((x@@481 Int) (S@@48 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@48) x@@481) (|Select__T@[Int]Bool_| S@@48 (Flink__LIST_ENTRYInv x@@481)))
 :qid |KbdCreateClassObjectbpl.1703:15|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@48) x@@481))
)))
(assert (forall ((x@@482 Int) (S@@49 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@49) x@@482) (|Select__T@[Int]Bool_| S@@49 (Flink__LIST_ENTRY x@@482)))
 :qid |KbdCreateClassObjectbpl.1704:15|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@49) x@@482))
)))
(assert (forall ((x@@483 Int) (S@@50 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@50) x@@483) (|Select__T@[Int]Bool_| S@@50 (GrandMaster__GLOBALSInv x@@483)))
 :qid |KbdCreateClassObjectbpl.1720:15|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@50) x@@483))
)))
(assert (forall ((x@@484 Int) (S@@51 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@51) x@@484) (|Select__T@[Int]Bool_| S@@51 (GrandMaster__GLOBALS x@@484)))
 :qid |KbdCreateClassObjectbpl.1721:15|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@51) x@@484))
)))
(assert (forall ((x@@485 Int) (S@@52 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GuidCount__WMILIB_CONTEXT S@@52) x@@485) (|Select__T@[Int]Bool_| S@@52 (GuidCount__WMILIB_CONTEXTInv x@@485)))
 :qid |KbdCreateClassObjectbpl.1737:15|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GuidCount__WMILIB_CONTEXT S@@52) x@@485))
)))
(assert (forall ((x@@486 Int) (S@@53 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GuidCount__WMILIB_CONTEXTInv S@@53) x@@486) (|Select__T@[Int]Bool_| S@@53 (GuidCount__WMILIB_CONTEXT x@@486)))
 :qid |KbdCreateClassObjectbpl.1738:15|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GuidCount__WMILIB_CONTEXTInv S@@53) x@@486))
)))
(assert (forall ((x@@487 Int) (S@@54 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GuidList__WMILIB_CONTEXT S@@54) x@@487) (|Select__T@[Int]Bool_| S@@54 (GuidList__WMILIB_CONTEXTInv x@@487)))
 :qid |KbdCreateClassObjectbpl.1754:15|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GuidList__WMILIB_CONTEXT S@@54) x@@487))
)))
(assert (forall ((x@@488 Int) (S@@55 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GuidList__WMILIB_CONTEXTInv S@@55) x@@488) (|Select__T@[Int]Bool_| S@@55 (GuidList__WMILIB_CONTEXT x@@488)))
 :qid |KbdCreateClassObjectbpl.1755:15|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GuidList__WMILIB_CONTEXTInv S@@55) x@@488))
)))
(assert (forall ((x@@489 Int) (S@@56 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Hand___unnamed_1_2ef8da39 S@@56) x@@489) (|Select__T@[Int]Bool_| S@@56 (Hand___unnamed_1_2ef8da39Inv x@@489)))
 :qid |KbdCreateClassObjectbpl.1771:15|
 :skolemid |314|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Hand___unnamed_1_2ef8da39 S@@56) x@@489))
)))
(assert (forall ((x@@490 Int) (S@@57 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Hand___unnamed_1_2ef8da39Inv S@@57) x@@490) (|Select__T@[Int]Bool_| S@@57 (Hand___unnamed_1_2ef8da39 x@@490)))
 :qid |KbdCreateClassObjectbpl.1772:15|
 :skolemid |315|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Hand___unnamed_1_2ef8da39Inv S@@57) x@@490))
)))
(assert (forall ((x@@491 Int) (S@@58 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Header__KEVENT S@@58) x@@491) (|Select__T@[Int]Bool_| S@@58 (Header__KEVENTInv x@@491)))
 :qid |KbdCreateClassObjectbpl.1788:15|
 :skolemid |324|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Header__KEVENT S@@58) x@@491))
)))
(assert (forall ((x@@492 Int) (S@@59 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Header__KEVENTInv S@@59) x@@492) (|Select__T@[Int]Bool_| S@@59 (Header__KEVENT x@@492)))
 :qid |KbdCreateClassObjectbpl.1789:15|
 :skolemid |325|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Header__KEVENTInv S@@59) x@@492))
)))
(assert (forall ((x@@493 Int) (S@@60 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK S@@60) x@@493) (|Select__T@[Int]Bool_| S@@60 (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@493)))
 :qid |KbdCreateClassObjectbpl.1805:15|
 :skolemid |334|
 :pattern ( (|Select__T@[Int]Bool_| (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK S@@60) x@@493))
)))
(assert (forall ((x@@494 Int) (S@@61 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv S@@61) x@@494) (|Select__T@[Int]Bool_| S@@61 (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK x@@494)))
 :qid |KbdCreateClassObjectbpl.1806:15|
 :skolemid |335|
 :pattern ( (|Select__T@[Int]Bool_| (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv S@@61) x@@494))
)))
(assert (forall ((x@@495 Int) (S@@62 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_IndicatorParameters__DEVICE_EXTENSION S@@62) x@@495) (|Select__T@[Int]Bool_| S@@62 (IndicatorParameters__DEVICE_EXTENSIONInv x@@495)))
 :qid |KbdCreateClassObjectbpl.1822:15|
 :skolemid |344|
 :pattern ( (|Select__T@[Int]Bool_| (_S_IndicatorParameters__DEVICE_EXTENSION S@@62) x@@495))
)))
(assert (forall ((x@@496 Int) (S@@63 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_IndicatorParameters__DEVICE_EXTENSIONInv S@@63) x@@496) (|Select__T@[Int]Bool_| S@@63 (IndicatorParameters__DEVICE_EXTENSION x@@496)))
 :qid |KbdCreateClassObjectbpl.1823:15|
 :skolemid |345|
 :pattern ( (|Select__T@[Int]Bool_| (_S_IndicatorParameters__DEVICE_EXTENSIONInv S@@63) x@@496))
)))
(assert (forall ((x@@497 Int) (S@@64 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputCount__DEVICE_EXTENSION S@@64) x@@497) (|Select__T@[Int]Bool_| S@@64 (InputCount__DEVICE_EXTENSIONInv x@@497)))
 :qid |KbdCreateClassObjectbpl.1839:15|
 :skolemid |354|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputCount__DEVICE_EXTENSION S@@64) x@@497))
)))
(assert (forall ((x@@498 Int) (S@@65 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputCount__DEVICE_EXTENSIONInv S@@65) x@@498) (|Select__T@[Int]Bool_| S@@65 (InputCount__DEVICE_EXTENSION x@@498)))
 :qid |KbdCreateClassObjectbpl.1840:15|
 :skolemid |355|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputCount__DEVICE_EXTENSIONInv S@@65) x@@498))
)))
(assert (forall ((x@@499 Int) (S@@66 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTES S@@66) x@@499) (|Select__T@[Int]Bool_| S@@66 (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@499)))
 :qid |KbdCreateClassObjectbpl.1856:15|
 :skolemid |364|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTES S@@66) x@@499))
)))
(assert (forall ((x@@500 Int) (S@@67 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTESInv S@@67) x@@500) (|Select__T@[Int]Bool_| S@@67 (InputDataQueueLength__KEYBOARD_ATTRIBUTES x@@500)))
 :qid |KbdCreateClassObjectbpl.1857:15|
 :skolemid |365|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTESInv S@@67) x@@500))
)))
(assert (forall ((x@@501 Int) (S@@68 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@68) x@@501) (|Select__T@[Int]Bool_| S@@68 (InputData__DEVICE_EXTENSIONInv x@@501)))
 :qid |KbdCreateClassObjectbpl.1873:15|
 :skolemid |374|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@68) x@@501))
)))
(assert (forall ((x@@502 Int) (S@@69 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@69) x@@502) (|Select__T@[Int]Bool_| S@@69 (InputData__DEVICE_EXTENSION x@@502)))
 :qid |KbdCreateClassObjectbpl.1874:15|
 :skolemid |375|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@69) x@@502))
)))
(assert (forall ((x@@503 Int) (S@@70 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Inserted___unnamed_1_2dc63b48 S@@70) x@@503) (|Select__T@[Int]Bool_| S@@70 (Inserted___unnamed_1_2dc63b48Inv x@@503)))
 :qid |KbdCreateClassObjectbpl.1890:15|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Inserted___unnamed_1_2dc63b48 S@@70) x@@503))
)))
(assert (forall ((x@@504 Int) (S@@71 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Inserted___unnamed_1_2dc63b48Inv S@@71) x@@504) (|Select__T@[Int]Bool_| S@@71 (Inserted___unnamed_1_2dc63b48 x@@504)))
 :qid |KbdCreateClassObjectbpl.1891:15|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Inserted___unnamed_1_2dc63b48Inv S@@71) x@@504))
)))
(assert (forall ((x@@505 Int) (S@@72 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCK S@@72) x@@505) (|Select__T@[Int]Bool_| S@@72 (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@505)))
 :qid |KbdCreateClassObjectbpl.1907:15|
 :skolemid |394|
 :pattern ( (|Select__T@[Int]Bool_| (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCK S@@72) x@@505))
)))
(assert (forall ((x@@506 Int) (S@@73 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@73) x@@506) (|Select__T@[Int]Bool_| S@@73 (IoCount__IO_REMOVE_LOCK_COMMON_BLOCK x@@506)))
 :qid |KbdCreateClassObjectbpl.1908:15|
 :skolemid |395|
 :pattern ( (|Select__T@[Int]Bool_| (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@73) x@@506))
)))
(assert (forall ((x@@507 Int) (S@@74 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTES S@@74) x@@507) (|Select__T@[Int]Bool_| S@@74 (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@507)))
 :qid |KbdCreateClassObjectbpl.1924:15|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTES S@@74) x@@507))
)))
(assert (forall ((x@@508 Int) (S@@75 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv S@@75) x@@508) (|Select__T@[Int]Bool_| S@@75 (KeyRepeatMaximum__KEYBOARD_ATTRIBUTES x@@508)))
 :qid |KbdCreateClassObjectbpl.1925:15|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv S@@75) x@@508))
)))
(assert (forall ((x@@509 Int) (S@@76 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTES S@@76) x@@509) (|Select__T@[Int]Bool_| S@@76 (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@509)))
 :qid |KbdCreateClassObjectbpl.1941:15|
 :skolemid |414|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTES S@@76) x@@509))
)))
(assert (forall ((x@@510 Int) (S@@77 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv S@@77) x@@510) (|Select__T@[Int]Bool_| S@@77 (KeyRepeatMinimum__KEYBOARD_ATTRIBUTES x@@510)))
 :qid |KbdCreateClassObjectbpl.1942:15|
 :skolemid |415|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv S@@77) x@@510))
)))
(assert (forall ((x@@511 Int) (S@@78 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyboardAttributes__DEVICE_EXTENSION S@@78) x@@511) (|Select__T@[Int]Bool_| S@@78 (KeyboardAttributes__DEVICE_EXTENSIONInv x@@511)))
 :qid |KbdCreateClassObjectbpl.1958:15|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyboardAttributes__DEVICE_EXTENSION S@@78) x@@511))
)))
(assert (forall ((x@@512 Int) (S@@79 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyboardAttributes__DEVICE_EXTENSIONInv S@@79) x@@512) (|Select__T@[Int]Bool_| S@@79 (KeyboardAttributes__DEVICE_EXTENSION x@@512)))
 :qid |KbdCreateClassObjectbpl.1959:15|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyboardAttributes__DEVICE_EXTENSIONInv S@@79) x@@512))
)))
(assert (forall ((x@@513 Int) (S@@80 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTES S@@80) x@@513) (|Select__T@[Int]Bool_| S@@80 (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@513)))
 :qid |KbdCreateClassObjectbpl.1975:15|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTES S@@80) x@@513))
)))
(assert (forall ((x@@514 Int) (S@@81 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv S@@81) x@@514) (|Select__T@[Int]Bool_| S@@81 (KeyboardIdentifier__KEYBOARD_ATTRIBUTES x@@514)))
 :qid |KbdCreateClassObjectbpl.1976:15|
 :skolemid |435|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv S@@81) x@@514))
)))
(assert (forall ((x@@515 Int) (S@@82 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyboardMode__KEYBOARD_ATTRIBUTES S@@82) x@@515) (|Select__T@[Int]Bool_| S@@82 (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@515)))
 :qid |KbdCreateClassObjectbpl.1992:15|
 :skolemid |444|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyboardMode__KEYBOARD_ATTRIBUTES S@@82) x@@515))
)))
(assert (forall ((x@@516 Int) (S@@83 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_KeyboardMode__KEYBOARD_ATTRIBUTESInv S@@83) x@@516) (|Select__T@[Int]Bool_| S@@83 (KeyboardMode__KEYBOARD_ATTRIBUTES x@@516)))
 :qid |KbdCreateClassObjectbpl.1993:15|
 :skolemid |445|
 :pattern ( (|Select__T@[Int]Bool_| (_S_KeyboardMode__KEYBOARD_ATTRIBUTESInv S@@83) x@@516))
)))
(assert (forall ((x@@517 Int) (S@@84 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERS S@@84) x@@517) (|Select__T@[Int]Bool_| S@@84 (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@517)))
 :qid |KbdCreateClassObjectbpl.2009:15|
 :skolemid |454|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERS S@@84) x@@517))
)))
(assert (forall ((x@@518 Int) (S@@85 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv S@@85) x@@518) (|Select__T@[Int]Bool_| S@@85 (LedFlags__KEYBOARD_INDICATOR_PARAMETERS x@@518)))
 :qid |KbdCreateClassObjectbpl.2010:15|
 :skolemid |455|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv S@@85) x@@518))
)))
(assert (forall ((x@@519 Int) (S@@86 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@86) x@@519) (|Select__T@[Int]Bool_| S@@86 (LegacyDeviceList__GLOBALSInv x@@519)))
 :qid |KbdCreateClassObjectbpl.2026:15|
 :skolemid |464|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@86) x@@519))
)))
(assert (forall ((x@@520 Int) (S@@87 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@87) x@@520) (|Select__T@[Int]Bool_| S@@87 (LegacyDeviceList__GLOBALS x@@520)))
 :qid |KbdCreateClassObjectbpl.2027:15|
 :skolemid |465|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@87) x@@520))
)))
(assert (forall ((x@@521 Int) (S@@88 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@88) x@@521) (|Select__T@[Int]Bool_| S@@88 (Length__UNICODE_STRINGInv x@@521)))
 :qid |KbdCreateClassObjectbpl.2043:15|
 :skolemid |474|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@88) x@@521))
)))
(assert (forall ((x@@522 Int) (S@@89 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@89) x@@522) (|Select__T@[Int]Bool_| S@@89 (Length__UNICODE_STRING x@@522)))
 :qid |KbdCreateClassObjectbpl.2044:15|
 :skolemid |475|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@89) x@@522))
)))
(assert (forall ((x@@523 Int) (S@@90 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@90) x@@523) (|Select__T@[Int]Bool_| S@@90 (Link__DEVICE_EXTENSIONInv x@@523)))
 :qid |KbdCreateClassObjectbpl.2060:15|
 :skolemid |484|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@90) x@@523))
)))
(assert (forall ((x@@524 Int) (S@@91 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@91) x@@524) (|Select__T@[Int]Bool_| S@@91 (Link__DEVICE_EXTENSION x@@524)))
 :qid |KbdCreateClassObjectbpl.2061:15|
 :skolemid |485|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@91) x@@524))
)))
(assert (forall ((x@@525 Int) (S@@92 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCK S@@92) x@@525) (|Select__T@[Int]Bool_| S@@92 (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@525)))
 :qid |KbdCreateClassObjectbpl.2077:15|
 :skolemid |494|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCK S@@92) x@@525))
)))
(assert (forall ((x@@526 Int) (S@@93 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCKInv S@@93) x@@526) (|Select__T@[Int]Bool_| S@@93 (LockList__IO_REMOVE_LOCK_DBG_BLOCK x@@526)))
 :qid |KbdCreateClassObjectbpl.2078:15|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCKInv S@@93) x@@526))
)))
(assert (forall ((x@@527 Int) (S@@94 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Lock___unnamed_4_a97c65a1 S@@94) x@@527) (|Select__T@[Int]Bool_| S@@94 (Lock___unnamed_4_a97c65a1Inv x@@527)))
 :qid |KbdCreateClassObjectbpl.2094:15|
 :skolemid |504|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Lock___unnamed_4_a97c65a1 S@@94) x@@527))
)))
(assert (forall ((x@@528 Int) (S@@95 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Lock___unnamed_4_a97c65a1Inv S@@95) x@@528) (|Select__T@[Int]Bool_| S@@95 (Lock___unnamed_4_a97c65a1 x@@528)))
 :qid |KbdCreateClassObjectbpl.2095:15|
 :skolemid |505|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Lock___unnamed_4_a97c65a1Inv S@@95) x@@528))
)))
(assert (forall ((x@@529 Int) (S@@96 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK S@@96) x@@529) (|Select__T@[Int]Bool_| S@@96 (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@529)))
 :qid |KbdCreateClassObjectbpl.2111:15|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK S@@96) x@@529))
)))
(assert (forall ((x@@530 Int) (S@@97 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv S@@97) x@@530) (|Select__T@[Int]Bool_| S@@97 (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK x@@530)))
 :qid |KbdCreateClassObjectbpl.2112:15|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv S@@97) x@@530))
)))
(assert (forall ((x@@531 Int) (S@@98 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK S@@98) x@@531) (|Select__T@[Int]Bool_| S@@98 (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@531)))
 :qid |KbdCreateClassObjectbpl.2128:15|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK S@@98) x@@531))
)))
(assert (forall ((x@@532 Int) (S@@99 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@99) x@@532) (|Select__T@[Int]Bool_| S@@99 (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK x@@532)))
 :qid |KbdCreateClassObjectbpl.2129:15|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@99) x@@532))
)))
(assert (forall ((x@@533 Int) (S@@100 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@100) x@@533) (|Select__T@[Int]Bool_| S@@100 (MaximumLength__UNICODE_STRINGInv x@@533)))
 :qid |KbdCreateClassObjectbpl.2145:15|
 :skolemid |534|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@100) x@@533))
)))
(assert (forall ((x@@534 Int) (S@@101 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@101) x@@534) (|Select__T@[Int]Bool_| S@@101 (MaximumLength__UNICODE_STRING x@@534)))
 :qid |KbdCreateClassObjectbpl.2146:15|
 :skolemid |535|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@101) x@@534))
)))
(assert (forall ((x@@535 Int) (S@@102 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MinDeviceWakeState__DEVICE_EXTENSION S@@102) x@@535) (|Select__T@[Int]Bool_| S@@102 (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@535)))
 :qid |KbdCreateClassObjectbpl.2162:15|
 :skolemid |544|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MinDeviceWakeState__DEVICE_EXTENSION S@@102) x@@535))
)))
(assert (forall ((x@@536 Int) (S@@103 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MinDeviceWakeState__DEVICE_EXTENSIONInv S@@103) x@@536) (|Select__T@[Int]Bool_| S@@103 (MinDeviceWakeState__DEVICE_EXTENSION x@@536)))
 :qid |KbdCreateClassObjectbpl.2163:15|
 :skolemid |545|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MinDeviceWakeState__DEVICE_EXTENSIONInv S@@103) x@@536))
)))
(assert (forall ((x@@537 Int) (S@@104 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MinSystemWakeState__DEVICE_EXTENSION S@@104) x@@537) (|Select__T@[Int]Bool_| S@@104 (MinSystemWakeState__DEVICE_EXTENSIONInv x@@537)))
 :qid |KbdCreateClassObjectbpl.2179:15|
 :skolemid |554|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MinSystemWakeState__DEVICE_EXTENSION S@@104) x@@537))
)))
(assert (forall ((x@@538 Int) (S@@105 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MinSystemWakeState__DEVICE_EXTENSIONInv S@@105) x@@538) (|Select__T@[Int]Bool_| S@@105 (MinSystemWakeState__DEVICE_EXTENSION x@@538)))
 :qid |KbdCreateClassObjectbpl.2180:15|
 :skolemid |555|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MinSystemWakeState__DEVICE_EXTENSIONInv S@@105) x@@538))
)))
(assert (forall ((x@@539 Int) (S@@106 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@106) x@@539) (|Select__T@[Int]Bool_| S@@106 (Mutex__GLOBALSInv x@@539)))
 :qid |KbdCreateClassObjectbpl.2196:15|
 :skolemid |564|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@106) x@@539))
)))
(assert (forall ((x@@540 Int) (S@@107 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@107) x@@540) (|Select__T@[Int]Bool_| S@@107 (Mutex__GLOBALS x@@540)))
 :qid |KbdCreateClassObjectbpl.2197:15|
 :skolemid |565|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@107) x@@540))
)))
(assert (forall ((x@@541 Int) (S@@108 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NpxIrql___unnamed_1_29794256 S@@108) x@@541) (|Select__T@[Int]Bool_| S@@108 (NpxIrql___unnamed_1_29794256Inv x@@541)))
 :qid |KbdCreateClassObjectbpl.2213:15|
 :skolemid |574|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NpxIrql___unnamed_1_29794256 S@@108) x@@541))
)))
(assert (forall ((x@@542 Int) (S@@109 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NpxIrql___unnamed_1_29794256Inv S@@109) x@@542) (|Select__T@[Int]Bool_| S@@109 (NpxIrql___unnamed_1_29794256 x@@542)))
 :qid |KbdCreateClassObjectbpl.2214:15|
 :skolemid |575|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NpxIrql___unnamed_1_29794256Inv S@@109) x@@542))
)))
(assert (forall ((x@@543 Int) (S@@110 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES S@@110) x@@543) (|Select__T@[Int]Bool_| S@@110 (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@543)))
 :qid |KbdCreateClassObjectbpl.2230:15|
 :skolemid |584|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES S@@110) x@@543))
)))
(assert (forall ((x@@544 Int) (S@@111 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv S@@111) x@@544) (|Select__T@[Int]Bool_| S@@111 (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES x@@544)))
 :qid |KbdCreateClassObjectbpl.2231:15|
 :skolemid |585|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv S@@111) x@@544))
)))
(assert (forall ((x@@545 Int) (S@@112 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTES S@@112) x@@545) (|Select__T@[Int]Bool_| S@@112 (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@545)))
 :qid |KbdCreateClassObjectbpl.2247:15|
 :skolemid |594|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTES S@@112) x@@545))
)))
(assert (forall ((x@@546 Int) (S@@113 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTESInv S@@113) x@@546) (|Select__T@[Int]Bool_| S@@113 (NumberOfIndicators__KEYBOARD_ATTRIBUTES x@@546)))
 :qid |KbdCreateClassObjectbpl.2248:15|
 :skolemid |595|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTESInv S@@113) x@@546))
)))
(assert (forall ((x@@547 Int) (S@@114 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTES S@@114) x@@547) (|Select__T@[Int]Bool_| S@@114 (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@547)))
 :qid |KbdCreateClassObjectbpl.2264:15|
 :skolemid |604|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTES S@@114) x@@547))
)))
(assert (forall ((x@@548 Int) (S@@115 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv S@@115) x@@548) (|Select__T@[Int]Bool_| S@@115 (NumberOfKeysTotal__KEYBOARD_ATTRIBUTES x@@548)))
 :qid |KbdCreateClassObjectbpl.2265:15|
 :skolemid |605|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv S@@115) x@@548))
)))
(assert (forall ((x@@549 Int) (S@@116 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_OkayToLogOverflow__DEVICE_EXTENSION S@@116) x@@549) (|Select__T@[Int]Bool_| S@@116 (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@549)))
 :qid |KbdCreateClassObjectbpl.2281:15|
 :skolemid |614|
 :pattern ( (|Select__T@[Int]Bool_| (_S_OkayToLogOverflow__DEVICE_EXTENSION S@@116) x@@549))
)))
(assert (forall ((x@@550 Int) (S@@117 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_OkayToLogOverflow__DEVICE_EXTENSIONInv S@@117) x@@550) (|Select__T@[Int]Bool_| S@@117 (OkayToLogOverflow__DEVICE_EXTENSION x@@550)))
 :qid |KbdCreateClassObjectbpl.2282:15|
 :skolemid |615|
 :pattern ( (|Select__T@[Int]Bool_| (_S_OkayToLogOverflow__DEVICE_EXTENSIONInv S@@117) x@@550))
)))
(assert (forall ((x@@551 Int) (S@@118 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PDO__DEVICE_EXTENSION S@@118) x@@551) (|Select__T@[Int]Bool_| S@@118 (PDO__DEVICE_EXTENSIONInv x@@551)))
 :qid |KbdCreateClassObjectbpl.2298:15|
 :skolemid |624|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PDO__DEVICE_EXTENSION S@@118) x@@551))
)))
(assert (forall ((x@@552 Int) (S@@119 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PDO__DEVICE_EXTENSIONInv S@@119) x@@552) (|Select__T@[Int]Bool_| S@@119 (PDO__DEVICE_EXTENSION x@@552)))
 :qid |KbdCreateClassObjectbpl.2299:15|
 :skolemid |625|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PDO__DEVICE_EXTENSIONInv S@@119) x@@552))
)))
(assert (forall ((x@@553 Int) (S@@120 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@120) x@@553) (|Select__T@[Int]Bool_| S@@120 (PnP__DEVICE_EXTENSIONInv x@@553)))
 :qid |KbdCreateClassObjectbpl.2315:15|
 :skolemid |634|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@120) x@@553))
)))
(assert (forall ((x@@554 Int) (S@@121 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@121) x@@554) (|Select__T@[Int]Bool_| S@@121 (PnP__DEVICE_EXTENSION x@@554)))
 :qid |KbdCreateClassObjectbpl.2316:15|
 :skolemid |635|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@121) x@@554))
)))
(assert (forall ((x@@555 Int) (S@@122 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_QueryWmiDataBlock__WMILIB_CONTEXT S@@122) x@@555) (|Select__T@[Int]Bool_| S@@122 (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@555)))
 :qid |KbdCreateClassObjectbpl.2332:15|
 :skolemid |644|
 :pattern ( (|Select__T@[Int]Bool_| (_S_QueryWmiDataBlock__WMILIB_CONTEXT S@@122) x@@555))
)))
(assert (forall ((x@@556 Int) (S@@123 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_QueryWmiDataBlock__WMILIB_CONTEXTInv S@@123) x@@556) (|Select__T@[Int]Bool_| S@@123 (QueryWmiDataBlock__WMILIB_CONTEXT x@@556)))
 :qid |KbdCreateClassObjectbpl.2333:15|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Bool_| (_S_QueryWmiDataBlock__WMILIB_CONTEXTInv S@@123) x@@556))
)))
(assert (forall ((x@@557 Int) (S@@124 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_QueryWmiRegInfo__WMILIB_CONTEXT S@@124) x@@557) (|Select__T@[Int]Bool_| S@@124 (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@557)))
 :qid |KbdCreateClassObjectbpl.2349:15|
 :skolemid |654|
 :pattern ( (|Select__T@[Int]Bool_| (_S_QueryWmiRegInfo__WMILIB_CONTEXT S@@124) x@@557))
)))
(assert (forall ((x@@558 Int) (S@@125 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_QueryWmiRegInfo__WMILIB_CONTEXTInv S@@125) x@@558) (|Select__T@[Int]Bool_| S@@125 (QueryWmiRegInfo__WMILIB_CONTEXT x@@558)))
 :qid |KbdCreateClassObjectbpl.2350:15|
 :skolemid |655|
 :pattern ( (|Select__T@[Int]Bool_| (_S_QueryWmiRegInfo__WMILIB_CONTEXTInv S@@125) x@@558))
)))
(assert (forall ((x@@559 Int) (S@@126 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERS S@@126) x@@559) (|Select__T@[Int]Bool_| S@@126 (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@559)))
 :qid |KbdCreateClassObjectbpl.2366:15|
 :skolemid |664|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERS S@@126) x@@559))
)))
(assert (forall ((x@@560 Int) (S@@127 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@127) x@@560) (|Select__T@[Int]Bool_| S@@127 (Rate__KEYBOARD_TYPEMATIC_PARAMETERS x@@560)))
 :qid |KbdCreateClassObjectbpl.2367:15|
 :skolemid |665|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@127) x@@560))
)))
(assert (forall ((x@@561 Int) (S@@128 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ReadQueue__DEVICE_EXTENSION S@@128) x@@561) (|Select__T@[Int]Bool_| S@@128 (ReadQueue__DEVICE_EXTENSIONInv x@@561)))
 :qid |KbdCreateClassObjectbpl.2383:15|
 :skolemid |674|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ReadQueue__DEVICE_EXTENSION S@@128) x@@561))
)))
(assert (forall ((x@@562 Int) (S@@129 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_ReadQueue__DEVICE_EXTENSIONInv S@@129) x@@562) (|Select__T@[Int]Bool_| S@@129 (ReadQueue__DEVICE_EXTENSION x@@562)))
 :qid |KbdCreateClassObjectbpl.2384:15|
 :skolemid |675|
 :pattern ( (|Select__T@[Int]Bool_| (_S_ReadQueue__DEVICE_EXTENSIONInv S@@129) x@@562))
)))
(assert (forall ((x@@563 Int) (S@@130 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK S@@130) x@@563) (|Select__T@[Int]Bool_| S@@130 (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@563)))
 :qid |KbdCreateClassObjectbpl.2400:15|
 :skolemid |684|
 :pattern ( (|Select__T@[Int]Bool_| (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK S@@130) x@@563))
)))
(assert (forall ((x@@564 Int) (S@@131 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@131) x@@564) (|Select__T@[Int]Bool_| S@@131 (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK x@@564)))
 :qid |KbdCreateClassObjectbpl.2401:15|
 :skolemid |685|
 :pattern ( (|Select__T@[Int]Bool_| (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@131) x@@564))
)))
(assert (forall ((x@@565 Int) (S@@132 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_RemoveLock__DEVICE_EXTENSION S@@132) x@@565) (|Select__T@[Int]Bool_| S@@132 (RemoveLock__DEVICE_EXTENSIONInv x@@565)))
 :qid |KbdCreateClassObjectbpl.2417:15|
 :skolemid |694|
 :pattern ( (|Select__T@[Int]Bool_| (_S_RemoveLock__DEVICE_EXTENSION S@@132) x@@565))
)))
(assert (forall ((x@@566 Int) (S@@133 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_RemoveLock__DEVICE_EXTENSIONInv S@@133) x@@566) (|Select__T@[Int]Bool_| S@@133 (RemoveLock__DEVICE_EXTENSION x@@566)))
 :qid |KbdCreateClassObjectbpl.2418:15|
 :skolemid |695|
 :pattern ( (|Select__T@[Int]Bool_| (_S_RemoveLock__DEVICE_EXTENSIONInv S@@133) x@@566))
)))
(assert (forall ((x@@567 Int) (S@@134 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCK S@@134) x@@567) (|Select__T@[Int]Bool_| S@@134 (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@567)))
 :qid |KbdCreateClassObjectbpl.2434:15|
 :skolemid |704|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCK S@@134) x@@567))
)))
(assert (forall ((x@@568 Int) (S@@135 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@135) x@@568) (|Select__T@[Int]Bool_| S@@135 (Removed__IO_REMOVE_LOCK_COMMON_BLOCK x@@568)))
 :qid |KbdCreateClassObjectbpl.2435:15|
 :skolemid |705|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@135) x@@568))
)))
(assert (forall ((x@@569 Int) (S@@136 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCK S@@136) x@@569) (|Select__T@[Int]Bool_| S@@136 (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@569)))
 :qid |KbdCreateClassObjectbpl.2451:15|
 :skolemid |714|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCK S@@136) x@@569))
)))
(assert (forall ((x@@570 Int) (S@@137 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv S@@137) x@@570) (|Select__T@[Int]Bool_| S@@137 (Reserved1__IO_REMOVE_LOCK_DBG_BLOCK x@@570)))
 :qid |KbdCreateClassObjectbpl.2452:15|
 :skolemid |715|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv S@@137) x@@570))
)))
(assert (forall ((x@@571 Int) (S@@138 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCK S@@138) x@@571) (|Select__T@[Int]Bool_| S@@138 (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@571)))
 :qid |KbdCreateClassObjectbpl.2468:15|
 :skolemid |724|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCK S@@138) x@@571))
)))
(assert (forall ((x@@572 Int) (S@@139 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv S@@139) x@@572) (|Select__T@[Int]Bool_| S@@139 (Reserved2__IO_REMOVE_LOCK_DBG_BLOCK x@@572)))
 :qid |KbdCreateClassObjectbpl.2469:15|
 :skolemid |725|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv S@@139) x@@572))
)))
(assert (forall ((x@@573 Int) (S@@140 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCK S@@140) x@@573) (|Select__T@[Int]Bool_| S@@140 (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@573)))
 :qid |KbdCreateClassObjectbpl.2485:15|
 :skolemid |734|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCK S@@140) x@@573))
)))
(assert (forall ((x@@574 Int) (S@@141 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@141) x@@574) (|Select__T@[Int]Bool_| S@@141 (Reserved__IO_REMOVE_LOCK_COMMON_BLOCK x@@574)))
 :qid |KbdCreateClassObjectbpl.2486:15|
 :skolemid |735|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@141) x@@574))
)))
(assert (forall ((x@@575 Int) (S@@142 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@142) x@@575) (|Select__T@[Int]Bool_| S@@142 (Self__DEVICE_EXTENSIONInv x@@575)))
 :qid |KbdCreateClassObjectbpl.2502:15|
 :skolemid |744|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@142) x@@575))
)))
(assert (forall ((x@@576 Int) (S@@143 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@143) x@@576) (|Select__T@[Int]Bool_| S@@143 (Self__DEVICE_EXTENSION x@@576)))
 :qid |KbdCreateClassObjectbpl.2503:15|
 :skolemid |745|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@143) x@@576))
)))
(assert (forall ((x@@577 Int) (S@@144 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SequenceNumber__DEVICE_EXTENSION S@@144) x@@577) (|Select__T@[Int]Bool_| S@@144 (SequenceNumber__DEVICE_EXTENSIONInv x@@577)))
 :qid |KbdCreateClassObjectbpl.2519:15|
 :skolemid |754|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SequenceNumber__DEVICE_EXTENSION S@@144) x@@577))
)))
(assert (forall ((x@@578 Int) (S@@145 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SequenceNumber__DEVICE_EXTENSIONInv S@@145) x@@578) (|Select__T@[Int]Bool_| S@@145 (SequenceNumber__DEVICE_EXTENSION x@@578)))
 :qid |KbdCreateClassObjectbpl.2520:15|
 :skolemid |755|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SequenceNumber__DEVICE_EXTENSIONInv S@@145) x@@578))
)))
(assert (forall ((x@@579 Int) (S@@146 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SetWmiDataBlock__WMILIB_CONTEXT S@@146) x@@579) (|Select__T@[Int]Bool_| S@@146 (SetWmiDataBlock__WMILIB_CONTEXTInv x@@579)))
 :qid |KbdCreateClassObjectbpl.2536:15|
 :skolemid |764|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SetWmiDataBlock__WMILIB_CONTEXT S@@146) x@@579))
)))
(assert (forall ((x@@580 Int) (S@@147 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SetWmiDataBlock__WMILIB_CONTEXTInv S@@147) x@@580) (|Select__T@[Int]Bool_| S@@147 (SetWmiDataBlock__WMILIB_CONTEXT x@@580)))
 :qid |KbdCreateClassObjectbpl.2537:15|
 :skolemid |765|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SetWmiDataBlock__WMILIB_CONTEXTInv S@@147) x@@580))
)))
(assert (forall ((x@@581 Int) (S@@148 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SetWmiDataItem__WMILIB_CONTEXT S@@148) x@@581) (|Select__T@[Int]Bool_| S@@148 (SetWmiDataItem__WMILIB_CONTEXTInv x@@581)))
 :qid |KbdCreateClassObjectbpl.2553:15|
 :skolemid |774|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SetWmiDataItem__WMILIB_CONTEXT S@@148) x@@581))
)))
(assert (forall ((x@@582 Int) (S@@149 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SetWmiDataItem__WMILIB_CONTEXTInv S@@149) x@@582) (|Select__T@[Int]Bool_| S@@149 (SetWmiDataItem__WMILIB_CONTEXT x@@582)))
 :qid |KbdCreateClassObjectbpl.2554:15|
 :skolemid |775|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SetWmiDataItem__WMILIB_CONTEXTInv S@@149) x@@582))
)))
(assert (forall ((x@@583 Int) (S@@150 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SignalState__DISPATCHER_HEADER S@@150) x@@583) (|Select__T@[Int]Bool_| S@@150 (SignalState__DISPATCHER_HEADERInv x@@583)))
 :qid |KbdCreateClassObjectbpl.2570:15|
 :skolemid |784|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SignalState__DISPATCHER_HEADER S@@150) x@@583))
)))
(assert (forall ((x@@584 Int) (S@@151 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SignalState__DISPATCHER_HEADERInv S@@151) x@@584) (|Select__T@[Int]Bool_| S@@151 (SignalState__DISPATCHER_HEADER x@@584)))
 :qid |KbdCreateClassObjectbpl.2571:15|
 :skolemid |785|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SignalState__DISPATCHER_HEADERInv S@@151) x@@584))
)))
(assert (forall ((x@@585 Int) (S@@152 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Signalling___unnamed_1_29794256 S@@152) x@@585) (|Select__T@[Int]Bool_| S@@152 (Signalling___unnamed_1_29794256Inv x@@585)))
 :qid |KbdCreateClassObjectbpl.2587:15|
 :skolemid |794|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Signalling___unnamed_1_29794256 S@@152) x@@585))
)))
(assert (forall ((x@@586 Int) (S@@153 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Signalling___unnamed_1_29794256Inv S@@153) x@@586) (|Select__T@[Int]Bool_| S@@153 (Signalling___unnamed_1_29794256 x@@586)))
 :qid |KbdCreateClassObjectbpl.2588:15|
 :skolemid |795|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Signalling___unnamed_1_29794256Inv S@@153) x@@586))
)))
(assert (forall ((x@@587 Int) (S@@154 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCK S@@154) x@@587) (|Select__T@[Int]Bool_| S@@154 (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@587)))
 :qid |KbdCreateClassObjectbpl.2604:15|
 :skolemid |804|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCK S@@154) x@@587))
)))
(assert (forall ((x@@588 Int) (S@@155 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCKInv S@@155) x@@588) (|Select__T@[Int]Bool_| S@@155 (Signature__IO_REMOVE_LOCK_DBG_BLOCK x@@588)))
 :qid |KbdCreateClassObjectbpl.2605:15|
 :skolemid |805|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCKInv S@@155) x@@588))
)))
(assert (forall ((x@@589 Int) (S@@156 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Size___unnamed_1_2ef8da39 S@@156) x@@589) (|Select__T@[Int]Bool_| S@@156 (Size___unnamed_1_2ef8da39Inv x@@589)))
 :qid |KbdCreateClassObjectbpl.2621:15|
 :skolemid |814|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Size___unnamed_1_2ef8da39 S@@156) x@@589))
)))
(assert (forall ((x@@590 Int) (S@@157 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Size___unnamed_1_2ef8da39Inv S@@157) x@@590) (|Select__T@[Int]Bool_| S@@157 (Size___unnamed_1_2ef8da39 x@@590)))
 :qid |KbdCreateClassObjectbpl.2622:15|
 :skolemid |815|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Size___unnamed_1_2ef8da39Inv S@@157) x@@590))
)))
(assert (forall ((x@@591 Int) (S@@158 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSION S@@158) x@@591) (|Select__T@[Int]Bool_| S@@158 (SpinLock__DEVICE_EXTENSIONInv x@@591)))
 :qid |KbdCreateClassObjectbpl.2638:15|
 :skolemid |824|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSION S@@158) x@@591))
)))
(assert (forall ((x@@592 Int) (S@@159 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSIONInv S@@159) x@@592) (|Select__T@[Int]Bool_| S@@159 (SpinLock__DEVICE_EXTENSION x@@592)))
 :qid |KbdCreateClassObjectbpl.2639:15|
 :skolemid |825|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSIONInv S@@159) x@@592))
)))
(assert (forall ((x@@593 Int) (S@@160 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCK S@@160) x@@593) (|Select__T@[Int]Bool_| S@@160 (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@593)))
 :qid |KbdCreateClassObjectbpl.2655:15|
 :skolemid |834|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCK S@@160) x@@593))
)))
(assert (forall ((x@@594 Int) (S@@161 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCKInv S@@161) x@@594) (|Select__T@[Int]Bool_| S@@161 (Spin__IO_REMOVE_LOCK_DBG_BLOCK x@@594)))
 :qid |KbdCreateClassObjectbpl.2656:15|
 :skolemid |835|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCKInv S@@161) x@@594))
)))
(assert (forall ((x@@595 Int) (S@@162 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@162) x@@595) (|Select__T@[Int]Bool_| S@@162 (Started__DEVICE_EXTENSIONInv x@@595)))
 :qid |KbdCreateClassObjectbpl.2672:15|
 :skolemid |844|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@162) x@@595))
)))
(assert (forall ((x@@596 Int) (S@@163 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@163) x@@596) (|Select__T@[Int]Bool_| S@@163 (Started__DEVICE_EXTENSION x@@596)))
 :qid |KbdCreateClassObjectbpl.2673:15|
 :skolemid |845|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@163) x@@596))
)))
(assert (forall ((x@@597 Int) (S@@164 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Subtype__KEYBOARD_ID S@@164) x@@597) (|Select__T@[Int]Bool_| S@@164 (Subtype__KEYBOARD_IDInv x@@597)))
 :qid |KbdCreateClassObjectbpl.2689:15|
 :skolemid |854|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Subtype__KEYBOARD_ID S@@164) x@@597))
)))
(assert (forall ((x@@598 Int) (S@@165 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Subtype__KEYBOARD_IDInv S@@165) x@@598) (|Select__T@[Int]Bool_| S@@165 (Subtype__KEYBOARD_ID x@@598)))
 :qid |KbdCreateClassObjectbpl.2690:15|
 :skolemid |855|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Subtype__KEYBOARD_IDInv S@@165) x@@598))
)))
(assert (forall ((x@@599 Int) (S@@166 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SurpriseRemoved__DEVICE_EXTENSION S@@166) x@@599) (|Select__T@[Int]Bool_| S@@166 (SurpriseRemoved__DEVICE_EXTENSIONInv x@@599)))
 :qid |KbdCreateClassObjectbpl.2706:15|
 :skolemid |864|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SurpriseRemoved__DEVICE_EXTENSION S@@166) x@@599))
)))
(assert (forall ((x@@600 Int) (S@@167 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SurpriseRemoved__DEVICE_EXTENSIONInv S@@167) x@@600) (|Select__T@[Int]Bool_| S@@167 (SurpriseRemoved__DEVICE_EXTENSION x@@600)))
 :qid |KbdCreateClassObjectbpl.2707:15|
 :skolemid |865|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SurpriseRemoved__DEVICE_EXTENSIONInv S@@167) x@@600))
)))
(assert (forall ((x@@601 Int) (S@@168 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SymbolicLinkName__DEVICE_EXTENSION S@@168) x@@601) (|Select__T@[Int]Bool_| S@@168 (SymbolicLinkName__DEVICE_EXTENSIONInv x@@601)))
 :qid |KbdCreateClassObjectbpl.2723:15|
 :skolemid |874|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SymbolicLinkName__DEVICE_EXTENSION S@@168) x@@601))
)))
(assert (forall ((x@@602 Int) (S@@169 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SymbolicLinkName__DEVICE_EXTENSIONInv S@@169) x@@602) (|Select__T@[Int]Bool_| S@@169 (SymbolicLinkName__DEVICE_EXTENSION x@@602)))
 :qid |KbdCreateClassObjectbpl.2724:15|
 :skolemid |875|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SymbolicLinkName__DEVICE_EXTENSIONInv S@@169) x@@602))
)))
(assert (forall ((x@@603 Int) (S@@170 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SystemState__DEVICE_EXTENSION S@@170) x@@603) (|Select__T@[Int]Bool_| S@@170 (SystemState__DEVICE_EXTENSIONInv x@@603)))
 :qid |KbdCreateClassObjectbpl.2740:15|
 :skolemid |884|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SystemState__DEVICE_EXTENSION S@@170) x@@603))
)))
(assert (forall ((x@@604 Int) (S@@171 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SystemState__DEVICE_EXTENSIONInv S@@171) x@@604) (|Select__T@[Int]Bool_| S@@171 (SystemState__DEVICE_EXTENSION x@@604)))
 :qid |KbdCreateClassObjectbpl.2741:15|
 :skolemid |885|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SystemState__DEVICE_EXTENSIONInv S@@171) x@@604))
)))
(assert (forall ((x@@605 Int) (S@@172 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SystemToDeviceState__DEVICE_EXTENSION S@@172) x@@605) (|Select__T@[Int]Bool_| S@@172 (SystemToDeviceState__DEVICE_EXTENSIONInv x@@605)))
 :qid |KbdCreateClassObjectbpl.2757:15|
 :skolemid |894|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SystemToDeviceState__DEVICE_EXTENSION S@@172) x@@605))
)))
(assert (forall ((x@@606 Int) (S@@173 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_SystemToDeviceState__DEVICE_EXTENSIONInv S@@173) x@@606) (|Select__T@[Int]Bool_| S@@173 (SystemToDeviceState__DEVICE_EXTENSION x@@606)))
 :qid |KbdCreateClassObjectbpl.2758:15|
 :skolemid |895|
 :pattern ( (|Select__T@[Int]Bool_| (_S_SystemToDeviceState__DEVICE_EXTENSIONInv S@@173) x@@606))
)))
(assert (forall ((x@@607 Int) (S@@174 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TargetNotifyHandle__DEVICE_EXTENSION S@@174) x@@607) (|Select__T@[Int]Bool_| S@@174 (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@607)))
 :qid |KbdCreateClassObjectbpl.2774:15|
 :skolemid |904|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TargetNotifyHandle__DEVICE_EXTENSION S@@174) x@@607))
)))
(assert (forall ((x@@608 Int) (S@@175 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TargetNotifyHandle__DEVICE_EXTENSIONInv S@@175) x@@608) (|Select__T@[Int]Bool_| S@@175 (TargetNotifyHandle__DEVICE_EXTENSION x@@608)))
 :qid |KbdCreateClassObjectbpl.2775:15|
 :skolemid |905|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TargetNotifyHandle__DEVICE_EXTENSIONInv S@@175) x@@608))
)))
(assert (forall ((x@@609 Int) (S@@176 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@176) x@@609) (|Select__T@[Int]Bool_| S@@176 (TopPort__DEVICE_EXTENSIONInv x@@609)))
 :qid |KbdCreateClassObjectbpl.2791:15|
 :skolemid |914|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@176) x@@609))
)))
(assert (forall ((x@@610 Int) (S@@177 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@177) x@@610) (|Select__T@[Int]Bool_| S@@177 (TopPort__DEVICE_EXTENSION x@@610)))
 :qid |KbdCreateClassObjectbpl.2792:15|
 :skolemid |915|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@177) x@@610))
)))
(assert (forall ((x@@611 Int) (S@@178 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TrueClassDevice__DEVICE_EXTENSION S@@178) x@@611) (|Select__T@[Int]Bool_| S@@178 (TrueClassDevice__DEVICE_EXTENSIONInv x@@611)))
 :qid |KbdCreateClassObjectbpl.2808:15|
 :skolemid |924|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TrueClassDevice__DEVICE_EXTENSION S@@178) x@@611))
)))
(assert (forall ((x@@612 Int) (S@@179 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TrueClassDevice__DEVICE_EXTENSIONInv S@@179) x@@612) (|Select__T@[Int]Bool_| S@@179 (TrueClassDevice__DEVICE_EXTENSION x@@612)))
 :qid |KbdCreateClassObjectbpl.2809:15|
 :skolemid |925|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TrueClassDevice__DEVICE_EXTENSIONInv S@@179) x@@612))
)))
(assert (forall ((x@@613 Int) (S@@180 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TrustedSubsystemCount__DEVICE_EXTENSION S@@180) x@@613) (|Select__T@[Int]Bool_| S@@180 (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@613)))
 :qid |KbdCreateClassObjectbpl.2825:15|
 :skolemid |934|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TrustedSubsystemCount__DEVICE_EXTENSION S@@180) x@@613))
)))
(assert (forall ((x@@614 Int) (S@@181 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TrustedSubsystemCount__DEVICE_EXTENSIONInv S@@181) x@@614) (|Select__T@[Int]Bool_| S@@181 (TrustedSubsystemCount__DEVICE_EXTENSION x@@614)))
 :qid |KbdCreateClassObjectbpl.2826:15|
 :skolemid |935|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TrustedSubsystemCount__DEVICE_EXTENSIONInv S@@181) x@@614))
)))
(assert (forall ((x@@615 Int) (S@@182 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Type__KEYBOARD_ID S@@182) x@@615) (|Select__T@[Int]Bool_| S@@182 (Type__KEYBOARD_IDInv x@@615)))
 :qid |KbdCreateClassObjectbpl.2842:15|
 :skolemid |944|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Type__KEYBOARD_ID S@@182) x@@615))
)))
(assert (forall ((x@@616 Int) (S@@183 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Type__KEYBOARD_IDInv S@@183) x@@616) (|Select__T@[Int]Bool_| S@@183 (Type__KEYBOARD_ID x@@616)))
 :qid |KbdCreateClassObjectbpl.2843:15|
 :skolemid |945|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Type__KEYBOARD_IDInv S@@183) x@@616))
)))
(assert (forall ((x@@617 Int) (S@@184 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Type___unnamed_4_5ca00198 S@@184) x@@617) (|Select__T@[Int]Bool_| S@@184 (Type___unnamed_4_5ca00198Inv x@@617)))
 :qid |KbdCreateClassObjectbpl.2859:15|
 :skolemid |954|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Type___unnamed_4_5ca00198 S@@184) x@@617))
)))
(assert (forall ((x@@618 Int) (S@@185 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Type___unnamed_4_5ca00198Inv S@@185) x@@618) (|Select__T@[Int]Bool_| S@@185 (Type___unnamed_4_5ca00198 x@@618)))
 :qid |KbdCreateClassObjectbpl.2860:15|
 :skolemid |955|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Type___unnamed_4_5ca00198Inv S@@185) x@@618))
)))
(assert (forall ((x@@619 Int) (S@@186 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@186) x@@619) (|Select__T@[Int]Bool_| S@@186 (UnitId__DEVICE_EXTENSIONInv x@@619)))
 :qid |KbdCreateClassObjectbpl.2876:15|
 :skolemid |964|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@186) x@@619))
)))
(assert (forall ((x@@620 Int) (S@@187 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@187) x@@620) (|Select__T@[Int]Bool_| S@@187 (UnitId__DEVICE_EXTENSION x@@620)))
 :qid |KbdCreateClassObjectbpl.2877:15|
 :skolemid |965|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@187) x@@620))
)))
(assert (forall ((x@@621 Int) (S@@188 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERS S@@188) x@@621) (|Select__T@[Int]Bool_| S@@188 (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@621)))
 :qid |KbdCreateClassObjectbpl.2893:15|
 :skolemid |974|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERS S@@188) x@@621))
)))
(assert (forall ((x@@622 Int) (S@@189 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERSInv S@@189) x@@622) (|Select__T@[Int]Bool_| S@@189 (UnitId__KEYBOARD_INDICATOR_PARAMETERS x@@622)))
 :qid |KbdCreateClassObjectbpl.2894:15|
 :skolemid |975|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERSInv S@@189) x@@622))
)))
(assert (forall ((x@@623 Int) (S@@190 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERS S@@190) x@@623) (|Select__T@[Int]Bool_| S@@190 (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@623)))
 :qid |KbdCreateClassObjectbpl.2910:15|
 :skolemid |984|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERS S@@190) x@@623))
)))
(assert (forall ((x@@624 Int) (S@@191 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@191) x@@624) (|Select__T@[Int]Bool_| S@@191 (UnitId__KEYBOARD_TYPEMATIC_PARAMETERS x@@624)))
 :qid |KbdCreateClassObjectbpl.2911:15|
 :skolemid |985|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@191) x@@624))
)))
(assert (forall ((x@@625 Int) (S@@192 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitListHead__DISPATCHER_HEADER S@@192) x@@625) (|Select__T@[Int]Bool_| S@@192 (WaitListHead__DISPATCHER_HEADERInv x@@625)))
 :qid |KbdCreateClassObjectbpl.2927:15|
 :skolemid |994|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitListHead__DISPATCHER_HEADER S@@192) x@@625))
)))
(assert (forall ((x@@626 Int) (S@@193 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitListHead__DISPATCHER_HEADERInv S@@193) x@@626) (|Select__T@[Int]Bool_| S@@193 (WaitListHead__DISPATCHER_HEADER x@@626)))
 :qid |KbdCreateClassObjectbpl.2928:15|
 :skolemid |995|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitListHead__DISPATCHER_HEADERInv S@@193) x@@626))
)))
(assert (forall ((x@@627 Int) (S@@194 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeEnabled__DEVICE_EXTENSION S@@194) x@@627) (|Select__T@[Int]Bool_| S@@194 (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@627)))
 :qid |KbdCreateClassObjectbpl.2944:15|
 :skolemid |1004|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeEnabled__DEVICE_EXTENSION S@@194) x@@627))
)))
(assert (forall ((x@@628 Int) (S@@195 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeEnabled__DEVICE_EXTENSIONInv S@@195) x@@628) (|Select__T@[Int]Bool_| S@@195 (WaitWakeEnabled__DEVICE_EXTENSION x@@628)))
 :qid |KbdCreateClassObjectbpl.2945:15|
 :skolemid |1005|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeEnabled__DEVICE_EXTENSIONInv S@@195) x@@628))
)))
(assert (forall ((x@@629 Int) (S@@196 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeIrp__DEVICE_EXTENSION S@@196) x@@629) (|Select__T@[Int]Bool_| S@@196 (WaitWakeIrp__DEVICE_EXTENSIONInv x@@629)))
 :qid |KbdCreateClassObjectbpl.2961:15|
 :skolemid |1014|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeIrp__DEVICE_EXTENSION S@@196) x@@629))
)))
(assert (forall ((x@@630 Int) (S@@197 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeIrp__DEVICE_EXTENSIONInv S@@197) x@@630) (|Select__T@[Int]Bool_| S@@197 (WaitWakeIrp__DEVICE_EXTENSION x@@630)))
 :qid |KbdCreateClassObjectbpl.2962:15|
 :skolemid |1015|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeIrp__DEVICE_EXTENSIONInv S@@197) x@@630))
)))
(assert (forall ((x@@631 Int) (S@@198 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@198) x@@631) (|Select__T@[Int]Bool_| S@@198 (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@631)))
 :qid |KbdCreateClassObjectbpl.2978:15|
 :skolemid |1024|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@198) x@@631))
)))
(assert (forall ((x@@632 Int) (S@@199 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@199) x@@632) (|Select__T@[Int]Bool_| S@@199 (WaitWakeSpinLock__DEVICE_EXTENSION x@@632)))
 :qid |KbdCreateClassObjectbpl.2979:15|
 :skolemid |1025|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@199) x@@632))
)))
(assert (forall ((x@@633 Int) (S@@200 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WmiFunctionControl__WMILIB_CONTEXT S@@200) x@@633) (|Select__T@[Int]Bool_| S@@200 (WmiFunctionControl__WMILIB_CONTEXTInv x@@633)))
 :qid |KbdCreateClassObjectbpl.2995:15|
 :skolemid |1034|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WmiFunctionControl__WMILIB_CONTEXT S@@200) x@@633))
)))
(assert (forall ((x@@634 Int) (S@@201 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WmiFunctionControl__WMILIB_CONTEXTInv S@@201) x@@634) (|Select__T@[Int]Bool_| S@@201 (WmiFunctionControl__WMILIB_CONTEXT x@@634)))
 :qid |KbdCreateClassObjectbpl.2996:15|
 :skolemid |1035|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WmiFunctionControl__WMILIB_CONTEXTInv S@@201) x@@634))
)))
(assert (forall ((x@@635 Int) (S@@202 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WmiLibInfo__DEVICE_EXTENSION S@@202) x@@635) (|Select__T@[Int]Bool_| S@@202 (WmiLibInfo__DEVICE_EXTENSIONInv x@@635)))
 :qid |KbdCreateClassObjectbpl.3012:15|
 :skolemid |1044|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WmiLibInfo__DEVICE_EXTENSION S@@202) x@@635))
)))
(assert (forall ((x@@636 Int) (S@@203 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_WmiLibInfo__DEVICE_EXTENSIONInv S@@203) x@@636) (|Select__T@[Int]Bool_| S@@203 (WmiLibInfo__DEVICE_EXTENSION x@@636)))
 :qid |KbdCreateClassObjectbpl.3013:15|
 :skolemid |1045|
 :pattern ( (|Select__T@[Int]Bool_| (_S_WmiLibInfo__DEVICE_EXTENSIONInv S@@203) x@@636))
)))
(assert (forall ((x@@637 Int) (S@@204 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_1_29794256___unnamed_4_5ca00198 S@@204) x@@637) (|Select__T@[Int]Bool_| S@@204 (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@637)))
 :qid |KbdCreateClassObjectbpl.3029:15|
 :skolemid |1054|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_1_29794256___unnamed_4_5ca00198 S@@204) x@@637))
)))
(assert (forall ((x@@638 Int) (S@@205 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_1_29794256___unnamed_4_5ca00198Inv S@@205) x@@638) (|Select__T@[Int]Bool_| S@@205 (__unnamed_1_29794256___unnamed_4_5ca00198 x@@638)))
 :qid |KbdCreateClassObjectbpl.3030:15|
 :skolemid |1055|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_1_29794256___unnamed_4_5ca00198Inv S@@205) x@@638))
)))
(assert (forall ((x@@639 Int) (S@@206 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198 S@@206) x@@639) (|Select__T@[Int]Bool_| S@@206 (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@639)))
 :qid |KbdCreateClassObjectbpl.3046:15|
 :skolemid |1064|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198 S@@206) x@@639))
)))
(assert (forall ((x@@640 Int) (S@@207 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198Inv S@@207) x@@640) (|Select__T@[Int]Bool_| S@@207 (__unnamed_1_2dc63b48___unnamed_4_5ca00198 x@@640)))
 :qid |KbdCreateClassObjectbpl.3047:15|
 :skolemid |1065|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198Inv S@@207) x@@640))
)))
(assert (forall ((x@@641 Int) (S@@208 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198 S@@208) x@@641) (|Select__T@[Int]Bool_| S@@208 (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@641)))
 :qid |KbdCreateClassObjectbpl.3063:15|
 :skolemid |1074|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198 S@@208) x@@641))
)))
(assert (forall ((x@@642 Int) (S@@209 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198Inv S@@209) x@@642) (|Select__T@[Int]Bool_| S@@209 (__unnamed_1_2ef8da39___unnamed_4_5ca00198 x@@642)))
 :qid |KbdCreateClassObjectbpl.3064:15|
 :skolemid |1075|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198Inv S@@209) x@@642))
)))
(assert (forall ((x@@643 Int) (S@@210 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1 S@@210) x@@643) (|Select__T@[Int]Bool_| S@@210 (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@643)))
 :qid |KbdCreateClassObjectbpl.3080:15|
 :skolemid |1084|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1 S@@210) x@@643))
)))
(assert (forall ((x@@644 Int) (S@@211 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1Inv S@@211) x@@644) (|Select__T@[Int]Bool_| S@@211 (__unnamed_4_5ca00198___unnamed_4_a97c65a1 x@@644)))
 :qid |KbdCreateClassObjectbpl.3081:15|
 :skolemid |1085|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1Inv S@@211) x@@644))
)))
(assert (forall ((x@@645 Int) (S@@212 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_4_a97c65a1__DISPATCHER_HEADER S@@212) x@@645) (|Select__T@[Int]Bool_| S@@212 (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@645)))
 :qid |KbdCreateClassObjectbpl.3097:15|
 :skolemid |1094|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_4_a97c65a1__DISPATCHER_HEADER S@@212) x@@645))
)))
(assert (forall ((x@@646 Int) (S@@213 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S___unnamed_4_a97c65a1__DISPATCHER_HEADERInv S@@213) x@@646) (|Select__T@[Int]Bool_| S@@213 (__unnamed_4_a97c65a1__DISPATCHER_HEADER x@@646)))
 :qid |KbdCreateClassObjectbpl.3098:15|
 :skolemid |1095|
 :pattern ( (|Select__T@[Int]Bool_| (_S___unnamed_4_a97c65a1__DISPATCHER_HEADERInv S@@213) x@@646))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@647 Int) ) (! (ReachBetween f@@5 x@@647 x@@647 x@@647)
 :qid |KbdCreateClassObjectbpl.3258:14|
 :skolemid |1126|
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@648 Int) (z@@4 Int) ) (! (ReachBetween f@@6 x@@648 x@@648 x@@648)
 :qid |KbdCreateClassObjectbpl.3250:14|
 :skolemid |1125|
 :pattern ( (ReachBetweenSet f@@6 x@@648 z@@4))
)))
(assert (forall ((v@@1 Int) (t@@1 T@name) (m@@1 |T@[name][Int]Int|) ) (! (= (HasType v@@1 (T.Ptr t@@1) m@@1)  (or (= v@@1 0) (and (> v@@1 0) (Match v@@1 t@@1))))
 :qid |KbdCreateClassObjectbpl.114:14|
 :skolemid |40|
 :pattern ( (HasType v@@1 (T.Ptr t@@1) m@@1))
)))
(assert (forall ((x@@649 Int) (S@@214 |T@[Int]Bool|) (M@@1 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@214 x@@649) (|Select__T@[Int]Bool_| (Dereference S@@214 M@@1) (|Select__T@[Int]Int_| M@@1 x@@649)))
 :qid |KbdCreateClassObjectbpl.91:14|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| M@@1 x@@649) (|Select__T@[Int]Bool_| S@@214 x@@649) (Dereference S@@214 M@@1))
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
 :qid |KbdCreateClassObjectbpl.3301:15|
 :skolemid |1139|
 :pattern ( (|Select__T@[Int]Int_| f@@7 (Flink__LIST_ENTRY __x)) (Shift_Flink__LIST_ENTRY f@@7))
 :pattern ( (|Select__T@[Int]Int_| (Shift_Flink__LIST_ENTRY f@@7) __x))
)))
(assert (forall ((a@@12 Int) (b@@7 Int) ) (!  (=> (and (< a@@12 0) (< b@@7 0)) (and (>= (* b@@7 (DIV a@@12 b@@7)) a@@12) (> a@@12 (* b@@7 (+ (DIV a@@12 b@@7) 1)))))
 :qid |KbdCreateClassObjectbpl.3133:14|
 :skolemid |1109|
 :pattern ( (DIV a@@12 b@@7))
)))
(assert (forall ((a@@13 Int) (b@@8 Int) ) (!  (=> (and (< a@@13 0) (> b@@8 0)) (and (>= (* b@@8 (DIV a@@13 b@@8)) a@@13) (> a@@13 (* b@@8 (- (DIV a@@13 b@@8) 1)))))
 :qid |KbdCreateClassObjectbpl.3129:14|
 :skolemid |1108|
 :pattern ( (DIV a@@13 b@@8))
)))
(assert (forall ((a@@14 Int) (t@@2 T@name) ) (! (= (Match a@@14 (T.Ptr t@@2)) (= (Field a@@14) (T.Ptr t@@2)))
 :qid |KbdCreateClassObjectbpl.113:14|
 :skolemid |39|
 :pattern ( (Match a@@14 (T.Ptr t@@2)))
)))
(assert (forall ((f@@8 |T@[Int]Int|) (x@@650 Int) (y@@8 Int) (z@@5 Int) ) (!  (=> (ReachBetween f@@8 x@@650 y@@8 z@@5) (|Select__T@[Int]Bool_| (ReachBetweenSet f@@8 x@@650 z@@5) y@@8))
 :qid |KbdCreateClassObjectbpl.3249:14|
 :skolemid |1124|
 :pattern ( (ReachBetween f@@8 x@@650 y@@8 z@@5) (ReachBetweenSet f@@8 x@@650 z@@5))
)))
(assert (forall ((x@@651 Int) (y@@9 Int) (S@@215 |T@[Int]Bool|) (M@@2 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@215 x@@651)) (Equal (Dereference S@@215 (|Store__T@[Int]Int_| M@@2 x@@651 y@@9)) (Dereference S@@215 M@@2)))
 :qid |KbdCreateClassObjectbpl.92:14|
 :skolemid |32|
 :pattern ( (Dereference S@@215 (|Store__T@[Int]Int_| M@@2 x@@651 y@@9)))
)))
(assert (forall ((n@@0 Int) (x@@652 Int) ) (! (exists ((k Int) ) (! (= (- (Rep n@@0 x@@652) x@@652) (* n@@0 k))
 :qid |KbdCreateClassObjectbpl.46:49|
 :skolemid |7|
))
 :qid |KbdCreateClassObjectbpl.46:14|
 :skolemid |8|
 :pattern ( (Rep n@@0 x@@652))
)))
(assert (forall ((f@@9 |T@[Int]Int|) (x@@653 Int) (y@@10 Int) (z@@6 Int) ) (! (= (ReachAvoiding f@@9 x@@653 y@@10 z@@6)  (or (ReachBetween f@@9 x@@653 y@@10 z@@6) (and (ReachBetween f@@9 x@@653 y@@10 y@@10) (not (ReachBetween f@@9 x@@653 z@@6 z@@6)))))
 :qid |KbdCreateClassObjectbpl.3293:14|
 :skolemid |1137|
 :pattern ( (ReachAvoiding f@@9 x@@653 y@@10 z@@6))
 :pattern ( (ReachBetween f@@9 x@@653 y@@10 z@@6))
)))
(assert (forall ((x@@654 Int) (S@@216 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Intersection S@@216 T@@1) x@@654)  (and (|Select__T@[Int]Bool_| S@@216 x@@654) (|Select__T@[Int]Bool_| T@@1 x@@654)))
 :qid |KbdCreateClassObjectbpl.75:14|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| (Intersection S@@216 T@@1) x@@654))
 :pattern ( (Intersection S@@216 T@@1) (|Select__T@[Int]Bool_| S@@216 x@@654))
 :pattern ( (Intersection S@@216 T@@1) (|Select__T@[Int]Bool_| T@@1 x@@654))
)))
(assert (forall ((x@@655 Int) (S@@217 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Difference S@@217 T@@2) x@@655)  (and (|Select__T@[Int]Bool_| S@@217 x@@655) (not (|Select__T@[Int]Bool_| T@@2 x@@655))))
 :qid |KbdCreateClassObjectbpl.76:14|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| (Difference S@@217 T@@2) x@@655))
 :pattern ( (Difference S@@217 T@@2) (|Select__T@[Int]Bool_| S@@217 x@@655))
 :pattern ( (Difference S@@217 T@@2) (|Select__T@[Int]Bool_| T@@2 x@@655))
)))
(assert (forall ((a@@15 Bool) (b@@9 Int) (c@@0 Int) ) (!  (=> (not a@@15) (= (choose a@@15 b@@9 c@@0) c@@0))
 :qid |KbdCreateClassObjectbpl.3169:14|
 :skolemid |1111|
 :pattern ( (choose a@@15 b@@9 c@@0))
)))
(assert (forall ((f@@10 |T@[Int]Int|) (__x@@0 Int) (__v Int) ) (! (= (Shift_Flink__LIST_ENTRY (|Store__T@[Int]Int_| f@@10 (Flink__LIST_ENTRY __x@@0) __v)) (|Store__T@[Int]Int_| (Shift_Flink__LIST_ENTRY f@@10) __x@@0 __v))
 :qid |KbdCreateClassObjectbpl.3302:14|
 :skolemid |1140|
 :pattern ( (Shift_Flink__LIST_ENTRY (|Store__T@[Int]Int_| f@@10 (Flink__LIST_ENTRY __x@@0) __v)))
)))
(assert (forall ((f@@11 |T@[Int]Int|) (x@@656 Int) ) (! (|Select__T@[Int]Bool_| (Inverse f@@11 (|Select__T@[Int]Int_| f@@11 x@@656)) x@@656)
 :qid |KbdCreateClassObjectbpl.84:14|
 :skolemid |25|
 :pattern ( (Inverse f@@11 (|Select__T@[Int]Int_| f@@11 x@@656)))
)))
(assert (forall ((n@@1 Int) (x@@657 Int) (y@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (AtLeast n@@1 x@@657) y@@11) (and (<= x@@657 y@@11) (= (Rep n@@1 x@@657) (Rep n@@1 y@@11))))
 :qid |KbdCreateClassObjectbpl.42:14|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (AtLeast n@@1 x@@657) y@@11))
)))
(assert (forall ((f@@12 |T@[Int]Int|) (x@@658 Int) (y@@12 Int) ) (!  (=> (ReachBetween f@@12 x@@658 y@@12 y@@12) (or (= x@@658 y@@12) (ReachBetween f@@12 x@@658 (|Select__T@[Int]Int_| f@@12 x@@658) y@@12)))
 :qid |KbdCreateClassObjectbpl.3265:14|
 :skolemid |1128|
 :pattern ( (|Select__T@[Int]Int_| f@@12 x@@658) (ReachBetween f@@12 x@@658 y@@12 y@@12))
)))
(assert (forall ((S@@218 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (Equal S@@218 T@@3)  (and (Subset S@@218 T@@3) (Subset T@@3 S@@218)))
 :qid |KbdCreateClassObjectbpl.78:14|
 :skolemid |18|
 :pattern ( (Equal S@@218 T@@3))
)))
(assert (forall ((M@@3 |T@[name][Int]Int|) (x@@659 Int) (y@@13 Int) ) (! (= (Unified (|Store__T@[name][Int]Int_| M@@3 (Field x@@659) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@3 (Field x@@659)) x@@659 y@@13))) (|Store__T@[Int]Int_| (Unified M@@3) x@@659 y@@13))
 :qid |KbdCreateClassObjectbpl.100:14|
 :skolemid |36|
 :pattern ( (Unified (|Store__T@[name][Int]Int_| M@@3 (Field x@@659) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@3 (Field x@@659)) x@@659 y@@13))))
)))
(assert (forall ((f@@13 |T@[Int]Int|) (x@@660 Int) (y@@14 Int) (z@@7 Int) ) (!  (=> (and (ReachBetween f@@13 x@@660 y@@14 y@@14) (ReachBetween f@@13 x@@660 z@@7 z@@7)) (or (ReachBetween f@@13 x@@660 y@@14 z@@7) (ReachBetween f@@13 x@@660 z@@7 y@@14)))
 :qid |KbdCreateClassObjectbpl.3274:14|
 :skolemid |1131|
 :pattern ( (ReachBetween f@@13 x@@660 y@@14 y@@14) (ReachBetween f@@13 x@@660 z@@7 z@@7))
)))
(assert (forall ((n@@2 Int) (x@@661 Int) ) (! (|Select__T@[Int]Bool_| (AtLeast n@@2 x@@661) x@@661)
 :qid |KbdCreateClassObjectbpl.44:14|
 :skolemid |5|
 :pattern ( (AtLeast n@@2 x@@661))
)))
(assert (forall ((a@@16 Int) (b@@10 Int) ) (!  (=> (and (>= a@@16 0) (< b@@10 0)) (and (<= (* b@@10 (DIV a@@16 b@@10)) a@@16) (< a@@16 (* b@@10 (- (DIV a@@16 b@@10) 1)))))
 :qid |KbdCreateClassObjectbpl.3125:14|
 :skolemid |1107|
 :pattern ( (DIV a@@16 b@@10))
)))
(assert (forall ((a@@17 Int) (b@@11 Int) ) (!  (=> (and (>= a@@17 0) (> b@@11 0)) (and (<= (* b@@11 (DIV a@@17 b@@11)) a@@17) (< a@@17 (* b@@11 (+ (DIV a@@17 b@@11) 1)))))
 :qid |KbdCreateClassObjectbpl.3121:14|
 :skolemid |1106|
 :pattern ( (DIV a@@17 b@@11))
)))
(assert (forall ((f@@14 |T@[Int]Int|) (u Int) (x@@662 Int) ) (!  (=> (ReachBetween f@@14 u x@@662 x@@662) (ReachBetween f@@14 u u x@@662))
 :qid |KbdCreateClassObjectbpl.3290:14|
 :skolemid |1136|
 :pattern ( (ReachBetween f@@14 u x@@662 x@@662))
)))
(assert (forall ((x@@663 Int) ) (! (= (Abandoned___unnamed_1_29794256Inv (Abandoned___unnamed_1_29794256 x@@663)) x@@663)
 :qid |KbdCreateClassObjectbpl.1309:15|
 :skolemid |42|
 :pattern ( (Abandoned___unnamed_1_29794256Inv (Abandoned___unnamed_1_29794256 x@@663)))
)))
(assert (forall ((x@@664 Int) ) (! (= (Abandoned___unnamed_1_29794256 (Abandoned___unnamed_1_29794256Inv x@@664)) x@@664)
 :qid |KbdCreateClassObjectbpl.1310:15|
 :skolemid |43|
 :pattern ( (Abandoned___unnamed_1_29794256Inv x@@664))
)))
(assert (forall ((x@@665 Int) ) (! (= (Absolute___unnamed_1_29794256Inv (Absolute___unnamed_1_29794256 x@@665)) x@@665)
 :qid |KbdCreateClassObjectbpl.1326:15|
 :skolemid |52|
 :pattern ( (Absolute___unnamed_1_29794256Inv (Absolute___unnamed_1_29794256 x@@665)))
)))
(assert (forall ((x@@666 Int) ) (! (= (Absolute___unnamed_1_29794256 (Absolute___unnamed_1_29794256Inv x@@666)) x@@666)
 :qid |KbdCreateClassObjectbpl.1327:15|
 :skolemid |53|
 :pattern ( (Absolute___unnamed_1_29794256Inv x@@666))
)))
(assert (forall ((x@@667 Int) ) (! (= (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK x@@667)) x@@667)
 :qid |KbdCreateClassObjectbpl.1343:15|
 :skolemid |62|
 :pattern ( (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK x@@667)))
)))
(assert (forall ((x@@668 Int) ) (! (= (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@668)) x@@668)
 :qid |KbdCreateClassObjectbpl.1344:15|
 :skolemid |63|
 :pattern ( (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@668))
)))
(assert (forall ((x@@669 Int) ) (! (= (AllowDisable__DEVICE_EXTENSIONInv (AllowDisable__DEVICE_EXTENSION x@@669)) x@@669)
 :qid |KbdCreateClassObjectbpl.1360:15|
 :skolemid |72|
 :pattern ( (AllowDisable__DEVICE_EXTENSIONInv (AllowDisable__DEVICE_EXTENSION x@@669)))
)))
(assert (forall ((x@@670 Int) ) (! (= (AllowDisable__DEVICE_EXTENSION (AllowDisable__DEVICE_EXTENSIONInv x@@670)) x@@670)
 :qid |KbdCreateClassObjectbpl.1361:15|
 :skolemid |73|
 :pattern ( (AllowDisable__DEVICE_EXTENSIONInv x@@670))
)))
(assert (forall ((x@@671 Int) ) (! (= (BaseClassName__GLOBALSInv (BaseClassName__GLOBALS x@@671)) x@@671)
 :qid |KbdCreateClassObjectbpl.1377:15|
 :skolemid |82|
 :pattern ( (BaseClassName__GLOBALSInv (BaseClassName__GLOBALS x@@671)))
)))
(assert (forall ((x@@672 Int) ) (! (= (BaseClassName__GLOBALS (BaseClassName__GLOBALSInv x@@672)) x@@672)
 :qid |KbdCreateClassObjectbpl.1378:15|
 :skolemid |83|
 :pattern ( (BaseClassName__GLOBALSInv x@@672))
)))
(assert (forall ((x@@673 Int) ) (! (= (Blink__LIST_ENTRYInv (Blink__LIST_ENTRY x@@673)) x@@673)
 :qid |KbdCreateClassObjectbpl.1394:15|
 :skolemid |92|
 :pattern ( (Blink__LIST_ENTRYInv (Blink__LIST_ENTRY x@@673)))
)))
(assert (forall ((x@@674 Int) ) (! (= (Blink__LIST_ENTRY (Blink__LIST_ENTRYInv x@@674)) x@@674)
 :qid |KbdCreateClassObjectbpl.1395:15|
 :skolemid |93|
 :pattern ( (Blink__LIST_ENTRYInv x@@674))
)))
(assert (forall ((x@@675 Int) ) (! (= (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv (Blocks__IO_REMOVE_LOCK_DBG_BLOCK x@@675)) x@@675)
 :qid |KbdCreateClassObjectbpl.1411:15|
 :skolemid |102|
 :pattern ( (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv (Blocks__IO_REMOVE_LOCK_DBG_BLOCK x@@675)))
)))
(assert (forall ((x@@676 Int) ) (! (= (Blocks__IO_REMOVE_LOCK_DBG_BLOCK (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@676)) x@@676)
 :qid |KbdCreateClassObjectbpl.1412:15|
 :skolemid |103|
 :pattern ( (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@676))
)))
(assert (forall ((x@@677 Int) ) (! (= (Buffer__UNICODE_STRINGInv (Buffer__UNICODE_STRING x@@677)) x@@677)
 :qid |KbdCreateClassObjectbpl.1428:15|
 :skolemid |112|
 :pattern ( (Buffer__UNICODE_STRINGInv (Buffer__UNICODE_STRING x@@677)))
)))
(assert (forall ((x@@678 Int) ) (! (= (Buffer__UNICODE_STRING (Buffer__UNICODE_STRINGInv x@@678)) x@@678)
 :qid |KbdCreateClassObjectbpl.1429:15|
 :skolemid |113|
 :pattern ( (Buffer__UNICODE_STRINGInv x@@678))
)))
(assert (forall ((x@@679 Int) ) (! (= (Common__IO_REMOVE_LOCKInv (Common__IO_REMOVE_LOCK x@@679)) x@@679)
 :qid |KbdCreateClassObjectbpl.1445:15|
 :skolemid |122|
 :pattern ( (Common__IO_REMOVE_LOCKInv (Common__IO_REMOVE_LOCK x@@679)))
)))
(assert (forall ((x@@680 Int) ) (! (= (Common__IO_REMOVE_LOCK (Common__IO_REMOVE_LOCKInv x@@680)) x@@680)
 :qid |KbdCreateClassObjectbpl.1446:15|
 :skolemid |123|
 :pattern ( (Common__IO_REMOVE_LOCKInv x@@680))
)))
(assert (forall ((x@@681 Int) ) (! (= (ConnectOneClassToOnePort__GLOBALSInv (ConnectOneClassToOnePort__GLOBALS x@@681)) x@@681)
 :qid |KbdCreateClassObjectbpl.1462:15|
 :skolemid |132|
 :pattern ( (ConnectOneClassToOnePort__GLOBALSInv (ConnectOneClassToOnePort__GLOBALS x@@681)))
)))
(assert (forall ((x@@682 Int) ) (! (= (ConnectOneClassToOnePort__GLOBALS (ConnectOneClassToOnePort__GLOBALSInv x@@682)) x@@682)
 :qid |KbdCreateClassObjectbpl.1463:15|
 :skolemid |133|
 :pattern ( (ConnectOneClassToOnePort__GLOBALSInv x@@682))
)))
(assert (forall ((x@@683 Int) ) (! (= (DataIn__DEVICE_EXTENSIONInv (DataIn__DEVICE_EXTENSION x@@683)) x@@683)
 :qid |KbdCreateClassObjectbpl.1479:15|
 :skolemid |142|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv (DataIn__DEVICE_EXTENSION x@@683)))
)))
(assert (forall ((x@@684 Int) ) (! (= (DataIn__DEVICE_EXTENSION (DataIn__DEVICE_EXTENSIONInv x@@684)) x@@684)
 :qid |KbdCreateClassObjectbpl.1480:15|
 :skolemid |143|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv x@@684))
)))
(assert (forall ((x@@685 Int) ) (! (= (DataOut__DEVICE_EXTENSIONInv (DataOut__DEVICE_EXTENSION x@@685)) x@@685)
 :qid |KbdCreateClassObjectbpl.1496:15|
 :skolemid |152|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv (DataOut__DEVICE_EXTENSION x@@685)))
)))
(assert (forall ((x@@686 Int) ) (! (= (DataOut__DEVICE_EXTENSION (DataOut__DEVICE_EXTENSIONInv x@@686)) x@@686)
 :qid |KbdCreateClassObjectbpl.1497:15|
 :skolemid |153|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv x@@686))
)))
(assert (forall ((x@@687 Int) ) (! (= (Dbg__IO_REMOVE_LOCKInv (Dbg__IO_REMOVE_LOCK x@@687)) x@@687)
 :qid |KbdCreateClassObjectbpl.1513:15|
 :skolemid |162|
 :pattern ( (Dbg__IO_REMOVE_LOCKInv (Dbg__IO_REMOVE_LOCK x@@687)))
)))
(assert (forall ((x@@688 Int) ) (! (= (Dbg__IO_REMOVE_LOCK (Dbg__IO_REMOVE_LOCKInv x@@688)) x@@688)
 :qid |KbdCreateClassObjectbpl.1514:15|
 :skolemid |163|
 :pattern ( (Dbg__IO_REMOVE_LOCKInv x@@688))
)))
(assert (forall ((x@@689 Int) ) (! (= (DebugActive___unnamed_1_2dc63b48Inv (DebugActive___unnamed_1_2dc63b48 x@@689)) x@@689)
 :qid |KbdCreateClassObjectbpl.1530:15|
 :skolemid |172|
 :pattern ( (DebugActive___unnamed_1_2dc63b48Inv (DebugActive___unnamed_1_2dc63b48 x@@689)))
)))
(assert (forall ((x@@690 Int) ) (! (= (DebugActive___unnamed_1_2dc63b48 (DebugActive___unnamed_1_2dc63b48Inv x@@690)) x@@690)
 :qid |KbdCreateClassObjectbpl.1531:15|
 :skolemid |173|
 :pattern ( (DebugActive___unnamed_1_2dc63b48Inv x@@690))
)))
(assert (forall ((x@@691 Int) ) (! (= (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv (Delay__KEYBOARD_TYPEMATIC_PARAMETERS x@@691)) x@@691)
 :qid |KbdCreateClassObjectbpl.1547:15|
 :skolemid |182|
 :pattern ( (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv (Delay__KEYBOARD_TYPEMATIC_PARAMETERS x@@691)))
)))
(assert (forall ((x@@692 Int) ) (! (= (Delay__KEYBOARD_TYPEMATIC_PARAMETERS (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@692)) x@@692)
 :qid |KbdCreateClassObjectbpl.1548:15|
 :skolemid |183|
 :pattern ( (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@692))
)))
(assert (forall ((x@@693 Int) ) (! (= (DeviceExtension__DEVICE_OBJECTInv (DeviceExtension__DEVICE_OBJECT x@@693)) x@@693)
 :qid |KbdCreateClassObjectbpl.1564:15|
 :skolemid |192|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv (DeviceExtension__DEVICE_OBJECT x@@693)))
)))
(assert (forall ((x@@694 Int) ) (! (= (DeviceExtension__DEVICE_OBJECT (DeviceExtension__DEVICE_OBJECTInv x@@694)) x@@694)
 :qid |KbdCreateClassObjectbpl.1565:15|
 :skolemid |193|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv x@@694))
)))
(assert (forall ((x@@695 Int) ) (! (= (DeviceState__DEVICE_EXTENSIONInv (DeviceState__DEVICE_EXTENSION x@@695)) x@@695)
 :qid |KbdCreateClassObjectbpl.1581:15|
 :skolemid |202|
 :pattern ( (DeviceState__DEVICE_EXTENSIONInv (DeviceState__DEVICE_EXTENSION x@@695)))
)))
(assert (forall ((x@@696 Int) ) (! (= (DeviceState__DEVICE_EXTENSION (DeviceState__DEVICE_EXTENSIONInv x@@696)) x@@696)
 :qid |KbdCreateClassObjectbpl.1582:15|
 :skolemid |203|
 :pattern ( (DeviceState__DEVICE_EXTENSIONInv x@@696))
)))
(assert (forall ((x@@697 Int) ) (! (= (DpcActive___unnamed_1_2dc63b48Inv (DpcActive___unnamed_1_2dc63b48 x@@697)) x@@697)
 :qid |KbdCreateClassObjectbpl.1598:15|
 :skolemid |212|
 :pattern ( (DpcActive___unnamed_1_2dc63b48Inv (DpcActive___unnamed_1_2dc63b48 x@@697)))
)))
(assert (forall ((x@@698 Int) ) (! (= (DpcActive___unnamed_1_2dc63b48 (DpcActive___unnamed_1_2dc63b48Inv x@@698)) x@@698)
 :qid |KbdCreateClassObjectbpl.1599:15|
 :skolemid |213|
 :pattern ( (DpcActive___unnamed_1_2dc63b48Inv x@@698))
)))
(assert (forall ((x@@699 Int) ) (! (= (Enabled__DEVICE_EXTENSIONInv (Enabled__DEVICE_EXTENSION x@@699)) x@@699)
 :qid |KbdCreateClassObjectbpl.1615:15|
 :skolemid |222|
 :pattern ( (Enabled__DEVICE_EXTENSIONInv (Enabled__DEVICE_EXTENSION x@@699)))
)))
(assert (forall ((x@@700 Int) ) (! (= (Enabled__DEVICE_EXTENSION (Enabled__DEVICE_EXTENSIONInv x@@700)) x@@700)
 :qid |KbdCreateClassObjectbpl.1616:15|
 :skolemid |223|
 :pattern ( (Enabled__DEVICE_EXTENSIONInv x@@700))
)))
(assert (forall ((x@@701 Int) ) (! (= (ExecuteWmiMethod__WMILIB_CONTEXTInv (ExecuteWmiMethod__WMILIB_CONTEXT x@@701)) x@@701)
 :qid |KbdCreateClassObjectbpl.1632:15|
 :skolemid |232|
 :pattern ( (ExecuteWmiMethod__WMILIB_CONTEXTInv (ExecuteWmiMethod__WMILIB_CONTEXT x@@701)))
)))
(assert (forall ((x@@702 Int) ) (! (= (ExecuteWmiMethod__WMILIB_CONTEXT (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@702)) x@@702)
 :qid |KbdCreateClassObjectbpl.1633:15|
 :skolemid |233|
 :pattern ( (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@702))
)))
(assert (forall ((x@@703 Int) ) (! (= (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv (ExtraWaitWakeIrp__DEVICE_EXTENSION x@@703)) x@@703)
 :qid |KbdCreateClassObjectbpl.1649:15|
 :skolemid |242|
 :pattern ( (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv (ExtraWaitWakeIrp__DEVICE_EXTENSION x@@703)))
)))
(assert (forall ((x@@704 Int) ) (! (= (ExtraWaitWakeIrp__DEVICE_EXTENSION (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@704)) x@@704)
 :qid |KbdCreateClassObjectbpl.1650:15|
 :skolemid |243|
 :pattern ( (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@704))
)))
(assert (forall ((x@@705 Int) ) (! (= (File__DEVICE_EXTENSIONInv (File__DEVICE_EXTENSION x@@705)) x@@705)
 :qid |KbdCreateClassObjectbpl.1666:15|
 :skolemid |252|
 :pattern ( (File__DEVICE_EXTENSIONInv (File__DEVICE_EXTENSION x@@705)))
)))
(assert (forall ((x@@706 Int) ) (! (= (File__DEVICE_EXTENSION (File__DEVICE_EXTENSIONInv x@@706)) x@@706)
 :qid |KbdCreateClassObjectbpl.1667:15|
 :skolemid |253|
 :pattern ( (File__DEVICE_EXTENSIONInv x@@706))
)))
(assert (forall ((x@@707 Int) ) (! (= (Flags__DEVICE_OBJECTInv (Flags__DEVICE_OBJECT x@@707)) x@@707)
 :qid |KbdCreateClassObjectbpl.1683:15|
 :skolemid |262|
 :pattern ( (Flags__DEVICE_OBJECTInv (Flags__DEVICE_OBJECT x@@707)))
)))
(assert (forall ((x@@708 Int) ) (! (= (Flags__DEVICE_OBJECT (Flags__DEVICE_OBJECTInv x@@708)) x@@708)
 :qid |KbdCreateClassObjectbpl.1684:15|
 :skolemid |263|
 :pattern ( (Flags__DEVICE_OBJECTInv x@@708))
)))
(assert (forall ((x@@709 Int) ) (! (= (Flink__LIST_ENTRYInv (Flink__LIST_ENTRY x@@709)) x@@709)
 :qid |KbdCreateClassObjectbpl.1700:15|
 :skolemid |272|
 :pattern ( (Flink__LIST_ENTRYInv (Flink__LIST_ENTRY x@@709)))
)))
(assert (forall ((x@@710 Int) ) (! (= (Flink__LIST_ENTRY (Flink__LIST_ENTRYInv x@@710)) x@@710)
 :qid |KbdCreateClassObjectbpl.1701:15|
 :skolemid |273|
 :pattern ( (Flink__LIST_ENTRYInv x@@710))
)))
(assert (forall ((x@@711 Int) ) (! (= (GrandMaster__GLOBALSInv (GrandMaster__GLOBALS x@@711)) x@@711)
 :qid |KbdCreateClassObjectbpl.1717:15|
 :skolemid |282|
 :pattern ( (GrandMaster__GLOBALSInv (GrandMaster__GLOBALS x@@711)))
)))
(assert (forall ((x@@712 Int) ) (! (= (GrandMaster__GLOBALS (GrandMaster__GLOBALSInv x@@712)) x@@712)
 :qid |KbdCreateClassObjectbpl.1718:15|
 :skolemid |283|
 :pattern ( (GrandMaster__GLOBALSInv x@@712))
)))
(assert (forall ((x@@713 Int) ) (! (= (GuidCount__WMILIB_CONTEXTInv (GuidCount__WMILIB_CONTEXT x@@713)) x@@713)
 :qid |KbdCreateClassObjectbpl.1734:15|
 :skolemid |292|
 :pattern ( (GuidCount__WMILIB_CONTEXTInv (GuidCount__WMILIB_CONTEXT x@@713)))
)))
(assert (forall ((x@@714 Int) ) (! (= (GuidCount__WMILIB_CONTEXT (GuidCount__WMILIB_CONTEXTInv x@@714)) x@@714)
 :qid |KbdCreateClassObjectbpl.1735:15|
 :skolemid |293|
 :pattern ( (GuidCount__WMILIB_CONTEXTInv x@@714))
)))
(assert (forall ((x@@715 Int) ) (! (= (GuidList__WMILIB_CONTEXTInv (GuidList__WMILIB_CONTEXT x@@715)) x@@715)
 :qid |KbdCreateClassObjectbpl.1751:15|
 :skolemid |302|
 :pattern ( (GuidList__WMILIB_CONTEXTInv (GuidList__WMILIB_CONTEXT x@@715)))
)))
(assert (forall ((x@@716 Int) ) (! (= (GuidList__WMILIB_CONTEXT (GuidList__WMILIB_CONTEXTInv x@@716)) x@@716)
 :qid |KbdCreateClassObjectbpl.1752:15|
 :skolemid |303|
 :pattern ( (GuidList__WMILIB_CONTEXTInv x@@716))
)))
(assert (forall ((x@@717 Int) ) (! (= (Hand___unnamed_1_2ef8da39Inv (Hand___unnamed_1_2ef8da39 x@@717)) x@@717)
 :qid |KbdCreateClassObjectbpl.1768:15|
 :skolemid |312|
 :pattern ( (Hand___unnamed_1_2ef8da39Inv (Hand___unnamed_1_2ef8da39 x@@717)))
)))
(assert (forall ((x@@718 Int) ) (! (= (Hand___unnamed_1_2ef8da39 (Hand___unnamed_1_2ef8da39Inv x@@718)) x@@718)
 :qid |KbdCreateClassObjectbpl.1769:15|
 :skolemid |313|
 :pattern ( (Hand___unnamed_1_2ef8da39Inv x@@718))
)))
(assert (forall ((x@@719 Int) ) (! (= (Header__KEVENTInv (Header__KEVENT x@@719)) x@@719)
 :qid |KbdCreateClassObjectbpl.1785:15|
 :skolemid |322|
 :pattern ( (Header__KEVENTInv (Header__KEVENT x@@719)))
)))
(assert (forall ((x@@720 Int) ) (! (= (Header__KEVENT (Header__KEVENTInv x@@720)) x@@720)
 :qid |KbdCreateClassObjectbpl.1786:15|
 :skolemid |323|
 :pattern ( (Header__KEVENTInv x@@720))
)))
(assert (forall ((x@@721 Int) ) (! (= (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK x@@721)) x@@721)
 :qid |KbdCreateClassObjectbpl.1802:15|
 :skolemid |332|
 :pattern ( (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK x@@721)))
)))
(assert (forall ((x@@722 Int) ) (! (= (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@722)) x@@722)
 :qid |KbdCreateClassObjectbpl.1803:15|
 :skolemid |333|
 :pattern ( (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@722))
)))
(assert (forall ((x@@723 Int) ) (! (= (IndicatorParameters__DEVICE_EXTENSIONInv (IndicatorParameters__DEVICE_EXTENSION x@@723)) x@@723)
 :qid |KbdCreateClassObjectbpl.1819:15|
 :skolemid |342|
 :pattern ( (IndicatorParameters__DEVICE_EXTENSIONInv (IndicatorParameters__DEVICE_EXTENSION x@@723)))
)))
(assert (forall ((x@@724 Int) ) (! (= (IndicatorParameters__DEVICE_EXTENSION (IndicatorParameters__DEVICE_EXTENSIONInv x@@724)) x@@724)
 :qid |KbdCreateClassObjectbpl.1820:15|
 :skolemid |343|
 :pattern ( (IndicatorParameters__DEVICE_EXTENSIONInv x@@724))
)))
(assert (forall ((x@@725 Int) ) (! (= (InputCount__DEVICE_EXTENSIONInv (InputCount__DEVICE_EXTENSION x@@725)) x@@725)
 :qid |KbdCreateClassObjectbpl.1836:15|
 :skolemid |352|
 :pattern ( (InputCount__DEVICE_EXTENSIONInv (InputCount__DEVICE_EXTENSION x@@725)))
)))
(assert (forall ((x@@726 Int) ) (! (= (InputCount__DEVICE_EXTENSION (InputCount__DEVICE_EXTENSIONInv x@@726)) x@@726)
 :qid |KbdCreateClassObjectbpl.1837:15|
 :skolemid |353|
 :pattern ( (InputCount__DEVICE_EXTENSIONInv x@@726))
)))
(assert (forall ((x@@727 Int) ) (! (= (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv (InputDataQueueLength__KEYBOARD_ATTRIBUTES x@@727)) x@@727)
 :qid |KbdCreateClassObjectbpl.1853:15|
 :skolemid |362|
 :pattern ( (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv (InputDataQueueLength__KEYBOARD_ATTRIBUTES x@@727)))
)))
(assert (forall ((x@@728 Int) ) (! (= (InputDataQueueLength__KEYBOARD_ATTRIBUTES (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@728)) x@@728)
 :qid |KbdCreateClassObjectbpl.1854:15|
 :skolemid |363|
 :pattern ( (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@728))
)))
(assert (forall ((x@@729 Int) ) (! (= (InputData__DEVICE_EXTENSIONInv (InputData__DEVICE_EXTENSION x@@729)) x@@729)
 :qid |KbdCreateClassObjectbpl.1870:15|
 :skolemid |372|
 :pattern ( (InputData__DEVICE_EXTENSIONInv (InputData__DEVICE_EXTENSION x@@729)))
)))
(assert (forall ((x@@730 Int) ) (! (= (InputData__DEVICE_EXTENSION (InputData__DEVICE_EXTENSIONInv x@@730)) x@@730)
 :qid |KbdCreateClassObjectbpl.1871:15|
 :skolemid |373|
 :pattern ( (InputData__DEVICE_EXTENSIONInv x@@730))
)))
(assert (forall ((x@@731 Int) ) (! (= (Inserted___unnamed_1_2dc63b48Inv (Inserted___unnamed_1_2dc63b48 x@@731)) x@@731)
 :qid |KbdCreateClassObjectbpl.1887:15|
 :skolemid |382|
 :pattern ( (Inserted___unnamed_1_2dc63b48Inv (Inserted___unnamed_1_2dc63b48 x@@731)))
)))
(assert (forall ((x@@732 Int) ) (! (= (Inserted___unnamed_1_2dc63b48 (Inserted___unnamed_1_2dc63b48Inv x@@732)) x@@732)
 :qid |KbdCreateClassObjectbpl.1888:15|
 :skolemid |383|
 :pattern ( (Inserted___unnamed_1_2dc63b48Inv x@@732))
)))
(assert (forall ((x@@733 Int) ) (! (= (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv (IoCount__IO_REMOVE_LOCK_COMMON_BLOCK x@@733)) x@@733)
 :qid |KbdCreateClassObjectbpl.1904:15|
 :skolemid |392|
 :pattern ( (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv (IoCount__IO_REMOVE_LOCK_COMMON_BLOCK x@@733)))
)))
(assert (forall ((x@@734 Int) ) (! (= (IoCount__IO_REMOVE_LOCK_COMMON_BLOCK (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@734)) x@@734)
 :qid |KbdCreateClassObjectbpl.1905:15|
 :skolemid |393|
 :pattern ( (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@734))
)))
(assert (forall ((x@@735 Int) ) (! (= (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv (KeyRepeatMaximum__KEYBOARD_ATTRIBUTES x@@735)) x@@735)
 :qid |KbdCreateClassObjectbpl.1921:15|
 :skolemid |402|
 :pattern ( (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv (KeyRepeatMaximum__KEYBOARD_ATTRIBUTES x@@735)))
)))
(assert (forall ((x@@736 Int) ) (! (= (KeyRepeatMaximum__KEYBOARD_ATTRIBUTES (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@736)) x@@736)
 :qid |KbdCreateClassObjectbpl.1922:15|
 :skolemid |403|
 :pattern ( (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@736))
)))
(assert (forall ((x@@737 Int) ) (! (= (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv (KeyRepeatMinimum__KEYBOARD_ATTRIBUTES x@@737)) x@@737)
 :qid |KbdCreateClassObjectbpl.1938:15|
 :skolemid |412|
 :pattern ( (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv (KeyRepeatMinimum__KEYBOARD_ATTRIBUTES x@@737)))
)))
(assert (forall ((x@@738 Int) ) (! (= (KeyRepeatMinimum__KEYBOARD_ATTRIBUTES (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@738)) x@@738)
 :qid |KbdCreateClassObjectbpl.1939:15|
 :skolemid |413|
 :pattern ( (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@738))
)))
(assert (forall ((x@@739 Int) ) (! (= (KeyboardAttributes__DEVICE_EXTENSIONInv (KeyboardAttributes__DEVICE_EXTENSION x@@739)) x@@739)
 :qid |KbdCreateClassObjectbpl.1955:15|
 :skolemid |422|
 :pattern ( (KeyboardAttributes__DEVICE_EXTENSIONInv (KeyboardAttributes__DEVICE_EXTENSION x@@739)))
)))
(assert (forall ((x@@740 Int) ) (! (= (KeyboardAttributes__DEVICE_EXTENSION (KeyboardAttributes__DEVICE_EXTENSIONInv x@@740)) x@@740)
 :qid |KbdCreateClassObjectbpl.1956:15|
 :skolemid |423|
 :pattern ( (KeyboardAttributes__DEVICE_EXTENSIONInv x@@740))
)))
(assert (forall ((x@@741 Int) ) (! (= (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv (KeyboardIdentifier__KEYBOARD_ATTRIBUTES x@@741)) x@@741)
 :qid |KbdCreateClassObjectbpl.1972:15|
 :skolemid |432|
 :pattern ( (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv (KeyboardIdentifier__KEYBOARD_ATTRIBUTES x@@741)))
)))
(assert (forall ((x@@742 Int) ) (! (= (KeyboardIdentifier__KEYBOARD_ATTRIBUTES (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@742)) x@@742)
 :qid |KbdCreateClassObjectbpl.1973:15|
 :skolemid |433|
 :pattern ( (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@742))
)))
(assert (forall ((x@@743 Int) ) (! (= (KeyboardMode__KEYBOARD_ATTRIBUTESInv (KeyboardMode__KEYBOARD_ATTRIBUTES x@@743)) x@@743)
 :qid |KbdCreateClassObjectbpl.1989:15|
 :skolemid |442|
 :pattern ( (KeyboardMode__KEYBOARD_ATTRIBUTESInv (KeyboardMode__KEYBOARD_ATTRIBUTES x@@743)))
)))
(assert (forall ((x@@744 Int) ) (! (= (KeyboardMode__KEYBOARD_ATTRIBUTES (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@744)) x@@744)
 :qid |KbdCreateClassObjectbpl.1990:15|
 :skolemid |443|
 :pattern ( (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@744))
)))
(assert (forall ((x@@745 Int) ) (! (= (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv (LedFlags__KEYBOARD_INDICATOR_PARAMETERS x@@745)) x@@745)
 :qid |KbdCreateClassObjectbpl.2006:15|
 :skolemid |452|
 :pattern ( (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv (LedFlags__KEYBOARD_INDICATOR_PARAMETERS x@@745)))
)))
(assert (forall ((x@@746 Int) ) (! (= (LedFlags__KEYBOARD_INDICATOR_PARAMETERS (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@746)) x@@746)
 :qid |KbdCreateClassObjectbpl.2007:15|
 :skolemid |453|
 :pattern ( (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@746))
)))
(assert (forall ((x@@747 Int) ) (! (= (LegacyDeviceList__GLOBALSInv (LegacyDeviceList__GLOBALS x@@747)) x@@747)
 :qid |KbdCreateClassObjectbpl.2023:15|
 :skolemid |462|
 :pattern ( (LegacyDeviceList__GLOBALSInv (LegacyDeviceList__GLOBALS x@@747)))
)))
(assert (forall ((x@@748 Int) ) (! (= (LegacyDeviceList__GLOBALS (LegacyDeviceList__GLOBALSInv x@@748)) x@@748)
 :qid |KbdCreateClassObjectbpl.2024:15|
 :skolemid |463|
 :pattern ( (LegacyDeviceList__GLOBALSInv x@@748))
)))
(assert (forall ((x@@749 Int) ) (! (= (Length__UNICODE_STRINGInv (Length__UNICODE_STRING x@@749)) x@@749)
 :qid |KbdCreateClassObjectbpl.2040:15|
 :skolemid |472|
 :pattern ( (Length__UNICODE_STRINGInv (Length__UNICODE_STRING x@@749)))
)))
(assert (forall ((x@@750 Int) ) (! (= (Length__UNICODE_STRING (Length__UNICODE_STRINGInv x@@750)) x@@750)
 :qid |KbdCreateClassObjectbpl.2041:15|
 :skolemid |473|
 :pattern ( (Length__UNICODE_STRINGInv x@@750))
)))
(assert (forall ((x@@751 Int) ) (! (= (Link__DEVICE_EXTENSIONInv (Link__DEVICE_EXTENSION x@@751)) x@@751)
 :qid |KbdCreateClassObjectbpl.2057:15|
 :skolemid |482|
 :pattern ( (Link__DEVICE_EXTENSIONInv (Link__DEVICE_EXTENSION x@@751)))
)))
(assert (forall ((x@@752 Int) ) (! (= (Link__DEVICE_EXTENSION (Link__DEVICE_EXTENSIONInv x@@752)) x@@752)
 :qid |KbdCreateClassObjectbpl.2058:15|
 :skolemid |483|
 :pattern ( (Link__DEVICE_EXTENSIONInv x@@752))
)))
(assert (forall ((x@@753 Int) ) (! (= (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv (LockList__IO_REMOVE_LOCK_DBG_BLOCK x@@753)) x@@753)
 :qid |KbdCreateClassObjectbpl.2074:15|
 :skolemid |492|
 :pattern ( (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv (LockList__IO_REMOVE_LOCK_DBG_BLOCK x@@753)))
)))
(assert (forall ((x@@754 Int) ) (! (= (LockList__IO_REMOVE_LOCK_DBG_BLOCK (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@754)) x@@754)
 :qid |KbdCreateClassObjectbpl.2075:15|
 :skolemid |493|
 :pattern ( (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@754))
)))
(assert (forall ((x@@755 Int) ) (! (= (Lock___unnamed_4_a97c65a1Inv (Lock___unnamed_4_a97c65a1 x@@755)) x@@755)
 :qid |KbdCreateClassObjectbpl.2091:15|
 :skolemid |502|
 :pattern ( (Lock___unnamed_4_a97c65a1Inv (Lock___unnamed_4_a97c65a1 x@@755)))
)))
(assert (forall ((x@@756 Int) ) (! (= (Lock___unnamed_4_a97c65a1 (Lock___unnamed_4_a97c65a1Inv x@@756)) x@@756)
 :qid |KbdCreateClassObjectbpl.2092:15|
 :skolemid |503|
 :pattern ( (Lock___unnamed_4_a97c65a1Inv x@@756))
)))
(assert (forall ((x@@757 Int) ) (! (= (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK x@@757)) x@@757)
 :qid |KbdCreateClassObjectbpl.2108:15|
 :skolemid |512|
 :pattern ( (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK x@@757)))
)))
(assert (forall ((x@@758 Int) ) (! (= (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@758)) x@@758)
 :qid |KbdCreateClassObjectbpl.2109:15|
 :skolemid |513|
 :pattern ( (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@758))
)))
(assert (forall ((x@@759 Int) ) (! (= (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK x@@759)) x@@759)
 :qid |KbdCreateClassObjectbpl.2125:15|
 :skolemid |522|
 :pattern ( (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK x@@759)))
)))
(assert (forall ((x@@760 Int) ) (! (= (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@760)) x@@760)
 :qid |KbdCreateClassObjectbpl.2126:15|
 :skolemid |523|
 :pattern ( (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@760))
)))
(assert (forall ((x@@761 Int) ) (! (= (MaximumLength__UNICODE_STRINGInv (MaximumLength__UNICODE_STRING x@@761)) x@@761)
 :qid |KbdCreateClassObjectbpl.2142:15|
 :skolemid |532|
 :pattern ( (MaximumLength__UNICODE_STRINGInv (MaximumLength__UNICODE_STRING x@@761)))
)))
(assert (forall ((x@@762 Int) ) (! (= (MaximumLength__UNICODE_STRING (MaximumLength__UNICODE_STRINGInv x@@762)) x@@762)
 :qid |KbdCreateClassObjectbpl.2143:15|
 :skolemid |533|
 :pattern ( (MaximumLength__UNICODE_STRINGInv x@@762))
)))
(assert (forall ((x@@763 Int) ) (! (= (MinDeviceWakeState__DEVICE_EXTENSIONInv (MinDeviceWakeState__DEVICE_EXTENSION x@@763)) x@@763)
 :qid |KbdCreateClassObjectbpl.2159:15|
 :skolemid |542|
 :pattern ( (MinDeviceWakeState__DEVICE_EXTENSIONInv (MinDeviceWakeState__DEVICE_EXTENSION x@@763)))
)))
(assert (forall ((x@@764 Int) ) (! (= (MinDeviceWakeState__DEVICE_EXTENSION (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@764)) x@@764)
 :qid |KbdCreateClassObjectbpl.2160:15|
 :skolemid |543|
 :pattern ( (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@764))
)))
(assert (forall ((x@@765 Int) ) (! (= (MinSystemWakeState__DEVICE_EXTENSIONInv (MinSystemWakeState__DEVICE_EXTENSION x@@765)) x@@765)
 :qid |KbdCreateClassObjectbpl.2176:15|
 :skolemid |552|
 :pattern ( (MinSystemWakeState__DEVICE_EXTENSIONInv (MinSystemWakeState__DEVICE_EXTENSION x@@765)))
)))
(assert (forall ((x@@766 Int) ) (! (= (MinSystemWakeState__DEVICE_EXTENSION (MinSystemWakeState__DEVICE_EXTENSIONInv x@@766)) x@@766)
 :qid |KbdCreateClassObjectbpl.2177:15|
 :skolemid |553|
 :pattern ( (MinSystemWakeState__DEVICE_EXTENSIONInv x@@766))
)))
(assert (forall ((x@@767 Int) ) (! (= (Mutex__GLOBALSInv (Mutex__GLOBALS x@@767)) x@@767)
 :qid |KbdCreateClassObjectbpl.2193:15|
 :skolemid |562|
 :pattern ( (Mutex__GLOBALSInv (Mutex__GLOBALS x@@767)))
)))
(assert (forall ((x@@768 Int) ) (! (= (Mutex__GLOBALS (Mutex__GLOBALSInv x@@768)) x@@768)
 :qid |KbdCreateClassObjectbpl.2194:15|
 :skolemid |563|
 :pattern ( (Mutex__GLOBALSInv x@@768))
)))
(assert (forall ((x@@769 Int) ) (! (= (NpxIrql___unnamed_1_29794256Inv (NpxIrql___unnamed_1_29794256 x@@769)) x@@769)
 :qid |KbdCreateClassObjectbpl.2210:15|
 :skolemid |572|
 :pattern ( (NpxIrql___unnamed_1_29794256Inv (NpxIrql___unnamed_1_29794256 x@@769)))
)))
(assert (forall ((x@@770 Int) ) (! (= (NpxIrql___unnamed_1_29794256 (NpxIrql___unnamed_1_29794256Inv x@@770)) x@@770)
 :qid |KbdCreateClassObjectbpl.2211:15|
 :skolemid |573|
 :pattern ( (NpxIrql___unnamed_1_29794256Inv x@@770))
)))
(assert (forall ((x@@771 Int) ) (! (= (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES x@@771)) x@@771)
 :qid |KbdCreateClassObjectbpl.2227:15|
 :skolemid |582|
 :pattern ( (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES x@@771)))
)))
(assert (forall ((x@@772 Int) ) (! (= (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@772)) x@@772)
 :qid |KbdCreateClassObjectbpl.2228:15|
 :skolemid |583|
 :pattern ( (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@772))
)))
(assert (forall ((x@@773 Int) ) (! (= (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv (NumberOfIndicators__KEYBOARD_ATTRIBUTES x@@773)) x@@773)
 :qid |KbdCreateClassObjectbpl.2244:15|
 :skolemid |592|
 :pattern ( (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv (NumberOfIndicators__KEYBOARD_ATTRIBUTES x@@773)))
)))
(assert (forall ((x@@774 Int) ) (! (= (NumberOfIndicators__KEYBOARD_ATTRIBUTES (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@774)) x@@774)
 :qid |KbdCreateClassObjectbpl.2245:15|
 :skolemid |593|
 :pattern ( (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@774))
)))
(assert (forall ((x@@775 Int) ) (! (= (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv (NumberOfKeysTotal__KEYBOARD_ATTRIBUTES x@@775)) x@@775)
 :qid |KbdCreateClassObjectbpl.2261:15|
 :skolemid |602|
 :pattern ( (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv (NumberOfKeysTotal__KEYBOARD_ATTRIBUTES x@@775)))
)))
(assert (forall ((x@@776 Int) ) (! (= (NumberOfKeysTotal__KEYBOARD_ATTRIBUTES (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@776)) x@@776)
 :qid |KbdCreateClassObjectbpl.2262:15|
 :skolemid |603|
 :pattern ( (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@776))
)))
(assert (forall ((x@@777 Int) ) (! (= (OkayToLogOverflow__DEVICE_EXTENSIONInv (OkayToLogOverflow__DEVICE_EXTENSION x@@777)) x@@777)
 :qid |KbdCreateClassObjectbpl.2278:15|
 :skolemid |612|
 :pattern ( (OkayToLogOverflow__DEVICE_EXTENSIONInv (OkayToLogOverflow__DEVICE_EXTENSION x@@777)))
)))
(assert (forall ((x@@778 Int) ) (! (= (OkayToLogOverflow__DEVICE_EXTENSION (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@778)) x@@778)
 :qid |KbdCreateClassObjectbpl.2279:15|
 :skolemid |613|
 :pattern ( (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@778))
)))
(assert (forall ((x@@779 Int) ) (! (= (PDO__DEVICE_EXTENSIONInv (PDO__DEVICE_EXTENSION x@@779)) x@@779)
 :qid |KbdCreateClassObjectbpl.2295:15|
 :skolemid |622|
 :pattern ( (PDO__DEVICE_EXTENSIONInv (PDO__DEVICE_EXTENSION x@@779)))
)))
(assert (forall ((x@@780 Int) ) (! (= (PDO__DEVICE_EXTENSION (PDO__DEVICE_EXTENSIONInv x@@780)) x@@780)
 :qid |KbdCreateClassObjectbpl.2296:15|
 :skolemid |623|
 :pattern ( (PDO__DEVICE_EXTENSIONInv x@@780))
)))
(assert (forall ((x@@781 Int) ) (! (= (PnP__DEVICE_EXTENSIONInv (PnP__DEVICE_EXTENSION x@@781)) x@@781)
 :qid |KbdCreateClassObjectbpl.2312:15|
 :skolemid |632|
 :pattern ( (PnP__DEVICE_EXTENSIONInv (PnP__DEVICE_EXTENSION x@@781)))
)))
(assert (forall ((x@@782 Int) ) (! (= (PnP__DEVICE_EXTENSION (PnP__DEVICE_EXTENSIONInv x@@782)) x@@782)
 :qid |KbdCreateClassObjectbpl.2313:15|
 :skolemid |633|
 :pattern ( (PnP__DEVICE_EXTENSIONInv x@@782))
)))
(assert (forall ((x@@783 Int) ) (! (= (QueryWmiDataBlock__WMILIB_CONTEXTInv (QueryWmiDataBlock__WMILIB_CONTEXT x@@783)) x@@783)
 :qid |KbdCreateClassObjectbpl.2329:15|
 :skolemid |642|
 :pattern ( (QueryWmiDataBlock__WMILIB_CONTEXTInv (QueryWmiDataBlock__WMILIB_CONTEXT x@@783)))
)))
(assert (forall ((x@@784 Int) ) (! (= (QueryWmiDataBlock__WMILIB_CONTEXT (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@784)) x@@784)
 :qid |KbdCreateClassObjectbpl.2330:15|
 :skolemid |643|
 :pattern ( (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@784))
)))
(assert (forall ((x@@785 Int) ) (! (= (QueryWmiRegInfo__WMILIB_CONTEXTInv (QueryWmiRegInfo__WMILIB_CONTEXT x@@785)) x@@785)
 :qid |KbdCreateClassObjectbpl.2346:15|
 :skolemid |652|
 :pattern ( (QueryWmiRegInfo__WMILIB_CONTEXTInv (QueryWmiRegInfo__WMILIB_CONTEXT x@@785)))
)))
(assert (forall ((x@@786 Int) ) (! (= (QueryWmiRegInfo__WMILIB_CONTEXT (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@786)) x@@786)
 :qid |KbdCreateClassObjectbpl.2347:15|
 :skolemid |653|
 :pattern ( (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@786))
)))
(assert (forall ((x@@787 Int) ) (! (= (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv (Rate__KEYBOARD_TYPEMATIC_PARAMETERS x@@787)) x@@787)
 :qid |KbdCreateClassObjectbpl.2363:15|
 :skolemid |662|
 :pattern ( (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv (Rate__KEYBOARD_TYPEMATIC_PARAMETERS x@@787)))
)))
(assert (forall ((x@@788 Int) ) (! (= (Rate__KEYBOARD_TYPEMATIC_PARAMETERS (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@788)) x@@788)
 :qid |KbdCreateClassObjectbpl.2364:15|
 :skolemid |663|
 :pattern ( (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@788))
)))
(assert (forall ((x@@789 Int) ) (! (= (ReadQueue__DEVICE_EXTENSIONInv (ReadQueue__DEVICE_EXTENSION x@@789)) x@@789)
 :qid |KbdCreateClassObjectbpl.2380:15|
 :skolemid |672|
 :pattern ( (ReadQueue__DEVICE_EXTENSIONInv (ReadQueue__DEVICE_EXTENSION x@@789)))
)))
(assert (forall ((x@@790 Int) ) (! (= (ReadQueue__DEVICE_EXTENSION (ReadQueue__DEVICE_EXTENSIONInv x@@790)) x@@790)
 :qid |KbdCreateClassObjectbpl.2381:15|
 :skolemid |673|
 :pattern ( (ReadQueue__DEVICE_EXTENSIONInv x@@790))
)))
(assert (forall ((x@@791 Int) ) (! (= (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK x@@791)) x@@791)
 :qid |KbdCreateClassObjectbpl.2397:15|
 :skolemid |682|
 :pattern ( (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK x@@791)))
)))
(assert (forall ((x@@792 Int) ) (! (= (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@792)) x@@792)
 :qid |KbdCreateClassObjectbpl.2398:15|
 :skolemid |683|
 :pattern ( (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@792))
)))
(assert (forall ((x@@793 Int) ) (! (= (RemoveLock__DEVICE_EXTENSIONInv (RemoveLock__DEVICE_EXTENSION x@@793)) x@@793)
 :qid |KbdCreateClassObjectbpl.2414:15|
 :skolemid |692|
 :pattern ( (RemoveLock__DEVICE_EXTENSIONInv (RemoveLock__DEVICE_EXTENSION x@@793)))
)))
(assert (forall ((x@@794 Int) ) (! (= (RemoveLock__DEVICE_EXTENSION (RemoveLock__DEVICE_EXTENSIONInv x@@794)) x@@794)
 :qid |KbdCreateClassObjectbpl.2415:15|
 :skolemid |693|
 :pattern ( (RemoveLock__DEVICE_EXTENSIONInv x@@794))
)))
(assert (forall ((x@@795 Int) ) (! (= (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv (Removed__IO_REMOVE_LOCK_COMMON_BLOCK x@@795)) x@@795)
 :qid |KbdCreateClassObjectbpl.2431:15|
 :skolemid |702|
 :pattern ( (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv (Removed__IO_REMOVE_LOCK_COMMON_BLOCK x@@795)))
)))
(assert (forall ((x@@796 Int) ) (! (= (Removed__IO_REMOVE_LOCK_COMMON_BLOCK (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@796)) x@@796)
 :qid |KbdCreateClassObjectbpl.2432:15|
 :skolemid |703|
 :pattern ( (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@796))
)))
(assert (forall ((x@@797 Int) ) (! (= (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv (Reserved1__IO_REMOVE_LOCK_DBG_BLOCK x@@797)) x@@797)
 :qid |KbdCreateClassObjectbpl.2448:15|
 :skolemid |712|
 :pattern ( (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv (Reserved1__IO_REMOVE_LOCK_DBG_BLOCK x@@797)))
)))
(assert (forall ((x@@798 Int) ) (! (= (Reserved1__IO_REMOVE_LOCK_DBG_BLOCK (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@798)) x@@798)
 :qid |KbdCreateClassObjectbpl.2449:15|
 :skolemid |713|
 :pattern ( (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@798))
)))
(assert (forall ((x@@799 Int) ) (! (= (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv (Reserved2__IO_REMOVE_LOCK_DBG_BLOCK x@@799)) x@@799)
 :qid |KbdCreateClassObjectbpl.2465:15|
 :skolemid |722|
 :pattern ( (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv (Reserved2__IO_REMOVE_LOCK_DBG_BLOCK x@@799)))
)))
(assert (forall ((x@@800 Int) ) (! (= (Reserved2__IO_REMOVE_LOCK_DBG_BLOCK (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@800)) x@@800)
 :qid |KbdCreateClassObjectbpl.2466:15|
 :skolemid |723|
 :pattern ( (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@800))
)))
(assert (forall ((x@@801 Int) ) (! (= (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv (Reserved__IO_REMOVE_LOCK_COMMON_BLOCK x@@801)) x@@801)
 :qid |KbdCreateClassObjectbpl.2482:15|
 :skolemid |732|
 :pattern ( (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv (Reserved__IO_REMOVE_LOCK_COMMON_BLOCK x@@801)))
)))
(assert (forall ((x@@802 Int) ) (! (= (Reserved__IO_REMOVE_LOCK_COMMON_BLOCK (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@802)) x@@802)
 :qid |KbdCreateClassObjectbpl.2483:15|
 :skolemid |733|
 :pattern ( (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@802))
)))
(assert (forall ((x@@803 Int) ) (! (= (Self__DEVICE_EXTENSIONInv (Self__DEVICE_EXTENSION x@@803)) x@@803)
 :qid |KbdCreateClassObjectbpl.2499:15|
 :skolemid |742|
 :pattern ( (Self__DEVICE_EXTENSIONInv (Self__DEVICE_EXTENSION x@@803)))
)))
(assert (forall ((x@@804 Int) ) (! (= (Self__DEVICE_EXTENSION (Self__DEVICE_EXTENSIONInv x@@804)) x@@804)
 :qid |KbdCreateClassObjectbpl.2500:15|
 :skolemid |743|
 :pattern ( (Self__DEVICE_EXTENSIONInv x@@804))
)))
(assert (forall ((x@@805 Int) ) (! (= (SequenceNumber__DEVICE_EXTENSIONInv (SequenceNumber__DEVICE_EXTENSION x@@805)) x@@805)
 :qid |KbdCreateClassObjectbpl.2516:15|
 :skolemid |752|
 :pattern ( (SequenceNumber__DEVICE_EXTENSIONInv (SequenceNumber__DEVICE_EXTENSION x@@805)))
)))
(assert (forall ((x@@806 Int) ) (! (= (SequenceNumber__DEVICE_EXTENSION (SequenceNumber__DEVICE_EXTENSIONInv x@@806)) x@@806)
 :qid |KbdCreateClassObjectbpl.2517:15|
 :skolemid |753|
 :pattern ( (SequenceNumber__DEVICE_EXTENSIONInv x@@806))
)))
(assert (forall ((x@@807 Int) ) (! (= (SetWmiDataBlock__WMILIB_CONTEXTInv (SetWmiDataBlock__WMILIB_CONTEXT x@@807)) x@@807)
 :qid |KbdCreateClassObjectbpl.2533:15|
 :skolemid |762|
 :pattern ( (SetWmiDataBlock__WMILIB_CONTEXTInv (SetWmiDataBlock__WMILIB_CONTEXT x@@807)))
)))
(assert (forall ((x@@808 Int) ) (! (= (SetWmiDataBlock__WMILIB_CONTEXT (SetWmiDataBlock__WMILIB_CONTEXTInv x@@808)) x@@808)
 :qid |KbdCreateClassObjectbpl.2534:15|
 :skolemid |763|
 :pattern ( (SetWmiDataBlock__WMILIB_CONTEXTInv x@@808))
)))
(assert (forall ((x@@809 Int) ) (! (= (SetWmiDataItem__WMILIB_CONTEXTInv (SetWmiDataItem__WMILIB_CONTEXT x@@809)) x@@809)
 :qid |KbdCreateClassObjectbpl.2550:15|
 :skolemid |772|
 :pattern ( (SetWmiDataItem__WMILIB_CONTEXTInv (SetWmiDataItem__WMILIB_CONTEXT x@@809)))
)))
(assert (forall ((x@@810 Int) ) (! (= (SetWmiDataItem__WMILIB_CONTEXT (SetWmiDataItem__WMILIB_CONTEXTInv x@@810)) x@@810)
 :qid |KbdCreateClassObjectbpl.2551:15|
 :skolemid |773|
 :pattern ( (SetWmiDataItem__WMILIB_CONTEXTInv x@@810))
)))
(assert (forall ((x@@811 Int) ) (! (= (SignalState__DISPATCHER_HEADERInv (SignalState__DISPATCHER_HEADER x@@811)) x@@811)
 :qid |KbdCreateClassObjectbpl.2567:15|
 :skolemid |782|
 :pattern ( (SignalState__DISPATCHER_HEADERInv (SignalState__DISPATCHER_HEADER x@@811)))
)))
(assert (forall ((x@@812 Int) ) (! (= (SignalState__DISPATCHER_HEADER (SignalState__DISPATCHER_HEADERInv x@@812)) x@@812)
 :qid |KbdCreateClassObjectbpl.2568:15|
 :skolemid |783|
 :pattern ( (SignalState__DISPATCHER_HEADERInv x@@812))
)))
(assert (forall ((x@@813 Int) ) (! (= (Signalling___unnamed_1_29794256Inv (Signalling___unnamed_1_29794256 x@@813)) x@@813)
 :qid |KbdCreateClassObjectbpl.2584:15|
 :skolemid |792|
 :pattern ( (Signalling___unnamed_1_29794256Inv (Signalling___unnamed_1_29794256 x@@813)))
)))
(assert (forall ((x@@814 Int) ) (! (= (Signalling___unnamed_1_29794256 (Signalling___unnamed_1_29794256Inv x@@814)) x@@814)
 :qid |KbdCreateClassObjectbpl.2585:15|
 :skolemid |793|
 :pattern ( (Signalling___unnamed_1_29794256Inv x@@814))
)))
(assert (forall ((x@@815 Int) ) (! (= (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv (Signature__IO_REMOVE_LOCK_DBG_BLOCK x@@815)) x@@815)
 :qid |KbdCreateClassObjectbpl.2601:15|
 :skolemid |802|
 :pattern ( (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv (Signature__IO_REMOVE_LOCK_DBG_BLOCK x@@815)))
)))
(assert (forall ((x@@816 Int) ) (! (= (Signature__IO_REMOVE_LOCK_DBG_BLOCK (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@816)) x@@816)
 :qid |KbdCreateClassObjectbpl.2602:15|
 :skolemid |803|
 :pattern ( (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@816))
)))
(assert (forall ((x@@817 Int) ) (! (= (Size___unnamed_1_2ef8da39Inv (Size___unnamed_1_2ef8da39 x@@817)) x@@817)
 :qid |KbdCreateClassObjectbpl.2618:15|
 :skolemid |812|
 :pattern ( (Size___unnamed_1_2ef8da39Inv (Size___unnamed_1_2ef8da39 x@@817)))
)))
(assert (forall ((x@@818 Int) ) (! (= (Size___unnamed_1_2ef8da39 (Size___unnamed_1_2ef8da39Inv x@@818)) x@@818)
 :qid |KbdCreateClassObjectbpl.2619:15|
 :skolemid |813|
 :pattern ( (Size___unnamed_1_2ef8da39Inv x@@818))
)))
(assert (forall ((x@@819 Int) ) (! (= (SpinLock__DEVICE_EXTENSIONInv (SpinLock__DEVICE_EXTENSION x@@819)) x@@819)
 :qid |KbdCreateClassObjectbpl.2635:15|
 :skolemid |822|
 :pattern ( (SpinLock__DEVICE_EXTENSIONInv (SpinLock__DEVICE_EXTENSION x@@819)))
)))
(assert (forall ((x@@820 Int) ) (! (= (SpinLock__DEVICE_EXTENSION (SpinLock__DEVICE_EXTENSIONInv x@@820)) x@@820)
 :qid |KbdCreateClassObjectbpl.2636:15|
 :skolemid |823|
 :pattern ( (SpinLock__DEVICE_EXTENSIONInv x@@820))
)))
(assert (forall ((x@@821 Int) ) (! (= (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv (Spin__IO_REMOVE_LOCK_DBG_BLOCK x@@821)) x@@821)
 :qid |KbdCreateClassObjectbpl.2652:15|
 :skolemid |832|
 :pattern ( (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv (Spin__IO_REMOVE_LOCK_DBG_BLOCK x@@821)))
)))
(assert (forall ((x@@822 Int) ) (! (= (Spin__IO_REMOVE_LOCK_DBG_BLOCK (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@822)) x@@822)
 :qid |KbdCreateClassObjectbpl.2653:15|
 :skolemid |833|
 :pattern ( (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@822))
)))
(assert (forall ((x@@823 Int) ) (! (= (Started__DEVICE_EXTENSIONInv (Started__DEVICE_EXTENSION x@@823)) x@@823)
 :qid |KbdCreateClassObjectbpl.2669:15|
 :skolemid |842|
 :pattern ( (Started__DEVICE_EXTENSIONInv (Started__DEVICE_EXTENSION x@@823)))
)))
(assert (forall ((x@@824 Int) ) (! (= (Started__DEVICE_EXTENSION (Started__DEVICE_EXTENSIONInv x@@824)) x@@824)
 :qid |KbdCreateClassObjectbpl.2670:15|
 :skolemid |843|
 :pattern ( (Started__DEVICE_EXTENSIONInv x@@824))
)))
(assert (forall ((x@@825 Int) ) (! (= (Subtype__KEYBOARD_IDInv (Subtype__KEYBOARD_ID x@@825)) x@@825)
 :qid |KbdCreateClassObjectbpl.2686:15|
 :skolemid |852|
 :pattern ( (Subtype__KEYBOARD_IDInv (Subtype__KEYBOARD_ID x@@825)))
)))
(assert (forall ((x@@826 Int) ) (! (= (Subtype__KEYBOARD_ID (Subtype__KEYBOARD_IDInv x@@826)) x@@826)
 :qid |KbdCreateClassObjectbpl.2687:15|
 :skolemid |853|
 :pattern ( (Subtype__KEYBOARD_IDInv x@@826))
)))
(assert (forall ((x@@827 Int) ) (! (= (SurpriseRemoved__DEVICE_EXTENSIONInv (SurpriseRemoved__DEVICE_EXTENSION x@@827)) x@@827)
 :qid |KbdCreateClassObjectbpl.2703:15|
 :skolemid |862|
 :pattern ( (SurpriseRemoved__DEVICE_EXTENSIONInv (SurpriseRemoved__DEVICE_EXTENSION x@@827)))
)))
(assert (forall ((x@@828 Int) ) (! (= (SurpriseRemoved__DEVICE_EXTENSION (SurpriseRemoved__DEVICE_EXTENSIONInv x@@828)) x@@828)
 :qid |KbdCreateClassObjectbpl.2704:15|
 :skolemid |863|
 :pattern ( (SurpriseRemoved__DEVICE_EXTENSIONInv x@@828))
)))
(assert (forall ((x@@829 Int) ) (! (= (SymbolicLinkName__DEVICE_EXTENSIONInv (SymbolicLinkName__DEVICE_EXTENSION x@@829)) x@@829)
 :qid |KbdCreateClassObjectbpl.2720:15|
 :skolemid |872|
 :pattern ( (SymbolicLinkName__DEVICE_EXTENSIONInv (SymbolicLinkName__DEVICE_EXTENSION x@@829)))
)))
(assert (forall ((x@@830 Int) ) (! (= (SymbolicLinkName__DEVICE_EXTENSION (SymbolicLinkName__DEVICE_EXTENSIONInv x@@830)) x@@830)
 :qid |KbdCreateClassObjectbpl.2721:15|
 :skolemid |873|
 :pattern ( (SymbolicLinkName__DEVICE_EXTENSIONInv x@@830))
)))
(assert (forall ((x@@831 Int) ) (! (= (SystemState__DEVICE_EXTENSIONInv (SystemState__DEVICE_EXTENSION x@@831)) x@@831)
 :qid |KbdCreateClassObjectbpl.2737:15|
 :skolemid |882|
 :pattern ( (SystemState__DEVICE_EXTENSIONInv (SystemState__DEVICE_EXTENSION x@@831)))
)))
(assert (forall ((x@@832 Int) ) (! (= (SystemState__DEVICE_EXTENSION (SystemState__DEVICE_EXTENSIONInv x@@832)) x@@832)
 :qid |KbdCreateClassObjectbpl.2738:15|
 :skolemid |883|
 :pattern ( (SystemState__DEVICE_EXTENSIONInv x@@832))
)))
(assert (forall ((x@@833 Int) ) (! (= (SystemToDeviceState__DEVICE_EXTENSIONInv (SystemToDeviceState__DEVICE_EXTENSION x@@833)) x@@833)
 :qid |KbdCreateClassObjectbpl.2754:15|
 :skolemid |892|
 :pattern ( (SystemToDeviceState__DEVICE_EXTENSIONInv (SystemToDeviceState__DEVICE_EXTENSION x@@833)))
)))
(assert (forall ((x@@834 Int) ) (! (= (SystemToDeviceState__DEVICE_EXTENSION (SystemToDeviceState__DEVICE_EXTENSIONInv x@@834)) x@@834)
 :qid |KbdCreateClassObjectbpl.2755:15|
 :skolemid |893|
 :pattern ( (SystemToDeviceState__DEVICE_EXTENSIONInv x@@834))
)))
(assert (forall ((x@@835 Int) ) (! (= (TargetNotifyHandle__DEVICE_EXTENSIONInv (TargetNotifyHandle__DEVICE_EXTENSION x@@835)) x@@835)
 :qid |KbdCreateClassObjectbpl.2771:15|
 :skolemid |902|
 :pattern ( (TargetNotifyHandle__DEVICE_EXTENSIONInv (TargetNotifyHandle__DEVICE_EXTENSION x@@835)))
)))
(assert (forall ((x@@836 Int) ) (! (= (TargetNotifyHandle__DEVICE_EXTENSION (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@836)) x@@836)
 :qid |KbdCreateClassObjectbpl.2772:15|
 :skolemid |903|
 :pattern ( (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@836))
)))
(assert (forall ((x@@837 Int) ) (! (= (TopPort__DEVICE_EXTENSIONInv (TopPort__DEVICE_EXTENSION x@@837)) x@@837)
 :qid |KbdCreateClassObjectbpl.2788:15|
 :skolemid |912|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv (TopPort__DEVICE_EXTENSION x@@837)))
)))
(assert (forall ((x@@838 Int) ) (! (= (TopPort__DEVICE_EXTENSION (TopPort__DEVICE_EXTENSIONInv x@@838)) x@@838)
 :qid |KbdCreateClassObjectbpl.2789:15|
 :skolemid |913|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv x@@838))
)))
(assert (forall ((x@@839 Int) ) (! (= (TrueClassDevice__DEVICE_EXTENSIONInv (TrueClassDevice__DEVICE_EXTENSION x@@839)) x@@839)
 :qid |KbdCreateClassObjectbpl.2805:15|
 :skolemid |922|
 :pattern ( (TrueClassDevice__DEVICE_EXTENSIONInv (TrueClassDevice__DEVICE_EXTENSION x@@839)))
)))
(assert (forall ((x@@840 Int) ) (! (= (TrueClassDevice__DEVICE_EXTENSION (TrueClassDevice__DEVICE_EXTENSIONInv x@@840)) x@@840)
 :qid |KbdCreateClassObjectbpl.2806:15|
 :skolemid |923|
 :pattern ( (TrueClassDevice__DEVICE_EXTENSIONInv x@@840))
)))
(assert (forall ((x@@841 Int) ) (! (= (TrustedSubsystemCount__DEVICE_EXTENSIONInv (TrustedSubsystemCount__DEVICE_EXTENSION x@@841)) x@@841)
 :qid |KbdCreateClassObjectbpl.2822:15|
 :skolemid |932|
 :pattern ( (TrustedSubsystemCount__DEVICE_EXTENSIONInv (TrustedSubsystemCount__DEVICE_EXTENSION x@@841)))
)))
(assert (forall ((x@@842 Int) ) (! (= (TrustedSubsystemCount__DEVICE_EXTENSION (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@842)) x@@842)
 :qid |KbdCreateClassObjectbpl.2823:15|
 :skolemid |933|
 :pattern ( (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@842))
)))
(assert (forall ((x@@843 Int) ) (! (= (Type__KEYBOARD_IDInv (Type__KEYBOARD_ID x@@843)) x@@843)
 :qid |KbdCreateClassObjectbpl.2839:15|
 :skolemid |942|
 :pattern ( (Type__KEYBOARD_IDInv (Type__KEYBOARD_ID x@@843)))
)))
(assert (forall ((x@@844 Int) ) (! (= (Type__KEYBOARD_ID (Type__KEYBOARD_IDInv x@@844)) x@@844)
 :qid |KbdCreateClassObjectbpl.2840:15|
 :skolemid |943|
 :pattern ( (Type__KEYBOARD_IDInv x@@844))
)))
(assert (forall ((x@@845 Int) ) (! (= (Type___unnamed_4_5ca00198Inv (Type___unnamed_4_5ca00198 x@@845)) x@@845)
 :qid |KbdCreateClassObjectbpl.2856:15|
 :skolemid |952|
 :pattern ( (Type___unnamed_4_5ca00198Inv (Type___unnamed_4_5ca00198 x@@845)))
)))
(assert (forall ((x@@846 Int) ) (! (= (Type___unnamed_4_5ca00198 (Type___unnamed_4_5ca00198Inv x@@846)) x@@846)
 :qid |KbdCreateClassObjectbpl.2857:15|
 :skolemid |953|
 :pattern ( (Type___unnamed_4_5ca00198Inv x@@846))
)))
(assert (forall ((x@@847 Int) ) (! (= (UnitId__DEVICE_EXTENSIONInv (UnitId__DEVICE_EXTENSION x@@847)) x@@847)
 :qid |KbdCreateClassObjectbpl.2873:15|
 :skolemid |962|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv (UnitId__DEVICE_EXTENSION x@@847)))
)))
(assert (forall ((x@@848 Int) ) (! (= (UnitId__DEVICE_EXTENSION (UnitId__DEVICE_EXTENSIONInv x@@848)) x@@848)
 :qid |KbdCreateClassObjectbpl.2874:15|
 :skolemid |963|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv x@@848))
)))
(assert (forall ((x@@849 Int) ) (! (= (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv (UnitId__KEYBOARD_INDICATOR_PARAMETERS x@@849)) x@@849)
 :qid |KbdCreateClassObjectbpl.2890:15|
 :skolemid |972|
 :pattern ( (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv (UnitId__KEYBOARD_INDICATOR_PARAMETERS x@@849)))
)))
(assert (forall ((x@@850 Int) ) (! (= (UnitId__KEYBOARD_INDICATOR_PARAMETERS (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@850)) x@@850)
 :qid |KbdCreateClassObjectbpl.2891:15|
 :skolemid |973|
 :pattern ( (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@850))
)))
(assert (forall ((x@@851 Int) ) (! (= (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv (UnitId__KEYBOARD_TYPEMATIC_PARAMETERS x@@851)) x@@851)
 :qid |KbdCreateClassObjectbpl.2907:15|
 :skolemid |982|
 :pattern ( (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv (UnitId__KEYBOARD_TYPEMATIC_PARAMETERS x@@851)))
)))
(assert (forall ((x@@852 Int) ) (! (= (UnitId__KEYBOARD_TYPEMATIC_PARAMETERS (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@852)) x@@852)
 :qid |KbdCreateClassObjectbpl.2908:15|
 :skolemid |983|
 :pattern ( (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@852))
)))
(assert (forall ((x@@853 Int) ) (! (= (WaitListHead__DISPATCHER_HEADERInv (WaitListHead__DISPATCHER_HEADER x@@853)) x@@853)
 :qid |KbdCreateClassObjectbpl.2924:15|
 :skolemid |992|
 :pattern ( (WaitListHead__DISPATCHER_HEADERInv (WaitListHead__DISPATCHER_HEADER x@@853)))
)))
(assert (forall ((x@@854 Int) ) (! (= (WaitListHead__DISPATCHER_HEADER (WaitListHead__DISPATCHER_HEADERInv x@@854)) x@@854)
 :qid |KbdCreateClassObjectbpl.2925:15|
 :skolemid |993|
 :pattern ( (WaitListHead__DISPATCHER_HEADERInv x@@854))
)))
(assert (forall ((x@@855 Int) ) (! (= (WaitWakeEnabled__DEVICE_EXTENSIONInv (WaitWakeEnabled__DEVICE_EXTENSION x@@855)) x@@855)
 :qid |KbdCreateClassObjectbpl.2941:15|
 :skolemid |1002|
 :pattern ( (WaitWakeEnabled__DEVICE_EXTENSIONInv (WaitWakeEnabled__DEVICE_EXTENSION x@@855)))
)))
(assert (forall ((x@@856 Int) ) (! (= (WaitWakeEnabled__DEVICE_EXTENSION (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@856)) x@@856)
 :qid |KbdCreateClassObjectbpl.2942:15|
 :skolemid |1003|
 :pattern ( (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@856))
)))
(assert (forall ((x@@857 Int) ) (! (= (WaitWakeIrp__DEVICE_EXTENSIONInv (WaitWakeIrp__DEVICE_EXTENSION x@@857)) x@@857)
 :qid |KbdCreateClassObjectbpl.2958:15|
 :skolemid |1012|
 :pattern ( (WaitWakeIrp__DEVICE_EXTENSIONInv (WaitWakeIrp__DEVICE_EXTENSION x@@857)))
)))
(assert (forall ((x@@858 Int) ) (! (= (WaitWakeIrp__DEVICE_EXTENSION (WaitWakeIrp__DEVICE_EXTENSIONInv x@@858)) x@@858)
 :qid |KbdCreateClassObjectbpl.2959:15|
 :skolemid |1013|
 :pattern ( (WaitWakeIrp__DEVICE_EXTENSIONInv x@@858))
)))
(assert (forall ((x@@859 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSIONInv (WaitWakeSpinLock__DEVICE_EXTENSION x@@859)) x@@859)
 :qid |KbdCreateClassObjectbpl.2975:15|
 :skolemid |1022|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSIONInv (WaitWakeSpinLock__DEVICE_EXTENSION x@@859)))
)))
(assert (forall ((x@@860 Int) ) (! (= (WaitWakeSpinLock__DEVICE_EXTENSION (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@860)) x@@860)
 :qid |KbdCreateClassObjectbpl.2976:15|
 :skolemid |1023|
 :pattern ( (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@860))
)))
(assert (forall ((x@@861 Int) ) (! (= (WmiFunctionControl__WMILIB_CONTEXTInv (WmiFunctionControl__WMILIB_CONTEXT x@@861)) x@@861)
 :qid |KbdCreateClassObjectbpl.2992:15|
 :skolemid |1032|
 :pattern ( (WmiFunctionControl__WMILIB_CONTEXTInv (WmiFunctionControl__WMILIB_CONTEXT x@@861)))
)))
(assert (forall ((x@@862 Int) ) (! (= (WmiFunctionControl__WMILIB_CONTEXT (WmiFunctionControl__WMILIB_CONTEXTInv x@@862)) x@@862)
 :qid |KbdCreateClassObjectbpl.2993:15|
 :skolemid |1033|
 :pattern ( (WmiFunctionControl__WMILIB_CONTEXTInv x@@862))
)))
(assert (forall ((x@@863 Int) ) (! (= (WmiLibInfo__DEVICE_EXTENSIONInv (WmiLibInfo__DEVICE_EXTENSION x@@863)) x@@863)
 :qid |KbdCreateClassObjectbpl.3009:15|
 :skolemid |1042|
 :pattern ( (WmiLibInfo__DEVICE_EXTENSIONInv (WmiLibInfo__DEVICE_EXTENSION x@@863)))
)))
(assert (forall ((x@@864 Int) ) (! (= (WmiLibInfo__DEVICE_EXTENSION (WmiLibInfo__DEVICE_EXTENSIONInv x@@864)) x@@864)
 :qid |KbdCreateClassObjectbpl.3010:15|
 :skolemid |1043|
 :pattern ( (WmiLibInfo__DEVICE_EXTENSIONInv x@@864))
)))
(assert (forall ((x@@865 Int) ) (! (= (__unnamed_1_29794256___unnamed_4_5ca00198Inv (__unnamed_1_29794256___unnamed_4_5ca00198 x@@865)) x@@865)
 :qid |KbdCreateClassObjectbpl.3026:15|
 :skolemid |1052|
 :pattern ( (__unnamed_1_29794256___unnamed_4_5ca00198Inv (__unnamed_1_29794256___unnamed_4_5ca00198 x@@865)))
)))
(assert (forall ((x@@866 Int) ) (! (= (__unnamed_1_29794256___unnamed_4_5ca00198 (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@866)) x@@866)
 :qid |KbdCreateClassObjectbpl.3027:15|
 :skolemid |1053|
 :pattern ( (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@866))
)))
(assert (forall ((x@@867 Int) ) (! (= (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv (__unnamed_1_2dc63b48___unnamed_4_5ca00198 x@@867)) x@@867)
 :qid |KbdCreateClassObjectbpl.3043:15|
 :skolemid |1062|
 :pattern ( (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv (__unnamed_1_2dc63b48___unnamed_4_5ca00198 x@@867)))
)))
(assert (forall ((x@@868 Int) ) (! (= (__unnamed_1_2dc63b48___unnamed_4_5ca00198 (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@868)) x@@868)
 :qid |KbdCreateClassObjectbpl.3044:15|
 :skolemid |1063|
 :pattern ( (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@868))
)))
(assert (forall ((x@@869 Int) ) (! (= (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv (__unnamed_1_2ef8da39___unnamed_4_5ca00198 x@@869)) x@@869)
 :qid |KbdCreateClassObjectbpl.3060:15|
 :skolemid |1072|
 :pattern ( (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv (__unnamed_1_2ef8da39___unnamed_4_5ca00198 x@@869)))
)))
(assert (forall ((x@@870 Int) ) (! (= (__unnamed_1_2ef8da39___unnamed_4_5ca00198 (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@870)) x@@870)
 :qid |KbdCreateClassObjectbpl.3061:15|
 :skolemid |1073|
 :pattern ( (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@870))
)))
(assert (forall ((x@@871 Int) ) (! (= (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv (__unnamed_4_5ca00198___unnamed_4_a97c65a1 x@@871)) x@@871)
 :qid |KbdCreateClassObjectbpl.3077:15|
 :skolemid |1082|
 :pattern ( (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv (__unnamed_4_5ca00198___unnamed_4_a97c65a1 x@@871)))
)))
(assert (forall ((x@@872 Int) ) (! (= (__unnamed_4_5ca00198___unnamed_4_a97c65a1 (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@872)) x@@872)
 :qid |KbdCreateClassObjectbpl.3078:15|
 :skolemid |1083|
 :pattern ( (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@872))
)))
(assert (forall ((x@@873 Int) ) (! (= (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv (__unnamed_4_a97c65a1__DISPATCHER_HEADER x@@873)) x@@873)
 :qid |KbdCreateClassObjectbpl.3094:15|
 :skolemid |1092|
 :pattern ( (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv (__unnamed_4_a97c65a1__DISPATCHER_HEADER x@@873)))
)))
(assert (forall ((x@@874 Int) ) (! (= (__unnamed_4_a97c65a1__DISPATCHER_HEADER (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@874)) x@@874)
 :qid |KbdCreateClassObjectbpl.3095:15|
 :skolemid |1093|
 :pattern ( (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@874))
)))
(assert (forall ((x@@875 Int) (n@@3 Int) (z@@8 Int) ) (!  (=> (<= z@@8 0) (Equal (q@Array x@@875 n@@3 z@@8) Empty))
 :qid |KbdCreateClassObjectbpl.61:14|
 :skolemid |9|
 :pattern ( (q@Array x@@875 n@@3 z@@8))
)))
(assert (forall ((S@@219 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (!  (or (Disjoint S@@219 T@@4) (exists ((x@@876 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@219 x@@876) (|Select__T@[Int]Bool_| T@@4 x@@876))
 :qid |KbdCreateClassObjectbpl.82:83|
 :skolemid |23|
)))
 :qid |KbdCreateClassObjectbpl.82:14|
 :skolemid |24|
 :pattern ( (Disjoint S@@219 T@@4))
)))
(assert (forall ((y@@15 Int) ) (! (|Select__T@[Int]Bool_| (Singleton y@@15) y@@15)
 :qid |KbdCreateClassObjectbpl.70:14|
 :skolemid |14|
 :pattern ( (Singleton y@@15))
)))
(assert (forall ((S@@220 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (!  (or (Subset S@@220 T@@5) (exists ((x@@877 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@220 x@@877) (not (|Select__T@[Int]Bool_| T@@5 x@@877)))
 :qid |KbdCreateClassObjectbpl.80:79|
 :skolemid |20|
)))
 :qid |KbdCreateClassObjectbpl.80:14|
 :skolemid |21|
 :pattern ( (Subset S@@220 T@@5))
)))
(assert (forall ((n@@4 Int) (x@@878 Int) (z@@9 Int) ) (! (= (Rep n@@4 x@@878) (Rep n@@4 (PLUS x@@878 n@@4 z@@9)))
 :qid |KbdCreateClassObjectbpl.45:14|
 :skolemid |6|
 :pattern ( (PLUS x@@878 n@@4 z@@9))
)))
(assert (forall ((x@@879 Int) (S@@221 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@221 x@@879) (|Select__T@[Int]Bool_| (_S_Abandoned___unnamed_1_29794256 S@@221) (Abandoned___unnamed_1_29794256 x@@879)))
 :qid |KbdCreateClassObjectbpl.1314:15|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Bool_| S@@221 x@@879) (_S_Abandoned___unnamed_1_29794256 S@@221))
)))
(assert (forall ((x@@880 Int) (S@@222 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@222 x@@880) (|Select__T@[Int]Bool_| (_S_Abandoned___unnamed_1_29794256Inv S@@222) (Abandoned___unnamed_1_29794256Inv x@@880)))
 :qid |KbdCreateClassObjectbpl.1315:15|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| S@@222 x@@880) (_S_Abandoned___unnamed_1_29794256Inv S@@222))
)))
(assert (forall ((x@@881 Int) (S@@223 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@223 x@@881) (|Select__T@[Int]Bool_| (_S_Absolute___unnamed_1_29794256 S@@223) (Absolute___unnamed_1_29794256 x@@881)))
 :qid |KbdCreateClassObjectbpl.1331:15|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Bool_| S@@223 x@@881) (_S_Absolute___unnamed_1_29794256 S@@223))
)))
(assert (forall ((x@@882 Int) (S@@224 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@224 x@@882) (|Select__T@[Int]Bool_| (_S_Absolute___unnamed_1_29794256Inv S@@224) (Absolute___unnamed_1_29794256Inv x@@882)))
 :qid |KbdCreateClassObjectbpl.1332:15|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Bool_| S@@224 x@@882) (_S_Absolute___unnamed_1_29794256Inv S@@224))
)))
(assert (forall ((x@@883 Int) (S@@225 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@225 x@@883) (|Select__T@[Int]Bool_| (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK S@@225) (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK x@@883)))
 :qid |KbdCreateClassObjectbpl.1348:15|
 :skolemid |66|
 :pattern ( (|Select__T@[Int]Bool_| S@@225 x@@883) (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK S@@225))
)))
(assert (forall ((x@@884 Int) (S@@226 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@226 x@@884) (|Select__T@[Int]Bool_| (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv S@@226) (AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv x@@884)))
 :qid |KbdCreateClassObjectbpl.1349:15|
 :skolemid |67|
 :pattern ( (|Select__T@[Int]Bool_| S@@226 x@@884) (_S_AllocateTag__IO_REMOVE_LOCK_DBG_BLOCKInv S@@226))
)))
(assert (forall ((x@@885 Int) (S@@227 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@227 x@@885) (|Select__T@[Int]Bool_| (_S_AllowDisable__DEVICE_EXTENSION S@@227) (AllowDisable__DEVICE_EXTENSION x@@885)))
 :qid |KbdCreateClassObjectbpl.1365:15|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]Bool_| S@@227 x@@885) (_S_AllowDisable__DEVICE_EXTENSION S@@227))
)))
(assert (forall ((x@@886 Int) (S@@228 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@228 x@@886) (|Select__T@[Int]Bool_| (_S_AllowDisable__DEVICE_EXTENSIONInv S@@228) (AllowDisable__DEVICE_EXTENSIONInv x@@886)))
 :qid |KbdCreateClassObjectbpl.1366:15|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]Bool_| S@@228 x@@886) (_S_AllowDisable__DEVICE_EXTENSIONInv S@@228))
)))
(assert (forall ((x@@887 Int) (S@@229 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@229 x@@887) (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@229) (BaseClassName__GLOBALS x@@887)))
 :qid |KbdCreateClassObjectbpl.1382:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@229 x@@887) (_S_BaseClassName__GLOBALS S@@229))
)))
(assert (forall ((x@@888 Int) (S@@230 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@230 x@@888) (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@230) (BaseClassName__GLOBALSInv x@@888)))
 :qid |KbdCreateClassObjectbpl.1383:15|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| S@@230 x@@888) (_S_BaseClassName__GLOBALSInv S@@230))
)))
(assert (forall ((x@@889 Int) (S@@231 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@231 x@@889) (|Select__T@[Int]Bool_| (_S_Blink__LIST_ENTRY S@@231) (Blink__LIST_ENTRY x@@889)))
 :qid |KbdCreateClassObjectbpl.1399:15|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Bool_| S@@231 x@@889) (_S_Blink__LIST_ENTRY S@@231))
)))
(assert (forall ((x@@890 Int) (S@@232 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@232 x@@890) (|Select__T@[Int]Bool_| (_S_Blink__LIST_ENTRYInv S@@232) (Blink__LIST_ENTRYInv x@@890)))
 :qid |KbdCreateClassObjectbpl.1400:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| S@@232 x@@890) (_S_Blink__LIST_ENTRYInv S@@232))
)))
(assert (forall ((x@@891 Int) (S@@233 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@233 x@@891) (|Select__T@[Int]Bool_| (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCK S@@233) (Blocks__IO_REMOVE_LOCK_DBG_BLOCK x@@891)))
 :qid |KbdCreateClassObjectbpl.1416:15|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]Bool_| S@@233 x@@891) (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCK S@@233))
)))
(assert (forall ((x@@892 Int) (S@@234 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@234 x@@892) (|Select__T@[Int]Bool_| (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@234) (Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@892)))
 :qid |KbdCreateClassObjectbpl.1417:15|
 :skolemid |107|
 :pattern ( (|Select__T@[Int]Bool_| S@@234 x@@892) (_S_Blocks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@234))
)))
(assert (forall ((x@@893 Int) (S@@235 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@235 x@@893) (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@235) (Buffer__UNICODE_STRING x@@893)))
 :qid |KbdCreateClassObjectbpl.1433:15|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]Bool_| S@@235 x@@893) (_S_Buffer__UNICODE_STRING S@@235))
)))
(assert (forall ((x@@894 Int) (S@@236 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@236 x@@894) (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@236) (Buffer__UNICODE_STRINGInv x@@894)))
 :qid |KbdCreateClassObjectbpl.1434:15|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]Bool_| S@@236 x@@894) (_S_Buffer__UNICODE_STRINGInv S@@236))
)))
(assert (forall ((x@@895 Int) (S@@237 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@237 x@@895) (|Select__T@[Int]Bool_| (_S_Common__IO_REMOVE_LOCK S@@237) (Common__IO_REMOVE_LOCK x@@895)))
 :qid |KbdCreateClassObjectbpl.1450:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| S@@237 x@@895) (_S_Common__IO_REMOVE_LOCK S@@237))
)))
(assert (forall ((x@@896 Int) (S@@238 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@238 x@@896) (|Select__T@[Int]Bool_| (_S_Common__IO_REMOVE_LOCKInv S@@238) (Common__IO_REMOVE_LOCKInv x@@896)))
 :qid |KbdCreateClassObjectbpl.1451:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@238 x@@896) (_S_Common__IO_REMOVE_LOCKInv S@@238))
)))
(assert (forall ((x@@897 Int) (S@@239 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@239 x@@897) (|Select__T@[Int]Bool_| (_S_ConnectOneClassToOnePort__GLOBALS S@@239) (ConnectOneClassToOnePort__GLOBALS x@@897)))
 :qid |KbdCreateClassObjectbpl.1467:15|
 :skolemid |136|
 :pattern ( (|Select__T@[Int]Bool_| S@@239 x@@897) (_S_ConnectOneClassToOnePort__GLOBALS S@@239))
)))
(assert (forall ((x@@898 Int) (S@@240 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@240 x@@898) (|Select__T@[Int]Bool_| (_S_ConnectOneClassToOnePort__GLOBALSInv S@@240) (ConnectOneClassToOnePort__GLOBALSInv x@@898)))
 :qid |KbdCreateClassObjectbpl.1468:15|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]Bool_| S@@240 x@@898) (_S_ConnectOneClassToOnePort__GLOBALSInv S@@240))
)))
(assert (forall ((x@@899 Int) (S@@241 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@241 x@@899) (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@241) (DataIn__DEVICE_EXTENSION x@@899)))
 :qid |KbdCreateClassObjectbpl.1484:15|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]Bool_| S@@241 x@@899) (_S_DataIn__DEVICE_EXTENSION S@@241))
)))
(assert (forall ((x@@900 Int) (S@@242 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@242 x@@900) (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@242) (DataIn__DEVICE_EXTENSIONInv x@@900)))
 :qid |KbdCreateClassObjectbpl.1485:15|
 :skolemid |147|
 :pattern ( (|Select__T@[Int]Bool_| S@@242 x@@900) (_S_DataIn__DEVICE_EXTENSIONInv S@@242))
)))
(assert (forall ((x@@901 Int) (S@@243 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@243 x@@901) (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@243) (DataOut__DEVICE_EXTENSION x@@901)))
 :qid |KbdCreateClassObjectbpl.1501:15|
 :skolemid |156|
 :pattern ( (|Select__T@[Int]Bool_| S@@243 x@@901) (_S_DataOut__DEVICE_EXTENSION S@@243))
)))
(assert (forall ((x@@902 Int) (S@@244 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@244 x@@902) (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@244) (DataOut__DEVICE_EXTENSIONInv x@@902)))
 :qid |KbdCreateClassObjectbpl.1502:15|
 :skolemid |157|
 :pattern ( (|Select__T@[Int]Bool_| S@@244 x@@902) (_S_DataOut__DEVICE_EXTENSIONInv S@@244))
)))
(assert (forall ((x@@903 Int) (S@@245 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@245 x@@903) (|Select__T@[Int]Bool_| (_S_Dbg__IO_REMOVE_LOCK S@@245) (Dbg__IO_REMOVE_LOCK x@@903)))
 :qid |KbdCreateClassObjectbpl.1518:15|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]Bool_| S@@245 x@@903) (_S_Dbg__IO_REMOVE_LOCK S@@245))
)))
(assert (forall ((x@@904 Int) (S@@246 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@246 x@@904) (|Select__T@[Int]Bool_| (_S_Dbg__IO_REMOVE_LOCKInv S@@246) (Dbg__IO_REMOVE_LOCKInv x@@904)))
 :qid |KbdCreateClassObjectbpl.1519:15|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]Bool_| S@@246 x@@904) (_S_Dbg__IO_REMOVE_LOCKInv S@@246))
)))
(assert (forall ((x@@905 Int) (S@@247 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@247 x@@905) (|Select__T@[Int]Bool_| (_S_DebugActive___unnamed_1_2dc63b48 S@@247) (DebugActive___unnamed_1_2dc63b48 x@@905)))
 :qid |KbdCreateClassObjectbpl.1535:15|
 :skolemid |176|
 :pattern ( (|Select__T@[Int]Bool_| S@@247 x@@905) (_S_DebugActive___unnamed_1_2dc63b48 S@@247))
)))
(assert (forall ((x@@906 Int) (S@@248 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@248 x@@906) (|Select__T@[Int]Bool_| (_S_DebugActive___unnamed_1_2dc63b48Inv S@@248) (DebugActive___unnamed_1_2dc63b48Inv x@@906)))
 :qid |KbdCreateClassObjectbpl.1536:15|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]Bool_| S@@248 x@@906) (_S_DebugActive___unnamed_1_2dc63b48Inv S@@248))
)))
(assert (forall ((x@@907 Int) (S@@249 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@249 x@@907) (|Select__T@[Int]Bool_| (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERS S@@249) (Delay__KEYBOARD_TYPEMATIC_PARAMETERS x@@907)))
 :qid |KbdCreateClassObjectbpl.1552:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| S@@249 x@@907) (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERS S@@249))
)))
(assert (forall ((x@@908 Int) (S@@250 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@250 x@@908) (|Select__T@[Int]Bool_| (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@250) (Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@908)))
 :qid |KbdCreateClassObjectbpl.1553:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| S@@250 x@@908) (_S_Delay__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@250))
)))
(assert (forall ((x@@909 Int) (S@@251 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@251 x@@909) (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@251) (DeviceExtension__DEVICE_OBJECT x@@909)))
 :qid |KbdCreateClassObjectbpl.1569:15|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]Bool_| S@@251 x@@909) (_S_DeviceExtension__DEVICE_OBJECT S@@251))
)))
(assert (forall ((x@@910 Int) (S@@252 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@252 x@@910) (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@252) (DeviceExtension__DEVICE_OBJECTInv x@@910)))
 :qid |KbdCreateClassObjectbpl.1570:15|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]Bool_| S@@252 x@@910) (_S_DeviceExtension__DEVICE_OBJECTInv S@@252))
)))
(assert (forall ((x@@911 Int) (S@@253 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@253 x@@911) (|Select__T@[Int]Bool_| (_S_DeviceState__DEVICE_EXTENSION S@@253) (DeviceState__DEVICE_EXTENSION x@@911)))
 :qid |KbdCreateClassObjectbpl.1586:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Bool_| S@@253 x@@911) (_S_DeviceState__DEVICE_EXTENSION S@@253))
)))
(assert (forall ((x@@912 Int) (S@@254 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@254 x@@912) (|Select__T@[Int]Bool_| (_S_DeviceState__DEVICE_EXTENSIONInv S@@254) (DeviceState__DEVICE_EXTENSIONInv x@@912)))
 :qid |KbdCreateClassObjectbpl.1587:15|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]Bool_| S@@254 x@@912) (_S_DeviceState__DEVICE_EXTENSIONInv S@@254))
)))
(assert (forall ((x@@913 Int) (S@@255 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@255 x@@913) (|Select__T@[Int]Bool_| (_S_DpcActive___unnamed_1_2dc63b48 S@@255) (DpcActive___unnamed_1_2dc63b48 x@@913)))
 :qid |KbdCreateClassObjectbpl.1603:15|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]Bool_| S@@255 x@@913) (_S_DpcActive___unnamed_1_2dc63b48 S@@255))
)))
(assert (forall ((x@@914 Int) (S@@256 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@256 x@@914) (|Select__T@[Int]Bool_| (_S_DpcActive___unnamed_1_2dc63b48Inv S@@256) (DpcActive___unnamed_1_2dc63b48Inv x@@914)))
 :qid |KbdCreateClassObjectbpl.1604:15|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]Bool_| S@@256 x@@914) (_S_DpcActive___unnamed_1_2dc63b48Inv S@@256))
)))
(assert (forall ((x@@915 Int) (S@@257 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@257 x@@915) (|Select__T@[Int]Bool_| (_S_Enabled__DEVICE_EXTENSION S@@257) (Enabled__DEVICE_EXTENSION x@@915)))
 :qid |KbdCreateClassObjectbpl.1620:15|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]Bool_| S@@257 x@@915) (_S_Enabled__DEVICE_EXTENSION S@@257))
)))
(assert (forall ((x@@916 Int) (S@@258 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@258 x@@916) (|Select__T@[Int]Bool_| (_S_Enabled__DEVICE_EXTENSIONInv S@@258) (Enabled__DEVICE_EXTENSIONInv x@@916)))
 :qid |KbdCreateClassObjectbpl.1621:15|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]Bool_| S@@258 x@@916) (_S_Enabled__DEVICE_EXTENSIONInv S@@258))
)))
(assert (forall ((x@@917 Int) (S@@259 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@259 x@@917) (|Select__T@[Int]Bool_| (_S_ExecuteWmiMethod__WMILIB_CONTEXT S@@259) (ExecuteWmiMethod__WMILIB_CONTEXT x@@917)))
 :qid |KbdCreateClassObjectbpl.1637:15|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]Bool_| S@@259 x@@917) (_S_ExecuteWmiMethod__WMILIB_CONTEXT S@@259))
)))
(assert (forall ((x@@918 Int) (S@@260 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@260 x@@918) (|Select__T@[Int]Bool_| (_S_ExecuteWmiMethod__WMILIB_CONTEXTInv S@@260) (ExecuteWmiMethod__WMILIB_CONTEXTInv x@@918)))
 :qid |KbdCreateClassObjectbpl.1638:15|
 :skolemid |237|
 :pattern ( (|Select__T@[Int]Bool_| S@@260 x@@918) (_S_ExecuteWmiMethod__WMILIB_CONTEXTInv S@@260))
)))
(assert (forall ((x@@919 Int) (S@@261 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@261 x@@919) (|Select__T@[Int]Bool_| (_S_ExtraWaitWakeIrp__DEVICE_EXTENSION S@@261) (ExtraWaitWakeIrp__DEVICE_EXTENSION x@@919)))
 :qid |KbdCreateClassObjectbpl.1654:15|
 :skolemid |246|
 :pattern ( (|Select__T@[Int]Bool_| S@@261 x@@919) (_S_ExtraWaitWakeIrp__DEVICE_EXTENSION S@@261))
)))
(assert (forall ((x@@920 Int) (S@@262 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@262 x@@920) (|Select__T@[Int]Bool_| (_S_ExtraWaitWakeIrp__DEVICE_EXTENSIONInv S@@262) (ExtraWaitWakeIrp__DEVICE_EXTENSIONInv x@@920)))
 :qid |KbdCreateClassObjectbpl.1655:15|
 :skolemid |247|
 :pattern ( (|Select__T@[Int]Bool_| S@@262 x@@920) (_S_ExtraWaitWakeIrp__DEVICE_EXTENSIONInv S@@262))
)))
(assert (forall ((x@@921 Int) (S@@263 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@263 x@@921) (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@263) (File__DEVICE_EXTENSION x@@921)))
 :qid |KbdCreateClassObjectbpl.1671:15|
 :skolemid |256|
 :pattern ( (|Select__T@[Int]Bool_| S@@263 x@@921) (_S_File__DEVICE_EXTENSION S@@263))
)))
(assert (forall ((x@@922 Int) (S@@264 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@264 x@@922) (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@264) (File__DEVICE_EXTENSIONInv x@@922)))
 :qid |KbdCreateClassObjectbpl.1672:15|
 :skolemid |257|
 :pattern ( (|Select__T@[Int]Bool_| S@@264 x@@922) (_S_File__DEVICE_EXTENSIONInv S@@264))
)))
(assert (forall ((x@@923 Int) (S@@265 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@265 x@@923) (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@265) (Flags__DEVICE_OBJECT x@@923)))
 :qid |KbdCreateClassObjectbpl.1688:15|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]Bool_| S@@265 x@@923) (_S_Flags__DEVICE_OBJECT S@@265))
)))
(assert (forall ((x@@924 Int) (S@@266 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@266 x@@924) (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@266) (Flags__DEVICE_OBJECTInv x@@924)))
 :qid |KbdCreateClassObjectbpl.1689:15|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]Bool_| S@@266 x@@924) (_S_Flags__DEVICE_OBJECTInv S@@266))
)))
(assert (forall ((x@@925 Int) (S@@267 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@267 x@@925) (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@267) (Flink__LIST_ENTRY x@@925)))
 :qid |KbdCreateClassObjectbpl.1705:15|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]Bool_| S@@267 x@@925) (_S_Flink__LIST_ENTRY S@@267))
)))
(assert (forall ((x@@926 Int) (S@@268 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@268 x@@926) (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@268) (Flink__LIST_ENTRYInv x@@926)))
 :qid |KbdCreateClassObjectbpl.1706:15|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]Bool_| S@@268 x@@926) (_S_Flink__LIST_ENTRYInv S@@268))
)))
(assert (forall ((x@@927 Int) (S@@269 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@269 x@@927) (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@269) (GrandMaster__GLOBALS x@@927)))
 :qid |KbdCreateClassObjectbpl.1722:15|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]Bool_| S@@269 x@@927) (_S_GrandMaster__GLOBALS S@@269))
)))
(assert (forall ((x@@928 Int) (S@@270 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@270 x@@928) (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@270) (GrandMaster__GLOBALSInv x@@928)))
 :qid |KbdCreateClassObjectbpl.1723:15|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]Bool_| S@@270 x@@928) (_S_GrandMaster__GLOBALSInv S@@270))
)))
(assert (forall ((x@@929 Int) (S@@271 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@271 x@@929) (|Select__T@[Int]Bool_| (_S_GuidCount__WMILIB_CONTEXT S@@271) (GuidCount__WMILIB_CONTEXT x@@929)))
 :qid |KbdCreateClassObjectbpl.1739:15|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]Bool_| S@@271 x@@929) (_S_GuidCount__WMILIB_CONTEXT S@@271))
)))
(assert (forall ((x@@930 Int) (S@@272 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@272 x@@930) (|Select__T@[Int]Bool_| (_S_GuidCount__WMILIB_CONTEXTInv S@@272) (GuidCount__WMILIB_CONTEXTInv x@@930)))
 :qid |KbdCreateClassObjectbpl.1740:15|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]Bool_| S@@272 x@@930) (_S_GuidCount__WMILIB_CONTEXTInv S@@272))
)))
(assert (forall ((x@@931 Int) (S@@273 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@273 x@@931) (|Select__T@[Int]Bool_| (_S_GuidList__WMILIB_CONTEXT S@@273) (GuidList__WMILIB_CONTEXT x@@931)))
 :qid |KbdCreateClassObjectbpl.1756:15|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]Bool_| S@@273 x@@931) (_S_GuidList__WMILIB_CONTEXT S@@273))
)))
(assert (forall ((x@@932 Int) (S@@274 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@274 x@@932) (|Select__T@[Int]Bool_| (_S_GuidList__WMILIB_CONTEXTInv S@@274) (GuidList__WMILIB_CONTEXTInv x@@932)))
 :qid |KbdCreateClassObjectbpl.1757:15|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]Bool_| S@@274 x@@932) (_S_GuidList__WMILIB_CONTEXTInv S@@274))
)))
(assert (forall ((x@@933 Int) (S@@275 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@275 x@@933) (|Select__T@[Int]Bool_| (_S_Hand___unnamed_1_2ef8da39 S@@275) (Hand___unnamed_1_2ef8da39 x@@933)))
 :qid |KbdCreateClassObjectbpl.1773:15|
 :skolemid |316|
 :pattern ( (|Select__T@[Int]Bool_| S@@275 x@@933) (_S_Hand___unnamed_1_2ef8da39 S@@275))
)))
(assert (forall ((x@@934 Int) (S@@276 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@276 x@@934) (|Select__T@[Int]Bool_| (_S_Hand___unnamed_1_2ef8da39Inv S@@276) (Hand___unnamed_1_2ef8da39Inv x@@934)))
 :qid |KbdCreateClassObjectbpl.1774:15|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]Bool_| S@@276 x@@934) (_S_Hand___unnamed_1_2ef8da39Inv S@@276))
)))
(assert (forall ((x@@935 Int) (S@@277 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@277 x@@935) (|Select__T@[Int]Bool_| (_S_Header__KEVENT S@@277) (Header__KEVENT x@@935)))
 :qid |KbdCreateClassObjectbpl.1790:15|
 :skolemid |326|
 :pattern ( (|Select__T@[Int]Bool_| S@@277 x@@935) (_S_Header__KEVENT S@@277))
)))
(assert (forall ((x@@936 Int) (S@@278 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@278 x@@936) (|Select__T@[Int]Bool_| (_S_Header__KEVENTInv S@@278) (Header__KEVENTInv x@@936)))
 :qid |KbdCreateClassObjectbpl.1791:15|
 :skolemid |327|
 :pattern ( (|Select__T@[Int]Bool_| S@@278 x@@936) (_S_Header__KEVENTInv S@@278))
)))
(assert (forall ((x@@937 Int) (S@@279 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@279 x@@937) (|Select__T@[Int]Bool_| (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK S@@279) (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK x@@937)))
 :qid |KbdCreateClassObjectbpl.1807:15|
 :skolemid |336|
 :pattern ( (|Select__T@[Int]Bool_| S@@279 x@@937) (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK S@@279))
)))
(assert (forall ((x@@938 Int) (S@@280 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@280 x@@938) (|Select__T@[Int]Bool_| (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv S@@280) (HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv x@@938)))
 :qid |KbdCreateClassObjectbpl.1808:15|
 :skolemid |337|
 :pattern ( (|Select__T@[Int]Bool_| S@@280 x@@938) (_S_HighWatermark__IO_REMOVE_LOCK_DBG_BLOCKInv S@@280))
)))
(assert (forall ((x@@939 Int) (S@@281 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@281 x@@939) (|Select__T@[Int]Bool_| (_S_IndicatorParameters__DEVICE_EXTENSION S@@281) (IndicatorParameters__DEVICE_EXTENSION x@@939)))
 :qid |KbdCreateClassObjectbpl.1824:15|
 :skolemid |346|
 :pattern ( (|Select__T@[Int]Bool_| S@@281 x@@939) (_S_IndicatorParameters__DEVICE_EXTENSION S@@281))
)))
(assert (forall ((x@@940 Int) (S@@282 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@282 x@@940) (|Select__T@[Int]Bool_| (_S_IndicatorParameters__DEVICE_EXTENSIONInv S@@282) (IndicatorParameters__DEVICE_EXTENSIONInv x@@940)))
 :qid |KbdCreateClassObjectbpl.1825:15|
 :skolemid |347|
 :pattern ( (|Select__T@[Int]Bool_| S@@282 x@@940) (_S_IndicatorParameters__DEVICE_EXTENSIONInv S@@282))
)))
(assert (forall ((x@@941 Int) (S@@283 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@283 x@@941) (|Select__T@[Int]Bool_| (_S_InputCount__DEVICE_EXTENSION S@@283) (InputCount__DEVICE_EXTENSION x@@941)))
 :qid |KbdCreateClassObjectbpl.1841:15|
 :skolemid |356|
 :pattern ( (|Select__T@[Int]Bool_| S@@283 x@@941) (_S_InputCount__DEVICE_EXTENSION S@@283))
)))
(assert (forall ((x@@942 Int) (S@@284 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@284 x@@942) (|Select__T@[Int]Bool_| (_S_InputCount__DEVICE_EXTENSIONInv S@@284) (InputCount__DEVICE_EXTENSIONInv x@@942)))
 :qid |KbdCreateClassObjectbpl.1842:15|
 :skolemid |357|
 :pattern ( (|Select__T@[Int]Bool_| S@@284 x@@942) (_S_InputCount__DEVICE_EXTENSIONInv S@@284))
)))
(assert (forall ((x@@943 Int) (S@@285 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@285 x@@943) (|Select__T@[Int]Bool_| (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTES S@@285) (InputDataQueueLength__KEYBOARD_ATTRIBUTES x@@943)))
 :qid |KbdCreateClassObjectbpl.1858:15|
 :skolemid |366|
 :pattern ( (|Select__T@[Int]Bool_| S@@285 x@@943) (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTES S@@285))
)))
(assert (forall ((x@@944 Int) (S@@286 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@286 x@@944) (|Select__T@[Int]Bool_| (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTESInv S@@286) (InputDataQueueLength__KEYBOARD_ATTRIBUTESInv x@@944)))
 :qid |KbdCreateClassObjectbpl.1859:15|
 :skolemid |367|
 :pattern ( (|Select__T@[Int]Bool_| S@@286 x@@944) (_S_InputDataQueueLength__KEYBOARD_ATTRIBUTESInv S@@286))
)))
(assert (forall ((x@@945 Int) (S@@287 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@287 x@@945) (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@287) (InputData__DEVICE_EXTENSION x@@945)))
 :qid |KbdCreateClassObjectbpl.1875:15|
 :skolemid |376|
 :pattern ( (|Select__T@[Int]Bool_| S@@287 x@@945) (_S_InputData__DEVICE_EXTENSION S@@287))
)))
(assert (forall ((x@@946 Int) (S@@288 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@288 x@@946) (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@288) (InputData__DEVICE_EXTENSIONInv x@@946)))
 :qid |KbdCreateClassObjectbpl.1876:15|
 :skolemid |377|
 :pattern ( (|Select__T@[Int]Bool_| S@@288 x@@946) (_S_InputData__DEVICE_EXTENSIONInv S@@288))
)))
(assert (forall ((x@@947 Int) (S@@289 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@289 x@@947) (|Select__T@[Int]Bool_| (_S_Inserted___unnamed_1_2dc63b48 S@@289) (Inserted___unnamed_1_2dc63b48 x@@947)))
 :qid |KbdCreateClassObjectbpl.1892:15|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]Bool_| S@@289 x@@947) (_S_Inserted___unnamed_1_2dc63b48 S@@289))
)))
(assert (forall ((x@@948 Int) (S@@290 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@290 x@@948) (|Select__T@[Int]Bool_| (_S_Inserted___unnamed_1_2dc63b48Inv S@@290) (Inserted___unnamed_1_2dc63b48Inv x@@948)))
 :qid |KbdCreateClassObjectbpl.1893:15|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Bool_| S@@290 x@@948) (_S_Inserted___unnamed_1_2dc63b48Inv S@@290))
)))
(assert (forall ((x@@949 Int) (S@@291 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@291 x@@949) (|Select__T@[Int]Bool_| (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCK S@@291) (IoCount__IO_REMOVE_LOCK_COMMON_BLOCK x@@949)))
 :qid |KbdCreateClassObjectbpl.1909:15|
 :skolemid |396|
 :pattern ( (|Select__T@[Int]Bool_| S@@291 x@@949) (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCK S@@291))
)))
(assert (forall ((x@@950 Int) (S@@292 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@292 x@@950) (|Select__T@[Int]Bool_| (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@292) (IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@950)))
 :qid |KbdCreateClassObjectbpl.1910:15|
 :skolemid |397|
 :pattern ( (|Select__T@[Int]Bool_| S@@292 x@@950) (_S_IoCount__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@292))
)))
(assert (forall ((x@@951 Int) (S@@293 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@293 x@@951) (|Select__T@[Int]Bool_| (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTES S@@293) (KeyRepeatMaximum__KEYBOARD_ATTRIBUTES x@@951)))
 :qid |KbdCreateClassObjectbpl.1926:15|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Bool_| S@@293 x@@951) (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTES S@@293))
)))
(assert (forall ((x@@952 Int) (S@@294 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@294 x@@952) (|Select__T@[Int]Bool_| (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv S@@294) (KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv x@@952)))
 :qid |KbdCreateClassObjectbpl.1927:15|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Bool_| S@@294 x@@952) (_S_KeyRepeatMaximum__KEYBOARD_ATTRIBUTESInv S@@294))
)))
(assert (forall ((x@@953 Int) (S@@295 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@295 x@@953) (|Select__T@[Int]Bool_| (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTES S@@295) (KeyRepeatMinimum__KEYBOARD_ATTRIBUTES x@@953)))
 :qid |KbdCreateClassObjectbpl.1943:15|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]Bool_| S@@295 x@@953) (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTES S@@295))
)))
(assert (forall ((x@@954 Int) (S@@296 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@296 x@@954) (|Select__T@[Int]Bool_| (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv S@@296) (KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv x@@954)))
 :qid |KbdCreateClassObjectbpl.1944:15|
 :skolemid |417|
 :pattern ( (|Select__T@[Int]Bool_| S@@296 x@@954) (_S_KeyRepeatMinimum__KEYBOARD_ATTRIBUTESInv S@@296))
)))
(assert (forall ((x@@955 Int) (S@@297 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@297 x@@955) (|Select__T@[Int]Bool_| (_S_KeyboardAttributes__DEVICE_EXTENSION S@@297) (KeyboardAttributes__DEVICE_EXTENSION x@@955)))
 :qid |KbdCreateClassObjectbpl.1960:15|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]Bool_| S@@297 x@@955) (_S_KeyboardAttributes__DEVICE_EXTENSION S@@297))
)))
(assert (forall ((x@@956 Int) (S@@298 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@298 x@@956) (|Select__T@[Int]Bool_| (_S_KeyboardAttributes__DEVICE_EXTENSIONInv S@@298) (KeyboardAttributes__DEVICE_EXTENSIONInv x@@956)))
 :qid |KbdCreateClassObjectbpl.1961:15|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]Bool_| S@@298 x@@956) (_S_KeyboardAttributes__DEVICE_EXTENSIONInv S@@298))
)))
(assert (forall ((x@@957 Int) (S@@299 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@299 x@@957) (|Select__T@[Int]Bool_| (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTES S@@299) (KeyboardIdentifier__KEYBOARD_ATTRIBUTES x@@957)))
 :qid |KbdCreateClassObjectbpl.1977:15|
 :skolemid |436|
 :pattern ( (|Select__T@[Int]Bool_| S@@299 x@@957) (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTES S@@299))
)))
(assert (forall ((x@@958 Int) (S@@300 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@300 x@@958) (|Select__T@[Int]Bool_| (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv S@@300) (KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv x@@958)))
 :qid |KbdCreateClassObjectbpl.1978:15|
 :skolemid |437|
 :pattern ( (|Select__T@[Int]Bool_| S@@300 x@@958) (_S_KeyboardIdentifier__KEYBOARD_ATTRIBUTESInv S@@300))
)))
(assert (forall ((x@@959 Int) (S@@301 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@301 x@@959) (|Select__T@[Int]Bool_| (_S_KeyboardMode__KEYBOARD_ATTRIBUTES S@@301) (KeyboardMode__KEYBOARD_ATTRIBUTES x@@959)))
 :qid |KbdCreateClassObjectbpl.1994:15|
 :skolemid |446|
 :pattern ( (|Select__T@[Int]Bool_| S@@301 x@@959) (_S_KeyboardMode__KEYBOARD_ATTRIBUTES S@@301))
)))
(assert (forall ((x@@960 Int) (S@@302 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@302 x@@960) (|Select__T@[Int]Bool_| (_S_KeyboardMode__KEYBOARD_ATTRIBUTESInv S@@302) (KeyboardMode__KEYBOARD_ATTRIBUTESInv x@@960)))
 :qid |KbdCreateClassObjectbpl.1995:15|
 :skolemid |447|
 :pattern ( (|Select__T@[Int]Bool_| S@@302 x@@960) (_S_KeyboardMode__KEYBOARD_ATTRIBUTESInv S@@302))
)))
(assert (forall ((x@@961 Int) (S@@303 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@303 x@@961) (|Select__T@[Int]Bool_| (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERS S@@303) (LedFlags__KEYBOARD_INDICATOR_PARAMETERS x@@961)))
 :qid |KbdCreateClassObjectbpl.2011:15|
 :skolemid |456|
 :pattern ( (|Select__T@[Int]Bool_| S@@303 x@@961) (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERS S@@303))
)))
(assert (forall ((x@@962 Int) (S@@304 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@304 x@@962) (|Select__T@[Int]Bool_| (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv S@@304) (LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv x@@962)))
 :qid |KbdCreateClassObjectbpl.2012:15|
 :skolemid |457|
 :pattern ( (|Select__T@[Int]Bool_| S@@304 x@@962) (_S_LedFlags__KEYBOARD_INDICATOR_PARAMETERSInv S@@304))
)))
(assert (forall ((x@@963 Int) (S@@305 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@305 x@@963) (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@305) (LegacyDeviceList__GLOBALS x@@963)))
 :qid |KbdCreateClassObjectbpl.2028:15|
 :skolemid |466|
 :pattern ( (|Select__T@[Int]Bool_| S@@305 x@@963) (_S_LegacyDeviceList__GLOBALS S@@305))
)))
(assert (forall ((x@@964 Int) (S@@306 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@306 x@@964) (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@306) (LegacyDeviceList__GLOBALSInv x@@964)))
 :qid |KbdCreateClassObjectbpl.2029:15|
 :skolemid |467|
 :pattern ( (|Select__T@[Int]Bool_| S@@306 x@@964) (_S_LegacyDeviceList__GLOBALSInv S@@306))
)))
(assert (forall ((x@@965 Int) (S@@307 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@307 x@@965) (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@307) (Length__UNICODE_STRING x@@965)))
 :qid |KbdCreateClassObjectbpl.2045:15|
 :skolemid |476|
 :pattern ( (|Select__T@[Int]Bool_| S@@307 x@@965) (_S_Length__UNICODE_STRING S@@307))
)))
(assert (forall ((x@@966 Int) (S@@308 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@308 x@@966) (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@308) (Length__UNICODE_STRINGInv x@@966)))
 :qid |KbdCreateClassObjectbpl.2046:15|
 :skolemid |477|
 :pattern ( (|Select__T@[Int]Bool_| S@@308 x@@966) (_S_Length__UNICODE_STRINGInv S@@308))
)))
(assert (forall ((x@@967 Int) (S@@309 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@309 x@@967) (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@309) (Link__DEVICE_EXTENSION x@@967)))
 :qid |KbdCreateClassObjectbpl.2062:15|
 :skolemid |486|
 :pattern ( (|Select__T@[Int]Bool_| S@@309 x@@967) (_S_Link__DEVICE_EXTENSION S@@309))
)))
(assert (forall ((x@@968 Int) (S@@310 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@310 x@@968) (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@310) (Link__DEVICE_EXTENSIONInv x@@968)))
 :qid |KbdCreateClassObjectbpl.2063:15|
 :skolemid |487|
 :pattern ( (|Select__T@[Int]Bool_| S@@310 x@@968) (_S_Link__DEVICE_EXTENSIONInv S@@310))
)))
(assert (forall ((x@@969 Int) (S@@311 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@311 x@@969) (|Select__T@[Int]Bool_| (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCK S@@311) (LockList__IO_REMOVE_LOCK_DBG_BLOCK x@@969)))
 :qid |KbdCreateClassObjectbpl.2079:15|
 :skolemid |496|
 :pattern ( (|Select__T@[Int]Bool_| S@@311 x@@969) (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCK S@@311))
)))
(assert (forall ((x@@970 Int) (S@@312 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@312 x@@970) (|Select__T@[Int]Bool_| (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCKInv S@@312) (LockList__IO_REMOVE_LOCK_DBG_BLOCKInv x@@970)))
 :qid |KbdCreateClassObjectbpl.2080:15|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Bool_| S@@312 x@@970) (_S_LockList__IO_REMOVE_LOCK_DBG_BLOCKInv S@@312))
)))
(assert (forall ((x@@971 Int) (S@@313 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@313 x@@971) (|Select__T@[Int]Bool_| (_S_Lock___unnamed_4_a97c65a1 S@@313) (Lock___unnamed_4_a97c65a1 x@@971)))
 :qid |KbdCreateClassObjectbpl.2096:15|
 :skolemid |506|
 :pattern ( (|Select__T@[Int]Bool_| S@@313 x@@971) (_S_Lock___unnamed_4_a97c65a1 S@@313))
)))
(assert (forall ((x@@972 Int) (S@@314 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@314 x@@972) (|Select__T@[Int]Bool_| (_S_Lock___unnamed_4_a97c65a1Inv S@@314) (Lock___unnamed_4_a97c65a1Inv x@@972)))
 :qid |KbdCreateClassObjectbpl.2097:15|
 :skolemid |507|
 :pattern ( (|Select__T@[Int]Bool_| S@@314 x@@972) (_S_Lock___unnamed_4_a97c65a1Inv S@@314))
)))
(assert (forall ((x@@973 Int) (S@@315 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@315 x@@973) (|Select__T@[Int]Bool_| (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK S@@315) (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK x@@973)))
 :qid |KbdCreateClassObjectbpl.2113:15|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]Bool_| S@@315 x@@973) (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK S@@315))
)))
(assert (forall ((x@@974 Int) (S@@316 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@316 x@@974) (|Select__T@[Int]Bool_| (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv S@@316) (LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv x@@974)))
 :qid |KbdCreateClassObjectbpl.2114:15|
 :skolemid |517|
 :pattern ( (|Select__T@[Int]Bool_| S@@316 x@@974) (_S_LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCKInv S@@316))
)))
(assert (forall ((x@@975 Int) (S@@317 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@317 x@@975) (|Select__T@[Int]Bool_| (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK S@@317) (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK x@@975)))
 :qid |KbdCreateClassObjectbpl.2130:15|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Bool_| S@@317 x@@975) (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK S@@317))
)))
(assert (forall ((x@@976 Int) (S@@318 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@318 x@@976) (|Select__T@[Int]Bool_| (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@318) (MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv x@@976)))
 :qid |KbdCreateClassObjectbpl.2131:15|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Bool_| S@@318 x@@976) (_S_MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCKInv S@@318))
)))
(assert (forall ((x@@977 Int) (S@@319 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@319 x@@977) (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@319) (MaximumLength__UNICODE_STRING x@@977)))
 :qid |KbdCreateClassObjectbpl.2147:15|
 :skolemid |536|
 :pattern ( (|Select__T@[Int]Bool_| S@@319 x@@977) (_S_MaximumLength__UNICODE_STRING S@@319))
)))
(assert (forall ((x@@978 Int) (S@@320 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@320 x@@978) (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@320) (MaximumLength__UNICODE_STRINGInv x@@978)))
 :qid |KbdCreateClassObjectbpl.2148:15|
 :skolemid |537|
 :pattern ( (|Select__T@[Int]Bool_| S@@320 x@@978) (_S_MaximumLength__UNICODE_STRINGInv S@@320))
)))
(assert (forall ((x@@979 Int) (S@@321 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@321 x@@979) (|Select__T@[Int]Bool_| (_S_MinDeviceWakeState__DEVICE_EXTENSION S@@321) (MinDeviceWakeState__DEVICE_EXTENSION x@@979)))
 :qid |KbdCreateClassObjectbpl.2164:15|
 :skolemid |546|
 :pattern ( (|Select__T@[Int]Bool_| S@@321 x@@979) (_S_MinDeviceWakeState__DEVICE_EXTENSION S@@321))
)))
(assert (forall ((x@@980 Int) (S@@322 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@322 x@@980) (|Select__T@[Int]Bool_| (_S_MinDeviceWakeState__DEVICE_EXTENSIONInv S@@322) (MinDeviceWakeState__DEVICE_EXTENSIONInv x@@980)))
 :qid |KbdCreateClassObjectbpl.2165:15|
 :skolemid |547|
 :pattern ( (|Select__T@[Int]Bool_| S@@322 x@@980) (_S_MinDeviceWakeState__DEVICE_EXTENSIONInv S@@322))
)))
(assert (forall ((x@@981 Int) (S@@323 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@323 x@@981) (|Select__T@[Int]Bool_| (_S_MinSystemWakeState__DEVICE_EXTENSION S@@323) (MinSystemWakeState__DEVICE_EXTENSION x@@981)))
 :qid |KbdCreateClassObjectbpl.2181:15|
 :skolemid |556|
 :pattern ( (|Select__T@[Int]Bool_| S@@323 x@@981) (_S_MinSystemWakeState__DEVICE_EXTENSION S@@323))
)))
(assert (forall ((x@@982 Int) (S@@324 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@324 x@@982) (|Select__T@[Int]Bool_| (_S_MinSystemWakeState__DEVICE_EXTENSIONInv S@@324) (MinSystemWakeState__DEVICE_EXTENSIONInv x@@982)))
 :qid |KbdCreateClassObjectbpl.2182:15|
 :skolemid |557|
 :pattern ( (|Select__T@[Int]Bool_| S@@324 x@@982) (_S_MinSystemWakeState__DEVICE_EXTENSIONInv S@@324))
)))
(assert (forall ((x@@983 Int) (S@@325 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@325 x@@983) (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@325) (Mutex__GLOBALS x@@983)))
 :qid |KbdCreateClassObjectbpl.2198:15|
 :skolemid |566|
 :pattern ( (|Select__T@[Int]Bool_| S@@325 x@@983) (_S_Mutex__GLOBALS S@@325))
)))
(assert (forall ((x@@984 Int) (S@@326 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@326 x@@984) (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@326) (Mutex__GLOBALSInv x@@984)))
 :qid |KbdCreateClassObjectbpl.2199:15|
 :skolemid |567|
 :pattern ( (|Select__T@[Int]Bool_| S@@326 x@@984) (_S_Mutex__GLOBALSInv S@@326))
)))
(assert (forall ((x@@985 Int) (S@@327 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@327 x@@985) (|Select__T@[Int]Bool_| (_S_NpxIrql___unnamed_1_29794256 S@@327) (NpxIrql___unnamed_1_29794256 x@@985)))
 :qid |KbdCreateClassObjectbpl.2215:15|
 :skolemid |576|
 :pattern ( (|Select__T@[Int]Bool_| S@@327 x@@985) (_S_NpxIrql___unnamed_1_29794256 S@@327))
)))
(assert (forall ((x@@986 Int) (S@@328 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@328 x@@986) (|Select__T@[Int]Bool_| (_S_NpxIrql___unnamed_1_29794256Inv S@@328) (NpxIrql___unnamed_1_29794256Inv x@@986)))
 :qid |KbdCreateClassObjectbpl.2216:15|
 :skolemid |577|
 :pattern ( (|Select__T@[Int]Bool_| S@@328 x@@986) (_S_NpxIrql___unnamed_1_29794256Inv S@@328))
)))
(assert (forall ((x@@987 Int) (S@@329 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@329 x@@987) (|Select__T@[Int]Bool_| (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES S@@329) (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES x@@987)))
 :qid |KbdCreateClassObjectbpl.2232:15|
 :skolemid |586|
 :pattern ( (|Select__T@[Int]Bool_| S@@329 x@@987) (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES S@@329))
)))
(assert (forall ((x@@988 Int) (S@@330 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@330 x@@988) (|Select__T@[Int]Bool_| (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv S@@330) (NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv x@@988)))
 :qid |KbdCreateClassObjectbpl.2233:15|
 :skolemid |587|
 :pattern ( (|Select__T@[Int]Bool_| S@@330 x@@988) (_S_NumberOfFunctionKeys__KEYBOARD_ATTRIBUTESInv S@@330))
)))
(assert (forall ((x@@989 Int) (S@@331 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@331 x@@989) (|Select__T@[Int]Bool_| (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTES S@@331) (NumberOfIndicators__KEYBOARD_ATTRIBUTES x@@989)))
 :qid |KbdCreateClassObjectbpl.2249:15|
 :skolemid |596|
 :pattern ( (|Select__T@[Int]Bool_| S@@331 x@@989) (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTES S@@331))
)))
(assert (forall ((x@@990 Int) (S@@332 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@332 x@@990) (|Select__T@[Int]Bool_| (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTESInv S@@332) (NumberOfIndicators__KEYBOARD_ATTRIBUTESInv x@@990)))
 :qid |KbdCreateClassObjectbpl.2250:15|
 :skolemid |597|
 :pattern ( (|Select__T@[Int]Bool_| S@@332 x@@990) (_S_NumberOfIndicators__KEYBOARD_ATTRIBUTESInv S@@332))
)))
(assert (forall ((x@@991 Int) (S@@333 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@333 x@@991) (|Select__T@[Int]Bool_| (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTES S@@333) (NumberOfKeysTotal__KEYBOARD_ATTRIBUTES x@@991)))
 :qid |KbdCreateClassObjectbpl.2266:15|
 :skolemid |606|
 :pattern ( (|Select__T@[Int]Bool_| S@@333 x@@991) (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTES S@@333))
)))
(assert (forall ((x@@992 Int) (S@@334 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@334 x@@992) (|Select__T@[Int]Bool_| (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv S@@334) (NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv x@@992)))
 :qid |KbdCreateClassObjectbpl.2267:15|
 :skolemid |607|
 :pattern ( (|Select__T@[Int]Bool_| S@@334 x@@992) (_S_NumberOfKeysTotal__KEYBOARD_ATTRIBUTESInv S@@334))
)))
(assert (forall ((x@@993 Int) (S@@335 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@335 x@@993) (|Select__T@[Int]Bool_| (_S_OkayToLogOverflow__DEVICE_EXTENSION S@@335) (OkayToLogOverflow__DEVICE_EXTENSION x@@993)))
 :qid |KbdCreateClassObjectbpl.2283:15|
 :skolemid |616|
 :pattern ( (|Select__T@[Int]Bool_| S@@335 x@@993) (_S_OkayToLogOverflow__DEVICE_EXTENSION S@@335))
)))
(assert (forall ((x@@994 Int) (S@@336 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@336 x@@994) (|Select__T@[Int]Bool_| (_S_OkayToLogOverflow__DEVICE_EXTENSIONInv S@@336) (OkayToLogOverflow__DEVICE_EXTENSIONInv x@@994)))
 :qid |KbdCreateClassObjectbpl.2284:15|
 :skolemid |617|
 :pattern ( (|Select__T@[Int]Bool_| S@@336 x@@994) (_S_OkayToLogOverflow__DEVICE_EXTENSIONInv S@@336))
)))
(assert (forall ((x@@995 Int) (S@@337 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@337 x@@995) (|Select__T@[Int]Bool_| (_S_PDO__DEVICE_EXTENSION S@@337) (PDO__DEVICE_EXTENSION x@@995)))
 :qid |KbdCreateClassObjectbpl.2300:15|
 :skolemid |626|
 :pattern ( (|Select__T@[Int]Bool_| S@@337 x@@995) (_S_PDO__DEVICE_EXTENSION S@@337))
)))
(assert (forall ((x@@996 Int) (S@@338 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@338 x@@996) (|Select__T@[Int]Bool_| (_S_PDO__DEVICE_EXTENSIONInv S@@338) (PDO__DEVICE_EXTENSIONInv x@@996)))
 :qid |KbdCreateClassObjectbpl.2301:15|
 :skolemid |627|
 :pattern ( (|Select__T@[Int]Bool_| S@@338 x@@996) (_S_PDO__DEVICE_EXTENSIONInv S@@338))
)))
(assert (forall ((x@@997 Int) (S@@339 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@339 x@@997) (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@339) (PnP__DEVICE_EXTENSION x@@997)))
 :qid |KbdCreateClassObjectbpl.2317:15|
 :skolemid |636|
 :pattern ( (|Select__T@[Int]Bool_| S@@339 x@@997) (_S_PnP__DEVICE_EXTENSION S@@339))
)))
(assert (forall ((x@@998 Int) (S@@340 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@340 x@@998) (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@340) (PnP__DEVICE_EXTENSIONInv x@@998)))
 :qid |KbdCreateClassObjectbpl.2318:15|
 :skolemid |637|
 :pattern ( (|Select__T@[Int]Bool_| S@@340 x@@998) (_S_PnP__DEVICE_EXTENSIONInv S@@340))
)))
(assert (forall ((x@@999 Int) (S@@341 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@341 x@@999) (|Select__T@[Int]Bool_| (_S_QueryWmiDataBlock__WMILIB_CONTEXT S@@341) (QueryWmiDataBlock__WMILIB_CONTEXT x@@999)))
 :qid |KbdCreateClassObjectbpl.2334:15|
 :skolemid |646|
 :pattern ( (|Select__T@[Int]Bool_| S@@341 x@@999) (_S_QueryWmiDataBlock__WMILIB_CONTEXT S@@341))
)))
(assert (forall ((x@@1000 Int) (S@@342 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@342 x@@1000) (|Select__T@[Int]Bool_| (_S_QueryWmiDataBlock__WMILIB_CONTEXTInv S@@342) (QueryWmiDataBlock__WMILIB_CONTEXTInv x@@1000)))
 :qid |KbdCreateClassObjectbpl.2335:15|
 :skolemid |647|
 :pattern ( (|Select__T@[Int]Bool_| S@@342 x@@1000) (_S_QueryWmiDataBlock__WMILIB_CONTEXTInv S@@342))
)))
(assert (forall ((x@@1001 Int) (S@@343 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@343 x@@1001) (|Select__T@[Int]Bool_| (_S_QueryWmiRegInfo__WMILIB_CONTEXT S@@343) (QueryWmiRegInfo__WMILIB_CONTEXT x@@1001)))
 :qid |KbdCreateClassObjectbpl.2351:15|
 :skolemid |656|
 :pattern ( (|Select__T@[Int]Bool_| S@@343 x@@1001) (_S_QueryWmiRegInfo__WMILIB_CONTEXT S@@343))
)))
(assert (forall ((x@@1002 Int) (S@@344 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@344 x@@1002) (|Select__T@[Int]Bool_| (_S_QueryWmiRegInfo__WMILIB_CONTEXTInv S@@344) (QueryWmiRegInfo__WMILIB_CONTEXTInv x@@1002)))
 :qid |KbdCreateClassObjectbpl.2352:15|
 :skolemid |657|
 :pattern ( (|Select__T@[Int]Bool_| S@@344 x@@1002) (_S_QueryWmiRegInfo__WMILIB_CONTEXTInv S@@344))
)))
(assert (forall ((x@@1003 Int) (S@@345 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@345 x@@1003) (|Select__T@[Int]Bool_| (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERS S@@345) (Rate__KEYBOARD_TYPEMATIC_PARAMETERS x@@1003)))
 :qid |KbdCreateClassObjectbpl.2368:15|
 :skolemid |666|
 :pattern ( (|Select__T@[Int]Bool_| S@@345 x@@1003) (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERS S@@345))
)))
(assert (forall ((x@@1004 Int) (S@@346 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@346 x@@1004) (|Select__T@[Int]Bool_| (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@346) (Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@1004)))
 :qid |KbdCreateClassObjectbpl.2369:15|
 :skolemid |667|
 :pattern ( (|Select__T@[Int]Bool_| S@@346 x@@1004) (_S_Rate__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@346))
)))
(assert (forall ((x@@1005 Int) (S@@347 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@347 x@@1005) (|Select__T@[Int]Bool_| (_S_ReadQueue__DEVICE_EXTENSION S@@347) (ReadQueue__DEVICE_EXTENSION x@@1005)))
 :qid |KbdCreateClassObjectbpl.2385:15|
 :skolemid |676|
 :pattern ( (|Select__T@[Int]Bool_| S@@347 x@@1005) (_S_ReadQueue__DEVICE_EXTENSION S@@347))
)))
(assert (forall ((x@@1006 Int) (S@@348 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@348 x@@1006) (|Select__T@[Int]Bool_| (_S_ReadQueue__DEVICE_EXTENSIONInv S@@348) (ReadQueue__DEVICE_EXTENSIONInv x@@1006)))
 :qid |KbdCreateClassObjectbpl.2386:15|
 :skolemid |677|
 :pattern ( (|Select__T@[Int]Bool_| S@@348 x@@1006) (_S_ReadQueue__DEVICE_EXTENSIONInv S@@348))
)))
(assert (forall ((x@@1007 Int) (S@@349 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@349 x@@1007) (|Select__T@[Int]Bool_| (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK S@@349) (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK x@@1007)))
 :qid |KbdCreateClassObjectbpl.2402:15|
 :skolemid |686|
 :pattern ( (|Select__T@[Int]Bool_| S@@349 x@@1007) (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK S@@349))
)))
(assert (forall ((x@@1008 Int) (S@@350 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@350 x@@1008) (|Select__T@[Int]Bool_| (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@350) (RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@1008)))
 :qid |KbdCreateClassObjectbpl.2403:15|
 :skolemid |687|
 :pattern ( (|Select__T@[Int]Bool_| S@@350 x@@1008) (_S_RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@350))
)))
(assert (forall ((x@@1009 Int) (S@@351 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@351 x@@1009) (|Select__T@[Int]Bool_| (_S_RemoveLock__DEVICE_EXTENSION S@@351) (RemoveLock__DEVICE_EXTENSION x@@1009)))
 :qid |KbdCreateClassObjectbpl.2419:15|
 :skolemid |696|
 :pattern ( (|Select__T@[Int]Bool_| S@@351 x@@1009) (_S_RemoveLock__DEVICE_EXTENSION S@@351))
)))
(assert (forall ((x@@1010 Int) (S@@352 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@352 x@@1010) (|Select__T@[Int]Bool_| (_S_RemoveLock__DEVICE_EXTENSIONInv S@@352) (RemoveLock__DEVICE_EXTENSIONInv x@@1010)))
 :qid |KbdCreateClassObjectbpl.2420:15|
 :skolemid |697|
 :pattern ( (|Select__T@[Int]Bool_| S@@352 x@@1010) (_S_RemoveLock__DEVICE_EXTENSIONInv S@@352))
)))
(assert (forall ((x@@1011 Int) (S@@353 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@353 x@@1011) (|Select__T@[Int]Bool_| (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCK S@@353) (Removed__IO_REMOVE_LOCK_COMMON_BLOCK x@@1011)))
 :qid |KbdCreateClassObjectbpl.2436:15|
 :skolemid |706|
 :pattern ( (|Select__T@[Int]Bool_| S@@353 x@@1011) (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCK S@@353))
)))
(assert (forall ((x@@1012 Int) (S@@354 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@354 x@@1012) (|Select__T@[Int]Bool_| (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@354) (Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@1012)))
 :qid |KbdCreateClassObjectbpl.2437:15|
 :skolemid |707|
 :pattern ( (|Select__T@[Int]Bool_| S@@354 x@@1012) (_S_Removed__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@354))
)))
(assert (forall ((x@@1013 Int) (S@@355 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@355 x@@1013) (|Select__T@[Int]Bool_| (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCK S@@355) (Reserved1__IO_REMOVE_LOCK_DBG_BLOCK x@@1013)))
 :qid |KbdCreateClassObjectbpl.2453:15|
 :skolemid |716|
 :pattern ( (|Select__T@[Int]Bool_| S@@355 x@@1013) (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCK S@@355))
)))
(assert (forall ((x@@1014 Int) (S@@356 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@356 x@@1014) (|Select__T@[Int]Bool_| (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv S@@356) (Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv x@@1014)))
 :qid |KbdCreateClassObjectbpl.2454:15|
 :skolemid |717|
 :pattern ( (|Select__T@[Int]Bool_| S@@356 x@@1014) (_S_Reserved1__IO_REMOVE_LOCK_DBG_BLOCKInv S@@356))
)))
(assert (forall ((x@@1015 Int) (S@@357 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@357 x@@1015) (|Select__T@[Int]Bool_| (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCK S@@357) (Reserved2__IO_REMOVE_LOCK_DBG_BLOCK x@@1015)))
 :qid |KbdCreateClassObjectbpl.2470:15|
 :skolemid |726|
 :pattern ( (|Select__T@[Int]Bool_| S@@357 x@@1015) (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCK S@@357))
)))
(assert (forall ((x@@1016 Int) (S@@358 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@358 x@@1016) (|Select__T@[Int]Bool_| (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv S@@358) (Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv x@@1016)))
 :qid |KbdCreateClassObjectbpl.2471:15|
 :skolemid |727|
 :pattern ( (|Select__T@[Int]Bool_| S@@358 x@@1016) (_S_Reserved2__IO_REMOVE_LOCK_DBG_BLOCKInv S@@358))
)))
(assert (forall ((x@@1017 Int) (S@@359 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@359 x@@1017) (|Select__T@[Int]Bool_| (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCK S@@359) (Reserved__IO_REMOVE_LOCK_COMMON_BLOCK x@@1017)))
 :qid |KbdCreateClassObjectbpl.2487:15|
 :skolemid |736|
 :pattern ( (|Select__T@[Int]Bool_| S@@359 x@@1017) (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCK S@@359))
)))
(assert (forall ((x@@1018 Int) (S@@360 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@360 x@@1018) (|Select__T@[Int]Bool_| (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@360) (Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv x@@1018)))
 :qid |KbdCreateClassObjectbpl.2488:15|
 :skolemid |737|
 :pattern ( (|Select__T@[Int]Bool_| S@@360 x@@1018) (_S_Reserved__IO_REMOVE_LOCK_COMMON_BLOCKInv S@@360))
)))
(assert (forall ((x@@1019 Int) (S@@361 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@361 x@@1019) (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@361) (Self__DEVICE_EXTENSION x@@1019)))
 :qid |KbdCreateClassObjectbpl.2504:15|
 :skolemid |746|
 :pattern ( (|Select__T@[Int]Bool_| S@@361 x@@1019) (_S_Self__DEVICE_EXTENSION S@@361))
)))
(assert (forall ((x@@1020 Int) (S@@362 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@362 x@@1020) (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@362) (Self__DEVICE_EXTENSIONInv x@@1020)))
 :qid |KbdCreateClassObjectbpl.2505:15|
 :skolemid |747|
 :pattern ( (|Select__T@[Int]Bool_| S@@362 x@@1020) (_S_Self__DEVICE_EXTENSIONInv S@@362))
)))
(assert (forall ((x@@1021 Int) (S@@363 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@363 x@@1021) (|Select__T@[Int]Bool_| (_S_SequenceNumber__DEVICE_EXTENSION S@@363) (SequenceNumber__DEVICE_EXTENSION x@@1021)))
 :qid |KbdCreateClassObjectbpl.2521:15|
 :skolemid |756|
 :pattern ( (|Select__T@[Int]Bool_| S@@363 x@@1021) (_S_SequenceNumber__DEVICE_EXTENSION S@@363))
)))
(assert (forall ((x@@1022 Int) (S@@364 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@364 x@@1022) (|Select__T@[Int]Bool_| (_S_SequenceNumber__DEVICE_EXTENSIONInv S@@364) (SequenceNumber__DEVICE_EXTENSIONInv x@@1022)))
 :qid |KbdCreateClassObjectbpl.2522:15|
 :skolemid |757|
 :pattern ( (|Select__T@[Int]Bool_| S@@364 x@@1022) (_S_SequenceNumber__DEVICE_EXTENSIONInv S@@364))
)))
(assert (forall ((x@@1023 Int) (S@@365 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@365 x@@1023) (|Select__T@[Int]Bool_| (_S_SetWmiDataBlock__WMILIB_CONTEXT S@@365) (SetWmiDataBlock__WMILIB_CONTEXT x@@1023)))
 :qid |KbdCreateClassObjectbpl.2538:15|
 :skolemid |766|
 :pattern ( (|Select__T@[Int]Bool_| S@@365 x@@1023) (_S_SetWmiDataBlock__WMILIB_CONTEXT S@@365))
)))
(assert (forall ((x@@1024 Int) (S@@366 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@366 x@@1024) (|Select__T@[Int]Bool_| (_S_SetWmiDataBlock__WMILIB_CONTEXTInv S@@366) (SetWmiDataBlock__WMILIB_CONTEXTInv x@@1024)))
 :qid |KbdCreateClassObjectbpl.2539:15|
 :skolemid |767|
 :pattern ( (|Select__T@[Int]Bool_| S@@366 x@@1024) (_S_SetWmiDataBlock__WMILIB_CONTEXTInv S@@366))
)))
(assert (forall ((x@@1025 Int) (S@@367 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@367 x@@1025) (|Select__T@[Int]Bool_| (_S_SetWmiDataItem__WMILIB_CONTEXT S@@367) (SetWmiDataItem__WMILIB_CONTEXT x@@1025)))
 :qid |KbdCreateClassObjectbpl.2555:15|
 :skolemid |776|
 :pattern ( (|Select__T@[Int]Bool_| S@@367 x@@1025) (_S_SetWmiDataItem__WMILIB_CONTEXT S@@367))
)))
(assert (forall ((x@@1026 Int) (S@@368 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@368 x@@1026) (|Select__T@[Int]Bool_| (_S_SetWmiDataItem__WMILIB_CONTEXTInv S@@368) (SetWmiDataItem__WMILIB_CONTEXTInv x@@1026)))
 :qid |KbdCreateClassObjectbpl.2556:15|
 :skolemid |777|
 :pattern ( (|Select__T@[Int]Bool_| S@@368 x@@1026) (_S_SetWmiDataItem__WMILIB_CONTEXTInv S@@368))
)))
(assert (forall ((x@@1027 Int) (S@@369 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@369 x@@1027) (|Select__T@[Int]Bool_| (_S_SignalState__DISPATCHER_HEADER S@@369) (SignalState__DISPATCHER_HEADER x@@1027)))
 :qid |KbdCreateClassObjectbpl.2572:15|
 :skolemid |786|
 :pattern ( (|Select__T@[Int]Bool_| S@@369 x@@1027) (_S_SignalState__DISPATCHER_HEADER S@@369))
)))
(assert (forall ((x@@1028 Int) (S@@370 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@370 x@@1028) (|Select__T@[Int]Bool_| (_S_SignalState__DISPATCHER_HEADERInv S@@370) (SignalState__DISPATCHER_HEADERInv x@@1028)))
 :qid |KbdCreateClassObjectbpl.2573:15|
 :skolemid |787|
 :pattern ( (|Select__T@[Int]Bool_| S@@370 x@@1028) (_S_SignalState__DISPATCHER_HEADERInv S@@370))
)))
(assert (forall ((x@@1029 Int) (S@@371 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@371 x@@1029) (|Select__T@[Int]Bool_| (_S_Signalling___unnamed_1_29794256 S@@371) (Signalling___unnamed_1_29794256 x@@1029)))
 :qid |KbdCreateClassObjectbpl.2589:15|
 :skolemid |796|
 :pattern ( (|Select__T@[Int]Bool_| S@@371 x@@1029) (_S_Signalling___unnamed_1_29794256 S@@371))
)))
(assert (forall ((x@@1030 Int) (S@@372 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@372 x@@1030) (|Select__T@[Int]Bool_| (_S_Signalling___unnamed_1_29794256Inv S@@372) (Signalling___unnamed_1_29794256Inv x@@1030)))
 :qid |KbdCreateClassObjectbpl.2590:15|
 :skolemid |797|
 :pattern ( (|Select__T@[Int]Bool_| S@@372 x@@1030) (_S_Signalling___unnamed_1_29794256Inv S@@372))
)))
(assert (forall ((x@@1031 Int) (S@@373 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@373 x@@1031) (|Select__T@[Int]Bool_| (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCK S@@373) (Signature__IO_REMOVE_LOCK_DBG_BLOCK x@@1031)))
 :qid |KbdCreateClassObjectbpl.2606:15|
 :skolemid |806|
 :pattern ( (|Select__T@[Int]Bool_| S@@373 x@@1031) (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCK S@@373))
)))
(assert (forall ((x@@1032 Int) (S@@374 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@374 x@@1032) (|Select__T@[Int]Bool_| (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCKInv S@@374) (Signature__IO_REMOVE_LOCK_DBG_BLOCKInv x@@1032)))
 :qid |KbdCreateClassObjectbpl.2607:15|
 :skolemid |807|
 :pattern ( (|Select__T@[Int]Bool_| S@@374 x@@1032) (_S_Signature__IO_REMOVE_LOCK_DBG_BLOCKInv S@@374))
)))
(assert (forall ((x@@1033 Int) (S@@375 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@375 x@@1033) (|Select__T@[Int]Bool_| (_S_Size___unnamed_1_2ef8da39 S@@375) (Size___unnamed_1_2ef8da39 x@@1033)))
 :qid |KbdCreateClassObjectbpl.2623:15|
 :skolemid |816|
 :pattern ( (|Select__T@[Int]Bool_| S@@375 x@@1033) (_S_Size___unnamed_1_2ef8da39 S@@375))
)))
(assert (forall ((x@@1034 Int) (S@@376 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@376 x@@1034) (|Select__T@[Int]Bool_| (_S_Size___unnamed_1_2ef8da39Inv S@@376) (Size___unnamed_1_2ef8da39Inv x@@1034)))
 :qid |KbdCreateClassObjectbpl.2624:15|
 :skolemid |817|
 :pattern ( (|Select__T@[Int]Bool_| S@@376 x@@1034) (_S_Size___unnamed_1_2ef8da39Inv S@@376))
)))
(assert (forall ((x@@1035 Int) (S@@377 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@377 x@@1035) (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSION S@@377) (SpinLock__DEVICE_EXTENSION x@@1035)))
 :qid |KbdCreateClassObjectbpl.2640:15|
 :skolemid |826|
 :pattern ( (|Select__T@[Int]Bool_| S@@377 x@@1035) (_S_SpinLock__DEVICE_EXTENSION S@@377))
)))
(assert (forall ((x@@1036 Int) (S@@378 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@378 x@@1036) (|Select__T@[Int]Bool_| (_S_SpinLock__DEVICE_EXTENSIONInv S@@378) (SpinLock__DEVICE_EXTENSIONInv x@@1036)))
 :qid |KbdCreateClassObjectbpl.2641:15|
 :skolemid |827|
 :pattern ( (|Select__T@[Int]Bool_| S@@378 x@@1036) (_S_SpinLock__DEVICE_EXTENSIONInv S@@378))
)))
(assert (forall ((x@@1037 Int) (S@@379 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@379 x@@1037) (|Select__T@[Int]Bool_| (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCK S@@379) (Spin__IO_REMOVE_LOCK_DBG_BLOCK x@@1037)))
 :qid |KbdCreateClassObjectbpl.2657:15|
 :skolemid |836|
 :pattern ( (|Select__T@[Int]Bool_| S@@379 x@@1037) (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCK S@@379))
)))
(assert (forall ((x@@1038 Int) (S@@380 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@380 x@@1038) (|Select__T@[Int]Bool_| (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCKInv S@@380) (Spin__IO_REMOVE_LOCK_DBG_BLOCKInv x@@1038)))
 :qid |KbdCreateClassObjectbpl.2658:15|
 :skolemid |837|
 :pattern ( (|Select__T@[Int]Bool_| S@@380 x@@1038) (_S_Spin__IO_REMOVE_LOCK_DBG_BLOCKInv S@@380))
)))
(assert (forall ((x@@1039 Int) (S@@381 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@381 x@@1039) (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@381) (Started__DEVICE_EXTENSION x@@1039)))
 :qid |KbdCreateClassObjectbpl.2674:15|
 :skolemid |846|
 :pattern ( (|Select__T@[Int]Bool_| S@@381 x@@1039) (_S_Started__DEVICE_EXTENSION S@@381))
)))
(assert (forall ((x@@1040 Int) (S@@382 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@382 x@@1040) (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@382) (Started__DEVICE_EXTENSIONInv x@@1040)))
 :qid |KbdCreateClassObjectbpl.2675:15|
 :skolemid |847|
 :pattern ( (|Select__T@[Int]Bool_| S@@382 x@@1040) (_S_Started__DEVICE_EXTENSIONInv S@@382))
)))
(assert (forall ((x@@1041 Int) (S@@383 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@383 x@@1041) (|Select__T@[Int]Bool_| (_S_Subtype__KEYBOARD_ID S@@383) (Subtype__KEYBOARD_ID x@@1041)))
 :qid |KbdCreateClassObjectbpl.2691:15|
 :skolemid |856|
 :pattern ( (|Select__T@[Int]Bool_| S@@383 x@@1041) (_S_Subtype__KEYBOARD_ID S@@383))
)))
(assert (forall ((x@@1042 Int) (S@@384 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@384 x@@1042) (|Select__T@[Int]Bool_| (_S_Subtype__KEYBOARD_IDInv S@@384) (Subtype__KEYBOARD_IDInv x@@1042)))
 :qid |KbdCreateClassObjectbpl.2692:15|
 :skolemid |857|
 :pattern ( (|Select__T@[Int]Bool_| S@@384 x@@1042) (_S_Subtype__KEYBOARD_IDInv S@@384))
)))
(assert (forall ((x@@1043 Int) (S@@385 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@385 x@@1043) (|Select__T@[Int]Bool_| (_S_SurpriseRemoved__DEVICE_EXTENSION S@@385) (SurpriseRemoved__DEVICE_EXTENSION x@@1043)))
 :qid |KbdCreateClassObjectbpl.2708:15|
 :skolemid |866|
 :pattern ( (|Select__T@[Int]Bool_| S@@385 x@@1043) (_S_SurpriseRemoved__DEVICE_EXTENSION S@@385))
)))
(assert (forall ((x@@1044 Int) (S@@386 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@386 x@@1044) (|Select__T@[Int]Bool_| (_S_SurpriseRemoved__DEVICE_EXTENSIONInv S@@386) (SurpriseRemoved__DEVICE_EXTENSIONInv x@@1044)))
 :qid |KbdCreateClassObjectbpl.2709:15|
 :skolemid |867|
 :pattern ( (|Select__T@[Int]Bool_| S@@386 x@@1044) (_S_SurpriseRemoved__DEVICE_EXTENSIONInv S@@386))
)))
(assert (forall ((x@@1045 Int) (S@@387 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@387 x@@1045) (|Select__T@[Int]Bool_| (_S_SymbolicLinkName__DEVICE_EXTENSION S@@387) (SymbolicLinkName__DEVICE_EXTENSION x@@1045)))
 :qid |KbdCreateClassObjectbpl.2725:15|
 :skolemid |876|
 :pattern ( (|Select__T@[Int]Bool_| S@@387 x@@1045) (_S_SymbolicLinkName__DEVICE_EXTENSION S@@387))
)))
(assert (forall ((x@@1046 Int) (S@@388 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@388 x@@1046) (|Select__T@[Int]Bool_| (_S_SymbolicLinkName__DEVICE_EXTENSIONInv S@@388) (SymbolicLinkName__DEVICE_EXTENSIONInv x@@1046)))
 :qid |KbdCreateClassObjectbpl.2726:15|
 :skolemid |877|
 :pattern ( (|Select__T@[Int]Bool_| S@@388 x@@1046) (_S_SymbolicLinkName__DEVICE_EXTENSIONInv S@@388))
)))
(assert (forall ((x@@1047 Int) (S@@389 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@389 x@@1047) (|Select__T@[Int]Bool_| (_S_SystemState__DEVICE_EXTENSION S@@389) (SystemState__DEVICE_EXTENSION x@@1047)))
 :qid |KbdCreateClassObjectbpl.2742:15|
 :skolemid |886|
 :pattern ( (|Select__T@[Int]Bool_| S@@389 x@@1047) (_S_SystemState__DEVICE_EXTENSION S@@389))
)))
(assert (forall ((x@@1048 Int) (S@@390 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@390 x@@1048) (|Select__T@[Int]Bool_| (_S_SystemState__DEVICE_EXTENSIONInv S@@390) (SystemState__DEVICE_EXTENSIONInv x@@1048)))
 :qid |KbdCreateClassObjectbpl.2743:15|
 :skolemid |887|
 :pattern ( (|Select__T@[Int]Bool_| S@@390 x@@1048) (_S_SystemState__DEVICE_EXTENSIONInv S@@390))
)))
(assert (forall ((x@@1049 Int) (S@@391 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@391 x@@1049) (|Select__T@[Int]Bool_| (_S_SystemToDeviceState__DEVICE_EXTENSION S@@391) (SystemToDeviceState__DEVICE_EXTENSION x@@1049)))
 :qid |KbdCreateClassObjectbpl.2759:15|
 :skolemid |896|
 :pattern ( (|Select__T@[Int]Bool_| S@@391 x@@1049) (_S_SystemToDeviceState__DEVICE_EXTENSION S@@391))
)))
(assert (forall ((x@@1050 Int) (S@@392 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@392 x@@1050) (|Select__T@[Int]Bool_| (_S_SystemToDeviceState__DEVICE_EXTENSIONInv S@@392) (SystemToDeviceState__DEVICE_EXTENSIONInv x@@1050)))
 :qid |KbdCreateClassObjectbpl.2760:15|
 :skolemid |897|
 :pattern ( (|Select__T@[Int]Bool_| S@@392 x@@1050) (_S_SystemToDeviceState__DEVICE_EXTENSIONInv S@@392))
)))
(assert (forall ((x@@1051 Int) (S@@393 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@393 x@@1051) (|Select__T@[Int]Bool_| (_S_TargetNotifyHandle__DEVICE_EXTENSION S@@393) (TargetNotifyHandle__DEVICE_EXTENSION x@@1051)))
 :qid |KbdCreateClassObjectbpl.2776:15|
 :skolemid |906|
 :pattern ( (|Select__T@[Int]Bool_| S@@393 x@@1051) (_S_TargetNotifyHandle__DEVICE_EXTENSION S@@393))
)))
(assert (forall ((x@@1052 Int) (S@@394 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@394 x@@1052) (|Select__T@[Int]Bool_| (_S_TargetNotifyHandle__DEVICE_EXTENSIONInv S@@394) (TargetNotifyHandle__DEVICE_EXTENSIONInv x@@1052)))
 :qid |KbdCreateClassObjectbpl.2777:15|
 :skolemid |907|
 :pattern ( (|Select__T@[Int]Bool_| S@@394 x@@1052) (_S_TargetNotifyHandle__DEVICE_EXTENSIONInv S@@394))
)))
(assert (forall ((x@@1053 Int) (S@@395 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@395 x@@1053) (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@395) (TopPort__DEVICE_EXTENSION x@@1053)))
 :qid |KbdCreateClassObjectbpl.2793:15|
 :skolemid |916|
 :pattern ( (|Select__T@[Int]Bool_| S@@395 x@@1053) (_S_TopPort__DEVICE_EXTENSION S@@395))
)))
(assert (forall ((x@@1054 Int) (S@@396 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@396 x@@1054) (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@396) (TopPort__DEVICE_EXTENSIONInv x@@1054)))
 :qid |KbdCreateClassObjectbpl.2794:15|
 :skolemid |917|
 :pattern ( (|Select__T@[Int]Bool_| S@@396 x@@1054) (_S_TopPort__DEVICE_EXTENSIONInv S@@396))
)))
(assert (forall ((x@@1055 Int) (S@@397 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@397 x@@1055) (|Select__T@[Int]Bool_| (_S_TrueClassDevice__DEVICE_EXTENSION S@@397) (TrueClassDevice__DEVICE_EXTENSION x@@1055)))
 :qid |KbdCreateClassObjectbpl.2810:15|
 :skolemid |926|
 :pattern ( (|Select__T@[Int]Bool_| S@@397 x@@1055) (_S_TrueClassDevice__DEVICE_EXTENSION S@@397))
)))
(assert (forall ((x@@1056 Int) (S@@398 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@398 x@@1056) (|Select__T@[Int]Bool_| (_S_TrueClassDevice__DEVICE_EXTENSIONInv S@@398) (TrueClassDevice__DEVICE_EXTENSIONInv x@@1056)))
 :qid |KbdCreateClassObjectbpl.2811:15|
 :skolemid |927|
 :pattern ( (|Select__T@[Int]Bool_| S@@398 x@@1056) (_S_TrueClassDevice__DEVICE_EXTENSIONInv S@@398))
)))
(assert (forall ((x@@1057 Int) (S@@399 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@399 x@@1057) (|Select__T@[Int]Bool_| (_S_TrustedSubsystemCount__DEVICE_EXTENSION S@@399) (TrustedSubsystemCount__DEVICE_EXTENSION x@@1057)))
 :qid |KbdCreateClassObjectbpl.2827:15|
 :skolemid |936|
 :pattern ( (|Select__T@[Int]Bool_| S@@399 x@@1057) (_S_TrustedSubsystemCount__DEVICE_EXTENSION S@@399))
)))
(assert (forall ((x@@1058 Int) (S@@400 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@400 x@@1058) (|Select__T@[Int]Bool_| (_S_TrustedSubsystemCount__DEVICE_EXTENSIONInv S@@400) (TrustedSubsystemCount__DEVICE_EXTENSIONInv x@@1058)))
 :qid |KbdCreateClassObjectbpl.2828:15|
 :skolemid |937|
 :pattern ( (|Select__T@[Int]Bool_| S@@400 x@@1058) (_S_TrustedSubsystemCount__DEVICE_EXTENSIONInv S@@400))
)))
(assert (forall ((x@@1059 Int) (S@@401 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@401 x@@1059) (|Select__T@[Int]Bool_| (_S_Type__KEYBOARD_ID S@@401) (Type__KEYBOARD_ID x@@1059)))
 :qid |KbdCreateClassObjectbpl.2844:15|
 :skolemid |946|
 :pattern ( (|Select__T@[Int]Bool_| S@@401 x@@1059) (_S_Type__KEYBOARD_ID S@@401))
)))
(assert (forall ((x@@1060 Int) (S@@402 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@402 x@@1060) (|Select__T@[Int]Bool_| (_S_Type__KEYBOARD_IDInv S@@402) (Type__KEYBOARD_IDInv x@@1060)))
 :qid |KbdCreateClassObjectbpl.2845:15|
 :skolemid |947|
 :pattern ( (|Select__T@[Int]Bool_| S@@402 x@@1060) (_S_Type__KEYBOARD_IDInv S@@402))
)))
(assert (forall ((x@@1061 Int) (S@@403 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@403 x@@1061) (|Select__T@[Int]Bool_| (_S_Type___unnamed_4_5ca00198 S@@403) (Type___unnamed_4_5ca00198 x@@1061)))
 :qid |KbdCreateClassObjectbpl.2861:15|
 :skolemid |956|
 :pattern ( (|Select__T@[Int]Bool_| S@@403 x@@1061) (_S_Type___unnamed_4_5ca00198 S@@403))
)))
(assert (forall ((x@@1062 Int) (S@@404 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@404 x@@1062) (|Select__T@[Int]Bool_| (_S_Type___unnamed_4_5ca00198Inv S@@404) (Type___unnamed_4_5ca00198Inv x@@1062)))
 :qid |KbdCreateClassObjectbpl.2862:15|
 :skolemid |957|
 :pattern ( (|Select__T@[Int]Bool_| S@@404 x@@1062) (_S_Type___unnamed_4_5ca00198Inv S@@404))
)))
(assert (forall ((x@@1063 Int) (S@@405 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@405 x@@1063) (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@405) (UnitId__DEVICE_EXTENSION x@@1063)))
 :qid |KbdCreateClassObjectbpl.2878:15|
 :skolemid |966|
 :pattern ( (|Select__T@[Int]Bool_| S@@405 x@@1063) (_S_UnitId__DEVICE_EXTENSION S@@405))
)))
(assert (forall ((x@@1064 Int) (S@@406 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@406 x@@1064) (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@406) (UnitId__DEVICE_EXTENSIONInv x@@1064)))
 :qid |KbdCreateClassObjectbpl.2879:15|
 :skolemid |967|
 :pattern ( (|Select__T@[Int]Bool_| S@@406 x@@1064) (_S_UnitId__DEVICE_EXTENSIONInv S@@406))
)))
(assert (forall ((x@@1065 Int) (S@@407 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@407 x@@1065) (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERS S@@407) (UnitId__KEYBOARD_INDICATOR_PARAMETERS x@@1065)))
 :qid |KbdCreateClassObjectbpl.2895:15|
 :skolemid |976|
 :pattern ( (|Select__T@[Int]Bool_| S@@407 x@@1065) (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERS S@@407))
)))
(assert (forall ((x@@1066 Int) (S@@408 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@408 x@@1066) (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERSInv S@@408) (UnitId__KEYBOARD_INDICATOR_PARAMETERSInv x@@1066)))
 :qid |KbdCreateClassObjectbpl.2896:15|
 :skolemid |977|
 :pattern ( (|Select__T@[Int]Bool_| S@@408 x@@1066) (_S_UnitId__KEYBOARD_INDICATOR_PARAMETERSInv S@@408))
)))
(assert (forall ((x@@1067 Int) (S@@409 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@409 x@@1067) (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERS S@@409) (UnitId__KEYBOARD_TYPEMATIC_PARAMETERS x@@1067)))
 :qid |KbdCreateClassObjectbpl.2912:15|
 :skolemid |986|
 :pattern ( (|Select__T@[Int]Bool_| S@@409 x@@1067) (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERS S@@409))
)))
(assert (forall ((x@@1068 Int) (S@@410 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@410 x@@1068) (|Select__T@[Int]Bool_| (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@410) (UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv x@@1068)))
 :qid |KbdCreateClassObjectbpl.2913:15|
 :skolemid |987|
 :pattern ( (|Select__T@[Int]Bool_| S@@410 x@@1068) (_S_UnitId__KEYBOARD_TYPEMATIC_PARAMETERSInv S@@410))
)))
(assert (forall ((x@@1069 Int) (S@@411 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@411 x@@1069) (|Select__T@[Int]Bool_| (_S_WaitListHead__DISPATCHER_HEADER S@@411) (WaitListHead__DISPATCHER_HEADER x@@1069)))
 :qid |KbdCreateClassObjectbpl.2929:15|
 :skolemid |996|
 :pattern ( (|Select__T@[Int]Bool_| S@@411 x@@1069) (_S_WaitListHead__DISPATCHER_HEADER S@@411))
)))
(assert (forall ((x@@1070 Int) (S@@412 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@412 x@@1070) (|Select__T@[Int]Bool_| (_S_WaitListHead__DISPATCHER_HEADERInv S@@412) (WaitListHead__DISPATCHER_HEADERInv x@@1070)))
 :qid |KbdCreateClassObjectbpl.2930:15|
 :skolemid |997|
 :pattern ( (|Select__T@[Int]Bool_| S@@412 x@@1070) (_S_WaitListHead__DISPATCHER_HEADERInv S@@412))
)))
(assert (forall ((x@@1071 Int) (S@@413 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@413 x@@1071) (|Select__T@[Int]Bool_| (_S_WaitWakeEnabled__DEVICE_EXTENSION S@@413) (WaitWakeEnabled__DEVICE_EXTENSION x@@1071)))
 :qid |KbdCreateClassObjectbpl.2946:15|
 :skolemid |1006|
 :pattern ( (|Select__T@[Int]Bool_| S@@413 x@@1071) (_S_WaitWakeEnabled__DEVICE_EXTENSION S@@413))
)))
(assert (forall ((x@@1072 Int) (S@@414 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@414 x@@1072) (|Select__T@[Int]Bool_| (_S_WaitWakeEnabled__DEVICE_EXTENSIONInv S@@414) (WaitWakeEnabled__DEVICE_EXTENSIONInv x@@1072)))
 :qid |KbdCreateClassObjectbpl.2947:15|
 :skolemid |1007|
 :pattern ( (|Select__T@[Int]Bool_| S@@414 x@@1072) (_S_WaitWakeEnabled__DEVICE_EXTENSIONInv S@@414))
)))
(assert (forall ((x@@1073 Int) (S@@415 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@415 x@@1073) (|Select__T@[Int]Bool_| (_S_WaitWakeIrp__DEVICE_EXTENSION S@@415) (WaitWakeIrp__DEVICE_EXTENSION x@@1073)))
 :qid |KbdCreateClassObjectbpl.2963:15|
 :skolemid |1016|
 :pattern ( (|Select__T@[Int]Bool_| S@@415 x@@1073) (_S_WaitWakeIrp__DEVICE_EXTENSION S@@415))
)))
(assert (forall ((x@@1074 Int) (S@@416 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@416 x@@1074) (|Select__T@[Int]Bool_| (_S_WaitWakeIrp__DEVICE_EXTENSIONInv S@@416) (WaitWakeIrp__DEVICE_EXTENSIONInv x@@1074)))
 :qid |KbdCreateClassObjectbpl.2964:15|
 :skolemid |1017|
 :pattern ( (|Select__T@[Int]Bool_| S@@416 x@@1074) (_S_WaitWakeIrp__DEVICE_EXTENSIONInv S@@416))
)))
(assert (forall ((x@@1075 Int) (S@@417 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@417 x@@1075) (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@417) (WaitWakeSpinLock__DEVICE_EXTENSION x@@1075)))
 :qid |KbdCreateClassObjectbpl.2980:15|
 :skolemid |1026|
 :pattern ( (|Select__T@[Int]Bool_| S@@417 x@@1075) (_S_WaitWakeSpinLock__DEVICE_EXTENSION S@@417))
)))
(assert (forall ((x@@1076 Int) (S@@418 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@418 x@@1076) (|Select__T@[Int]Bool_| (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@418) (WaitWakeSpinLock__DEVICE_EXTENSIONInv x@@1076)))
 :qid |KbdCreateClassObjectbpl.2981:15|
 :skolemid |1027|
 :pattern ( (|Select__T@[Int]Bool_| S@@418 x@@1076) (_S_WaitWakeSpinLock__DEVICE_EXTENSIONInv S@@418))
)))
(assert (forall ((x@@1077 Int) (S@@419 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@419 x@@1077) (|Select__T@[Int]Bool_| (_S_WmiFunctionControl__WMILIB_CONTEXT S@@419) (WmiFunctionControl__WMILIB_CONTEXT x@@1077)))
 :qid |KbdCreateClassObjectbpl.2997:15|
 :skolemid |1036|
 :pattern ( (|Select__T@[Int]Bool_| S@@419 x@@1077) (_S_WmiFunctionControl__WMILIB_CONTEXT S@@419))
)))
(assert (forall ((x@@1078 Int) (S@@420 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@420 x@@1078) (|Select__T@[Int]Bool_| (_S_WmiFunctionControl__WMILIB_CONTEXTInv S@@420) (WmiFunctionControl__WMILIB_CONTEXTInv x@@1078)))
 :qid |KbdCreateClassObjectbpl.2998:15|
 :skolemid |1037|
 :pattern ( (|Select__T@[Int]Bool_| S@@420 x@@1078) (_S_WmiFunctionControl__WMILIB_CONTEXTInv S@@420))
)))
(assert (forall ((x@@1079 Int) (S@@421 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@421 x@@1079) (|Select__T@[Int]Bool_| (_S_WmiLibInfo__DEVICE_EXTENSION S@@421) (WmiLibInfo__DEVICE_EXTENSION x@@1079)))
 :qid |KbdCreateClassObjectbpl.3014:15|
 :skolemid |1046|
 :pattern ( (|Select__T@[Int]Bool_| S@@421 x@@1079) (_S_WmiLibInfo__DEVICE_EXTENSION S@@421))
)))
(assert (forall ((x@@1080 Int) (S@@422 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@422 x@@1080) (|Select__T@[Int]Bool_| (_S_WmiLibInfo__DEVICE_EXTENSIONInv S@@422) (WmiLibInfo__DEVICE_EXTENSIONInv x@@1080)))
 :qid |KbdCreateClassObjectbpl.3015:15|
 :skolemid |1047|
 :pattern ( (|Select__T@[Int]Bool_| S@@422 x@@1080) (_S_WmiLibInfo__DEVICE_EXTENSIONInv S@@422))
)))
(assert (forall ((x@@1081 Int) (S@@423 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@423 x@@1081) (|Select__T@[Int]Bool_| (_S___unnamed_1_29794256___unnamed_4_5ca00198 S@@423) (__unnamed_1_29794256___unnamed_4_5ca00198 x@@1081)))
 :qid |KbdCreateClassObjectbpl.3031:15|
 :skolemid |1056|
 :pattern ( (|Select__T@[Int]Bool_| S@@423 x@@1081) (_S___unnamed_1_29794256___unnamed_4_5ca00198 S@@423))
)))
(assert (forall ((x@@1082 Int) (S@@424 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@424 x@@1082) (|Select__T@[Int]Bool_| (_S___unnamed_1_29794256___unnamed_4_5ca00198Inv S@@424) (__unnamed_1_29794256___unnamed_4_5ca00198Inv x@@1082)))
 :qid |KbdCreateClassObjectbpl.3032:15|
 :skolemid |1057|
 :pattern ( (|Select__T@[Int]Bool_| S@@424 x@@1082) (_S___unnamed_1_29794256___unnamed_4_5ca00198Inv S@@424))
)))
(assert (forall ((x@@1083 Int) (S@@425 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@425 x@@1083) (|Select__T@[Int]Bool_| (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198 S@@425) (__unnamed_1_2dc63b48___unnamed_4_5ca00198 x@@1083)))
 :qid |KbdCreateClassObjectbpl.3048:15|
 :skolemid |1066|
 :pattern ( (|Select__T@[Int]Bool_| S@@425 x@@1083) (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198 S@@425))
)))
(assert (forall ((x@@1084 Int) (S@@426 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@426 x@@1084) (|Select__T@[Int]Bool_| (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198Inv S@@426) (__unnamed_1_2dc63b48___unnamed_4_5ca00198Inv x@@1084)))
 :qid |KbdCreateClassObjectbpl.3049:15|
 :skolemid |1067|
 :pattern ( (|Select__T@[Int]Bool_| S@@426 x@@1084) (_S___unnamed_1_2dc63b48___unnamed_4_5ca00198Inv S@@426))
)))
(assert (forall ((x@@1085 Int) (S@@427 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@427 x@@1085) (|Select__T@[Int]Bool_| (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198 S@@427) (__unnamed_1_2ef8da39___unnamed_4_5ca00198 x@@1085)))
 :qid |KbdCreateClassObjectbpl.3065:15|
 :skolemid |1076|
 :pattern ( (|Select__T@[Int]Bool_| S@@427 x@@1085) (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198 S@@427))
)))
(assert (forall ((x@@1086 Int) (S@@428 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@428 x@@1086) (|Select__T@[Int]Bool_| (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198Inv S@@428) (__unnamed_1_2ef8da39___unnamed_4_5ca00198Inv x@@1086)))
 :qid |KbdCreateClassObjectbpl.3066:15|
 :skolemid |1077|
 :pattern ( (|Select__T@[Int]Bool_| S@@428 x@@1086) (_S___unnamed_1_2ef8da39___unnamed_4_5ca00198Inv S@@428))
)))
(assert (forall ((x@@1087 Int) (S@@429 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@429 x@@1087) (|Select__T@[Int]Bool_| (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1 S@@429) (__unnamed_4_5ca00198___unnamed_4_a97c65a1 x@@1087)))
 :qid |KbdCreateClassObjectbpl.3082:15|
 :skolemid |1086|
 :pattern ( (|Select__T@[Int]Bool_| S@@429 x@@1087) (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1 S@@429))
)))
(assert (forall ((x@@1088 Int) (S@@430 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@430 x@@1088) (|Select__T@[Int]Bool_| (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1Inv S@@430) (__unnamed_4_5ca00198___unnamed_4_a97c65a1Inv x@@1088)))
 :qid |KbdCreateClassObjectbpl.3083:15|
 :skolemid |1087|
 :pattern ( (|Select__T@[Int]Bool_| S@@430 x@@1088) (_S___unnamed_4_5ca00198___unnamed_4_a97c65a1Inv S@@430))
)))
(assert (forall ((x@@1089 Int) (S@@431 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@431 x@@1089) (|Select__T@[Int]Bool_| (_S___unnamed_4_a97c65a1__DISPATCHER_HEADER S@@431) (__unnamed_4_a97c65a1__DISPATCHER_HEADER x@@1089)))
 :qid |KbdCreateClassObjectbpl.3099:15|
 :skolemid |1096|
 :pattern ( (|Select__T@[Int]Bool_| S@@431 x@@1089) (_S___unnamed_4_a97c65a1__DISPATCHER_HEADER S@@431))
)))
(assert (forall ((x@@1090 Int) (S@@432 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@432 x@@1090) (|Select__T@[Int]Bool_| (_S___unnamed_4_a97c65a1__DISPATCHER_HEADERInv S@@432) (__unnamed_4_a97c65a1__DISPATCHER_HEADERInv x@@1090)))
 :qid |KbdCreateClassObjectbpl.3100:15|
 :skolemid |1097|
 :pattern ( (|Select__T@[Int]Bool_| S@@432 x@@1090) (_S___unnamed_4_a97c65a1__DISPATCHER_HEADERInv S@@432))
)))
(assert (forall ((x@@1091 Int) ) (! (|Select__T@[Int]Bool_| SetTrue x@@1091)
 :qid |KbdCreateClassObjectbpl.67:14|
 :skolemid |12|
)))
(assert (forall ((x@@1092 Int) (y@@16 Int) (S@@433 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@433 x@@1092) (Equal (Intersection (Inverse M@@4 (|Select__T@[Int]Int_| M@@4 x@@1092)) S@@433) (Singleton x@@1092))) (Equal (Dereference S@@433 (|Store__T@[Int]Int_| M@@4 x@@1092 y@@16)) (Union (Difference (Dereference S@@433 M@@4) (Singleton (|Select__T@[Int]Int_| M@@4 x@@1092))) (Singleton y@@16))))
 :qid |KbdCreateClassObjectbpl.93:14|
 :skolemid |33|
 :pattern ( (Dereference S@@433 (|Store__T@[Int]Int_| M@@4 x@@1092 y@@16)))
)))
(assert (forall ((x@@1093 Int) ) (!  (not (|Select__T@[Int]Bool_| Empty x@@1093))
 :qid |KbdCreateClassObjectbpl.65:14|
 :skolemid |11|
)))
(assert (forall ((f@@15 |T@[Int]Int|) (x@@1094 Int) (y@@17 Int) ) (! (Equal (Inverse (|Store__T@[Int]Int_| f@@15 x@@1094 y@@17) y@@17) (Union (Inverse f@@15 y@@17) (Singleton x@@1094)))
 :qid |KbdCreateClassObjectbpl.86:14|
 :skolemid |27|
 :pattern ( (Inverse (|Store__T@[Int]Int_| f@@15 x@@1094 y@@17) y@@17))
)))
(assert (forall ((f@@16 |T@[Int]Int|) (x@@1095 Int) (y@@18 Int) (z@@10 Int) ) (!  (or (= y@@18 z@@10) (Equal (Inverse (|Store__T@[Int]Int_| f@@16 x@@1095 y@@18) z@@10) (Difference (Inverse f@@16 z@@10) (Singleton x@@1095))))
 :qid |KbdCreateClassObjectbpl.87:14|
 :skolemid |28|
 :pattern ( (Inverse (|Store__T@[Int]Int_| f@@16 x@@1095 y@@18) z@@10))
)))
(assert (forall ((f@@17 |T@[Int]Int|) (x@@1096 Int) (y@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse f@@17 y@@19) x@@1096) (= (|Select__T@[Int]Int_| f@@17 x@@1096) y@@19))
 :qid |KbdCreateClassObjectbpl.85:14|
 :skolemid |26|
 :pattern ( (Inverse f@@17 y@@19) (|Select__T@[Int]Int_| f@@17 x@@1096))
)))
(assert (forall ((b0@@1 T@byte) (b1@@0 T@byte) (b2 T@byte) (b3 T@byte) (c0@@1 T@byte) (c1@@0 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (FourBytesToInt b0@@1 b1@@0 b2 b3) (FourBytesToInt c0@@1 c1@@0 c2 c3)) (and (and (and (= b0@@1 c0@@1) (= b1@@0 c1@@0)) (= b2 c2)) (= b3 c3)))
 :qid |KbdCreateClassObjectbpl.9:14|
 :skolemid |2|
 :pattern ( (FourBytesToInt b0@@1 b1@@0 b2 b3) (FourBytesToInt c0@@1 c1@@0 c2 c3))
)))
(assert (forall ((f@@18 |T@[Int]Int|) (x@@1097 Int) (y@@20 Int) (z@@11 Int) ) (!  (=> (and (ReachBetween f@@18 x@@1097 y@@20 y@@20) (ReachBetween f@@18 y@@20 z@@11 z@@11)) (ReachBetween f@@18 x@@1097 z@@11 z@@11))
 :qid |KbdCreateClassObjectbpl.3280:14|
 :skolemid |1133|
 :pattern ( (ReachBetween f@@18 x@@1097 y@@20 y@@20) (ReachBetween f@@18 y@@20 z@@11 z@@11))
)))
(assert (forall ((f@@19 |T@[Int]Int|) (u@@0 Int) (v@@2 Int) (x@@1098 Int) (p Int) (q Int) ) (! (= (ReachAvoiding (|Store__T@[Int]Int_| f@@19 p q) u@@0 v@@2 x@@1098)  (or (and (ReachAvoiding f@@19 u@@0 v@@2 p) (ReachAvoiding f@@19 u@@0 v@@2 x@@1098)) (and (and (and (ReachAvoiding f@@19 u@@0 p x@@1098) (not (= p x@@1098))) (ReachAvoiding f@@19 q v@@2 p)) (ReachAvoiding f@@19 q v@@2 x@@1098))))
 :qid |KbdCreateClassObjectbpl.3296:14|
 :skolemid |1138|
 :pattern ( (ReachAvoiding (|Store__T@[Int]Int_| f@@19 p q) u@@0 v@@2 x@@1098))
)))
(assert (forall ((x@@1099 Int) (n@@5 Int) (z@@12 Int) ) (!  (=> (> z@@12 0) (Equal (q@Array x@@1099 n@@5 z@@12) (Difference (AtLeast n@@5 x@@1099) (AtLeast n@@5 (PLUS x@@1099 n@@5 z@@12)))))
 :qid |KbdCreateClassObjectbpl.62:14|
 :skolemid |10|
 :pattern ( (q@Array x@@1099 n@@5 z@@12))
)))
(assert (forall ((x@@1100 Int) (y@@21 Int) (S@@434 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@434 x@@1100) (not (Equal (Intersection (Inverse M@@5 (|Select__T@[Int]Int_| M@@5 x@@1100)) S@@434) (Singleton x@@1100)))) (Equal (Dereference S@@434 (|Store__T@[Int]Int_| M@@5 x@@1100 y@@21)) (Union (Dereference S@@434 M@@5) (Singleton y@@21))))
 :qid |KbdCreateClassObjectbpl.95:14|
 :skolemid |34|
 :pattern ( (Dereference S@@434 (|Store__T@[Int]Int_| M@@5 x@@1100 y@@21)))
)))
(assert (forall ((f@@20 |T@[Int]Int|) (x@@1101 Int) (y@@22 Int) ) (!  (=> (ReachBetween f@@20 x@@1101 y@@22 x@@1101) (= x@@1101 y@@22))
 :qid |KbdCreateClassObjectbpl.3271:14|
 :skolemid |1130|
 :pattern ( (ReachBetween f@@20 x@@1101 y@@22 x@@1101))
)))
(assert (not (= Globals 0)))
(assert (forall ((x@@1102 Int) (S@@435 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Union S@@435 T@@6) x@@1102)  (or (|Select__T@[Int]Bool_| S@@435 x@@1102) (|Select__T@[Int]Bool_| T@@6 x@@1102)))
 :qid |KbdCreateClassObjectbpl.74:14|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (Union S@@435 T@@6) x@@1102))
 :pattern ( (Union S@@435 T@@6) (|Select__T@[Int]Bool_| S@@435 x@@1102))
 :pattern ( (Union S@@435 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@1102))
)))
(assert (forall ((v@@3 Int) (t@@3 T@name) (m1 |T@[name][Int]Int|) (m2 |T@[name][Int]Int|) ) (! (= (HasType v@@3 t@@3 m1) (HasType v@@3 t@@3 m2))
 :qid |KbdCreateClassObjectbpl.116:14|
 :skolemid |41|
 :pattern ( (HasType v@@3 t@@3 m1) (HasType v@@3 t@@3 m2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun call12formal@$result.IoCreateDevice$21225.0$1$@0 () Int)
(declare-fun Mem@21 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@12 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@12 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@10 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@10 () |T@[Int]Int|)
(declare-fun Mem@18 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@12 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@10 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@12 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@10 () |T@[Int]Int|)
(declare-fun Mem@46 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@27 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@27 () |T@[Int]Int|)
(declare-fun Mem () |T@[name][Int]Int|)
(declare-fun $result.KbdCreateClassObject$3353.0$1$@0 () Int)
(declare-fun $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201 () Int)
(declare-fun Res_DEV_OBJ_INIT () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@27 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@27 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK () |T@[Int]Int|)
(declare-fun call2formal@new@0 () Int)
(declare-fun Base (Int) Int)
(declare-sort |T@[Int]name| 0)
(declare-fun |Select__T@[Int]name_| (|T@[Int]name| Int) T@name)
(declare-fun alloc@14 () |T@[Int]name|)
(declare-fun alloc@13 () |T@[Int]name|)
(declare-fun alloc@15 () |T@[Int]name|)
(declare-fun call2formal@new@0@@0 () Int)
(declare-fun alloc@16 () |T@[Int]name|)
(declare-fun call2formal@new@0@@1 () Int)
(declare-fun Res_DEVICE_STACK@26 () |T@[Int]Int|)
(declare-fun alloc () |T@[Int]name|)
(declare-fun Res_DEV_EXTN@26 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@26 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@26 () |T@[Int]Int|)
(declare-fun Mem@45 () |T@[name][Int]Int|)
(declare-fun $status$6$3386.24$KbdCreateClassObject$20@5 () Int)
(declare-fun Mem@42 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@24 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@24 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@24 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@24 () |T@[Int]Int|)
(declare-fun call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 () Int)
(declare-fun Mem@43 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@25 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@25 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@25 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@25 () |T@[Int]Int|)
(declare-fun Mem@44 () |T@[name][Int]Int|)
(declare-fun Mem@39 () |T@[name][Int]Int|)
(declare-fun $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 () Int)
(declare-fun Res_SPIN_LOCK@22 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@22 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@22 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@22 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0 () Int)
(declare-fun Mem@40 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@23 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@23 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@23 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@23 () |T@[Int]Int|)
(declare-fun Mem@41 () |T@[name][Int]Int|)
(declare-fun Mem@37 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@20 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@20 () |T@[Int]Int|)
(declare-fun Mem@38 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@21 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@21 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@21 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@20 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@21 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@20 () |T@[Int]Int|)
(declare-fun $result.question.21$@0 () Int)
(declare-fun $errorCode$9$3389.24$KbdCreateClassObject$20@4 () Int)
(declare-fun Mem@36 () |T@[name][Int]Int|)
(declare-fun Mem@35 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@19 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@19 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@19 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@19 () |T@[Int]Int|)
(declare-fun $FullDeviceName$4$3357.35$KbdCreateClassObject$201 () Int)
(declare-fun Mem@32 () |T@[name][Int]Int|)
(declare-fun $deviceExtension$8$3388.24$KbdCreateClassObject$20@0 () Int)
(declare-fun call2formal@new@0@@2 () Int)
(declare-fun alloc@12 () |T@[Int]name|)
(declare-fun alloc@10 () |T@[Int]name|)
(declare-fun $status$6$3386.24$KbdCreateClassObject$20@4 () Int)
(declare-fun $errorCode$9$3389.24$KbdCreateClassObject$20@3 () Int)
(declare-fun Res_DEVICE_STACK@17 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@17 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@17 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@17 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@18 () |T@[Int]Int|)
(declare-fun Mem@34 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@18 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@18 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@18 () |T@[Int]Int|)
(declare-fun $status$6$3386.24$KbdCreateClassObject$20@3 () Int)
(declare-fun Mem@23 () |T@[name][Int]Int|)
(declare-fun BIT_BOR (Int Int) Int)
(declare-fun tempBoogie0@1 () Int)
(declare-fun Mem@24 () |T@[name][Int]Int|)
(declare-fun Mem@25 () |T@[name][Int]Int|)
(declare-fun call0formal@$Lock$1$22135.25$IoInitializeRemoveLockEx$201@0 () Int)
(declare-fun Mem@26 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@14 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@13 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@14 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@13 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@14 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@13 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@14 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@13 () |T@[Int]Int|)
(declare-fun call0formal@$SpinLock$1$13860.22$KeInitializeSpinLock$41@0 () Int)
(declare-fun Mem@27 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@15 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@15 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@15 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@15 () |T@[Int]Int|)
(declare-fun Mem@28 () |T@[name][Int]Int|)
(declare-fun call0formal@$ListHead$1$12.44$InitializeListHead_IRP$41@0 () Int)
(declare-fun Mem@29 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@16 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@16 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@16 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@16 () |T@[Int]Int|)
(declare-fun Mem@30 () |T@[name][Int]Int|)
(declare-fun call1formal@$NumberOfBytes$2$14790.16$ExAllocatePoolWithTag$121@0 () Int)
(declare-fun Mem@31 () |T@[name][Int]Int|)
(declare-fun call8formal@$result.ExAllocatePoolWithTag$14788.0$1$@0 () Int)
(declare-fun call2formal@new@0@@3 () Int)
(declare-fun alloc@11 () |T@[Int]name|)
(declare-fun $errorCode$9$3389.24$KbdCreateClassObject$20@2 () Int)
(declare-fun Mem@33 () |T@[name][Int]Int|)
(declare-fun Mem@22 () |T@[name][Int]Int|)
(declare-fun alloc@9 () |T@[Int]name|)
(declare-fun Mem@19 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@11 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@11 () |T@[Int]Int|)
(declare-fun alloc@8 () |T@[Int]name|)
(declare-fun alloc@7 () |T@[Int]name|)
(declare-fun Res_DEVICE_STACK@11 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@11 () |T@[Int]Int|)
(declare-fun Mem@20 () |T@[name][Int]Int|)
(declare-fun BINARY_BOTH_INT (Int Int) Int)
(declare-fun $nameIndex$14$3394.24$KbdCreateClassObject$20@0 () Int)
(declare-fun $nameIndex$14$3394.24$KbdCreateClassObject$20@1 () Int)
(declare-fun call2formal@new@0@@4 () Int)
(declare-fun call2formal@new@0@@5 () Int)
(declare-fun alloc@6 () |T@[Int]name|)
(declare-fun Mem@17 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@9 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@9 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@9 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@9 () |T@[Int]Int|)
(declare-fun $Legacy$5$3358.28$KbdCreateClassObject$201 () Int)
(declare-fun alloc@3 () |T@[Int]name|)
(declare-fun Res_DEVICE_STACK@7 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@7 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@7 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@7 () |T@[Int]Int|)
(declare-fun Mem@14 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@6 () Int)
(declare-fun alloc@5 () |T@[Int]name|)
(declare-fun Mem@16 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@8 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@8 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@8 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@8 () |T@[Int]Int|)
(declare-fun Mem@12 () |T@[name][Int]Int|)
(declare-fun $memset.arg.3$7$@0 () Int)
(declare-fun call2formal@new@0@@7 () Int)
(declare-fun alloc@2 () |T@[Int]name|)
(declare-fun Mem@13 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@6 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@5 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@6 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@5 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@6 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@5 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@6 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@5 () |T@[Int]Int|)
(declare-fun call1formal@$Source$2$7422.20$RtlAppendUnicodeToString$81@0 () Int)
(declare-fun Mem@2 () |T@[name][Int]Int|)
(declare-fun call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0 () Int)
(declare-fun Mem@3 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@2 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@1 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@2 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@1 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@2 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@1 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@2 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@1 () |T@[Int]Int|)
(declare-fun call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 () Int)
(declare-fun Mem@4 () |T@[name][Int]Int|)
(declare-fun Res_DEV_EXTN@3 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@3 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@3 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@3 () |T@[Int]Int|)
(declare-fun Mem@5 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@8 () Int)
(declare-fun alloc@4 () |T@[Int]name|)
(declare-fun $status$6$3386.24$KbdCreateClassObject$20@1 () Int)
(declare-fun $errorCode$9$3389.24$KbdCreateClassObject$20@1 () Int)
(declare-fun Mem@15 () |T@[name][Int]Int|)
(declare-fun $ExAllocatePoolWithTag.arg.2$4$@0 () Int)
(declare-fun Mem@10 () |T@[name][Int]Int|)
(declare-fun Mem@11 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@4 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@4 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@4 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@4 () |T@[Int]Int|)
(declare-fun call8formal@$result.ExAllocatePoolWithTag$14788.0$1$@0@@0 () Int)
(declare-fun Mem@8 () |T@[name][Int]Int|)
(declare-fun tempBoogie0@0 () Int)
(declare-fun Mem@9 () |T@[name][Int]Int|)
(declare-fun Mem@6 () |T@[name][Int]Int|)
(declare-fun $status$6$3386.24$KbdCreateClassObject$20@0 () Int)
(declare-fun $errorCode$9$3389.24$KbdCreateClassObject$20@0 () Int)
(declare-fun Mem@7 () |T@[name][Int]Int|)
(declare-fun call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0@@0 () Int)
(declare-fun $DriverObject$1$3354.28$KbdCreateClassObject$201 () Int)
(declare-fun $TmpDeviceExtension$2$3355.28$KbdCreateClassObject$201 () Int)
(declare-fun alloc@0 () |T@[Int]name|)
(declare-fun alloc@1 () |T@[Int]name|)
(declare-fun Mem@0 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@0 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@0 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@0 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@0 () |T@[Int]Int|)
(declare-fun call2formal@new@0@@9 () Int)
(declare-fun call0formal@$FastMutex$1$15000.16$ExAcquireFastMutex$41@0 () Int)
(declare-fun Mem@1 () |T@[name][Int]Int|)
(set-info :boogie-vc-id KbdCreateClassObject)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 138) (let ((label_87_true_correct  (=> (= (- 0 1073741771) call12formal@$result.IoCreateDevice$21225.0$1$@0) (and (=> (= (ControlFlow 0 55) (- 0 75)) (forall ((_H_x Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@12 1) _H_x) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x)))) _H_x) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x))) 1)))
 :qid |KbdCreateClassObjectbpl.4686:16|
 :skolemid |1453|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x)))
))) (=> (forall ((_H_x@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@12 1) _H_x@@0) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0)))) _H_x@@0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0))) 1)))
 :qid |KbdCreateClassObjectbpl.4686:16|
 :skolemid |1453|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0)))
)) (and (=> (= (ControlFlow 0 55) (- 0 74)) (forall ((_H_z Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@12 1) _H_z) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z)))) _H_z)))
 :qid |KbdCreateClassObjectbpl.4688:16|
 :skolemid |1454|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z)))
))) (=> (forall ((_H_z@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@12 1) _H_z@@0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0)))) _H_z@@0)))
 :qid |KbdCreateClassObjectbpl.4688:16|
 :skolemid |1454|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0)))
)) (and (=> (= (ControlFlow 0 55) (- 0 73)) (and (Subset Empty (Inverse Res_DEV_EXTN@12 1)) (forall ((_H_z@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@12 1) _H_z@@1) true)
 :qid |KbdCreateClassObjectbpl.4690:61|
 :skolemid |1455|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@12 1) _H_z@@1))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@12 1)) (forall ((_H_z@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@12 1) _H_z@@2) true)
 :qid |KbdCreateClassObjectbpl.4690:61|
 :skolemid |1455|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@12 1) _H_z@@2))
))) (and (=> (= (ControlFlow 0 55) (- 0 72)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 55) (- 0 71)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 55) (- 0 70)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y) (or (= _H_y (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (MINUS_LEFT_PTR _H_y 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4696:233|
 :skolemid |1456|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@0) (or (= _H_y@@0 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (MINUS_LEFT_PTR _H_y@@0 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4696:233|
 :skolemid |1456|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@0))
)))) (and (=> (= (ControlFlow 0 55) (- 0 69)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 55) (- 0 68)) (= Res_DEV_OBJ_INIT@12 Res_DEV_OBJ_INIT@10)) (=> (= Res_DEV_OBJ_INIT@12 Res_DEV_OBJ_INIT@10) (and (=> (= (ControlFlow 0 55) (- 0 67)) (= Res_DEV_EXTN@12 Res_DEV_EXTN@10)) (=> (= Res_DEV_EXTN@12 Res_DEV_EXTN@10) (and (=> (= (ControlFlow 0 55) (- 0 66)) (= (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY))) (=> (= (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (and (=> (= (ControlFlow 0 55) (- 0 65)) (and (Subset Empty (Union Empty Empty)) (forall ((r Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r) (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r)))
 :qid |KbdCreateClassObjectbpl.4709:62|
 :skolemid |1458|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@0 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@0) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@0) (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r@@0)))
 :qid |KbdCreateClassObjectbpl.4709:62|
 :skolemid |1458|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r@@0))
))) (and (=> (= (ControlFlow 0 55) (- 0 64)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@1 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@1) (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@1)))
 :qid |KbdCreateClassObjectbpl.4712:62|
 :skolemid |1459|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@1))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@2 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@2) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@2) (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@2)))
 :qid |KbdCreateClassObjectbpl.4712:62|
 :skolemid |1459|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@2))
))) (and (=> (= (ControlFlow 0 55) (- 0 63)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@3 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@3) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@3) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@3)))
 :qid |KbdCreateClassObjectbpl.4715:62|
 :skolemid |1460|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@3))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@4 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@4) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@4) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@4)))
 :qid |KbdCreateClassObjectbpl.4715:62|
 :skolemid |1460|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@4))
))) (and (=> (= (ControlFlow 0 55) (- 0 62)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@5 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@5) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@5) (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@5)))
 :qid |KbdCreateClassObjectbpl.4718:62|
 :skolemid |1461|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@5))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@6 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@6) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@6) (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@6)))
 :qid |KbdCreateClassObjectbpl.4718:62|
 :skolemid |1461|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@6))
))) (and (=> (= (ControlFlow 0 55) (- 0 61)) (and (Subset Empty (Union Empty Empty)) (forall ((_m Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m)))
 :qid |KbdCreateClassObjectbpl.4720:63|
 :skolemid |1462|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@0 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@0) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m@@0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@0)))
 :qid |KbdCreateClassObjectbpl.4720:63|
 :skolemid |1462|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m@@0))
))) (and (=> (= (ControlFlow 0 55) (- 0 60)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@1 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@1)))
 :qid |KbdCreateClassObjectbpl.4722:63|
 :skolemid |1463|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@1))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@2 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@2) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@2) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@2)))
 :qid |KbdCreateClassObjectbpl.4722:63|
 :skolemid |1463|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@2))
))) (and (=> (= (ControlFlow 0 55) (- 0 59)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@3 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@3) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@3) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@3)))
 :qid |KbdCreateClassObjectbpl.4724:63|
 :skolemid |1464|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@3))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@4 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@4) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@4) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@4)))
 :qid |KbdCreateClassObjectbpl.4724:63|
 :skolemid |1464|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@4))
))) (and (=> (= (ControlFlow 0 55) (- 0 58)) (and (Subset Empty (Union (Union Empty SetTrue) Empty)) (forall ((_m@@5 Int) ) (!  (or (or (|Select__T@[Int]Bool_| SetTrue _m@@5) (|Select__T@[Int]Bool_| Empty _m@@5)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@5) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@5)))
 :qid |KbdCreateClassObjectbpl.4726:81|
 :skolemid |1465|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@5))
)))) (=> (and (Subset Empty (Union (Union Empty SetTrue) Empty)) (forall ((_m@@6 Int) ) (!  (or (or (|Select__T@[Int]Bool_| SetTrue _m@@6) (|Select__T@[Int]Bool_| Empty _m@@6)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@6) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@6)))
 :qid |KbdCreateClassObjectbpl.4726:81|
 :skolemid |1465|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@6))
))) (and (=> (= (ControlFlow 0 55) (- 0 57)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@7 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@7) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@7) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@7)))
 :qid |KbdCreateClassObjectbpl.4728:63|
 :skolemid |1466|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@7))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@8 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@8) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@8) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@8)))
 :qid |KbdCreateClassObjectbpl.4728:63|
 :skolemid |1466|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@8))
))) (and (=> (= (ControlFlow 0 55) (- 0 56)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@9 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@9) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@9) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@9)))
 :qid |KbdCreateClassObjectbpl.4730:63|
 :skolemid |1467|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@9))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@10 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@10) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@10) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@10)))
 :qid |KbdCreateClassObjectbpl.4730:63|
 :skolemid |1467|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@10))
))) (=> (= (ControlFlow 0 55) (- 0 54)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@11 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@11) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) _m@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@11)))
 :qid |KbdCreateClassObjectbpl.4732:63|
 :skolemid |1468|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) _m@@11))
)))))))))))))))))))))))))))))))))))))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 27)) (forall ((_H_x@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@27 1) _H_x@@1) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1)))) _H_x@@1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1))) 1)))
 :qid |KbdCreateClassObjectbpl.4008:17|
 :skolemid |1315|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1)))
))) (=> (forall ((_H_x@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@27 1) _H_x@@2) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2)))) _H_x@@2) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2))) 1)))
 :qid |KbdCreateClassObjectbpl.4008:17|
 :skolemid |1315|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2)))
)) (and (=> (= (ControlFlow 0 2) (- 0 26)) (forall ((_H_z@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@27 1) _H_z@@3) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3)))) _H_z@@3)))
 :qid |KbdCreateClassObjectbpl.4010:17|
 :skolemid |1316|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3)))
))) (=> (forall ((_H_z@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@27 1) _H_z@@4) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4)))) _H_z@@4)))
 :qid |KbdCreateClassObjectbpl.4010:17|
 :skolemid |1316|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4)))
)) (and (=> (= (ControlFlow 0 2) (- 0 25)) (and (Subset Empty (Inverse Res_DEV_EXTN@27 1)) (forall ((_H_z@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@27 1) _H_z@@5) true)
 :qid |KbdCreateClassObjectbpl.4012:62|
 :skolemid |1317|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@27 1) _H_z@@5))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@27 1)) (forall ((_H_z@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@27 1) _H_z@@6) true)
 :qid |KbdCreateClassObjectbpl.4012:62|
 :skolemid |1317|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@27 1) _H_z@@6))
))) (and (=> (= (ControlFlow 0 2) (- 0 24)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 2) (- 0 23)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@1) (or (= _H_y@@1 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (MINUS_LEFT_PTR _H_y@@1 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4018:234|
 :skolemid |1318|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@1))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@2) (or (= _H_y@@2 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (MINUS_LEFT_PTR _H_y@@2 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4018:234|
 :skolemid |1318|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@2))
)))) (and (=> (= (ControlFlow 0 2) (- 0 21)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 2) (- 0 20)) (= (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY))) (=> (= (|Select__T@[name][Int]Int_| Mem@46 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (and (=> (= (ControlFlow 0 2) (- 0 19)) (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0)))) (=> (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 0)))) (=> (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 0))) (and (=> (= (ControlFlow 0 2) (- 0 17)) (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1))) (=> (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1)) (and (=> (= (ControlFlow 0 2) (- 0 16)) (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1)))) (=> (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1))) (and (=> (= (ControlFlow 0 2) (- 0 15)) (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 0)))) (=> (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 0))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (and (= Res_DEV_OBJ_INIT@27 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 1)) (= Res_DEV_EXTN@27 (|Store__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 1))))) (=> (=> (>= $result.KbdCreateClassObject$3353.0$1$@0 0) (and (= Res_DEV_OBJ_INIT@27 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 1)) (= Res_DEV_EXTN@27 (|Store__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 1)))) (and (=> (= (ControlFlow 0 2) (- 0 13)) (=> (not (>= $result.KbdCreateClassObject$3353.0$1$@0 0)) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))))) (=> (=> (not (>= $result.KbdCreateClassObject$3353.0$1$@0 0)) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))))))) (and (=> (= (ControlFlow 0 2) (- 0 12)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@7 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@7) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK r@@7) (|Select__T@[Int]Int_| Res_DEVICE_STACK@27 r@@7)))
 :qid |KbdCreateClassObjectbpl.4045:63|
 :skolemid |1320|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@27 r@@7))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@8 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@8) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK r@@8) (|Select__T@[Int]Int_| Res_DEVICE_STACK@27 r@@8)))
 :qid |KbdCreateClassObjectbpl.4045:63|
 :skolemid |1320|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@27 r@@8))
))) (and (=> (= (ControlFlow 0 2) (- 0 11)) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) (forall ((r@@9 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@9) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) r@@9)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN r@@9) (|Select__T@[Int]Int_| Res_DEV_EXTN@27 r@@9)))
 :qid |KbdCreateClassObjectbpl.4049:231|
 :skolemid |1321|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@27 r@@9))
)))) (=> (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) (forall ((r@@10 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@10) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) r@@10)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN r@@10) (|Select__T@[Int]Int_| Res_DEV_EXTN@27 r@@10)))
 :qid |KbdCreateClassObjectbpl.4049:231|
 :skolemid |1321|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@27 r@@10))
))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (forall ((r@@11 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@11) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) r@@11)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT r@@11) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 r@@11)))
 :qid |KbdCreateClassObjectbpl.4053:160|
 :skolemid |1322|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 r@@11))
)))) (=> (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (forall ((r@@12 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@12) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) r@@12)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT r@@12) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 r@@12)))
 :qid |KbdCreateClassObjectbpl.4053:160|
 :skolemid |1322|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 r@@12))
))) (and (=> (= (ControlFlow 0 2) (- 0 9)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@13 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@13) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK r@@13) (|Select__T@[Int]Int_| Res_SPIN_LOCK@27 r@@13)))
 :qid |KbdCreateClassObjectbpl.4057:63|
 :skolemid |1323|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@27 r@@13))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@14 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@14) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK r@@14) (|Select__T@[Int]Int_| Res_SPIN_LOCK@27 r@@14)))
 :qid |KbdCreateClassObjectbpl.4057:63|
 :skolemid |1323|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@27 r@@14))
))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@12 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@12) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.MinorFunction__IO_STACK_LOCATION) _m@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinorFunction__IO_STACK_LOCATION) _m@@12)))
 :qid |KbdCreateClassObjectbpl.4059:64|
 :skolemid |1324|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.MinorFunction__IO_STACK_LOCATION) _m@@12))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@13 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@13) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.MinorFunction__IO_STACK_LOCATION) _m@@13) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinorFunction__IO_STACK_LOCATION) _m@@13)))
 :qid |KbdCreateClassObjectbpl.4059:64|
 :skolemid |1324|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.MinorFunction__IO_STACK_LOCATION) _m@@13))
))) (and (=> (= (ControlFlow 0 2) (- 0 7)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@14 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@14) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@14) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@14)))
 :qid |KbdCreateClassObjectbpl.4061:64|
 :skolemid |1325|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@14))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@15 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@15) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@15) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@15)))
 :qid |KbdCreateClassObjectbpl.4061:64|
 :skolemid |1325|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@15))
))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@16 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@16) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) _m@@16) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) _m@@16)))
 :qid |KbdCreateClassObjectbpl.4063:64|
 :skolemid |1326|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) _m@@16))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@17 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@17) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) _m@@17) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) _m@@17)))
 :qid |KbdCreateClassObjectbpl.4063:64|
 :skolemid |1326|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.DeviceExtension__DEVICE_OBJECT) _m@@17))
))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@18 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@18) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) _m@@18) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) _m@@18)))
 :qid |KbdCreateClassObjectbpl.4065:66|
 :skolemid |1327|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) _m@@18))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@19 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@19) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) _m@@19) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) _m@@19)))
 :qid |KbdCreateClassObjectbpl.4065:66|
 :skolemid |1327|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Self__DEVICE_EXTENSION) _m@@19))
))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@20 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@20) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Started__DEVICE_EXTENSION) _m@@20) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Started__DEVICE_EXTENSION) _m@@20)))
 :qid |KbdCreateClassObjectbpl.4067:64|
 :skolemid |1328|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Started__DEVICE_EXTENSION) _m@@20))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@21 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@21) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Started__DEVICE_EXTENSION) _m@@21) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Started__DEVICE_EXTENSION) _m@@21)))
 :qid |KbdCreateClassObjectbpl.4067:64|
 :skolemid |1328|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.Started__DEVICE_EXTENSION) _m@@21))
))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@22 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@22) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) _m@@22) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) _m@@22)))
 :qid |KbdCreateClassObjectbpl.4069:64|
 :skolemid |1329|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) _m@@22))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@23 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@23) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) _m@@23) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) _m@@23)))
 :qid |KbdCreateClassObjectbpl.4069:64|
 :skolemid |1329|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.GrandMaster__GLOBALS) _m@@23))
))) (=> (= (ControlFlow 0 2) (- 0 1)) (and (Subset Empty (Union (Union Empty Empty) (Singleton $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (forall ((_m@@24 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty _m@@24) (= _m@@24 $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) _m@@24) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT) _m@@24)))
 :qid |KbdCreateClassObjectbpl.4071:137|
 :skolemid |1330|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.P_DEVICE_OBJECT) _m@@24))
))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((label_162_correct  (and (=> (= (ControlFlow 0 28) (- 0 29)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0 0) (=> (and (forall ((x@@1103 Int) ) (!  (=> (and (<= call2formal@new@0 x@@1103) (< x@@1103 (+ call2formal@new@0 1))) (= (Base x@@1103) call2formal@new@0))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1103))
)) (forall ((x@@1104 Int) ) (!  (or (= x@@1104 call2formal@new@0) (= (|Select__T@[Int]name_| alloc@13 x@@1104) (|Select__T@[Int]name_| alloc@14 x@@1104)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@14 x@@1104))
))) (=> (and (and (and (= (|Select__T@[Int]name_| alloc@13 call2formal@new@0) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@14 call2formal@new@0) ALLOCATED)) (forall ((x@@1105 Int) ) (!  (or (= x@@1105 call2formal@new@0@@0) (= (|Select__T@[Int]name_| alloc@14 x@@1105) (|Select__T@[Int]name_| alloc@15 x@@1105)))
 :qid |KbdCreateClassObjectbpl.3204:17|
 :skolemid |1120|
 :pattern ( (|Select__T@[Int]name_| alloc@15 x@@1105))
))) (and (and (= (|Select__T@[Int]name_| alloc@15 call2formal@new@0@@0) FREED) (forall ((x@@1106 Int) ) (!  (or (= x@@1106 call2formal@new@0@@1) (= (|Select__T@[Int]name_| alloc@15 x@@1106) (|Select__T@[Int]name_| alloc@16 x@@1106)))
 :qid |KbdCreateClassObjectbpl.3204:17|
 :skolemid |1120|
 :pattern ( (|Select__T@[Int]name_| alloc@16 x@@1106))
))) (and (= (|Select__T@[Int]name_| alloc@16 call2formal@new@0@@1) FREED) (forall ((m@@2 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@2)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@2)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@26 m@@2) (|Select__T@[Int]Int_| Res_DEVICE_STACK m@@2)))
 :qid |KbdCreateClassObjectbpl.4161:16|
 :skolemid |1331|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@26 m@@2))
))))) (=> (and (and (and (and (and (and (and (forall ((m@@3 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@3)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@3)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@26 m@@3) (|Select__T@[Int]Int_| Res_DEV_EXTN m@@3)))
 :qid |KbdCreateClassObjectbpl.4162:16|
 :skolemid |1332|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@26 m@@3))
)) (forall ((m@@4 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@4)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@4)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@26 m@@4) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT m@@4)))
 :qid |KbdCreateClassObjectbpl.4163:16|
 :skolemid |1333|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@26 m@@4))
))) (and (forall ((m@@5 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@5)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@5)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@26 m@@5) (|Select__T@[Int]Int_| Res_SPIN_LOCK m@@5)))
 :qid |KbdCreateClassObjectbpl.4164:16|
 :skolemid |1334|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@26 m@@5))
)) (forall ((m@@6 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@6)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@6)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A2UINT2) m@@6) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A2UINT2) m@@6)))
 :qid |KbdCreateClassObjectbpl.4165:16|
 :skolemid |1335|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A2UINT2) m@@6))
)))) (and (and (forall ((m@@7 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@7)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@7)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A37CHAR) m@@7) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A37CHAR) m@@7)))
 :qid |KbdCreateClassObjectbpl.4166:16|
 :skolemid |1336|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A37CHAR) m@@7))
)) (forall ((m@@8 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@8)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@8)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A40CHAR) m@@8) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A40CHAR) m@@8)))
 :qid |KbdCreateClassObjectbpl.4167:16|
 :skolemid |1337|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A40CHAR) m@@8))
))) (and (forall ((m@@9 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@9)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@9)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A4UINT4) m@@9) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A4UINT4) m@@9)))
 :qid |KbdCreateClassObjectbpl.4168:16|
 :skolemid |1338|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A4UINT4) m@@9))
)) (forall ((m@@10 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@10)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@10)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A65CHAR) m@@10) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A65CHAR) m@@10)))
 :qid |KbdCreateClassObjectbpl.4169:16|
 :skolemid |1339|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A65CHAR) m@@10))
))))) (and (and (and (forall ((m@@11 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@11)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@11)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A75CHAR) m@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A75CHAR) m@@11)))
 :qid |KbdCreateClassObjectbpl.4170:16|
 :skolemid |1340|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A75CHAR) m@@11))
)) (forall ((m@@12 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@12)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@12)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A76CHAR) m@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A76CHAR) m@@12)))
 :qid |KbdCreateClassObjectbpl.4171:16|
 :skolemid |1341|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A76CHAR) m@@12))
))) (and (forall ((m@@13 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@13)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@13)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A7UINT2) m@@13) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A7UINT2) m@@13)))
 :qid |KbdCreateClassObjectbpl.4172:16|
 :skolemid |1342|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A7UINT2) m@@13))
)) (forall ((m@@14 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@14)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@14)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A83CHAR) m@@14) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A83CHAR) m@@14)))
 :qid |KbdCreateClassObjectbpl.4173:16|
 :skolemid |1343|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A83CHAR) m@@14))
)))) (and (and (forall ((m@@15 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@15)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@15)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A9UINT2) m@@15) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A9UINT2) m@@15)))
 :qid |KbdCreateClassObjectbpl.4174:16|
 :skolemid |1344|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.A9UINT2) m@@15))
)) (forall ((m@@16 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@16)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@16)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Abandoned___unnamed_1_29794256) m@@16) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Abandoned___unnamed_1_29794256) m@@16)))
 :qid |KbdCreateClassObjectbpl.4175:16|
 :skolemid |1345|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Abandoned___unnamed_1_29794256) m@@16))
))) (and (forall ((m@@17 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@17)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@17)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Absolute___unnamed_1_29794256) m@@17) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Absolute___unnamed_1_29794256) m@@17)))
 :qid |KbdCreateClassObjectbpl.4176:16|
 :skolemid |1346|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Absolute___unnamed_1_29794256) m@@17))
)) (forall ((m@@18 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@18)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@18)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK) m@@18) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK) m@@18)))
 :qid |KbdCreateClassObjectbpl.4177:16|
 :skolemid |1347|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK) m@@18))
)))))) (and (and (and (and (forall ((m@@19 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@19)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@19)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.AllowDisable__DEVICE_EXTENSION) m@@19) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.AllowDisable__DEVICE_EXTENSION) m@@19)))
 :qid |KbdCreateClassObjectbpl.4178:16|
 :skolemid |1348|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.AllowDisable__DEVICE_EXTENSION) m@@19))
)) (forall ((m@@20 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@20)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@20)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.BaseClassName__GLOBALS) m@@20) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.BaseClassName__GLOBALS) m@@20)))
 :qid |KbdCreateClassObjectbpl.4179:16|
 :skolemid |1349|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.BaseClassName__GLOBALS) m@@20))
))) (and (forall ((m@@21 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@21)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@21)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Blink__LIST_ENTRY) m@@21) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Blink__LIST_ENTRY) m@@21)))
 :qid |KbdCreateClassObjectbpl.4180:16|
 :skolemid |1350|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Blink__LIST_ENTRY) m@@21))
)) (forall ((m@@22 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@22)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@22)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Blocks__IO_REMOVE_LOCK_DBG_BLOCK) m@@22) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Blocks__IO_REMOVE_LOCK_DBG_BLOCK) m@@22)))
 :qid |KbdCreateClassObjectbpl.4181:16|
 :skolemid |1351|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Blocks__IO_REMOVE_LOCK_DBG_BLOCK) m@@22))
)))) (and (and (forall ((m@@23 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@23)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@23)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Buffer__UNICODE_STRING) m@@23) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Buffer__UNICODE_STRING) m@@23)))
 :qid |KbdCreateClassObjectbpl.4182:16|
 :skolemid |1352|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Buffer__UNICODE_STRING) m@@23))
)) (forall ((m@@24 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@24)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@24)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ConnectOneClassToOnePort__GLOBALS) m@@24) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.ConnectOneClassToOnePort__GLOBALS) m@@24)))
 :qid |KbdCreateClassObjectbpl.4183:16|
 :skolemid |1353|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ConnectOneClassToOnePort__GLOBALS) m@@24))
))) (and (forall ((m@@25 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@25)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@25)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.CurrentStackLocation___unnamed_4_f19b65c1) m@@25) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CurrentStackLocation___unnamed_4_f19b65c1) m@@25)))
 :qid |KbdCreateClassObjectbpl.4184:16|
 :skolemid |1354|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.CurrentStackLocation___unnamed_4_f19b65c1) m@@25))
)) (forall ((m@@26 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@26)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@26)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DataIn__DEVICE_EXTENSION) m@@26) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DataIn__DEVICE_EXTENSION) m@@26)))
 :qid |KbdCreateClassObjectbpl.4185:16|
 :skolemid |1355|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DataIn__DEVICE_EXTENSION) m@@26))
))))) (and (and (and (forall ((m@@27 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@27)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@27)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DataOut__DEVICE_EXTENSION) m@@27) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DataOut__DEVICE_EXTENSION) m@@27)))
 :qid |KbdCreateClassObjectbpl.4186:16|
 :skolemid |1356|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DataOut__DEVICE_EXTENSION) m@@27))
)) (forall ((m@@28 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@28)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@28)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DebugActive___unnamed_1_2dc63b48) m@@28) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DebugActive___unnamed_1_2dc63b48) m@@28)))
 :qid |KbdCreateClassObjectbpl.4187:16|
 :skolemid |1357|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DebugActive___unnamed_1_2dc63b48) m@@28))
))) (and (forall ((m@@29 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@29)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@29)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Delay__KEYBOARD_TYPEMATIC_PARAMETERS) m@@29) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Delay__KEYBOARD_TYPEMATIC_PARAMETERS) m@@29)))
 :qid |KbdCreateClassObjectbpl.4188:16|
 :skolemid |1358|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Delay__KEYBOARD_TYPEMATIC_PARAMETERS) m@@29))
)) (forall ((m@@30 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@30)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@30)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DeviceExtension__DEVICE_OBJECT) m@@30) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) m@@30)))
 :qid |KbdCreateClassObjectbpl.4189:16|
 :skolemid |1359|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DeviceExtension__DEVICE_OBJECT) m@@30))
)))) (and (and (forall ((m@@31 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@31)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@31)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DeviceState__DEVICE_EXTENSION) m@@31) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceState__DEVICE_EXTENSION) m@@31)))
 :qid |KbdCreateClassObjectbpl.4190:16|
 :skolemid |1360|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DeviceState__DEVICE_EXTENSION) m@@31))
)) (forall ((m@@32 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@32)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@32)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DpcActive___unnamed_1_2dc63b48) m@@32) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DpcActive___unnamed_1_2dc63b48) m@@32)))
 :qid |KbdCreateClassObjectbpl.4191:16|
 :skolemid |1361|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DpcActive___unnamed_1_2dc63b48) m@@32))
))) (and (forall ((m@@33 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@33)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@33)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Enabled__DEVICE_EXTENSION) m@@33) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Enabled__DEVICE_EXTENSION) m@@33)))
 :qid |KbdCreateClassObjectbpl.4192:16|
 :skolemid |1362|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Enabled__DEVICE_EXTENSION) m@@33))
)) (forall ((m@@34 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@34)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@34)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ExecuteWmiMethod__WMILIB_CONTEXT) m@@34) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.ExecuteWmiMethod__WMILIB_CONTEXT) m@@34)))
 :qid |KbdCreateClassObjectbpl.4193:16|
 :skolemid |1363|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ExecuteWmiMethod__WMILIB_CONTEXT) m@@34))
))))))) (and (and (and (and (and (forall ((m@@35 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@35)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@35)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ExtraWaitWakeIrp__DEVICE_EXTENSION) m@@35) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.ExtraWaitWakeIrp__DEVICE_EXTENSION) m@@35)))
 :qid |KbdCreateClassObjectbpl.4194:16|
 :skolemid |1364|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ExtraWaitWakeIrp__DEVICE_EXTENSION) m@@35))
)) (forall ((m@@36 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@36)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@36)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.File__DEVICE_EXTENSION) m@@36) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.File__DEVICE_EXTENSION) m@@36)))
 :qid |KbdCreateClassObjectbpl.4195:16|
 :skolemid |1365|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.File__DEVICE_EXTENSION) m@@36))
))) (and (forall ((m@@37 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@37)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@37)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Flags__DEVICE_OBJECT) m@@37) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flags__DEVICE_OBJECT) m@@37)))
 :qid |KbdCreateClassObjectbpl.4196:16|
 :skolemid |1366|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Flags__DEVICE_OBJECT) m@@37))
)) (forall ((m@@38 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@38)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@38)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Flink__LIST_ENTRY) m@@38) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) m@@38)))
 :qid |KbdCreateClassObjectbpl.4197:16|
 :skolemid |1367|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Flink__LIST_ENTRY) m@@38))
)))) (and (and (forall ((m@@39 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@39)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@39)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GrandMaster__GLOBALS) m@@39) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) m@@39)))
 :qid |KbdCreateClassObjectbpl.4198:16|
 :skolemid |1368|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GrandMaster__GLOBALS) m@@39))
)) (forall ((m@@40 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@40)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@40)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GuidCount__WMILIB_CONTEXT) m@@40) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GuidCount__WMILIB_CONTEXT) m@@40)))
 :qid |KbdCreateClassObjectbpl.4199:16|
 :skolemid |1369|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GuidCount__WMILIB_CONTEXT) m@@40))
))) (and (forall ((m@@41 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@41)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@41)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GuidList__WMILIB_CONTEXT) m@@41) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GuidList__WMILIB_CONTEXT) m@@41)))
 :qid |KbdCreateClassObjectbpl.4200:16|
 :skolemid |1370|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GuidList__WMILIB_CONTEXT) m@@41))
)) (forall ((m@@42 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@42)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@42)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Hand___unnamed_1_2ef8da39) m@@42) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Hand___unnamed_1_2ef8da39) m@@42)))
 :qid |KbdCreateClassObjectbpl.4201:16|
 :skolemid |1371|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Hand___unnamed_1_2ef8da39) m@@42))
))))) (and (and (and (forall ((m@@43 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@43)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@43)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK) m@@43) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK) m@@43)))
 :qid |KbdCreateClassObjectbpl.4202:16|
 :skolemid |1372|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK) m@@43))
)) (forall ((m@@44 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@44)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@44)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.INT4) m@@44) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.INT4) m@@44)))
 :qid |KbdCreateClassObjectbpl.4203:16|
 :skolemid |1373|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.INT4) m@@44))
))) (and (forall ((m@@45 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@45)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@45)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.InputCount__DEVICE_EXTENSION) m@@45) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.InputCount__DEVICE_EXTENSION) m@@45)))
 :qid |KbdCreateClassObjectbpl.4204:16|
 :skolemid |1374|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.InputCount__DEVICE_EXTENSION) m@@45))
)) (forall ((m@@46 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@46)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@46)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.InputDataQueueLength__KEYBOARD_ATTRIBUTES) m@@46) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.InputDataQueueLength__KEYBOARD_ATTRIBUTES) m@@46)))
 :qid |KbdCreateClassObjectbpl.4205:16|
 :skolemid |1375|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.InputDataQueueLength__KEYBOARD_ATTRIBUTES) m@@46))
)))) (and (and (forall ((m@@47 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@47)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@47)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.InputData__DEVICE_EXTENSION) m@@47) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.InputData__DEVICE_EXTENSION) m@@47)))
 :qid |KbdCreateClassObjectbpl.4206:16|
 :skolemid |1376|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.InputData__DEVICE_EXTENSION) m@@47))
)) (forall ((m@@48 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@48)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@48)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Inserted___unnamed_1_2dc63b48) m@@48) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Inserted___unnamed_1_2dc63b48) m@@48)))
 :qid |KbdCreateClassObjectbpl.4207:16|
 :skolemid |1377|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Inserted___unnamed_1_2dc63b48) m@@48))
))) (and (forall ((m@@49 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@49)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@49)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.IoCount__IO_REMOVE_LOCK_COMMON_BLOCK) m@@49) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.IoCount__IO_REMOVE_LOCK_COMMON_BLOCK) m@@49)))
 :qid |KbdCreateClassObjectbpl.4208:16|
 :skolemid |1378|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.IoCount__IO_REMOVE_LOCK_COMMON_BLOCK) m@@49))
)) (forall ((m@@50 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@50)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@50)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.KeyboardAttributes__DEVICE_EXTENSION) m@@50) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.KeyboardAttributes__DEVICE_EXTENSION) m@@50)))
 :qid |KbdCreateClassObjectbpl.4209:16|
 :skolemid |1379|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.KeyboardAttributes__DEVICE_EXTENSION) m@@50))
)))))) (and (and (and (and (forall ((m@@51 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@51)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@51)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.KeyboardMode__KEYBOARD_ATTRIBUTES) m@@51) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.KeyboardMode__KEYBOARD_ATTRIBUTES) m@@51)))
 :qid |KbdCreateClassObjectbpl.4210:16|
 :skolemid |1380|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.KeyboardMode__KEYBOARD_ATTRIBUTES) m@@51))
)) (forall ((m@@52 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@52)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@52)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.LedFlags__KEYBOARD_INDICATOR_PARAMETERS) m@@52) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.LedFlags__KEYBOARD_INDICATOR_PARAMETERS) m@@52)))
 :qid |KbdCreateClassObjectbpl.4211:16|
 :skolemid |1381|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.LedFlags__KEYBOARD_INDICATOR_PARAMETERS) m@@52))
))) (and (forall ((m@@53 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@53)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@53)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.LegacyDeviceList__GLOBALS) m@@53) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.LegacyDeviceList__GLOBALS) m@@53)))
 :qid |KbdCreateClassObjectbpl.4212:16|
 :skolemid |1382|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.LegacyDeviceList__GLOBALS) m@@53))
)) (forall ((m@@54 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@54)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@54)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Length__UNICODE_STRING) m@@54) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Length__UNICODE_STRING) m@@54)))
 :qid |KbdCreateClassObjectbpl.4213:16|
 :skolemid |1383|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Length__UNICODE_STRING) m@@54))
)))) (and (and (forall ((m@@55 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@55)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@55)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Link__DEVICE_EXTENSION) m@@55) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Link__DEVICE_EXTENSION) m@@55)))
 :qid |KbdCreateClassObjectbpl.4214:16|
 :skolemid |1384|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Link__DEVICE_EXTENSION) m@@55))
)) (forall ((m@@56 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@56)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@56)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Lock___unnamed_4_a97c65a1) m@@56) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Lock___unnamed_4_a97c65a1) m@@56)))
 :qid |KbdCreateClassObjectbpl.4215:16|
 :skolemid |1385|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Lock___unnamed_4_a97c65a1) m@@56))
))) (and (forall ((m@@57 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@57)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@57)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK) m@@57) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK) m@@57)))
 :qid |KbdCreateClassObjectbpl.4216:16|
 :skolemid |1386|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK) m@@57))
)) (forall ((m@@58 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@58)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@58)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK) m@@58) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK) m@@58)))
 :qid |KbdCreateClassObjectbpl.4217:16|
 :skolemid |1387|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK) m@@58))
))))) (and (and (and (forall ((m@@59 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@59)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@59)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MaximumLength__UNICODE_STRING) m@@59) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MaximumLength__UNICODE_STRING) m@@59)))
 :qid |KbdCreateClassObjectbpl.4218:16|
 :skolemid |1388|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MaximumLength__UNICODE_STRING) m@@59))
)) (forall ((m@@60 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@60)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@60)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinDeviceWakeState__DEVICE_EXTENSION) m@@60) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinDeviceWakeState__DEVICE_EXTENSION) m@@60)))
 :qid |KbdCreateClassObjectbpl.4219:16|
 :skolemid |1389|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinDeviceWakeState__DEVICE_EXTENSION) m@@60))
))) (and (forall ((m@@61 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@61)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@61)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinSystemWakeState__DEVICE_EXTENSION) m@@61) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinSystemWakeState__DEVICE_EXTENSION) m@@61)))
 :qid |KbdCreateClassObjectbpl.4220:16|
 :skolemid |1390|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinSystemWakeState__DEVICE_EXTENSION) m@@61))
)) (forall ((m@@62 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@62)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@62)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinorFunction__IO_STACK_LOCATION) m@@62) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinorFunction__IO_STACK_LOCATION) m@@62)))
 :qid |KbdCreateClassObjectbpl.4221:16|
 :skolemid |1391|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinorFunction__IO_STACK_LOCATION) m@@62))
)))) (and (and (forall ((m@@63 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@63)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@63)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Mutex__GLOBALS) m@@63) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Mutex__GLOBALS) m@@63)))
 :qid |KbdCreateClassObjectbpl.4222:16|
 :skolemid |1392|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Mutex__GLOBALS) m@@63))
)) (forall ((m@@64 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@64)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@64)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NpxIrql___unnamed_1_29794256) m@@64) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.NpxIrql___unnamed_1_29794256) m@@64)))
 :qid |KbdCreateClassObjectbpl.4223:16|
 :skolemid |1393|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NpxIrql___unnamed_1_29794256) m@@64))
))) (and (forall ((m@@65 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@65)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@65)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES) m@@65) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES) m@@65)))
 :qid |KbdCreateClassObjectbpl.4224:16|
 :skolemid |1394|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES) m@@65))
)) (forall ((m@@66 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@66)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@66)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NumberOfIndicators__KEYBOARD_ATTRIBUTES) m@@66) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.NumberOfIndicators__KEYBOARD_ATTRIBUTES) m@@66)))
 :qid |KbdCreateClassObjectbpl.4225:16|
 :skolemid |1395|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NumberOfIndicators__KEYBOARD_ATTRIBUTES) m@@66))
)))))))) (and (and (and (and (and (and (forall ((m@@67 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@67)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@67)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NumberOfKeysTotal__KEYBOARD_ATTRIBUTES) m@@67) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.NumberOfKeysTotal__KEYBOARD_ATTRIBUTES) m@@67)))
 :qid |KbdCreateClassObjectbpl.4226:16|
 :skolemid |1396|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.NumberOfKeysTotal__KEYBOARD_ATTRIBUTES) m@@67))
)) (forall ((m@@68 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@68)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@68)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.OkayToLogOverflow__DEVICE_EXTENSION) m@@68) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.OkayToLogOverflow__DEVICE_EXTENSION) m@@68)))
 :qid |KbdCreateClassObjectbpl.4227:16|
 :skolemid |1397|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.OkayToLogOverflow__DEVICE_EXTENSION) m@@68))
))) (and (forall ((m@@69 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@69)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@69)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PCHAR) m@@69) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PCHAR) m@@69)))
 :qid |KbdCreateClassObjectbpl.4228:16|
 :skolemid |1398|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PCHAR) m@@69))
)) (forall ((m@@70 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@70)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@70)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PDO__DEVICE_EXTENSION) m@@70) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PDO__DEVICE_EXTENSION) m@@70)))
 :qid |KbdCreateClassObjectbpl.4229:16|
 :skolemid |1399|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PDO__DEVICE_EXTENSION) m@@70))
)))) (and (and (forall ((m@@71 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@71)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@71)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PUINT2) m@@71) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PUINT2) m@@71)))
 :qid |KbdCreateClassObjectbpl.4230:16|
 :skolemid |1400|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PUINT2) m@@71))
)) (forall ((m@@72 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@72)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@72)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PUINT4) m@@72) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PUINT4) m@@72)))
 :qid |KbdCreateClassObjectbpl.4231:16|
 :skolemid |1401|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PUINT4) m@@72))
))) (and (forall ((m@@73 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@73)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@73)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PVOID) m@@73) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PVOID) m@@73)))
 :qid |KbdCreateClassObjectbpl.4232:16|
 :skolemid |1402|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PVOID) m@@73))
)) (forall ((m@@74 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@74)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@74)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DEVICE_EXTENSION) m@@74) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_EXTENSION) m@@74)))
 :qid |KbdCreateClassObjectbpl.4233:16|
 :skolemid |1403|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DEVICE_EXTENSION) m@@74))
))))) (and (and (and (forall ((m@@75 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@75)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@75)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DEVICE_OBJECT) m@@75) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT) m@@75)))
 :qid |KbdCreateClassObjectbpl.4234:16|
 :skolemid |1404|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DEVICE_OBJECT) m@@75))
)) (forall ((m@@76 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@76)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@76)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DRIVER_OBJECT) m@@76) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DRIVER_OBJECT) m@@76)))
 :qid |KbdCreateClassObjectbpl.4235:16|
 :skolemid |1405|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DRIVER_OBJECT) m@@76))
))) (and (forall ((m@@77 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@77)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@77)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_FAST_MUTEX) m@@77) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_FAST_MUTEX) m@@77)))
 :qid |KbdCreateClassObjectbpl.4236:16|
 :skolemid |1406|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_FAST_MUTEX) m@@77))
)) (forall ((m@@78 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@78)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@78)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_IO_REMOVE_LOCK) m@@78) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_IO_REMOVE_LOCK) m@@78)))
 :qid |KbdCreateClassObjectbpl.4237:16|
 :skolemid |1407|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_IO_REMOVE_LOCK) m@@78))
)))) (and (and (forall ((m@@79 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@79)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@79)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_KEYBOARD_INPUT_DATA) m@@79) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_KEYBOARD_INPUT_DATA) m@@79)))
 :qid |KbdCreateClassObjectbpl.4238:16|
 :skolemid |1408|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_KEYBOARD_INPUT_DATA) m@@79))
)) (forall ((m@@80 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@80)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@80)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_LIST_ENTRY) m@@80) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_LIST_ENTRY) m@@80)))
 :qid |KbdCreateClassObjectbpl.4239:16|
 :skolemid |1409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_LIST_ENTRY) m@@80))
))) (and (forall ((m@@81 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@81)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@81)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_UNICODE_STRING) m@@81) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_UNICODE_STRING) m@@81)))
 :qid |KbdCreateClassObjectbpl.4240:16|
 :skolemid |1410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_UNICODE_STRING) m@@81))
)) (forall ((m@@82 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@82)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@82)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PnP__DEVICE_EXTENSION) m@@82) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PnP__DEVICE_EXTENSION) m@@82)))
 :qid |KbdCreateClassObjectbpl.4241:16|
 :skolemid |1411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.PnP__DEVICE_EXTENSION) m@@82))
)))))) (and (and (and (and (forall ((m@@83 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@83)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@83)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.QueryWmiDataBlock__WMILIB_CONTEXT) m@@83) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.QueryWmiDataBlock__WMILIB_CONTEXT) m@@83)))
 :qid |KbdCreateClassObjectbpl.4242:16|
 :skolemid |1412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.QueryWmiDataBlock__WMILIB_CONTEXT) m@@83))
)) (forall ((m@@84 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@84)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@84)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.QueryWmiRegInfo__WMILIB_CONTEXT) m@@84) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.QueryWmiRegInfo__WMILIB_CONTEXT) m@@84)))
 :qid |KbdCreateClassObjectbpl.4243:16|
 :skolemid |1413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.QueryWmiRegInfo__WMILIB_CONTEXT) m@@84))
))) (and (forall ((m@@85 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@85)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@85)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Rate__KEYBOARD_TYPEMATIC_PARAMETERS) m@@85) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Rate__KEYBOARD_TYPEMATIC_PARAMETERS) m@@85)))
 :qid |KbdCreateClassObjectbpl.4244:16|
 :skolemid |1414|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Rate__KEYBOARD_TYPEMATIC_PARAMETERS) m@@85))
)) (forall ((m@@86 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@86)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@86)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ReadQueue__DEVICE_EXTENSION) m@@86) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.ReadQueue__DEVICE_EXTENSION) m@@86)))
 :qid |KbdCreateClassObjectbpl.4245:16|
 :skolemid |1415|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.ReadQueue__DEVICE_EXTENSION) m@@86))
)))) (and (and (forall ((m@@87 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@87)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@87)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.RemoveLock__DEVICE_EXTENSION) m@@87) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.RemoveLock__DEVICE_EXTENSION) m@@87)))
 :qid |KbdCreateClassObjectbpl.4246:16|
 :skolemid |1416|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.RemoveLock__DEVICE_EXTENSION) m@@87))
)) (forall ((m@@88 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@88)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@88)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Removed__IO_REMOVE_LOCK_COMMON_BLOCK) m@@88) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Removed__IO_REMOVE_LOCK_COMMON_BLOCK) m@@88)))
 :qid |KbdCreateClassObjectbpl.4247:16|
 :skolemid |1417|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Removed__IO_REMOVE_LOCK_COMMON_BLOCK) m@@88))
))) (and (forall ((m@@89 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@89)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@89)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Reserved1__IO_REMOVE_LOCK_DBG_BLOCK) m@@89) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Reserved1__IO_REMOVE_LOCK_DBG_BLOCK) m@@89)))
 :qid |KbdCreateClassObjectbpl.4248:16|
 :skolemid |1418|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Reserved1__IO_REMOVE_LOCK_DBG_BLOCK) m@@89))
)) (forall ((m@@90 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@90)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@90)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Reserved2__IO_REMOVE_LOCK_DBG_BLOCK) m@@90) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Reserved2__IO_REMOVE_LOCK_DBG_BLOCK) m@@90)))
 :qid |KbdCreateClassObjectbpl.4249:16|
 :skolemid |1419|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Reserved2__IO_REMOVE_LOCK_DBG_BLOCK) m@@90))
))))) (and (and (and (forall ((m@@91 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@91)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@91)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Reserved__IO_REMOVE_LOCK_COMMON_BLOCK) m@@91) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Reserved__IO_REMOVE_LOCK_COMMON_BLOCK) m@@91)))
 :qid |KbdCreateClassObjectbpl.4250:16|
 :skolemid |1420|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Reserved__IO_REMOVE_LOCK_COMMON_BLOCK) m@@91))
)) (forall ((m@@92 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@92)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@92)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Self__DEVICE_EXTENSION) m@@92) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) m@@92)))
 :qid |KbdCreateClassObjectbpl.4251:16|
 :skolemid |1421|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Self__DEVICE_EXTENSION) m@@92))
))) (and (forall ((m@@93 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@93)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@93)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SequenceNumber__DEVICE_EXTENSION) m@@93) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SequenceNumber__DEVICE_EXTENSION) m@@93)))
 :qid |KbdCreateClassObjectbpl.4252:16|
 :skolemid |1422|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SequenceNumber__DEVICE_EXTENSION) m@@93))
)) (forall ((m@@94 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@94)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@94)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SetWmiDataBlock__WMILIB_CONTEXT) m@@94) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SetWmiDataBlock__WMILIB_CONTEXT) m@@94)))
 :qid |KbdCreateClassObjectbpl.4253:16|
 :skolemid |1423|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SetWmiDataBlock__WMILIB_CONTEXT) m@@94))
)))) (and (and (forall ((m@@95 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@95)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@95)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SetWmiDataItem__WMILIB_CONTEXT) m@@95) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SetWmiDataItem__WMILIB_CONTEXT) m@@95)))
 :qid |KbdCreateClassObjectbpl.4254:16|
 :skolemid |1424|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SetWmiDataItem__WMILIB_CONTEXT) m@@95))
)) (forall ((m@@96 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@96)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@96)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SignalState__DISPATCHER_HEADER) m@@96) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SignalState__DISPATCHER_HEADER) m@@96)))
 :qid |KbdCreateClassObjectbpl.4255:16|
 :skolemid |1425|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SignalState__DISPATCHER_HEADER) m@@96))
))) (and (forall ((m@@97 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@97)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@97)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Signalling___unnamed_1_29794256) m@@97) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Signalling___unnamed_1_29794256) m@@97)))
 :qid |KbdCreateClassObjectbpl.4256:16|
 :skolemid |1426|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Signalling___unnamed_1_29794256) m@@97))
)) (forall ((m@@98 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@98)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@98)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Signature__IO_REMOVE_LOCK_DBG_BLOCK) m@@98) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Signature__IO_REMOVE_LOCK_DBG_BLOCK) m@@98)))
 :qid |KbdCreateClassObjectbpl.4257:16|
 :skolemid |1427|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Signature__IO_REMOVE_LOCK_DBG_BLOCK) m@@98))
))))))) (and (and (and (and (and (forall ((m@@99 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@99)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@99)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Size___unnamed_1_2ef8da39) m@@99) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Size___unnamed_1_2ef8da39) m@@99)))
 :qid |KbdCreateClassObjectbpl.4258:16|
 :skolemid |1428|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Size___unnamed_1_2ef8da39) m@@99))
)) (forall ((m@@100 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@100)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@100)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SpinLock__DEVICE_EXTENSION) m@@100) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SpinLock__DEVICE_EXTENSION) m@@100)))
 :qid |KbdCreateClassObjectbpl.4259:16|
 :skolemid |1429|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SpinLock__DEVICE_EXTENSION) m@@100))
))) (and (forall ((m@@101 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@101)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@101)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Spin__IO_REMOVE_LOCK_DBG_BLOCK) m@@101) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Spin__IO_REMOVE_LOCK_DBG_BLOCK) m@@101)))
 :qid |KbdCreateClassObjectbpl.4260:16|
 :skolemid |1430|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Spin__IO_REMOVE_LOCK_DBG_BLOCK) m@@101))
)) (forall ((m@@102 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@102)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@102)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Started__DEVICE_EXTENSION) m@@102) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Started__DEVICE_EXTENSION) m@@102)))
 :qid |KbdCreateClassObjectbpl.4261:16|
 :skolemid |1431|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Started__DEVICE_EXTENSION) m@@102))
)))) (and (and (forall ((m@@103 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@103)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@103)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Subtype__KEYBOARD_ID) m@@103) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Subtype__KEYBOARD_ID) m@@103)))
 :qid |KbdCreateClassObjectbpl.4262:16|
 :skolemid |1432|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Subtype__KEYBOARD_ID) m@@103))
)) (forall ((m@@104 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@104)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@104)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SurpriseRemoved__DEVICE_EXTENSION) m@@104) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SurpriseRemoved__DEVICE_EXTENSION) m@@104)))
 :qid |KbdCreateClassObjectbpl.4263:16|
 :skolemid |1433|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SurpriseRemoved__DEVICE_EXTENSION) m@@104))
))) (and (forall ((m@@105 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@105)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@105)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SystemState__DEVICE_EXTENSION) m@@105) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SystemState__DEVICE_EXTENSION) m@@105)))
 :qid |KbdCreateClassObjectbpl.4264:16|
 :skolemid |1434|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SystemState__DEVICE_EXTENSION) m@@105))
)) (forall ((m@@106 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@106)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@106)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SystemToDeviceState__DEVICE_EXTENSION) m@@106) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.SystemToDeviceState__DEVICE_EXTENSION) m@@106)))
 :qid |KbdCreateClassObjectbpl.4265:16|
 :skolemid |1435|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.SystemToDeviceState__DEVICE_EXTENSION) m@@106))
))))) (and (and (and (forall ((m@@107 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@107)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@107)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TargetNotifyHandle__DEVICE_EXTENSION) m@@107) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.TargetNotifyHandle__DEVICE_EXTENSION) m@@107)))
 :qid |KbdCreateClassObjectbpl.4266:16|
 :skolemid |1436|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TargetNotifyHandle__DEVICE_EXTENSION) m@@107))
)) (forall ((m@@108 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@108)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@108)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TopPort__DEVICE_EXTENSION) m@@108) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.TopPort__DEVICE_EXTENSION) m@@108)))
 :qid |KbdCreateClassObjectbpl.4267:16|
 :skolemid |1437|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TopPort__DEVICE_EXTENSION) m@@108))
))) (and (forall ((m@@109 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@109)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@109)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TrueClassDevice__DEVICE_EXTENSION) m@@109) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.TrueClassDevice__DEVICE_EXTENSION) m@@109)))
 :qid |KbdCreateClassObjectbpl.4268:16|
 :skolemid |1438|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TrueClassDevice__DEVICE_EXTENSION) m@@109))
)) (forall ((m@@110 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@110)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@110)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TrustedSubsystemCount__DEVICE_EXTENSION) m@@110) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.TrustedSubsystemCount__DEVICE_EXTENSION) m@@110)))
 :qid |KbdCreateClassObjectbpl.4269:16|
 :skolemid |1439|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.TrustedSubsystemCount__DEVICE_EXTENSION) m@@110))
)))) (and (and (forall ((m@@111 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@111)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@111)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Type__KEYBOARD_ID) m@@111) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Type__KEYBOARD_ID) m@@111)))
 :qid |KbdCreateClassObjectbpl.4270:16|
 :skolemid |1440|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Type__KEYBOARD_ID) m@@111))
)) (forall ((m@@112 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@112)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@112)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Type___unnamed_4_5ca00198) m@@112) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Type___unnamed_4_5ca00198) m@@112)))
 :qid |KbdCreateClassObjectbpl.4271:16|
 :skolemid |1441|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Type___unnamed_4_5ca00198) m@@112))
))) (and (forall ((m@@113 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@113)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@113)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UCHAR) m@@113) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UCHAR) m@@113)))
 :qid |KbdCreateClassObjectbpl.4272:16|
 :skolemid |1442|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UCHAR) m@@113))
)) (forall ((m@@114 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@114)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@114)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UINT2) m@@114) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UINT2) m@@114)))
 :qid |KbdCreateClassObjectbpl.4273:16|
 :skolemid |1443|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UINT2) m@@114))
)))))) (and (and (and (and (forall ((m@@115 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@115)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@115)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UINT4) m@@115) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UINT4) m@@115)))
 :qid |KbdCreateClassObjectbpl.4274:16|
 :skolemid |1444|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UINT4) m@@115))
)) (forall ((m@@116 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@116)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@116)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UnitId__DEVICE_EXTENSION) m@@116) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UnitId__DEVICE_EXTENSION) m@@116)))
 :qid |KbdCreateClassObjectbpl.4275:16|
 :skolemid |1445|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UnitId__DEVICE_EXTENSION) m@@116))
))) (and (forall ((m@@117 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@117)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@117)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UnitId__KEYBOARD_INDICATOR_PARAMETERS) m@@117) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UnitId__KEYBOARD_INDICATOR_PARAMETERS) m@@117)))
 :qid |KbdCreateClassObjectbpl.4276:16|
 :skolemid |1446|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UnitId__KEYBOARD_INDICATOR_PARAMETERS) m@@117))
)) (forall ((m@@118 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@118)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@118)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UnitId__KEYBOARD_TYPEMATIC_PARAMETERS) m@@118) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UnitId__KEYBOARD_TYPEMATIC_PARAMETERS) m@@118)))
 :qid |KbdCreateClassObjectbpl.4277:16|
 :skolemid |1447|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.UnitId__KEYBOARD_TYPEMATIC_PARAMETERS) m@@118))
)))) (and (and (forall ((m@@119 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@119)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@119)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WaitWakeEnabled__DEVICE_EXTENSION) m@@119) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.WaitWakeEnabled__DEVICE_EXTENSION) m@@119)))
 :qid |KbdCreateClassObjectbpl.4278:16|
 :skolemid |1448|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WaitWakeEnabled__DEVICE_EXTENSION) m@@119))
)) (forall ((m@@120 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@120)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@120)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WaitWakeIrp__DEVICE_EXTENSION) m@@120) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.WaitWakeIrp__DEVICE_EXTENSION) m@@120)))
 :qid |KbdCreateClassObjectbpl.4279:16|
 :skolemid |1449|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WaitWakeIrp__DEVICE_EXTENSION) m@@120))
))) (and (forall ((m@@121 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@121)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@121)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WaitWakeSpinLock__DEVICE_EXTENSION) m@@121) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.WaitWakeSpinLock__DEVICE_EXTENSION) m@@121)))
 :qid |KbdCreateClassObjectbpl.4280:16|
 :skolemid |1450|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WaitWakeSpinLock__DEVICE_EXTENSION) m@@121))
)) (forall ((m@@122 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@122)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@122)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WmiFunctionControl__WMILIB_CONTEXT) m@@122) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.WmiFunctionControl__WMILIB_CONTEXT) m@@122)))
 :qid |KbdCreateClassObjectbpl.4281:16|
 :skolemid |1451|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.WmiFunctionControl__WMILIB_CONTEXT) m@@122))
))))) (and (and (and (forall ((m@@123 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@16 (Base m@@123)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@123)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T._POOL_TYPE) m@@123) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T._POOL_TYPE) m@@123)))
 :qid |KbdCreateClassObjectbpl.4282:16|
 :skolemid |1452|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T._POOL_TYPE) m@@123))
)) (= $result.KbdCreateClassObject$3353.0$1$@0 $status$6$3386.24$KbdCreateClassObject$20@5)) (and (= Mem@46 Mem@45) (= Res_SPIN_LOCK@27 Res_SPIN_LOCK@26))) (and (and (= Res_DEV_OBJ_INIT@27 Res_DEV_OBJ_INIT@26) (= Res_DEV_EXTN@27 Res_DEV_EXTN@26)) (and (= Res_DEVICE_STACK@27 Res_DEVICE_STACK@26) (= (ControlFlow 0 28) 2)))))))) GeneratedUnifiedExit_correct))))))))
(let ((label_154_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0) (=> (and (= Res_DEV_OBJ_INIT@26 Res_DEV_OBJ_INIT@24) (= Res_DEVICE_STACK@26 Res_DEVICE_STACK@24)) (=> (and (and (= Mem@45 Mem@42) (= Res_DEV_EXTN@26 Res_DEV_EXTN@24)) (and (= Res_SPIN_LOCK@26 Res_SPIN_LOCK@24) (= (ControlFlow 0 33) 28))) label_162_correct)))))
(let ((label_154_true_correct  (=> (and (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0)) (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (and (=> (= (ControlFlow 0 31) (- 0 32)) (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@24 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 1)))) (=> (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@24 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 1))) (=> (= Mem@43 Mem@42) (=> (and (and (and (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@25 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 0))) (=> true (and (= Res_DEV_OBJ_INIT@25 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@24 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 0)) (= Res_DEV_EXTN@25 (|Store__T@[Int]Int_| Res_DEV_EXTN@24 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) 0))))) (and (=> (not true) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@25 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) (|Select__T@[Int]Int_| Res_DEV_EXTN@24 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)))))) (=> (not true) (and (= Res_DEV_OBJ_INIT@25 Res_DEV_OBJ_INIT@24) (= Res_DEV_EXTN@25 Res_DEV_EXTN@24))))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@15 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@15) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@24 r@@15) (|Select__T@[Int]Int_| Res_DEVICE_STACK@25 r@@15)))
 :qid |KbdCreateClassObjectbpl.3601:63|
 :skolemid |1207|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@25 r@@15))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))))) (forall ((r@@16 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@16) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) r@@16)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@24 r@@16) (|Select__T@[Int]Int_| Res_DEV_EXTN@25 r@@16)))
 :qid |KbdCreateClassObjectbpl.3605:196|
 :skolemid |1208|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@25 r@@16))
))))) (=> (and (and (and (and (and (Subset Empty (Union (Union Empty Empty) (Singleton call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) (forall ((r@@17 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@17) (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 r@@17)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 r@@17) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 r@@17)))
 :qid |KbdCreateClassObjectbpl.3609:125|
 :skolemid |1209|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 r@@17))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@18 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@18) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@24 r@@18) (|Select__T@[Int]Int_| Res_SPIN_LOCK@25 r@@18)))
 :qid |KbdCreateClassObjectbpl.3613:63|
 :skolemid |1210|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@25 r@@18))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@25 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@25) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.MinorFunction__IO_STACK_LOCATION) _m@@25) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.MinorFunction__IO_STACK_LOCATION) _m@@25)))
 :qid |KbdCreateClassObjectbpl.3615:64|
 :skolemid |1211|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.MinorFunction__IO_STACK_LOCATION) _m@@25))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@26 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@26) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@26) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@26)))
 :qid |KbdCreateClassObjectbpl.3617:64|
 :skolemid |1212|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@26))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@27 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@27) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) _m@@27) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.DeviceExtension__DEVICE_OBJECT) _m@@27)))
 :qid |KbdCreateClassObjectbpl.3619:64|
 :skolemid |1213|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.DeviceExtension__DEVICE_OBJECT) _m@@27))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@28 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@28) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Self__DEVICE_EXTENSION) _m@@28) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Self__DEVICE_EXTENSION) _m@@28)))
 :qid |KbdCreateClassObjectbpl.3621:64|
 :skolemid |1214|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Self__DEVICE_EXTENSION) _m@@28))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@29 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@29) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Started__DEVICE_EXTENSION) _m@@29) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Started__DEVICE_EXTENSION) _m@@29)))
 :qid |KbdCreateClassObjectbpl.3623:64|
 :skolemid |1215|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Started__DEVICE_EXTENSION) _m@@29))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@30 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@30) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.GrandMaster__GLOBALS) _m@@30) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.GrandMaster__GLOBALS) _m@@30)))
 :qid |KbdCreateClassObjectbpl.3625:64|
 :skolemid |1216|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.GrandMaster__GLOBALS) _m@@30))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@31 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@31) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.P_DEVICE_OBJECT) _m@@31) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.P_DEVICE_OBJECT) _m@@31)))
 :qid |KbdCreateClassObjectbpl.3627:64|
 :skolemid |1217|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.P_DEVICE_OBJECT) _m@@31))
))) (= Mem@44 (|Store__T@[name][Int]Int_| Mem@43 T.P_DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201 0)))) (and (= Res_DEV_OBJ_INIT@26 Res_DEV_OBJ_INIT@25) (= Res_DEVICE_STACK@26 Res_DEVICE_STACK@25))) (and (and (= Mem@45 Mem@44) (= Res_DEV_EXTN@26 Res_DEV_EXTN@25)) (and (= Res_SPIN_LOCK@26 Res_SPIN_LOCK@25) (= (ControlFlow 0 31) 28))))) label_162_correct))))))))
(let ((label_149_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@1)) 0) (= Res_SPIN_LOCK@24 Res_SPIN_LOCK@22)) (=> (and (and (= Res_DEV_EXTN@24 Res_DEV_EXTN@22) (= Mem@42 Mem@39)) (and (= Res_DEVICE_STACK@24 Res_DEVICE_STACK@22) (= Res_DEV_OBJ_INIT@24 Res_DEV_OBJ_INIT@22))) (and (=> (= (ControlFlow 0 36) 31) label_154_true_correct) (=> (= (ControlFlow 0 36) 33) label_154_false_correct))))))
(let ((label_149_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@1)) 0)) (=> (and (and (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@1))) (= Mem@40 Mem@39)) (and (= Res_DEV_OBJ_INIT@23 Res_DEV_OBJ_INIT@22) (= Res_DEV_EXTN@23 Res_DEV_EXTN@22))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@19 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@19) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@22 r@@19) (|Select__T@[Int]Int_| Res_DEVICE_STACK@23 r@@19)))
 :qid |KbdCreateClassObjectbpl.3405:63|
 :skolemid |1163|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@23 r@@19))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@20 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@20) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@22 r@@20) (|Select__T@[Int]Int_| Res_DEV_EXTN@23 r@@20)))
 :qid |KbdCreateClassObjectbpl.3409:63|
 :skolemid |1164|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@23 r@@20))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@21 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@21) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@22 r@@21) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@23 r@@21)))
 :qid |KbdCreateClassObjectbpl.3413:63|
 :skolemid |1165|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@23 r@@21))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@22 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@22) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@22 r@@22) (|Select__T@[Int]Int_| Res_SPIN_LOCK@23 r@@22)))
 :qid |KbdCreateClassObjectbpl.3417:63|
 :skolemid |1166|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@23 r@@22))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@32 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@32) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.MinorFunction__IO_STACK_LOCATION) _m@@32) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.MinorFunction__IO_STACK_LOCATION) _m@@32)))
 :qid |KbdCreateClassObjectbpl.3419:64|
 :skolemid |1167|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.MinorFunction__IO_STACK_LOCATION) _m@@32))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@33 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@33) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@33) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@33)))
 :qid |KbdCreateClassObjectbpl.3421:64|
 :skolemid |1168|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@33))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@34 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@34) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.DeviceExtension__DEVICE_OBJECT) _m@@34) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.DeviceExtension__DEVICE_OBJECT) _m@@34)))
 :qid |KbdCreateClassObjectbpl.3423:64|
 :skolemid |1169|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.DeviceExtension__DEVICE_OBJECT) _m@@34))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@35 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@35) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Self__DEVICE_EXTENSION) _m@@35) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Self__DEVICE_EXTENSION) _m@@35)))
 :qid |KbdCreateClassObjectbpl.3425:64|
 :skolemid |1170|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Self__DEVICE_EXTENSION) _m@@35))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@36 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@36) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Started__DEVICE_EXTENSION) _m@@36) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Started__DEVICE_EXTENSION) _m@@36)))
 :qid |KbdCreateClassObjectbpl.3427:64|
 :skolemid |1171|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Started__DEVICE_EXTENSION) _m@@36))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@37 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@37) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.GrandMaster__GLOBALS) _m@@37) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.GrandMaster__GLOBALS) _m@@37)))
 :qid |KbdCreateClassObjectbpl.3429:64|
 :skolemid |1172|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.GrandMaster__GLOBALS) _m@@37))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@38 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@38) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.P_DEVICE_OBJECT) _m@@38) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.P_DEVICE_OBJECT) _m@@38)))
 :qid |KbdCreateClassObjectbpl.3431:64|
 :skolemid |1173|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.P_DEVICE_OBJECT) _m@@38))
))) (and (= Mem@41 (|Store__T@[name][Int]Int_| Mem@40 T.InputData__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@1) 0))) (= Res_SPIN_LOCK@24 Res_SPIN_LOCK@23))) (and (and (= Res_DEV_EXTN@24 Res_DEV_EXTN@23) (= Mem@42 Mem@41)) (and (= Res_DEVICE_STACK@24 Res_DEVICE_STACK@23) (= Res_DEV_OBJ_INIT@24 Res_DEV_OBJ_INIT@23)))))) (and (=> (= (ControlFlow 0 35) 31) label_154_true_correct) (=> (= (ControlFlow 0 35) 33) label_154_false_correct))))))
(let ((label_148_true_correct  (=> (not (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 0)) (and (=> (= (ControlFlow 0 37) 35) label_149_true_correct) (=> (= (ControlFlow 0 37) 36) label_149_false_correct)))))
(let ((label_148_false_correct  (=> (and (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 0) (= Res_SPIN_LOCK@24 Res_SPIN_LOCK@22)) (=> (and (and (= Res_DEV_EXTN@24 Res_DEV_EXTN@22) (= Mem@42 Mem@39)) (and (= Res_DEVICE_STACK@24 Res_DEVICE_STACK@22) (= Res_DEV_OBJ_INIT@24 Res_DEV_OBJ_INIT@22))) (and (=> (= (ControlFlow 0 34) 31) label_154_true_correct) (=> (= (ControlFlow 0 34) 33) label_154_false_correct))))))
(let ((label_142_correct  (and (=> (= (ControlFlow 0 39) (- 0 46)) (forall ((_H_x@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@20 1) _H_x@@3) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3)))) _H_x@@3) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3))) 1)))
 :qid |KbdCreateClassObjectbpl.3796:18|
 :skolemid |1259|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3)))
))) (=> (forall ((_H_x@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@20 1) _H_x@@4) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4)))) _H_x@@4) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4))) 1)))
 :qid |KbdCreateClassObjectbpl.3796:18|
 :skolemid |1259|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4)))
)) (and (=> (= (ControlFlow 0 39) (- 0 45)) (forall ((_H_z@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@20 1) _H_z@@7) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7)))) _H_z@@7)))
 :qid |KbdCreateClassObjectbpl.3798:18|
 :skolemid |1260|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7)))
))) (=> (forall ((_H_z@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@20 1) _H_z@@8) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@8))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@8)))) _H_z@@8)))
 :qid |KbdCreateClassObjectbpl.3798:18|
 :skolemid |1260|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@8)))
)) (and (=> (= (ControlFlow 0 39) (- 0 44)) (and (Subset Empty (Inverse Res_DEV_EXTN@20 1)) (forall ((_H_z@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@20 1) _H_z@@9) true)
 :qid |KbdCreateClassObjectbpl.3800:63|
 :skolemid |1261|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@20 1) _H_z@@9))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@20 1)) (forall ((_H_z@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@20 1) _H_z@@10) true)
 :qid |KbdCreateClassObjectbpl.3800:63|
 :skolemid |1261|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@20 1) _H_z@@10))
))) (and (=> (= (ControlFlow 0 39) (- 0 43)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 39) (- 0 42)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 39) (- 0 41)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@3) (or (= _H_y@@3 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (MINUS_LEFT_PTR _H_y@@3 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.3806:235|
 :skolemid |1262|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@3))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@4) (or (= _H_y@@4 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 (MINUS_LEFT_PTR _H_y@@4 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.3806:235|
 :skolemid |1262|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@4))
)))) (and (=> (= (ControlFlow 0 39) (- 0 40)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (and (forall ((_H_x@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@21 1) _H_x@@5) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5)))) _H_x@@5) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5))) 1)))
 :qid |KbdCreateClassObjectbpl.3810:17|
 :skolemid |1263|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5)))
)) (forall ((_H_z@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@21 1) _H_z@@11) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@11))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@11)))) _H_z@@11)))
 :qid |KbdCreateClassObjectbpl.3812:17|
 :skolemid |1264|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@11)))
))) (=> (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@21 1)) (forall ((_H_z@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@21 1) _H_z@@12) true)
 :qid |KbdCreateClassObjectbpl.3814:62|
 :skolemid |1265|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@21 1) _H_z@@12))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@5) (or (= _H_y@@5 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 (MINUS_LEFT_PTR _H_y@@5 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.3820:234|
 :skolemid |1266|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@5))
)))))) (=> (and (and (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@37 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@21 Res_DEV_OBJ_INIT@20) (= Res_DEV_EXTN@21 Res_DEV_EXTN@20))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@23 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@23) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@20 r@@23) (|Select__T@[Int]Int_| Res_DEVICE_STACK@21 r@@23)))
 :qid |KbdCreateClassObjectbpl.3833:63|
 :skolemid |1267|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@21 r@@23))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@24 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@24) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@20 r@@24) (|Select__T@[Int]Int_| Res_DEV_EXTN@21 r@@24)))
 :qid |KbdCreateClassObjectbpl.3837:63|
 :skolemid |1268|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@21 r@@24))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@25 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@25) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 r@@25) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 r@@25)))
 :qid |KbdCreateClassObjectbpl.3841:63|
 :skolemid |1269|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 r@@25))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@26 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@26) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@20 r@@26) (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 r@@26)))
 :qid |KbdCreateClassObjectbpl.3845:63|
 :skolemid |1270|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 r@@26))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@39 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@39) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.MinorFunction__IO_STACK_LOCATION) _m@@39) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.MinorFunction__IO_STACK_LOCATION) _m@@39)))
 :qid |KbdCreateClassObjectbpl.3847:64|
 :skolemid |1271|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.MinorFunction__IO_STACK_LOCATION) _m@@39))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@40 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@40) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@40) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@40)))
 :qid |KbdCreateClassObjectbpl.3849:64|
 :skolemid |1272|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@40))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@41 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@41) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) _m@@41) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.DeviceExtension__DEVICE_OBJECT) _m@@41)))
 :qid |KbdCreateClassObjectbpl.3851:64|
 :skolemid |1273|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) _m@@41))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@42 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@42) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) _m@@42) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Self__DEVICE_EXTENSION) _m@@42)))
 :qid |KbdCreateClassObjectbpl.3853:64|
 :skolemid |1274|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) _m@@42))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@43 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@43) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Started__DEVICE_EXTENSION) _m@@43) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.Started__DEVICE_EXTENSION) _m@@43)))
 :qid |KbdCreateClassObjectbpl.3855:64|
 :skolemid |1275|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Started__DEVICE_EXTENSION) _m@@43))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@44 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@44) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) _m@@44) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.GrandMaster__GLOBALS) _m@@44)))
 :qid |KbdCreateClassObjectbpl.3857:64|
 :skolemid |1276|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) _m@@44))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@45 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@45) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.P_DEVICE_OBJECT) _m@@45) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) _m@@45)))
 :qid |KbdCreateClassObjectbpl.3859:64|
 :skolemid |1277|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.P_DEVICE_OBJECT) _m@@45))
))) (= Res_DEV_OBJ_INIT@22 Res_DEV_OBJ_INIT@21)) (and (and (= Res_DEVICE_STACK@22 Res_DEVICE_STACK@21) (= Mem@39 Mem@38)) (and (= Res_DEV_EXTN@22 Res_DEV_EXTN@21) (= Res_SPIN_LOCK@22 Res_SPIN_LOCK@21)))))) (and (=> (= (ControlFlow 0 39) 37) label_148_true_correct) (=> (= (ControlFlow 0 39) 34) label_148_false_correct)))))))))))))))))))))
(let ((label_145_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0) (= (ControlFlow 0 48) 39)) label_142_correct)))
(let ((label_145_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0)) (=> (and (= $result.question.21$@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@37 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (= (ControlFlow 0 47) 39)) label_142_correct))))
(let ((label_141_true_correct  (=> (not (= $errorCode$9$3389.24$KbdCreateClassObject$20@4 0)) (and (=> (= (ControlFlow 0 49) 47) label_145_true_correct) (=> (= (ControlFlow 0 49) 48) label_145_false_correct)))))
(let ((label_141_false_correct  (=> (and (= $errorCode$9$3389.24$KbdCreateClassObject$20@4 0) (= Res_DEV_OBJ_INIT@22 Res_DEV_OBJ_INIT@20)) (=> (and (and (= Res_DEVICE_STACK@22 Res_DEVICE_STACK@20) (= Mem@39 Mem@37)) (and (= Res_DEV_EXTN@22 Res_DEV_EXTN@20) (= Res_SPIN_LOCK@22 Res_SPIN_LOCK@20))) (and (=> (= (ControlFlow 0 38) 37) label_148_true_correct) (=> (= (ControlFlow 0 38) 34) label_148_false_correct))))))
(let ((label_136_true_correct  (=> (and (and (not (= $status$6$3386.24$KbdCreateClassObject$20@5 0)) (= Mem@36 Mem@35)) (and (= Res_DEV_OBJ_INIT@20 Res_DEV_OBJ_INIT@19) (= Res_DEV_EXTN@20 Res_DEV_EXTN@19))) (=> (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@27 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@27) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@27) (|Select__T@[Int]Int_| Res_DEVICE_STACK@20 r@@27)))
 :qid |KbdCreateClassObjectbpl.3917:63|
 :skolemid |1289|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@20 r@@27))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@28 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@28) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@28) (|Select__T@[Int]Int_| Res_DEV_EXTN@20 r@@28)))
 :qid |KbdCreateClassObjectbpl.3921:63|
 :skolemid |1290|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@20 r@@28))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@29 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@29) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@29) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 r@@29)))
 :qid |KbdCreateClassObjectbpl.3925:63|
 :skolemid |1291|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 r@@29))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@30 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@30) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@30) (|Select__T@[Int]Int_| Res_SPIN_LOCK@20 r@@30)))
 :qid |KbdCreateClassObjectbpl.3929:63|
 :skolemid |1292|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@20 r@@30))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@46 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@46) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.MinorFunction__IO_STACK_LOCATION) _m@@46) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.MinorFunction__IO_STACK_LOCATION) _m@@46)))
 :qid |KbdCreateClassObjectbpl.3931:64|
 :skolemid |1293|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.MinorFunction__IO_STACK_LOCATION) _m@@46))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@47 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@47) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@47) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@47)))
 :qid |KbdCreateClassObjectbpl.3933:64|
 :skolemid |1294|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@47))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@48 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@48) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) _m@@48) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) _m@@48)))
 :qid |KbdCreateClassObjectbpl.3935:64|
 :skolemid |1295|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) _m@@48))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@49 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@49) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) _m@@49) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) _m@@49)))
 :qid |KbdCreateClassObjectbpl.3937:64|
 :skolemid |1296|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) _m@@49))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@50 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@50) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Started__DEVICE_EXTENSION) _m@@50) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Started__DEVICE_EXTENSION) _m@@50)))
 :qid |KbdCreateClassObjectbpl.3939:64|
 :skolemid |1297|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Started__DEVICE_EXTENSION) _m@@50))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@51 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@51) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) _m@@51) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.GrandMaster__GLOBALS) _m@@51)))
 :qid |KbdCreateClassObjectbpl.3941:64|
 :skolemid |1298|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) _m@@51))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@52 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@52) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.P_DEVICE_OBJECT) _m@@52) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.P_DEVICE_OBJECT) _m@@52)))
 :qid |KbdCreateClassObjectbpl.3943:64|
 :skolemid |1299|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.P_DEVICE_OBJECT) _m@@52))
))) (= Mem@37 (|Store__T@[name][Int]Int_| Mem@36 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.PUINT2) $FullDeviceName$4$3357.35$KbdCreateClassObject$201 0)))))) (and (=> (= (ControlFlow 0 50) 49) label_141_true_correct) (=> (= (ControlFlow 0 50) 38) label_141_false_correct)))))))
(let ((label_136_false_correct  (=> (= $status$6$3386.24$KbdCreateClassObject$20@5 0) (=> (and (= Res_DEV_OBJ_INIT@26 Res_DEV_OBJ_INIT@19) (= Res_DEVICE_STACK@26 Res_DEVICE_STACK@19)) (=> (and (and (= Mem@45 Mem@35) (= Res_DEV_EXTN@26 Res_DEV_EXTN@19)) (and (= Res_SPIN_LOCK@26 Res_SPIN_LOCK@19) (= (ControlFlow 0 30) 28))) label_162_correct)))))
(let ((label_125_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)) 0) (and (=> (= (ControlFlow 0 89) (- 0 90)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@2 0) (=> (and (forall ((x@@1107 Int) ) (!  (=> (and (<= call2formal@new@0@@2 x@@1107) (< x@@1107 (+ call2formal@new@0@@2 1))) (= (Base x@@1107) call2formal@new@0@@2))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1107))
)) (forall ((x@@1108 Int) ) (!  (or (= x@@1108 call2formal@new@0@@2) (= (|Select__T@[Int]name_| alloc@10 x@@1108) (|Select__T@[Int]name_| alloc@12 x@@1108)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@12 x@@1108))
))) (=> (and (and (and (and (= (|Select__T@[Int]name_| alloc@10 call2formal@new@0@@2) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@12 call2formal@new@0@@2) ALLOCATED)) (= $status$6$3386.24$KbdCreateClassObject$20@4 (- 0 1073741670))) (and (= $errorCode$9$3389.24$KbdCreateClassObject$20@3 (- 0 1073414142)) (= $errorCode$9$3389.24$KbdCreateClassObject$20@4 $errorCode$9$3389.24$KbdCreateClassObject$20@3))) (and (and (and (= Res_DEVICE_STACK@19 Res_DEVICE_STACK@17) (= Res_DEV_EXTN@19 Res_DEV_EXTN@17)) (and (= Res_DEV_OBJ_INIT@19 Res_DEV_OBJ_INIT@17) (= Res_SPIN_LOCK@19 Res_SPIN_LOCK@17))) (and (and (= Mem@35 Mem@32) (= $status$6$3386.24$KbdCreateClassObject$20@5 $status$6$3386.24$KbdCreateClassObject$20@4)) (and (= alloc@13 alloc@12) (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 $deviceExtension$8$3388.24$KbdCreateClassObject$20@0))))) (and (=> (= (ControlFlow 0 89) 50) label_136_true_correct) (=> (= (ControlFlow 0 89) 30) label_136_false_correct))))))))))
(let ((label_125_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)) 0)) (and (=> (= (ControlFlow 0 80) (- 0 88)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 $deviceExtension$8$3388.24$KbdCreateClassObject$20@0) 1)) (=> (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 $deviceExtension$8$3388.24$KbdCreateClassObject$20@0) 1) (and (=> (= (ControlFlow 0 80) (- 0 87)) (forall ((_H_x@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@17 1) _H_x@@6) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6)))) _H_x@@6) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6))) 1)))
 :qid |KbdCreateClassObjectbpl.3680:18|
 :skolemid |1229|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6)))
))) (=> (forall ((_H_x@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@17 1) _H_x@@7) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7)))) _H_x@@7) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7))) 1)))
 :qid |KbdCreateClassObjectbpl.3680:18|
 :skolemid |1229|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7)))
)) (and (=> (= (ControlFlow 0 80) (- 0 86)) (forall ((_H_z@@13 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@13) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13)))) _H_z@@13)))
 :qid |KbdCreateClassObjectbpl.3682:18|
 :skolemid |1230|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13)))
))) (=> (forall ((_H_z@@14 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@14) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@14))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@14)))) _H_z@@14)))
 :qid |KbdCreateClassObjectbpl.3682:18|
 :skolemid |1230|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@14)))
)) (and (=> (= (ControlFlow 0 80) (- 0 85)) (and (Subset Empty (Inverse Res_DEV_EXTN@17 1)) (forall ((_H_z@@15 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@15) true)
 :qid |KbdCreateClassObjectbpl.3684:63|
 :skolemid |1231|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@15))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@17 1)) (forall ((_H_z@@16 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@16) true)
 :qid |KbdCreateClassObjectbpl.3684:63|
 :skolemid |1231|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@16))
))) (and (=> (= (ControlFlow 0 80) (- 0 84)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 80) (- 0 83)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 80) (- 0 82)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@6) (or (= _H_y@@6 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (MINUS_LEFT_PTR _H_y@@6 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.3690:235|
 :skolemid |1232|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@6))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@7) (or (= _H_y@@7 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (MINUS_LEFT_PTR _H_y@@7 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.3690:235|
 :skolemid |1232|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@7))
)))) (and (=> (= (ControlFlow 0 80) (- 0 81)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 $deviceExtension$8$3388.24$KbdCreateClassObject$20@0) 1) (=> (and (forall ((_H_x@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@18 1) _H_x@@8) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8)))) _H_x@@8) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8))) 1)))
 :qid |KbdCreateClassObjectbpl.3696:17|
 :skolemid |1233|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8)))
)) (forall ((_H_z@@17 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@17) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@17))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@17)))) _H_z@@17)))
 :qid |KbdCreateClassObjectbpl.3698:17|
 :skolemid |1234|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@17)))
))) (=> (and (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@18 1)) (forall ((_H_z@@18 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@18) true)
 :qid |KbdCreateClassObjectbpl.3700:62|
 :skolemid |1235|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@18))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@8) (or (= _H_y@@8 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (MINUS_LEFT_PTR _H_y@@8 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.3706:234|
 :skolemid |1236|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@8))
)))))) (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@18 Res_DEV_OBJ_INIT@17) (= Res_DEV_EXTN@18 Res_DEV_EXTN@17)))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@31 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@31) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@31) (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@31)))
 :qid |KbdCreateClassObjectbpl.3719:63|
 :skolemid |1237|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@31))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@32 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@32) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@32) (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@32)))
 :qid |KbdCreateClassObjectbpl.3723:63|
 :skolemid |1238|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@32))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@33 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@33) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@33) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@33)))
 :qid |KbdCreateClassObjectbpl.3727:63|
 :skolemid |1239|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@33))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@34 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@34) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@34) (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@34)))
 :qid |KbdCreateClassObjectbpl.3731:63|
 :skolemid |1240|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@34))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@53 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@53) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.MinorFunction__IO_STACK_LOCATION) _m@@53) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.MinorFunction__IO_STACK_LOCATION) _m@@53)))
 :qid |KbdCreateClassObjectbpl.3733:64|
 :skolemid |1241|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.MinorFunction__IO_STACK_LOCATION) _m@@53))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@54 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@54) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@54) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@54)))
 :qid |KbdCreateClassObjectbpl.3735:64|
 :skolemid |1242|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@54))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@55 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@55) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) _m@@55) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) _m@@55)))
 :qid |KbdCreateClassObjectbpl.3737:64|
 :skolemid |1243|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) _m@@55))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@56 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@56) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) _m@@56) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) _m@@56)))
 :qid |KbdCreateClassObjectbpl.3739:64|
 :skolemid |1244|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) _m@@56))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@57 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@57) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Started__DEVICE_EXTENSION) _m@@57) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Started__DEVICE_EXTENSION) _m@@57)))
 :qid |KbdCreateClassObjectbpl.3741:64|
 :skolemid |1245|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Started__DEVICE_EXTENSION) _m@@57))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@58 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@58) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) _m@@58) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) _m@@58)))
 :qid |KbdCreateClassObjectbpl.3743:64|
 :skolemid |1246|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) _m@@58))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@59 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@59) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) _m@@59) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.P_DEVICE_OBJECT) _m@@59)))
 :qid |KbdCreateClassObjectbpl.3745:64|
 :skolemid |1247|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) _m@@59))
))) (= $errorCode$9$3389.24$KbdCreateClassObject$20@4 0))) (and (and (and (= Res_DEVICE_STACK@19 Res_DEVICE_STACK@18) (= Res_DEV_EXTN@19 Res_DEV_EXTN@18)) (and (= Res_DEV_OBJ_INIT@19 Res_DEV_OBJ_INIT@18) (= Res_SPIN_LOCK@19 Res_SPIN_LOCK@18))) (and (and (= Mem@35 Mem@34) (= $status$6$3386.24$KbdCreateClassObject$20@5 $status$6$3386.24$KbdCreateClassObject$20@3)) (and (= alloc@13 alloc@10) (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)))))) (and (=> (= (ControlFlow 0 80) 50) label_136_true_correct) (=> (= (ControlFlow 0 80) 30) label_136_false_correct)))))))))))))))))))))))))
(let ((label_98_true_correct  (=> (and (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0)) (forall ((r@@35 Int) ) (! (=  (or (not (= (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) r@@35) 0)) (not (= (BIT_BAND 4 r@@35) 0))) (not (= (BIT_BAND (BIT_BOR (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 4) r@@35) 0)))
 :qid |KbdCreateClassObjectbpl.4880:16|
 :skolemid |1469|
 :pattern ( (BIT_BAND (BIT_BOR (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 4) r@@35))
))) (=> (and (and (= tempBoogie0@1 (BIT_BOR (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 4)) (= Mem@24 (|Store__T@[name][Int]Int_| Mem@23 T.Flags__DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) tempBoogie0@1)))) (and (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (= Mem@25 (|Store__T@[name][Int]Int_| Mem@24 T.Self__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) (=> (and (and (and (and (= call0formal@$Lock$1$22135.25$IoInitializeRemoveLockEx$201@0 (RemoveLock__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)) (= Mem@26 Mem@25)) (and (= Res_DEV_OBJ_INIT@14 Res_DEV_OBJ_INIT@13) (= Res_DEV_EXTN@14 Res_DEV_EXTN@13))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@36 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@36) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@13 r@@36) (|Select__T@[Int]Int_| Res_DEVICE_STACK@14 r@@36)))
 :qid |KbdCreateClassObjectbpl.3643:63|
 :skolemid |1218|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@14 r@@36))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@37 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@37) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@13 r@@37) (|Select__T@[Int]Int_| Res_DEV_EXTN@14 r@@37)))
 :qid |KbdCreateClassObjectbpl.3647:63|
 :skolemid |1219|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@14 r@@37))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@38 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@38) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@13 r@@38) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@14 r@@38)))
 :qid |KbdCreateClassObjectbpl.3651:63|
 :skolemid |1220|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@14 r@@38))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@39 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@39) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@13 r@@39) (|Select__T@[Int]Int_| Res_SPIN_LOCK@14 r@@39)))
 :qid |KbdCreateClassObjectbpl.3655:63|
 :skolemid |1221|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@14 r@@39))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@60 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@60) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.MinorFunction__IO_STACK_LOCATION) _m@@60) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.MinorFunction__IO_STACK_LOCATION) _m@@60)))
 :qid |KbdCreateClassObjectbpl.3657:64|
 :skolemid |1222|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.MinorFunction__IO_STACK_LOCATION) _m@@60))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@61 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@61) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@61) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@61)))
 :qid |KbdCreateClassObjectbpl.3659:64|
 :skolemid |1223|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@61))
)))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@62 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@62) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.DeviceExtension__DEVICE_OBJECT) _m@@62) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.DeviceExtension__DEVICE_OBJECT) _m@@62)))
 :qid |KbdCreateClassObjectbpl.3661:64|
 :skolemid |1224|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.DeviceExtension__DEVICE_OBJECT) _m@@62))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@63 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@63) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Self__DEVICE_EXTENSION) _m@@63) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Self__DEVICE_EXTENSION) _m@@63)))
 :qid |KbdCreateClassObjectbpl.3663:64|
 :skolemid |1225|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Self__DEVICE_EXTENSION) _m@@63))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@64 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@64) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Started__DEVICE_EXTENSION) _m@@64) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Started__DEVICE_EXTENSION) _m@@64)))
 :qid |KbdCreateClassObjectbpl.3665:64|
 :skolemid |1226|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Started__DEVICE_EXTENSION) _m@@64))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@65 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@65) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.GrandMaster__GLOBALS) _m@@65) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.GrandMaster__GLOBALS) _m@@65)))
 :qid |KbdCreateClassObjectbpl.3667:64|
 :skolemid |1227|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.GrandMaster__GLOBALS) _m@@65))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@66 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@66) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.P_DEVICE_OBJECT) _m@@66) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.P_DEVICE_OBJECT) _m@@66)))
 :qid |KbdCreateClassObjectbpl.3669:64|
 :skolemid |1228|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.P_DEVICE_OBJECT) _m@@66))
))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.SpinLock__DEVICE_EXTENSION) (SpinLock__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.UINT4) (SpinLock__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)))) (and (and (= call0formal@$SpinLock$1$13860.22$KeInitializeSpinLock$41@0 (SpinLock__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)) (= Mem@27 Mem@26)) (and (= Res_DEV_OBJ_INIT@15 Res_DEV_OBJ_INIT@14) (= Res_DEV_EXTN@15 Res_DEV_EXTN@14))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@40 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@40) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@14 r@@40) (|Select__T@[Int]Int_| Res_DEVICE_STACK@15 r@@40)))
 :qid |KbdCreateClassObjectbpl.3761:63|
 :skolemid |1248|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@15 r@@40))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@41 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@41) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@14 r@@41) (|Select__T@[Int]Int_| Res_DEV_EXTN@15 r@@41)))
 :qid |KbdCreateClassObjectbpl.3765:63|
 :skolemid |1249|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@15 r@@41))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@42 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@42) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@14 r@@42) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@15 r@@42)))
 :qid |KbdCreateClassObjectbpl.3769:63|
 :skolemid |1250|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@15 r@@42))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@43 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@43) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@14 r@@43) (|Select__T@[Int]Int_| Res_SPIN_LOCK@15 r@@43)))
 :qid |KbdCreateClassObjectbpl.3773:63|
 :skolemid |1251|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@15 r@@43))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@67 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@67) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MinorFunction__IO_STACK_LOCATION) _m@@67) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.MinorFunction__IO_STACK_LOCATION) _m@@67)))
 :qid |KbdCreateClassObjectbpl.3775:64|
 :skolemid |1252|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MinorFunction__IO_STACK_LOCATION) _m@@67))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@68 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@68) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@68) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@68)))
 :qid |KbdCreateClassObjectbpl.3777:64|
 :skolemid |1253|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@68))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@69 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@69) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DeviceExtension__DEVICE_OBJECT) _m@@69) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.DeviceExtension__DEVICE_OBJECT) _m@@69)))
 :qid |KbdCreateClassObjectbpl.3779:64|
 :skolemid |1254|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DeviceExtension__DEVICE_OBJECT) _m@@69))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@70 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@70) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Self__DEVICE_EXTENSION) _m@@70) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Self__DEVICE_EXTENSION) _m@@70)))
 :qid |KbdCreateClassObjectbpl.3781:64|
 :skolemid |1255|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Self__DEVICE_EXTENSION) _m@@70))
))))))) (=> (and (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@71 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@71) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Started__DEVICE_EXTENSION) _m@@71) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Started__DEVICE_EXTENSION) _m@@71)))
 :qid |KbdCreateClassObjectbpl.3783:64|
 :skolemid |1256|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Started__DEVICE_EXTENSION) _m@@71))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@72 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@72) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.GrandMaster__GLOBALS) _m@@72) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.GrandMaster__GLOBALS) _m@@72)))
 :qid |KbdCreateClassObjectbpl.3785:64|
 :skolemid |1257|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.GrandMaster__GLOBALS) _m@@72))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@73 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@73) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_OBJECT) _m@@73) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.P_DEVICE_OBJECT) _m@@73)))
 :qid |KbdCreateClassObjectbpl.3787:64|
 :skolemid |1258|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_OBJECT) _m@@73))
))) (= Mem@28 (|Store__T@[name][Int]Int_| Mem@27 T.SpinLock__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.SpinLock__DEVICE_EXTENSION) (SpinLock__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.UINT4) (SpinLock__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0))))))) (and (and (and (= call0formal@$ListHead$1$12.44$InitializeListHead_IRP$41@0 (ReadQueue__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)) (= Mem@29 Mem@28)) (and (= Res_DEV_OBJ_INIT@16 Res_DEV_OBJ_INIT@15) (= Res_DEV_EXTN@16 Res_DEV_EXTN@15))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@44 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@44) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@15 r@@44) (|Select__T@[Int]Int_| Res_DEVICE_STACK@16 r@@44)))
 :qid |KbdCreateClassObjectbpl.3489:63|
 :skolemid |1185|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@16 r@@44))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@45 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@45) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@15 r@@45) (|Select__T@[Int]Int_| Res_DEV_EXTN@16 r@@45)))
 :qid |KbdCreateClassObjectbpl.3493:63|
 :skolemid |1186|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@16 r@@45))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@46 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@46) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@15 r@@46) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@16 r@@46)))
 :qid |KbdCreateClassObjectbpl.3497:63|
 :skolemid |1187|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@16 r@@46))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@47 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@47) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@15 r@@47) (|Select__T@[Int]Int_| Res_SPIN_LOCK@16 r@@47)))
 :qid |KbdCreateClassObjectbpl.3501:63|
 :skolemid |1188|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@16 r@@47))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@74 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@74) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.MinorFunction__IO_STACK_LOCATION) _m@@74) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.MinorFunction__IO_STACK_LOCATION) _m@@74)))
 :qid |KbdCreateClassObjectbpl.3503:64|
 :skolemid |1189|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.MinorFunction__IO_STACK_LOCATION) _m@@74))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@75 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@75) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@75) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@75)))
 :qid |KbdCreateClassObjectbpl.3505:64|
 :skolemid |1190|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@75))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@76 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@76) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.DeviceExtension__DEVICE_OBJECT) _m@@76) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DeviceExtension__DEVICE_OBJECT) _m@@76)))
 :qid |KbdCreateClassObjectbpl.3507:64|
 :skolemid |1191|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.DeviceExtension__DEVICE_OBJECT) _m@@76))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@77 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@77) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.Self__DEVICE_EXTENSION) _m@@77) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Self__DEVICE_EXTENSION) _m@@77)))
 :qid |KbdCreateClassObjectbpl.3509:64|
 :skolemid |1192|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.Self__DEVICE_EXTENSION) _m@@77))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@78 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@78) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.Started__DEVICE_EXTENSION) _m@@78) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Started__DEVICE_EXTENSION) _m@@78)))
 :qid |KbdCreateClassObjectbpl.3511:64|
 :skolemid |1193|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.Started__DEVICE_EXTENSION) _m@@78))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@79 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@79) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.GrandMaster__GLOBALS) _m@@79) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.GrandMaster__GLOBALS) _m@@79)))
 :qid |KbdCreateClassObjectbpl.3513:64|
 :skolemid |1194|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.GrandMaster__GLOBALS) _m@@79))
))))))) (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@80 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@80) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.P_DEVICE_OBJECT) _m@@80) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DEVICE_OBJECT) _m@@80)))
 :qid |KbdCreateClassObjectbpl.3515:64|
 :skolemid |1195|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.P_DEVICE_OBJECT) _m@@80))
))) (= Mem@30 (|Store__T@[name][Int]Int_| Mem@29 T.TrustedSubsystemCount__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.TrustedSubsystemCount__DEVICE_EXTENSION) (TrustedSubsystemCount__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0) 0)))) (and (and (= call1formal@$NumberOfBytes$2$14790.16$ExAllocatePoolWithTag$121@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.InputDataQueueLength__KEYBOARD_ATTRIBUTES) (InputDataQueueLength__KEYBOARD_ATTRIBUTES (KeyboardAttributes__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0)))) (= Mem@31 Mem@30)) (and (= Res_DEV_OBJ_INIT@17 Res_DEV_OBJ_INIT@16) (= Res_DEV_EXTN@17 Res_DEV_EXTN@16)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@48 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@48) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@16 r@@48) (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@48)))
 :qid |KbdCreateClassObjectbpl.3363:63|
 :skolemid |1152|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@48))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@49 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@49) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@16 r@@49) (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@49)))
 :qid |KbdCreateClassObjectbpl.3367:63|
 :skolemid |1153|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@49))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@50 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@50) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@16 r@@50) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@50)))
 :qid |KbdCreateClassObjectbpl.3371:63|
 :skolemid |1154|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@50))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@51 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@51) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@16 r@@51) (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@51)))
 :qid |KbdCreateClassObjectbpl.3375:63|
 :skolemid |1155|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@51))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@81 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@81) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.MinorFunction__IO_STACK_LOCATION) _m@@81) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.MinorFunction__IO_STACK_LOCATION) _m@@81)))
 :qid |KbdCreateClassObjectbpl.3377:64|
 :skolemid |1156|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.MinorFunction__IO_STACK_LOCATION) _m@@81))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@82 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@82) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@82) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@82)))
 :qid |KbdCreateClassObjectbpl.3379:64|
 :skolemid |1157|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@82))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@83 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@83) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) _m@@83) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) _m@@83)))
 :qid |KbdCreateClassObjectbpl.3381:64|
 :skolemid |1158|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) _m@@83))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@84 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@84) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) _m@@84) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) _m@@84)))
 :qid |KbdCreateClassObjectbpl.3383:64|
 :skolemid |1159|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) _m@@84))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@85 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@85) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Started__DEVICE_EXTENSION) _m@@85) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Started__DEVICE_EXTENSION) _m@@85)))
 :qid |KbdCreateClassObjectbpl.3385:64|
 :skolemid |1160|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Started__DEVICE_EXTENSION) _m@@85))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@86 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@86) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) _m@@86) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) _m@@86)))
 :qid |KbdCreateClassObjectbpl.3387:64|
 :skolemid |1161|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) _m@@86))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@87 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@87) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) _m@@87) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.P_DEVICE_OBJECT) _m@@87)))
 :qid |KbdCreateClassObjectbpl.3389:64|
 :skolemid |1162|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) _m@@87))
))) (= Mem@32 (|Store__T@[name][Int]Int_| Mem@31 T.InputData__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$8$3388.24$KbdCreateClassObject$20@0) call8formal@$result.ExAllocatePoolWithTag$14788.0$1$@0)))))))) (and (=> (= (ControlFlow 0 91) 80) label_125_true_correct) (=> (= (ControlFlow 0 91) 89) label_125_false_correct)))))))))
(let ((label_102_correct  (and (=> (= (ControlFlow 0 76) (- 0 77)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@3 0) (=> (and (forall ((x@@1109 Int) ) (!  (=> (and (<= call2formal@new@0@@3 x@@1109) (< x@@1109 (+ call2formal@new@0@@3 1))) (= (Base x@@1109) call2formal@new@0@@3))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1109))
)) (forall ((x@@1110 Int) ) (!  (or (= x@@1110 call2formal@new@0@@3) (= (|Select__T@[Int]name_| alloc@10 x@@1110) (|Select__T@[Int]name_| alloc@11 x@@1110)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@11 x@@1110))
))) (=> (and (and (and (and (= (|Select__T@[Int]name_| alloc@10 call2formal@new@0@@3) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@11 call2formal@new@0@@3) ALLOCATED)) (= $errorCode$9$3389.24$KbdCreateClassObject$20@2 (- 0 1073414131))) (and (= Mem@33 (|Store__T@[name][Int]Int_| Mem@23 T.UINT4 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.UINT4) (PLUS call2formal@new@0@@0 4 0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1))))) (= $errorCode$9$3389.24$KbdCreateClassObject$20@4 $errorCode$9$3389.24$KbdCreateClassObject$20@2))) (and (and (and (= Res_DEVICE_STACK@19 Res_DEVICE_STACK@13) (= Res_DEV_EXTN@19 Res_DEV_EXTN@13)) (and (= Res_DEV_OBJ_INIT@19 Res_DEV_OBJ_INIT@13) (= Res_SPIN_LOCK@19 Res_SPIN_LOCK@13))) (and (and (= Mem@35 Mem@33) (= $status$6$3386.24$KbdCreateClassObject$20@5 $status$6$3386.24$KbdCreateClassObject$20@3)) (and (= alloc@13 alloc@11) (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 0))))) (and (=> (= (ControlFlow 0 76) 50) label_136_true_correct) (=> (= (ControlFlow 0 76) 30) label_136_false_correct)))))))))
(let ((label_98_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@23 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0) (= (ControlFlow 0 79) 76)) label_102_correct)))
(let ((label_97_true_correct  (=> (<= 0 $status$6$3386.24$KbdCreateClassObject$20@3) (and (=> (= (ControlFlow 0 92) 91) label_98_true_correct) (=> (= (ControlFlow 0 92) 79) label_98_false_correct)))))
(let ((label_97_false_correct  (=> (and (not (<= 0 $status$6$3386.24$KbdCreateClassObject$20@3)) (= (ControlFlow 0 78) 76)) label_102_correct)))
(let ((label_87_false_correct  (=> (not (= (- 0 1073741771) call12formal@$result.IoCreateDevice$21225.0$1$@0)) (=> (and (and (and (= Mem@22 (|Store__T@[name][Int]Int_| Mem@21 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.PUINT2) $FullDeviceName$4$3357.35$KbdCreateClassObject$201 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@1))))) (= alloc@10 alloc@9)) (and (= Res_DEVICE_STACK@13 Res_DEVICE_STACK@12) (= Res_DEV_EXTN@13 Res_DEV_EXTN@12))) (and (and (= Res_DEV_OBJ_INIT@13 Res_DEV_OBJ_INIT@12) (= Res_SPIN_LOCK@13 Res_SPIN_LOCK@12)) (and (= Mem@23 Mem@22) (= $status$6$3386.24$KbdCreateClassObject$20@3 call12formal@$result.IoCreateDevice$21225.0$1$@0)))) (and (=> (= (ControlFlow 0 94) 92) label_97_true_correct) (=> (= (ControlFlow 0 94) 78) label_97_false_correct))))))
(let ((label_78_head_correct  (=> (and (and (forall ((_H_x@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@11 1) _H_x@@9) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9)))) _H_x@@9) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9))) 1)))
 :qid |KbdCreateClassObjectbpl.4686:16|
 :skolemid |1453|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9)))
)) (forall ((_H_z@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@19) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@19))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@19)))) _H_z@@19)))
 :qid |KbdCreateClassObjectbpl.4688:16|
 :skolemid |1454|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@19)))
))) (and (Subset Empty (Inverse Res_DEV_EXTN@11 1)) (forall ((_H_z@@20 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@20) true)
 :qid |KbdCreateClassObjectbpl.4690:61|
 :skolemid |1455|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@20))
)))) (=> (and (and (and (and (and (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (and (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@9) (or (= _H_y@@9 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (MINUS_LEFT_PTR _H_y@@9 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4696:233|
 :skolemid |1456|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@9))
)))) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))))) (and (and (= Res_DEV_OBJ_INIT@11 Res_DEV_OBJ_INIT@10) (= Res_DEV_EXTN@11 Res_DEV_EXTN@10)) (and (= (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (forall ((f@@21 Int) ) (!  (or (= (|Select__T@[Int]name_| alloc@7 (Base f@@21)) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@7 (Base f@@21)) (|Select__T@[Int]name_| alloc@8 (Base f@@21))))
 :qid |KbdCreateClassObjectbpl.4705:15|
 :skolemid |1457|
 :pattern ( (|Select__T@[Int]name_| alloc@8 (Base f@@21)))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@52 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@52) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@52) (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@52)))
 :qid |KbdCreateClassObjectbpl.4709:62|
 :skolemid |1458|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@52))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@53 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@53) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@53) (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@53)))
 :qid |KbdCreateClassObjectbpl.4712:62|
 :skolemid |1459|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@53))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@54 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@54) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@54) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@54)))
 :qid |KbdCreateClassObjectbpl.4715:62|
 :skolemid |1460|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@54))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@55 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@55) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@55) (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@55)))
 :qid |KbdCreateClassObjectbpl.4718:62|
 :skolemid |1461|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@55))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@88 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@88) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.MinorFunction__IO_STACK_LOCATION) _m@@88) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@88)))
 :qid |KbdCreateClassObjectbpl.4720:63|
 :skolemid |1462|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.MinorFunction__IO_STACK_LOCATION) _m@@88))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@89 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@89) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@89) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@89)))
 :qid |KbdCreateClassObjectbpl.4722:63|
 :skolemid |1463|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@89))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@90 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@90) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) _m@@90) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@90)))
 :qid |KbdCreateClassObjectbpl.4724:63|
 :skolemid |1464|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) _m@@90))
))) (and (Subset Empty (Union (Union Empty SetTrue) Empty)) (forall ((_m@@91 Int) ) (!  (or (or (|Select__T@[Int]Bool_| SetTrue _m@@91) (|Select__T@[Int]Bool_| Empty _m@@91)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) _m@@91) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@91)))
 :qid |KbdCreateClassObjectbpl.4726:81|
 :skolemid |1465|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) _m@@91))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@92 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@92) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Started__DEVICE_EXTENSION) _m@@92) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@92)))
 :qid |KbdCreateClassObjectbpl.4728:63|
 :skolemid |1466|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Started__DEVICE_EXTENSION) _m@@92))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@93 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@93) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) _m@@93) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@93)))
 :qid |KbdCreateClassObjectbpl.4730:63|
 :skolemid |1467|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) _m@@93))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@94 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@94) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.P_DEVICE_OBJECT) _m@@94) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@94)))
 :qid |KbdCreateClassObjectbpl.4732:63|
 :skolemid |1468|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.P_DEVICE_OBJECT) _m@@94))
))) (and (= Mem@20 (|Store__T@[name][Int]Int_| Mem@19 T.UINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.UINT2) (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@1)) 2 (MINUS_BOTH_PTR_OR_BOTH_INT (BINARY_BOTH_INT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@1)) 2) 1 1)) (PLUS 48 1 $nameIndex$14$3394.24$KbdCreateClassObject$20@0)))) (= $nameIndex$14$3394.24$KbdCreateClassObject$20@1 (PLUS $nameIndex$14$3394.24$KbdCreateClassObject$20@0 1 1))))))) (and (=> (= (ControlFlow 0 95) (- 0 96)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@4 0) (=> (and (forall ((x@@1111 Int) ) (!  (=> (and (<= call2formal@new@0@@4 x@@1111) (< x@@1111 (+ call2formal@new@0@@4 1))) (= (Base x@@1111) call2formal@new@0@@4))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1111))
)) (forall ((x@@1112 Int) ) (!  (or (= x@@1112 call2formal@new@0@@4) (= (|Select__T@[Int]name_| alloc@8 x@@1112) (|Select__T@[Int]name_| alloc@9 x@@1112)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@9 x@@1112))
))) (=> (and (and (= (|Select__T@[Int]name_| alloc@8 call2formal@new@0@@4) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@9 call2formal@new@0@@4) ALLOCATED)) (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0))) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 0))))) (=> (and (and (and (and (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1)) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1)))) (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 0))) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (and (= Res_DEV_OBJ_INIT@12 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 1)) (= Res_DEV_EXTN@12 (|Store__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 1)))))) (and (and (=> (not (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0)) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))))))) (=> (not (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0)) (and (= Res_DEV_OBJ_INIT@12 Res_DEV_OBJ_INIT@11) (= Res_DEV_EXTN@12 Res_DEV_EXTN@11)))) (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (not (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) 1))) (=> (not (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) (and (and (and (= (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0 0) (= call12formal@$result.IoCreateDevice$21225.0$1$@0 0))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@56 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@56) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@56) (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r@@56)))
 :qid |KbdCreateClassObjectbpl.3551:63|
 :skolemid |1196|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r@@56))
)))) (and (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) (forall ((r@@57 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@57) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) r@@57)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@57) (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@57)))
 :qid |KbdCreateClassObjectbpl.3555:221|
 :skolemid |1197|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@57))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (forall ((r@@58 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@58) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) r@@58)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@58) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@58)))
 :qid |KbdCreateClassObjectbpl.3559:150|
 :skolemid |1198|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@58))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@59 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@59) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@59) (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@59)))
 :qid |KbdCreateClassObjectbpl.3563:63|
 :skolemid |1199|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@59))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@95 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@95) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m@@95) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.MinorFunction__IO_STACK_LOCATION) _m@@95)))
 :qid |KbdCreateClassObjectbpl.3565:64|
 :skolemid |1200|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m@@95))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@96 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@96) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@96) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@96)))
 :qid |KbdCreateClassObjectbpl.3567:64|
 :skolemid |1201|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@96))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@97 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@97) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@97) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) _m@@97)))
 :qid |KbdCreateClassObjectbpl.3569:64|
 :skolemid |1202|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@97))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@98 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@98) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@98) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) _m@@98)))
 :qid |KbdCreateClassObjectbpl.3571:64|
 :skolemid |1203|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@98))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@99 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@99) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@99) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Started__DEVICE_EXTENSION) _m@@99)))
 :qid |KbdCreateClassObjectbpl.3573:64|
 :skolemid |1204|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@99))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@100 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@100) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@100) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) _m@@100)))
 :qid |KbdCreateClassObjectbpl.3575:64|
 :skolemid |1205|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@100))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (forall ((_m@@101 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty _m@@101) (= _m@@101 $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) _m@@101) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.P_DEVICE_OBJECT) _m@@101)))
 :qid |KbdCreateClassObjectbpl.3577:127|
 :skolemid |1206|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) _m@@101))
))))))) (and (=> (= (ControlFlow 0 95) 55) label_87_true_correct) (=> (= (ControlFlow 0 95) 94) label_87_false_correct))))))))))))
(let ((label_76_correct  (and (=> (= (ControlFlow 0 97) (- 0 119)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@5 0) (=> (and (forall ((x@@1113 Int) ) (!  (=> (and (<= call2formal@new@0@@5 x@@1113) (< x@@1113 (+ call2formal@new@0@@5 1))) (= (Base x@@1113) call2formal@new@0@@5))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1113))
)) (forall ((x@@1114 Int) ) (!  (or (= x@@1114 call2formal@new@0@@5) (= (|Select__T@[Int]name_| alloc@6 x@@1114) (|Select__T@[Int]name_| alloc@7 x@@1114)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@7 x@@1114))
))) (=> (and (and (= (|Select__T@[Int]name_| alloc@6 call2formal@new@0@@5) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@7 call2formal@new@0@@5) ALLOCATED)) (= Mem@18 Mem@17)) (=> (and (and (and (= Res_DEV_OBJ_INIT@10 Res_DEV_OBJ_INIT@9) (= Res_DEV_EXTN@10 Res_DEV_EXTN@9)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@60 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@60) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@9 r@@60) (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@60)))
 :qid |KbdCreateClassObjectbpl.3875:63|
 :skolemid |1278|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@60))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@61 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@61) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@9 r@@61) (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@61)))
 :qid |KbdCreateClassObjectbpl.3879:63|
 :skolemid |1279|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@61))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@62 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@62) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@9 r@@62) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@62)))
 :qid |KbdCreateClassObjectbpl.3883:63|
 :skolemid |1280|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@62))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@63 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@63) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@9 r@@63) (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@63)))
 :qid |KbdCreateClassObjectbpl.3887:63|
 :skolemid |1281|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@63))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@102 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@102) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@102) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@102)))
 :qid |KbdCreateClassObjectbpl.3889:64|
 :skolemid |1282|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@102))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@103 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@103) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@103) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@103)))
 :qid |KbdCreateClassObjectbpl.3891:64|
 :skolemid |1283|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@103))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@104 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@104) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@104) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@104)))
 :qid |KbdCreateClassObjectbpl.3893:64|
 :skolemid |1284|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@104))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@105 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@105) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@105) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@105)))
 :qid |KbdCreateClassObjectbpl.3895:64|
 :skolemid |1285|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@105))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@106 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@106) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@106) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@106)))
 :qid |KbdCreateClassObjectbpl.3897:64|
 :skolemid |1286|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@106))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@107 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@107) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@107) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@107)))
 :qid |KbdCreateClassObjectbpl.3899:64|
 :skolemid |1287|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@107))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@108 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@108) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@108) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@108)))
 :qid |KbdCreateClassObjectbpl.3901:64|
 :skolemid |1288|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@108))
)))))) (and (=> (= (ControlFlow 0 97) (- 0 118)) (forall ((_H_x@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@10 1) _H_x@@10) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10)))) _H_x@@10) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10))) 1)))
 :qid |KbdCreateClassObjectbpl.4686:16|
 :skolemid |1453|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10)))
))) (=> (forall ((_H_x@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@10 1) _H_x@@11) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11)))) _H_x@@11) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11))) 1)))
 :qid |KbdCreateClassObjectbpl.4686:16|
 :skolemid |1453|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11)))
)) (and (=> (= (ControlFlow 0 97) (- 0 117)) (forall ((_H_z@@21 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@21) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21)))) _H_z@@21)))
 :qid |KbdCreateClassObjectbpl.4688:16|
 :skolemid |1454|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21)))
))) (=> (forall ((_H_z@@22 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@22) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@22))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@22)))) _H_z@@22)))
 :qid |KbdCreateClassObjectbpl.4688:16|
 :skolemid |1454|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@22)))
)) (and (=> (= (ControlFlow 0 97) (- 0 116)) (and (Subset Empty (Inverse Res_DEV_EXTN@10 1)) (forall ((_H_z@@23 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@23) true)
 :qid |KbdCreateClassObjectbpl.4690:61|
 :skolemid |1455|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@23))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@10 1)) (forall ((_H_z@@24 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@24) true)
 :qid |KbdCreateClassObjectbpl.4690:61|
 :skolemid |1455|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@24))
))) (and (=> (= (ControlFlow 0 97) (- 0 115)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 97) (- 0 114)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 97) (- 0 113)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@10) (or (= _H_y@@10 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (MINUS_LEFT_PTR _H_y@@10 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4696:233|
 :skolemid |1456|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@10))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@11) (or (= _H_y@@11 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (MINUS_LEFT_PTR _H_y@@11 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4696:233|
 :skolemid |1456|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@11))
)))) (and (=> (= (ControlFlow 0 97) (- 0 112)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 97) (- 0 111)) (= Res_DEV_OBJ_INIT@10 Res_DEV_OBJ_INIT@10)) (=> (= Res_DEV_OBJ_INIT@10 Res_DEV_OBJ_INIT@10) (and (=> (= (ControlFlow 0 97) (- 0 110)) (= Res_DEV_EXTN@10 Res_DEV_EXTN@10)) (=> (= Res_DEV_EXTN@10 Res_DEV_EXTN@10) (and (=> (= (ControlFlow 0 97) (- 0 109)) (= (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY))) (=> (= (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (and (=> (= (ControlFlow 0 97) (- 0 108)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@64 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@64) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@64) (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@64)))
 :qid |KbdCreateClassObjectbpl.4709:62|
 :skolemid |1458|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@64))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@65 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@65) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@65) (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@65)))
 :qid |KbdCreateClassObjectbpl.4709:62|
 :skolemid |1458|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@65))
))) (and (=> (= (ControlFlow 0 97) (- 0 107)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@66 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@66) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@66) (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@66)))
 :qid |KbdCreateClassObjectbpl.4712:62|
 :skolemid |1459|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@66))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@67 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@67) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@67) (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@67)))
 :qid |KbdCreateClassObjectbpl.4712:62|
 :skolemid |1459|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@67))
))) (and (=> (= (ControlFlow 0 97) (- 0 106)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@68 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@68) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@68) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@68)))
 :qid |KbdCreateClassObjectbpl.4715:62|
 :skolemid |1460|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@68))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@69 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@69) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@69) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@69)))
 :qid |KbdCreateClassObjectbpl.4715:62|
 :skolemid |1460|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@69))
))) (and (=> (= (ControlFlow 0 97) (- 0 105)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@70 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@70) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@70) (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@70)))
 :qid |KbdCreateClassObjectbpl.4718:62|
 :skolemid |1461|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@70))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@71 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@71) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@71) (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@71)))
 :qid |KbdCreateClassObjectbpl.4718:62|
 :skolemid |1461|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@71))
))) (and (=> (= (ControlFlow 0 97) (- 0 104)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@109 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@109) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@109) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@109)))
 :qid |KbdCreateClassObjectbpl.4720:63|
 :skolemid |1462|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@109))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@110 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@110) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@110) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@110)))
 :qid |KbdCreateClassObjectbpl.4720:63|
 :skolemid |1462|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@110))
))) (and (=> (= (ControlFlow 0 97) (- 0 103)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@111 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@111) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@111) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@111)))
 :qid |KbdCreateClassObjectbpl.4722:63|
 :skolemid |1463|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@111))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@112 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@112) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@112) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@112)))
 :qid |KbdCreateClassObjectbpl.4722:63|
 :skolemid |1463|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@112))
))) (and (=> (= (ControlFlow 0 97) (- 0 102)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@113 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@113) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@113) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@113)))
 :qid |KbdCreateClassObjectbpl.4724:63|
 :skolemid |1464|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@113))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@114 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@114) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@114) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@114)))
 :qid |KbdCreateClassObjectbpl.4724:63|
 :skolemid |1464|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@114))
))) (and (=> (= (ControlFlow 0 97) (- 0 101)) (and (Subset Empty (Union (Union Empty SetTrue) Empty)) (forall ((_m@@115 Int) ) (!  (or (or (|Select__T@[Int]Bool_| SetTrue _m@@115) (|Select__T@[Int]Bool_| Empty _m@@115)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@115) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@115)))
 :qid |KbdCreateClassObjectbpl.4726:81|
 :skolemid |1465|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@115))
)))) (=> (and (Subset Empty (Union (Union Empty SetTrue) Empty)) (forall ((_m@@116 Int) ) (!  (or (or (|Select__T@[Int]Bool_| SetTrue _m@@116) (|Select__T@[Int]Bool_| Empty _m@@116)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@116) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@116)))
 :qid |KbdCreateClassObjectbpl.4726:81|
 :skolemid |1465|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@116))
))) (and (=> (= (ControlFlow 0 97) (- 0 100)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@117 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@117) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@117) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@117)))
 :qid |KbdCreateClassObjectbpl.4728:63|
 :skolemid |1466|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@117))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@118 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@118) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@118) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@118)))
 :qid |KbdCreateClassObjectbpl.4728:63|
 :skolemid |1466|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@118))
))) (and (=> (= (ControlFlow 0 97) (- 0 99)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@119 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@119) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@119) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@119)))
 :qid |KbdCreateClassObjectbpl.4730:63|
 :skolemid |1467|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@119))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@120 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@120) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@120) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@120)))
 :qid |KbdCreateClassObjectbpl.4730:63|
 :skolemid |1467|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@120))
))) (and (=> (= (ControlFlow 0 97) (- 0 98)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@121 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@121) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@121) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@121)))
 :qid |KbdCreateClassObjectbpl.4732:63|
 :skolemid |1468|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@121))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@122 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@122) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@122) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@122)))
 :qid |KbdCreateClassObjectbpl.4732:63|
 :skolemid |1468|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@122))
))) (=> (= (ControlFlow 0 97) 95) label_78_head_correct))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((label_68_false_correct  (=> (and (and (and (= $Legacy$5$3358.28$KbdCreateClassObject$201 0) (= alloc@6 alloc@3)) (and (= Res_DEVICE_STACK@9 Res_DEVICE_STACK@7) (= Res_DEV_EXTN@9 Res_DEV_EXTN@7))) (and (and (= Res_DEV_OBJ_INIT@9 Res_DEV_OBJ_INIT@7) (= Res_SPIN_LOCK@9 Res_SPIN_LOCK@7)) (and (= Mem@17 Mem@14) (= (ControlFlow 0 123) 97)))) label_76_correct)))
(let ((label_68_true_correct  (=> (not (= $Legacy$5$3358.28$KbdCreateClassObject$201 0)) (and (=> (= (ControlFlow 0 121) (- 0 122)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@6 0) (=> (and (forall ((x@@1115 Int) ) (!  (=> (and (<= call2formal@new@0@@6 x@@1115) (< x@@1115 (+ call2formal@new@0@@6 1))) (= (Base x@@1115) call2formal@new@0@@6))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1115))
)) (forall ((x@@1116 Int) ) (!  (or (= x@@1116 call2formal@new@0@@6) (= (|Select__T@[Int]name_| alloc@3 x@@1116) (|Select__T@[Int]name_| alloc@5 x@@1116)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@5 x@@1116))
))) (=> (and (and (and (and (= (|Select__T@[Int]name_| alloc@3 call2formal@new@0@@6) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@5 call2formal@new@0@@6) ALLOCATED)) (= Mem@16 Mem@14)) (and (= Res_DEV_OBJ_INIT@8 Res_DEV_OBJ_INIT@7) (= Res_DEV_EXTN@8 Res_DEV_EXTN@7))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@72 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@72) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@72) (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@72)))
 :qid |KbdCreateClassObjectbpl.3875:63|
 :skolemid |1278|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@72))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@73 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@73) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@73) (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@73)))
 :qid |KbdCreateClassObjectbpl.3879:63|
 :skolemid |1279|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@73))
))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@74 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@74) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@74) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@74)))
 :qid |KbdCreateClassObjectbpl.3883:63|
 :skolemid |1280|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@74))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@75 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@75) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@75) (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@75)))
 :qid |KbdCreateClassObjectbpl.3887:63|
 :skolemid |1281|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@75))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@123 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@123) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@123) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@123)))
 :qid |KbdCreateClassObjectbpl.3889:64|
 :skolemid |1282|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@123))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@124 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@124) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@124) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@124)))
 :qid |KbdCreateClassObjectbpl.3891:64|
 :skolemid |1283|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@124))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@125 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@125) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@125) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@125)))
 :qid |KbdCreateClassObjectbpl.3893:64|
 :skolemid |1284|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@125))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@126 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@126) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@126) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@126)))
 :qid |KbdCreateClassObjectbpl.3895:64|
 :skolemid |1285|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@126))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@127 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@127) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@127) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@127)))
 :qid |KbdCreateClassObjectbpl.3897:64|
 :skolemid |1286|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@127))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@128 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@128) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@128) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@128)))
 :qid |KbdCreateClassObjectbpl.3899:64|
 :skolemid |1287|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@128))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@129 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@129) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@129) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@129)))
 :qid |KbdCreateClassObjectbpl.3901:64|
 :skolemid |1288|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@129))
))) (= alloc@6 alloc@5)) (and (= Res_DEVICE_STACK@9 Res_DEVICE_STACK@8) (= Res_DEV_EXTN@9 Res_DEV_EXTN@8))) (and (and (= Res_DEV_OBJ_INIT@9 Res_DEV_OBJ_INIT@8) (= Res_SPIN_LOCK@9 Res_SPIN_LOCK@8)) (and (= Mem@17 Mem@16) (= (ControlFlow 0 121) 97))))) label_76_correct)))))))))
(let ((label_67_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.ConnectOneClassToOnePort__GLOBALS) (ConnectOneClassToOnePort__GLOBALS Globals)) 0)) (and (=> (= (ControlFlow 0 124) 121) label_68_true_correct) (=> (= (ControlFlow 0 124) 123) label_68_false_correct)))))
(let ((label_67_false_correct  (=> (and (and (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.ConnectOneClassToOnePort__GLOBALS) (ConnectOneClassToOnePort__GLOBALS Globals)) 0) (= alloc@6 alloc@3)) (and (= Res_DEVICE_STACK@9 Res_DEVICE_STACK@7) (= Res_DEV_EXTN@9 Res_DEV_EXTN@7))) (and (and (= Res_DEV_OBJ_INIT@9 Res_DEV_OBJ_INIT@7) (= Res_SPIN_LOCK@9 Res_SPIN_LOCK@7)) (and (= Mem@17 Mem@14) (= (ControlFlow 0 120) 97)))) label_76_correct)))
(let ((label_46_true_correct  (=> (and (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@1)) 0)) (= $memset.arg.3$7$@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1)))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@7 0) (=> (and (forall ((x@@1117 Int) ) (!  (=> (and (<= call2formal@new@0@@7 x@@1117) (< x@@1117 (+ call2formal@new@0@@7 1))) (= (Base x@@1117) call2formal@new@0@@7))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1117))
)) (forall ((x@@1118 Int) ) (!  (or (= x@@1118 call2formal@new@0@@7) (= (|Select__T@[Int]name_| alloc@2 x@@1118) (|Select__T@[Int]name_| alloc@3 x@@1118)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@3 x@@1118))
))) (=> (and (and (and (= (|Select__T@[Int]name_| alloc@2 call2formal@new@0@@7) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@3 call2formal@new@0@@7) ALLOCATED)) (= Mem@13 Mem@12)) (and (= Res_DEV_OBJ_INIT@6 Res_DEV_OBJ_INIT@5) (= Res_DEV_EXTN@6 Res_DEV_EXTN@5))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@76 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@76) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@76) (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@76)))
 :qid |KbdCreateClassObjectbpl.3875:63|
 :skolemid |1278|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@76))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@77 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@77) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@77) (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@77)))
 :qid |KbdCreateClassObjectbpl.3879:63|
 :skolemid |1279|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@77))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@78 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@78) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@78) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@78)))
 :qid |KbdCreateClassObjectbpl.3883:63|
 :skolemid |1280|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@78))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@79 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@79) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@79) (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@79)))
 :qid |KbdCreateClassObjectbpl.3887:63|
 :skolemid |1281|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@79))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@130 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@130) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MinorFunction__IO_STACK_LOCATION) _m@@130) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.MinorFunction__IO_STACK_LOCATION) _m@@130)))
 :qid |KbdCreateClassObjectbpl.3889:64|
 :skolemid |1282|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MinorFunction__IO_STACK_LOCATION) _m@@130))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@131 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@131) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@131) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@131)))
 :qid |KbdCreateClassObjectbpl.3891:64|
 :skolemid |1283|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@131))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@132 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@132) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.DeviceExtension__DEVICE_OBJECT) _m@@132) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.DeviceExtension__DEVICE_OBJECT) _m@@132)))
 :qid |KbdCreateClassObjectbpl.3893:64|
 :skolemid |1284|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.DeviceExtension__DEVICE_OBJECT) _m@@132))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@133 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@133) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Self__DEVICE_EXTENSION) _m@@133) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Self__DEVICE_EXTENSION) _m@@133)))
 :qid |KbdCreateClassObjectbpl.3895:64|
 :skolemid |1285|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Self__DEVICE_EXTENSION) _m@@133))
)))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@134 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@134) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Started__DEVICE_EXTENSION) _m@@134) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Started__DEVICE_EXTENSION) _m@@134)))
 :qid |KbdCreateClassObjectbpl.3897:64|
 :skolemid |1286|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Started__DEVICE_EXTENSION) _m@@134))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@135 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@135) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.GrandMaster__GLOBALS) _m@@135) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.GrandMaster__GLOBALS) _m@@135)))
 :qid |KbdCreateClassObjectbpl.3899:64|
 :skolemid |1287|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.GrandMaster__GLOBALS) _m@@135))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@136 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@136) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.P_DEVICE_OBJECT) _m@@136) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.P_DEVICE_OBJECT) _m@@136)))
 :qid |KbdCreateClassObjectbpl.3901:64|
 :skolemid |1288|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.P_DEVICE_OBJECT) _m@@136))
))) (and (= call1formal@$Source$2$7422.20$RtlAppendUnicodeToString$81@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING (BaseClassName__GLOBALS Globals)))) (= Mem@14 Mem@13)))) (and (and (and (= Res_DEV_OBJ_INIT@7 Res_DEV_OBJ_INIT@6) (= Res_DEV_EXTN@7 Res_DEV_EXTN@6)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@80 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@80) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@80) (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@80)))
 :qid |KbdCreateClassObjectbpl.3875:63|
 :skolemid |1278|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@80))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@81 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@81) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@81) (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@81)))
 :qid |KbdCreateClassObjectbpl.3879:63|
 :skolemid |1279|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@81))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@82 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@82) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@82) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@82)))
 :qid |KbdCreateClassObjectbpl.3883:63|
 :skolemid |1280|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@82))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@83 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@83) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@83) (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@83)))
 :qid |KbdCreateClassObjectbpl.3887:63|
 :skolemid |1281|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@83))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@137 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@137) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@137) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MinorFunction__IO_STACK_LOCATION) _m@@137)))
 :qid |KbdCreateClassObjectbpl.3889:64|
 :skolemid |1282|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@137))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@138 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@138) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@138) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@138)))
 :qid |KbdCreateClassObjectbpl.3891:64|
 :skolemid |1283|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@138))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@139 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@139) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@139) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.DeviceExtension__DEVICE_OBJECT) _m@@139)))
 :qid |KbdCreateClassObjectbpl.3893:64|
 :skolemid |1284|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@139))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@140 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@140) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@140) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Self__DEVICE_EXTENSION) _m@@140)))
 :qid |KbdCreateClassObjectbpl.3895:64|
 :skolemid |1285|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@140))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@141 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@141) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@141) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Started__DEVICE_EXTENSION) _m@@141)))
 :qid |KbdCreateClassObjectbpl.3897:64|
 :skolemid |1286|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@141))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@142 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@142) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@142) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.GrandMaster__GLOBALS) _m@@142)))
 :qid |KbdCreateClassObjectbpl.3899:64|
 :skolemid |1287|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@142))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@143 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@143) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@143) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.P_DEVICE_OBJECT) _m@@143)))
 :qid |KbdCreateClassObjectbpl.3901:64|
 :skolemid |1288|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@143))
))))))) (and (=> (= (ControlFlow 0 125) 124) label_67_true_correct) (=> (= (ControlFlow 0 125) 120) label_67_false_correct))))))))))))
(let ((label_27_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (=> (and (and (= call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0 (Mutex__GLOBALS Globals)) (= Mem@3 Mem@2)) (and (= Res_DEV_OBJ_INIT@2 Res_DEV_OBJ_INIT@1) (= Res_DEV_EXTN@2 Res_DEV_EXTN@1))) (=> (and (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@84 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@84) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@84) (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@84)))
 :qid |KbdCreateClassObjectbpl.3447:63|
 :skolemid |1174|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@84))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@85 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@85) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@85) (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@85)))
 :qid |KbdCreateClassObjectbpl.3451:63|
 :skolemid |1175|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@85))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@86 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@86) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@86) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@86)))
 :qid |KbdCreateClassObjectbpl.3455:63|
 :skolemid |1176|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@86))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@87 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@87) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@87) (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@87)))
 :qid |KbdCreateClassObjectbpl.3459:63|
 :skolemid |1177|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@87))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@144 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@144) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.MinorFunction__IO_STACK_LOCATION) _m@@144) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MinorFunction__IO_STACK_LOCATION) _m@@144)))
 :qid |KbdCreateClassObjectbpl.3461:64|
 :skolemid |1178|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.MinorFunction__IO_STACK_LOCATION) _m@@144))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@145 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@145) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@145) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@145)))
 :qid |KbdCreateClassObjectbpl.3463:64|
 :skolemid |1179|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@145))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@146 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@146) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.DeviceExtension__DEVICE_OBJECT) _m@@146) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.DeviceExtension__DEVICE_OBJECT) _m@@146)))
 :qid |KbdCreateClassObjectbpl.3465:64|
 :skolemid |1180|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.DeviceExtension__DEVICE_OBJECT) _m@@146))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@147 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@147) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Self__DEVICE_EXTENSION) _m@@147) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Self__DEVICE_EXTENSION) _m@@147)))
 :qid |KbdCreateClassObjectbpl.3467:64|
 :skolemid |1181|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Self__DEVICE_EXTENSION) _m@@147))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@148 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@148) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Started__DEVICE_EXTENSION) _m@@148) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Started__DEVICE_EXTENSION) _m@@148)))
 :qid |KbdCreateClassObjectbpl.3469:64|
 :skolemid |1182|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Started__DEVICE_EXTENSION) _m@@148))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@149 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@149) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.GrandMaster__GLOBALS) _m@@149) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) _m@@149)))
 :qid |KbdCreateClassObjectbpl.3471:64|
 :skolemid |1183|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.GrandMaster__GLOBALS) _m@@149))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@150 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@150) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.P_DEVICE_OBJECT) _m@@150) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.P_DEVICE_OBJECT) _m@@150)))
 :qid |KbdCreateClassObjectbpl.3473:64|
 :skolemid |1184|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.P_DEVICE_OBJECT) _m@@150))
))) (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 0))) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 0)))))) (and (and (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1)) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 1)))) (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) 0))) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (and (= Res_DEV_OBJ_INIT@3 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) 1)) (= Res_DEV_EXTN@3 (|Store__T@[Int]Int_| Res_DEV_EXTN@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) 1)))))) (and (and (=> (not (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0)) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (|Select__T@[Int]Int_| Res_DEV_EXTN@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))))))) (=> (not (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0)) (and (= Res_DEV_OBJ_INIT@3 Res_DEV_OBJ_INIT@2) (= Res_DEV_EXTN@3 Res_DEV_EXTN@2)))) (and (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (not (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) 1))) (=> (not (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))))) (and (and (and (and (and (= (|Select__T@[name][Int]Int_| Mem@4 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@3 T.Flink__LIST_ENTRY)) (=> (>= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0) (= call12formal@$result.IoCreateDevice$21225.0$1$@0@@0 0))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@88 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@88) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@88) (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@88)))
 :qid |KbdCreateClassObjectbpl.3551:63|
 :skolemid |1196|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@88))
)))) (and (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))))) (forall ((r@@89 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@89) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) r@@89)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@89) (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@89)))
 :qid |KbdCreateClassObjectbpl.3555:221|
 :skolemid |1197|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@89))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)))) (forall ((r@@90 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@90) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) r@@90)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@90) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@90)))
 :qid |KbdCreateClassObjectbpl.3559:150|
 :skolemid |1198|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@90))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@91 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@91) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@91) (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@91)))
 :qid |KbdCreateClassObjectbpl.3563:63|
 :skolemid |1199|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@91))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@151 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@151) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.MinorFunction__IO_STACK_LOCATION) _m@@151) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.MinorFunction__IO_STACK_LOCATION) _m@@151)))
 :qid |KbdCreateClassObjectbpl.3565:64|
 :skolemid |1200|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.MinorFunction__IO_STACK_LOCATION) _m@@151))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@152 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@152) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@152) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@152)))
 :qid |KbdCreateClassObjectbpl.3567:64|
 :skolemid |1201|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@152))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@153 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@153) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) _m@@153) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.DeviceExtension__DEVICE_OBJECT) _m@@153)))
 :qid |KbdCreateClassObjectbpl.3569:64|
 :skolemid |1202|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.DeviceExtension__DEVICE_OBJECT) _m@@153))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@154 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@154) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.Self__DEVICE_EXTENSION) _m@@154) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Self__DEVICE_EXTENSION) _m@@154)))
 :qid |KbdCreateClassObjectbpl.3571:64|
 :skolemid |1203|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.Self__DEVICE_EXTENSION) _m@@154))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@155 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@155) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.Started__DEVICE_EXTENSION) _m@@155) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Started__DEVICE_EXTENSION) _m@@155)))
 :qid |KbdCreateClassObjectbpl.3573:64|
 :skolemid |1204|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.Started__DEVICE_EXTENSION) _m@@155))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@156 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@156) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.GrandMaster__GLOBALS) _m@@156) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.GrandMaster__GLOBALS) _m@@156)))
 :qid |KbdCreateClassObjectbpl.3575:64|
 :skolemid |1205|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.GrandMaster__GLOBALS) _m@@156))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201))) (forall ((_m@@157 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty _m@@157) (= _m@@157 $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) _m@@157) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.P_DEVICE_OBJECT) _m@@157)))
 :qid |KbdCreateClassObjectbpl.3577:127|
 :skolemid |1206|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.P_DEVICE_OBJECT) _m@@157))
))))) (and (and (and (= Mem@5 (|Store__T@[name][Int]Int_| Mem@4 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.PUINT2) $FullDeviceName$4$3357.35$KbdCreateClassObject$201 0))) (= alloc@10 alloc@2)) (and (= Res_DEVICE_STACK@13 Res_DEVICE_STACK@3) (= Res_DEV_EXTN@13 Res_DEV_EXTN@3))) (and (and (= Res_DEV_OBJ_INIT@13 Res_DEV_OBJ_INIT@3) (= Res_SPIN_LOCK@13 Res_SPIN_LOCK@3)) (and (= Mem@23 Mem@5) (= $status$6$3386.24$KbdCreateClassObject$20@3 call12formal@$result.IoCreateDevice$21225.0$1$@0@@0))))))) (and (=> (= (ControlFlow 0 93) 92) label_97_true_correct) (=> (= (ControlFlow 0 93) 78) label_97_false_correct)))))))
(let ((label_46_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@1)) 0) (and (=> (= (ControlFlow 0 52) (- 0 53)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@8 0) (=> (and (and (and (and (forall ((x@@1119 Int) ) (!  (=> (and (<= call2formal@new@0@@8 x@@1119) (< x@@1119 (+ call2formal@new@0@@8 1))) (= (Base x@@1119) call2formal@new@0@@8))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1119))
)) (forall ((x@@1120 Int) ) (!  (or (= x@@1120 call2formal@new@0@@8) (= (|Select__T@[Int]name_| alloc@2 x@@1120) (|Select__T@[Int]name_| alloc@4 x@@1120)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@4 x@@1120))
))) (and (= (|Select__T@[Int]name_| alloc@2 call2formal@new@0@@8) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@4 call2formal@new@0@@8) ALLOCATED))) (and (and (= $status$6$3386.24$KbdCreateClassObject$20@1 (- 0 1073741823)) (= $errorCode$9$3389.24$KbdCreateClassObject$20@1 (- 0 1073414143))) (and (= Mem@15 (|Store__T@[name][Int]Int_| Mem@12 T.UINT4 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.UINT4) (PLUS call2formal@new@0@@0 4 0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1))))) (= $errorCode$9$3389.24$KbdCreateClassObject$20@4 $errorCode$9$3389.24$KbdCreateClassObject$20@1)))) (and (and (and (= Res_DEVICE_STACK@19 Res_DEVICE_STACK@5) (= Res_DEV_EXTN@19 Res_DEV_EXTN@5)) (and (= Res_DEV_OBJ_INIT@19 Res_DEV_OBJ_INIT@5) (= Res_SPIN_LOCK@19 Res_SPIN_LOCK@5))) (and (and (= Mem@35 Mem@15) (= $status$6$3386.24$KbdCreateClassObject$20@5 $status$6$3386.24$KbdCreateClassObject$20@1)) (and (= alloc@13 alloc@4) (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 0))))) (and (=> (= (ControlFlow 0 52) 50) label_136_true_correct) (=> (= (ControlFlow 0 52) 30) label_136_false_correct)))))))))
(let ((label_44_correct  (=> (and (and (= $ExAllocatePoolWithTag.arg.2$4$@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1))) (= Mem@11 Mem@10)) (and (= Res_DEV_OBJ_INIT@5 Res_DEV_OBJ_INIT@4) (= Res_DEV_EXTN@5 Res_DEV_EXTN@4))) (=> (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@92 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@92) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@92) (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@92)))
 :qid |KbdCreateClassObjectbpl.3363:63|
 :skolemid |1152|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@92))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@93 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@93) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@93) (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@93)))
 :qid |KbdCreateClassObjectbpl.3367:63|
 :skolemid |1153|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@93))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@94 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@94) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@94) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@94)))
 :qid |KbdCreateClassObjectbpl.3371:63|
 :skolemid |1154|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@94))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@95 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@95) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@95) (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@95)))
 :qid |KbdCreateClassObjectbpl.3375:63|
 :skolemid |1155|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@95))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@158 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@158) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.MinorFunction__IO_STACK_LOCATION) _m@@158) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MinorFunction__IO_STACK_LOCATION) _m@@158)))
 :qid |KbdCreateClassObjectbpl.3377:64|
 :skolemid |1156|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.MinorFunction__IO_STACK_LOCATION) _m@@158))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@159 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@159) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@159) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@159)))
 :qid |KbdCreateClassObjectbpl.3379:64|
 :skolemid |1157|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@159))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@160 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@160) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.DeviceExtension__DEVICE_OBJECT) _m@@160) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.DeviceExtension__DEVICE_OBJECT) _m@@160)))
 :qid |KbdCreateClassObjectbpl.3381:64|
 :skolemid |1158|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.DeviceExtension__DEVICE_OBJECT) _m@@160))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@161 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@161) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Self__DEVICE_EXTENSION) _m@@161) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Self__DEVICE_EXTENSION) _m@@161)))
 :qid |KbdCreateClassObjectbpl.3383:64|
 :skolemid |1159|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Self__DEVICE_EXTENSION) _m@@161))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@162 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@162) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Started__DEVICE_EXTENSION) _m@@162) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Started__DEVICE_EXTENSION) _m@@162)))
 :qid |KbdCreateClassObjectbpl.3385:64|
 :skolemid |1160|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Started__DEVICE_EXTENSION) _m@@162))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@163 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@163) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.GrandMaster__GLOBALS) _m@@163) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.GrandMaster__GLOBALS) _m@@163)))
 :qid |KbdCreateClassObjectbpl.3387:64|
 :skolemid |1161|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.GrandMaster__GLOBALS) _m@@163))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@164 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@164) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.P_DEVICE_OBJECT) _m@@164) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.P_DEVICE_OBJECT) _m@@164)))
 :qid |KbdCreateClassObjectbpl.3389:64|
 :skolemid |1162|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.P_DEVICE_OBJECT) _m@@164))
))) (= Mem@12 (|Store__T@[name][Int]Int_| Mem@11 T.Buffer__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@1) call8formal@$result.ExAllocatePoolWithTag$14788.0$1$@0@@0)))))) (and (=> (= (ControlFlow 0 127) 125) label_46_true_correct) (=> (= (ControlFlow 0 127) 52) label_46_false_correct)))))))
(let ((label_39_false_correct  (=> (= $Legacy$5$3358.28$KbdCreateClassObject$201 0) (=> (and (= Mem@10 Mem@8) (= (ControlFlow 0 130) 127)) label_44_correct))))
(let ((label_39_true_correct  (=> (not (= $Legacy$5$3358.28$KbdCreateClassObject$201 0)) (=> (and (and (= tempBoogie0@0 (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1)) 1 14)) (= Mem@9 (|Store__T@[name][Int]Int_| Mem@8 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1) tempBoogie0@0)))) (and (= Mem@10 Mem@9) (= (ControlFlow 0 129) 127))) label_44_correct))))
(let ((label_38_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.ConnectOneClassToOnePort__GLOBALS) (ConnectOneClassToOnePort__GLOBALS Globals)) 0)) (and (=> (= (ControlFlow 0 131) 129) label_39_true_correct) (=> (= (ControlFlow 0 131) 130) label_39_false_correct)))))
(let ((label_38_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.ConnectOneClassToOnePort__GLOBALS) (ConnectOneClassToOnePort__GLOBALS Globals)) 0) (=> (and (= Mem@10 Mem@8) (= (ControlFlow 0 128) 127)) label_44_correct))))
(let ((label_31_false_correct  (=> (and (not (< BOOGIE_LARGE_INT_4294967273 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Length__UNICODE_STRING) (Length__UNICODE_STRING (BaseClassName__GLOBALS Globals))))) (= Mem@8 (|Store__T@[name][Int]Int_| Mem@6 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1) (PLUS (PLUS 18 1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Length__UNICODE_STRING) (Length__UNICODE_STRING (BaseClassName__GLOBALS Globals)))) 1 4))))) (and (=> (= (ControlFlow 0 132) 131) label_38_true_correct) (=> (= (ControlFlow 0 132) 128) label_38_false_correct)))))
(let ((label_31_true_correct  (=> (< BOOGIE_LARGE_INT_4294967273 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Length__UNICODE_STRING) (Length__UNICODE_STRING (BaseClassName__GLOBALS Globals)))) (=> (and (and (= $status$6$3386.24$KbdCreateClassObject$20@0 (- 0 1073741823)) (= $errorCode$9$3389.24$KbdCreateClassObject$20@0 (- 0 1073414143))) (and (= Mem@7 (|Store__T@[name][Int]Int_| Mem@6 T.UINT4 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.UINT4) (PLUS call2formal@new@0@@0 4 0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@1))))) (= $errorCode$9$3389.24$KbdCreateClassObject$20@4 $errorCode$9$3389.24$KbdCreateClassObject$20@0))) (=> (and (and (and (= Res_DEVICE_STACK@19 Res_DEVICE_STACK@4) (= Res_DEV_EXTN@19 Res_DEV_EXTN@4)) (and (= Res_DEV_OBJ_INIT@19 Res_DEV_OBJ_INIT@4) (= Res_SPIN_LOCK@19 Res_SPIN_LOCK@4))) (and (and (= Mem@35 Mem@7) (= $status$6$3386.24$KbdCreateClassObject$20@5 $status$6$3386.24$KbdCreateClassObject$20@0)) (and (= alloc@13 alloc@2) (= $deviceExtension$8$3388.24$KbdCreateClassObject$20@1 0)))) (and (=> (= (ControlFlow 0 51) 50) label_136_true_correct) (=> (= (ControlFlow 0 51) 30) label_136_false_correct)))))))
(let ((label_27_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0) (=> (and (= call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0@@0 (Mutex__GLOBALS Globals)) (= Mem@6 Mem@2)) (=> (and (and (and (= Res_DEV_OBJ_INIT@4 Res_DEV_OBJ_INIT@1) (= Res_DEV_EXTN@4 Res_DEV_EXTN@1)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@96 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@96) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@96) (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@96)))
 :qid |KbdCreateClassObjectbpl.3447:63|
 :skolemid |1174|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@96))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@97 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@97) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@97) (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@97)))
 :qid |KbdCreateClassObjectbpl.3451:63|
 :skolemid |1175|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@97))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@98 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@98) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@98) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@98)))
 :qid |KbdCreateClassObjectbpl.3455:63|
 :skolemid |1176|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@98))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@99 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@99) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@99) (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@99)))
 :qid |KbdCreateClassObjectbpl.3459:63|
 :skolemid |1177|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@99))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@165 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@165) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.MinorFunction__IO_STACK_LOCATION) _m@@165) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MinorFunction__IO_STACK_LOCATION) _m@@165)))
 :qid |KbdCreateClassObjectbpl.3461:64|
 :skolemid |1178|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.MinorFunction__IO_STACK_LOCATION) _m@@165))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@166 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@166) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@166) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@166)))
 :qid |KbdCreateClassObjectbpl.3463:64|
 :skolemid |1179|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@166))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@167 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@167) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.DeviceExtension__DEVICE_OBJECT) _m@@167) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.DeviceExtension__DEVICE_OBJECT) _m@@167)))
 :qid |KbdCreateClassObjectbpl.3465:64|
 :skolemid |1180|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.DeviceExtension__DEVICE_OBJECT) _m@@167))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@168 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@168) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Self__DEVICE_EXTENSION) _m@@168) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Self__DEVICE_EXTENSION) _m@@168)))
 :qid |KbdCreateClassObjectbpl.3467:64|
 :skolemid |1181|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Self__DEVICE_EXTENSION) _m@@168))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@169 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@169) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Started__DEVICE_EXTENSION) _m@@169) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Started__DEVICE_EXTENSION) _m@@169)))
 :qid |KbdCreateClassObjectbpl.3469:64|
 :skolemid |1182|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Started__DEVICE_EXTENSION) _m@@169))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@170 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@170) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.GrandMaster__GLOBALS) _m@@170) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) _m@@170)))
 :qid |KbdCreateClassObjectbpl.3471:64|
 :skolemid |1183|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.GrandMaster__GLOBALS) _m@@170))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@171 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@171) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.P_DEVICE_OBJECT) _m@@171) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.P_DEVICE_OBJECT) _m@@171)))
 :qid |KbdCreateClassObjectbpl.3473:64|
 :skolemid |1184|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.P_DEVICE_OBJECT) _m@@171))
)))))) (and (=> (= (ControlFlow 0 133) 51) label_31_true_correct) (=> (= (ControlFlow 0 133) 132) label_31_false_correct))))))))
(let ((start_correct  (=> (and (and (not (= (|Select__T@[Int]name_| alloc $DriverObject$1$3354.28$KbdCreateClassObject$201) UNALLOCATED)) (not (= (|Select__T@[Int]name_| alloc $TmpDeviceExtension$2$3355.28$KbdCreateClassObject$201) UNALLOCATED))) (and (not (= (|Select__T@[Int]name_| alloc $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201) UNALLOCATED)) (not (= (|Select__T@[Int]name_| alloc $FullDeviceName$4$3357.35$KbdCreateClassObject$201) UNALLOCATED)))) (and (=> (= (ControlFlow 0 134) (- 0 137)) (>= 16 0)) (=> (>= 16 0) (=> (> call2formal@new@0@@0 0) (=> (and (and (forall ((x@@1121 Int) ) (!  (=> (and (<= call2formal@new@0@@0 x@@1121) (< x@@1121 (+ call2formal@new@0@@0 16))) (= (Base x@@1121) call2formal@new@0@@0))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1121))
)) (forall ((x@@1122 Int) ) (!  (or (= x@@1122 call2formal@new@0@@0) (= (|Select__T@[Int]name_| alloc x@@1122) (|Select__T@[Int]name_| alloc@0 x@@1122)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@0 x@@1122))
))) (and (= (|Select__T@[Int]name_| alloc call2formal@new@0@@0) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@0 call2formal@new@0@@0) ALLOCATED))) (and (=> (= (ControlFlow 0 134) (- 0 136)) (>= 8 0)) (=> (>= 8 0) (=> (> call2formal@new@0@@1 0) (=> (and (forall ((x@@1123 Int) ) (!  (=> (and (<= call2formal@new@0@@1 x@@1123) (< x@@1123 (+ call2formal@new@0@@1 8))) (= (Base x@@1123) call2formal@new@0@@1))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1123))
)) (forall ((x@@1124 Int) ) (!  (or (= x@@1124 call2formal@new@0@@1) (= (|Select__T@[Int]name_| alloc@0 x@@1124) (|Select__T@[Int]name_| alloc@1 x@@1124)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@1 x@@1124))
))) (=> (and (and (= (|Select__T@[Int]name_| alloc@0 call2formal@new@0@@1) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@1 call2formal@new@0@@1) ALLOCATED)) (= Mem@0 Mem)) (=> (and (and (and (= Res_DEV_OBJ_INIT@0 Res_DEV_OBJ_INIT) (= Res_DEV_EXTN@0 Res_DEV_EXTN)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@100 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@100) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK r@@100) (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@100)))
 :qid |KbdCreateClassObjectbpl.3959:63|
 :skolemid |1300|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@100))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@101 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@101) (= (|Select__T@[Int]Int_| Res_DEV_EXTN r@@101) (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@101)))
 :qid |KbdCreateClassObjectbpl.3963:63|
 :skolemid |1301|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@101))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@102 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@102) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT r@@102) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@102)))
 :qid |KbdCreateClassObjectbpl.3967:63|
 :skolemid |1302|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@102))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@103 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@103) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK r@@103) (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@103)))
 :qid |KbdCreateClassObjectbpl.3971:63|
 :skolemid |1303|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@103))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@172 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@172) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.MinorFunction__IO_STACK_LOCATION) _m@@172) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinorFunction__IO_STACK_LOCATION) _m@@172)))
 :qid |KbdCreateClassObjectbpl.3973:64|
 :skolemid |1304|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.MinorFunction__IO_STACK_LOCATION) _m@@172))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@173 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@173) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@173) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@173)))
 :qid |KbdCreateClassObjectbpl.3975:64|
 :skolemid |1305|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@173))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@174 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@174) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.DeviceExtension__DEVICE_OBJECT) _m@@174) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) _m@@174)))
 :qid |KbdCreateClassObjectbpl.3977:64|
 :skolemid |1306|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.DeviceExtension__DEVICE_OBJECT) _m@@174))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@175 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@175) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.Self__DEVICE_EXTENSION) _m@@175) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) _m@@175)))
 :qid |KbdCreateClassObjectbpl.3979:64|
 :skolemid |1307|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.Self__DEVICE_EXTENSION) _m@@175))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@176 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@176) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.Started__DEVICE_EXTENSION) _m@@176) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Started__DEVICE_EXTENSION) _m@@176)))
 :qid |KbdCreateClassObjectbpl.3981:64|
 :skolemid |1308|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.Started__DEVICE_EXTENSION) _m@@176))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@177 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@177) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.GrandMaster__GLOBALS) _m@@177) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) _m@@177)))
 :qid |KbdCreateClassObjectbpl.3983:64|
 :skolemid |1309|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.GrandMaster__GLOBALS) _m@@177))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@178 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@178) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.P_DEVICE_OBJECT) _m@@178) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT) _m@@178)))
 :qid |KbdCreateClassObjectbpl.3985:64|
 :skolemid |1310|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.P_DEVICE_OBJECT) _m@@178))
)))))) (and (=> (= (ControlFlow 0 134) (- 0 135)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@9 0) (=> (and (and (and (and (and (forall ((x@@1125 Int) ) (!  (=> (and (<= call2formal@new@0@@9 x@@1125) (< x@@1125 (+ call2formal@new@0@@9 1))) (= (Base x@@1125) call2formal@new@0@@9))
 :qid |KbdCreateClassObjectbpl.3214:17|
 :skolemid |1121|
 :pattern ( (Base x@@1125))
)) (forall ((x@@1126 Int) ) (!  (or (= x@@1126 call2formal@new@0@@9) (= (|Select__T@[Int]name_| alloc@1 x@@1126) (|Select__T@[Int]name_| alloc@2 x@@1126)))
 :qid |KbdCreateClassObjectbpl.3215:17|
 :skolemid |1122|
 :pattern ( (|Select__T@[Int]name_| alloc@2 x@@1126))
))) (and (= (|Select__T@[Int]name_| alloc@1 call2formal@new@0@@9) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@2 call2formal@new@0@@9) ALLOCATED))) (and (and (= call0formal@$FastMutex$1$15000.16$ExAcquireFastMutex$41@0 (Mutex__GLOBALS Globals)) (= Mem@1 Mem@0)) (and (= Res_DEV_OBJ_INIT@1 Res_DEV_OBJ_INIT@0) (= Res_DEV_EXTN@1 Res_DEV_EXTN@0)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@104 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@104) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@104) (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@104)))
 :qid |KbdCreateClassObjectbpl.3321:63|
 :skolemid |1141|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@104))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@105 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@105) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@105) (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@105)))
 :qid |KbdCreateClassObjectbpl.3325:63|
 :skolemid |1142|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@105))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@106 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@106) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@106) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@106)))
 :qid |KbdCreateClassObjectbpl.3329:63|
 :skolemid |1143|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@106))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@107 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@107) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@107) (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@107)))
 :qid |KbdCreateClassObjectbpl.3333:63|
 :skolemid |1144|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@107))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@179 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@179) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.MinorFunction__IO_STACK_LOCATION) _m@@179) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.MinorFunction__IO_STACK_LOCATION) _m@@179)))
 :qid |KbdCreateClassObjectbpl.3335:64|
 :skolemid |1145|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.MinorFunction__IO_STACK_LOCATION) _m@@179))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@180 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@180) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@180) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@180)))
 :qid |KbdCreateClassObjectbpl.3337:64|
 :skolemid |1146|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@180))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@181 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@181) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.DeviceExtension__DEVICE_OBJECT) _m@@181) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.DeviceExtension__DEVICE_OBJECT) _m@@181)))
 :qid |KbdCreateClassObjectbpl.3339:64|
 :skolemid |1147|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.DeviceExtension__DEVICE_OBJECT) _m@@181))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@182 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@182) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Self__DEVICE_EXTENSION) _m@@182) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.Self__DEVICE_EXTENSION) _m@@182)))
 :qid |KbdCreateClassObjectbpl.3341:64|
 :skolemid |1148|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Self__DEVICE_EXTENSION) _m@@182))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@183 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@183) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Started__DEVICE_EXTENSION) _m@@183) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.Started__DEVICE_EXTENSION) _m@@183)))
 :qid |KbdCreateClassObjectbpl.3343:64|
 :skolemid |1149|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Started__DEVICE_EXTENSION) _m@@183))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@184 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@184) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.GrandMaster__GLOBALS) _m@@184) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.GrandMaster__GLOBALS) _m@@184)))
 :qid |KbdCreateClassObjectbpl.3345:64|
 :skolemid |1150|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.GrandMaster__GLOBALS) _m@@184))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@185 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@185) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.P_DEVICE_OBJECT) _m@@185) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.P_DEVICE_OBJECT) _m@@185)))
 :qid |KbdCreateClassObjectbpl.3347:64|
 :skolemid |1151|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.P_DEVICE_OBJECT) _m@@185))
))) (= Mem@2 (|Store__T@[name][Int]Int_| Mem@1 T.P_DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.P_DEVICE_OBJECT) $ClassDeviceObject$3$3356.28$KbdCreateClassObject$201 0))))))) (and (=> (= (ControlFlow 0 134) 93) label_27_true_correct) (=> (= (ControlFlow 0 134) 133) label_27_false_correct))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (forall ((_H_x@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT 1) _H_x@@12) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12)))) _H_x@@12) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12))) 1)))
 :qid |KbdCreateClassObjectbpl.3994:18|
 :skolemid |1311|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12)))
)) (forall ((_H_z@@25 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@25) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@25))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@25)))) _H_z@@25)))
 :qid |KbdCreateClassObjectbpl.3996:18|
 :skolemid |1312|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@25)))
))) (=> (and (and (and (Subset Empty (Inverse Res_DEV_EXTN 1)) (forall ((_H_z@@26 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@26) true)
 :qid |KbdCreateClassObjectbpl.3998:63|
 :skolemid |1313|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@26))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@12) (or (= _H_y@@12 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (MINUS_LEFT_PTR _H_y@@12 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KbdCreateClassObjectbpl.4004:235|
 :skolemid |1314|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@12))
))))) (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (ControlFlow 0 138) 134)))) start_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
