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
(declare-fun T.A3UCHAR () T@name)
(declare-fun T.A3UINT4 () T@name)
(declare-fun T.A3_LUID_AND_ATTRIBUTES () T@name)
(declare-fun T.A4PVOID () T@name)
(declare-fun T.A4UINT4 () T@name)
(declare-fun T.A5UINT2 () T@name)
(declare-fun T.A5_DEVICE_POWER_STATE () T@name)
(declare-fun T.A7_DEVICE_POWER_STATE () T@name)
(declare-fun T.A88CHAR () T@name)
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
(declare-fun T.PA88CHAR () T@name)
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
(declare-fun InputData__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun DataIn__DEVICE_EXTENSIONInv (Int) Int)
(declare-fun DataOut__DEVICE_EXTENSIONInv (Int) Int)
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
(declare-fun InputData__DEVICE_EXTENSION (Int) Int)
(declare-fun DataIn__DEVICE_EXTENSION (Int) Int)
(declare-fun DataOut__DEVICE_EXTENSION (Int) Int)
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
(declare-fun _S_StackSize__DEVICE_OBJECT (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_StackSize__DEVICE_OBJECTInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Started__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_Started__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TopPort__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_TopPort__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__DEVICE_EXTENSION (|T@[Int]Bool|) |T@[Int]Bool|)
(declare-fun _S_UnitId__DEVICE_EXTENSIONInv (|T@[Int]Bool|) |T@[Int]Bool|)
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
(assert (and (distinct UNALLOCATED ALLOCATED FREED BYTE T.Guid_WMIGUIDREGINFO T.InstanceCount_WMIGUIDREGINFO T.Flags_WMIGUIDREGINFO T.OperationID__ACCESS_STATE T.SecurityEvaluated__ACCESS_STATE T.GenerateAudit__ACCESS_STATE T.GenerateOnClose__ACCESS_STATE T.PrivilegesAllocated__ACCESS_STATE T.Flags__ACCESS_STATE T.RemainingDesiredAccess__ACCESS_STATE T.PreviouslyGrantedAccess__ACCESS_STATE T.OriginalDesiredAccess__ACCESS_STATE T.SubjectSecurityContext__ACCESS_STATE T.SecurityDescriptor__ACCESS_STATE T.AuxData__ACCESS_STATE T.Privileges__ACCESS_STATE T.AuditPrivileges__ACCESS_STATE T.ObjectName__ACCESS_STATE T.ObjectTypeName__ACCESS_STATE T.InterfaceType__CM_FULL_RESOURCE_DESCRIPTOR T.BusNumber__CM_FULL_RESOURCE_DESCRIPTOR T.PartialResourceList__CM_FULL_RESOURCE_DESCRIPTOR T.Type__CM_PARTIAL_RESOURCE_DESCRIPTOR T.ShareDisposition__CM_PARTIAL_RESOURCE_DESCRIPTOR T.Flags__CM_PARTIAL_RESOURCE_DESCRIPTOR T.u__CM_PARTIAL_RESOURCE_DESCRIPTOR T.Version__CM_PARTIAL_RESOURCE_LIST T.Revision__CM_PARTIAL_RESOURCE_LIST T.Count__CM_PARTIAL_RESOURCE_LIST T.PartialDescriptors__CM_PARTIAL_RESOURCE_LIST T.Count__CM_RESOURCE_LIST T.List__CM_RESOURCE_LIST T.Size__DEVICE_CAPABILITIES T.Version__DEVICE_CAPABILITIES T.DeviceD1__DEVICE_CAPABILITIES T.DeviceD2__DEVICE_CAPABILITIES T.LockSupported__DEVICE_CAPABILITIES T.EjectSupported__DEVICE_CAPABILITIES T.Removable__DEVICE_CAPABILITIES T.DockDevice__DEVICE_CAPABILITIES T.UniqueID__DEVICE_CAPABILITIES T.SilentInstall__DEVICE_CAPABILITIES T.RawDeviceOK__DEVICE_CAPABILITIES T.SurpriseRemovalOK__DEVICE_CAPABILITIES T.WakeFromD0__DEVICE_CAPABILITIES T.WakeFromD1__DEVICE_CAPABILITIES T.WakeFromD2__DEVICE_CAPABILITIES T.WakeFromD3__DEVICE_CAPABILITIES T.HardwareDisabled__DEVICE_CAPABILITIES T.NonDynamic__DEVICE_CAPABILITIES T.WarmEjectSupported__DEVICE_CAPABILITIES T.NoDisplayInUI__DEVICE_CAPABILITIES T.Reserved__DEVICE_CAPABILITIES T.Address__DEVICE_CAPABILITIES T.UINumber__DEVICE_CAPABILITIES T.DeviceState__DEVICE_CAPABILITIES T.SystemWake__DEVICE_CAPABILITIES T.DeviceWake__DEVICE_CAPABILITIES T.D1Latency__DEVICE_CAPABILITIES T.D2Latency__DEVICE_CAPABILITIES T.D3Latency__DEVICE_CAPABILITIES T.Self__DEVICE_EXTENSION T.TrueClassDevice__DEVICE_EXTENSION T.TopPort__DEVICE_EXTENSION T.PDO__DEVICE_EXTENSION T.RemoveLock__DEVICE_EXTENSION T.PnP__DEVICE_EXTENSION T.Started__DEVICE_EXTENSION T.AllowDisable__DEVICE_EXTENSION T.WaitWakeSpinLock__DEVICE_EXTENSION T.TrustedSubsystemCount__DEVICE_EXTENSION T.InputCount__DEVICE_EXTENSION T.SymbolicLinkName__DEVICE_EXTENSION T.InputData__DEVICE_EXTENSION T.DataIn__DEVICE_EXTENSION T.DataOut__DEVICE_EXTENSION T.KeyboardAttributes__DEVICE_EXTENSION T.IndicatorParameters__DEVICE_EXTENSION T.SpinLock__DEVICE_EXTENSION T.ReadQueue__DEVICE_EXTENSION T.SequenceNumber__DEVICE_EXTENSION T.DeviceState__DEVICE_EXTENSION T.SystemState__DEVICE_EXTENSION T.UnitId__DEVICE_EXTENSION T.WmiLibInfo__DEVICE_EXTENSION T.SystemToDeviceState__DEVICE_EXTENSION T.MinDeviceWakeState__DEVICE_EXTENSION T.MinSystemWakeState__DEVICE_EXTENSION T.WaitWakeIrp__DEVICE_EXTENSION T.ExtraWaitWakeIrp__DEVICE_EXTENSION T.TargetNotifyHandle__DEVICE_EXTENSION T.Link__DEVICE_EXTENSION T.File__DEVICE_EXTENSION T.Enabled__DEVICE_EXTENSION T.OkayToLogOverflow__DEVICE_EXTENSION T.WaitWakeEnabled__DEVICE_EXTENSION T.SurpriseRemoved__DEVICE_EXTENSION T.Type__DEVICE_OBJECT T.Size__DEVICE_OBJECT T.ReferenceCount__DEVICE_OBJECT T.DriverObject__DEVICE_OBJECT T.NextDevice__DEVICE_OBJECT T.AttachedDevice__DEVICE_OBJECT T.CurrentIrp__DEVICE_OBJECT T.Timer__DEVICE_OBJECT T.Flags__DEVICE_OBJECT T.Characteristics__DEVICE_OBJECT T.Vpb__DEVICE_OBJECT T.DeviceExtension__DEVICE_OBJECT T.DeviceType__DEVICE_OBJECT T.StackSize__DEVICE_OBJECT T.Queue__DEVICE_OBJECT T.AlignmentRequirement__DEVICE_OBJECT T.DeviceQueue__DEVICE_OBJECT T.Dpc__DEVICE_OBJECT T.ActiveThreadCount__DEVICE_OBJECT T.SecurityDescriptor__DEVICE_OBJECT T.DeviceLock__DEVICE_OBJECT T.SectorSize__DEVICE_OBJECT T.Spare1__DEVICE_OBJECT T.DeviceObjectExtension__DEVICE_OBJECT T.Reserved__DEVICE_OBJECT T.Type__DEVOBJ_EXTENSION T.Size__DEVOBJ_EXTENSION T.DeviceObject__DEVOBJ_EXTENSION T.__unnamed_4_a97c65a1__DISPATCHER_HEADER T.SignalState__DISPATCHER_HEADER T.WaitListHead__DISPATCHER_HEADER T.DriverObject__DRIVER_EXTENSION T.AddDevice__DRIVER_EXTENSION T.Count__DRIVER_EXTENSION T.ServiceKeyName__DRIVER_EXTENSION T.Type__DRIVER_OBJECT T.Size__DRIVER_OBJECT T.DeviceObject__DRIVER_OBJECT T.Flags__DRIVER_OBJECT T.DriverStart__DRIVER_OBJECT T.DriverSize__DRIVER_OBJECT T.DriverSection__DRIVER_OBJECT T.DriverExtension__DRIVER_OBJECT T.DriverName__DRIVER_OBJECT T.HardwareDatabase__DRIVER_OBJECT T.FastIoDispatch__DRIVER_OBJECT T.DriverInit__DRIVER_OBJECT T.DriverStartIo__DRIVER_OBJECT T.DriverUnload__DRIVER_OBJECT T.MajorFunction__DRIVER_OBJECT T.SystemResourcesList__ERESOURCE T.OwnerTable__ERESOURCE T.ActiveCount__ERESOURCE T.Flag__ERESOURCE T.SharedWaiters__ERESOURCE T.ExclusiveWaiters__ERESOURCE T.OwnerEntry__ERESOURCE T.ActiveEntries__ERESOURCE T.ContentionCount__ERESOURCE T.NumberOfSharedWaiters__ERESOURCE T.NumberOfExclusiveWaiters__ERESOURCE T.__unnamed_4_52c594f7__ERESOURCE T.SpinLock__ERESOURCE T.SizeOfFastIoDispatch__FAST_IO_DISPATCH T.FastIoCheckIfPossible__FAST_IO_DISPATCH T.FastIoRead__FAST_IO_DISPATCH T.FastIoWrite__FAST_IO_DISPATCH T.FastIoQueryBasicInfo__FAST_IO_DISPATCH T.FastIoQueryStandardInfo__FAST_IO_DISPATCH T.FastIoLock__FAST_IO_DISPATCH T.FastIoUnlockSingle__FAST_IO_DISPATCH T.FastIoUnlockAll__FAST_IO_DISPATCH T.FastIoUnlockAllByKey__FAST_IO_DISPATCH T.FastIoDeviceControl__FAST_IO_DISPATCH T.AcquireFileForNtCreateSection__FAST_IO_DISPATCH T.ReleaseFileForNtCreateSection__FAST_IO_DISPATCH T.FastIoDetachDevice__FAST_IO_DISPATCH T.FastIoQueryNetworkOpenInfo__FAST_IO_DISPATCH T.AcquireForModWrite__FAST_IO_DISPATCH T.MdlRead__FAST_IO_DISPATCH T.MdlReadComplete__FAST_IO_DISPATCH T.PrepareMdlWrite__FAST_IO_DISPATCH T.MdlWriteComplete__FAST_IO_DISPATCH T.FastIoReadCompressed__FAST_IO_DISPATCH T.FastIoWriteCompressed__FAST_IO_DISPATCH T.MdlReadCompleteCompressed__FAST_IO_DISPATCH T.MdlWriteCompleteCompressed__FAST_IO_DISPATCH T.FastIoQueryOpen__FAST_IO_DISPATCH T.ReleaseForModWrite__FAST_IO_DISPATCH T.AcquireForCcFlush__FAST_IO_DISPATCH T.ReleaseForCcFlush__FAST_IO_DISPATCH T.Count__FAST_MUTEX T.Owner__FAST_MUTEX T.Contention__FAST_MUTEX T.Gate__FAST_MUTEX T.OldIrql__FAST_MUTEX T.CreationTime__FILE_BASIC_INFORMATION T.LastAccessTime__FILE_BASIC_INFORMATION T.LastWriteTime__FILE_BASIC_INFORMATION T.ChangeTime__FILE_BASIC_INFORMATION T.FileAttributes__FILE_BASIC_INFORMATION T.CreationTime__FILE_NETWORK_OPEN_INFORMATION T.LastAccessTime__FILE_NETWORK_OPEN_INFORMATION T.LastWriteTime__FILE_NETWORK_OPEN_INFORMATION T.ChangeTime__FILE_NETWORK_OPEN_INFORMATION T.AllocationSize__FILE_NETWORK_OPEN_INFORMATION T.EndOfFile__FILE_NETWORK_OPEN_INFORMATION T.FileAttributes__FILE_NETWORK_OPEN_INFORMATION T.Type__FILE_OBJECT T.Size__FILE_OBJECT T.DeviceObject__FILE_OBJECT T.Vpb__FILE_OBJECT T.FsContext__FILE_OBJECT T.FsContext2__FILE_OBJECT T.SectionObjectPointer__FILE_OBJECT T.PrivateCacheMap__FILE_OBJECT T.FinalStatus__FILE_OBJECT T.RelatedFileObject__FILE_OBJECT T.LockOperation__FILE_OBJECT T.DeletePending__FILE_OBJECT T.ReadAccess__FILE_OBJECT T.WriteAccess__FILE_OBJECT T.DeleteAccess__FILE_OBJECT T.SharedRead__FILE_OBJECT T.SharedWrite__FILE_OBJECT T.SharedDelete__FILE_OBJECT T.Flags__FILE_OBJECT T.FileName__FILE_OBJECT T.CurrentByteOffset__FILE_OBJECT T.Waiters__FILE_OBJECT T.Busy__FILE_OBJECT T.LastLock__FILE_OBJECT T.Lock__FILE_OBJECT T.Event__FILE_OBJECT T.CompletionContext__FILE_OBJECT T.IrpListLock__FILE_OBJECT T.IrpList__FILE_OBJECT T.FileObjectExtension__FILE_OBJECT T.AllocationSize__FILE_STANDARD_INFORMATION T.EndOfFile__FILE_STANDARD_INFORMATION T.NumberOfLinks__FILE_STANDARD_INFORMATION T.DeletePending__FILE_STANDARD_INFORMATION T.Directory__FILE_STANDARD_INFORMATION T.Debug__GLOBALS T.GrandMaster__GLOBALS T.AssocClassList__GLOBALS T.NumAssocClass__GLOBALS T.Opens__GLOBALS T.NumberLegacyPorts__GLOBALS T.Mutex__GLOBALS T.ConnectOneClassToOnePort__GLOBALS T.SendOutputToAllPorts__GLOBALS T.PortsServiced__GLOBALS T.InitExtension__GLOBALS T.RegistryPath__GLOBALS T.BaseClassName__GLOBALS T.BaseClassBuffer__GLOBALS T.LegacyDeviceList__GLOBALS T.Data1__GUID T.Data2__GUID T.Data3__GUID T.Data4__GUID T.PrivilegeCount__INITIAL_PRIVILEGE_SET T.Control__INITIAL_PRIVILEGE_SET T.Privilege__INITIAL_PRIVILEGE_SET T.Size__INTERFACE T.Version__INTERFACE T.Context__INTERFACE T.InterfaceReference__INTERFACE T.InterfaceDereference__INTERFACE T.Port__IO_COMPLETION_CONTEXT T.Key__IO_COMPLETION_CONTEXT T.Common__IO_REMOVE_LOCK T.Dbg__IO_REMOVE_LOCK T.Removed__IO_REMOVE_LOCK_COMMON_BLOCK T.Reserved__IO_REMOVE_LOCK_COMMON_BLOCK T.IoCount__IO_REMOVE_LOCK_COMMON_BLOCK T.RemoveEvent__IO_REMOVE_LOCK_COMMON_BLOCK T.Signature__IO_REMOVE_LOCK_DBG_BLOCK T.HighWatermark__IO_REMOVE_LOCK_DBG_BLOCK T.MaxLockedTicks__IO_REMOVE_LOCK_DBG_BLOCK T.AllocateTag__IO_REMOVE_LOCK_DBG_BLOCK T.LockList__IO_REMOVE_LOCK_DBG_BLOCK T.Spin__IO_REMOVE_LOCK_DBG_BLOCK T.LowMemoryCount__IO_REMOVE_LOCK_DBG_BLOCK T.Reserved1__IO_REMOVE_LOCK_DBG_BLOCK T.Reserved2__IO_REMOVE_LOCK_DBG_BLOCK T.Blocks__IO_REMOVE_LOCK_DBG_BLOCK T.Option__IO_RESOURCE_DESCRIPTOR T.Type__IO_RESOURCE_DESCRIPTOR T.ShareDisposition__IO_RESOURCE_DESCRIPTOR T.Spare1__IO_RESOURCE_DESCRIPTOR T.Flags__IO_RESOURCE_DESCRIPTOR T.Spare2__IO_RESOURCE_DESCRIPTOR T.u__IO_RESOURCE_DESCRIPTOR T.Version__IO_RESOURCE_LIST T.Revision__IO_RESOURCE_LIST T.Count__IO_RESOURCE_LIST T.Descriptors__IO_RESOURCE_LIST T.ListSize__IO_RESOURCE_REQUIREMENTS_LIST T.InterfaceType__IO_RESOURCE_REQUIREMENTS_LIST T.BusNumber__IO_RESOURCE_REQUIREMENTS_LIST T.SlotNumber__IO_RESOURCE_REQUIREMENTS_LIST T.Reserved__IO_RESOURCE_REQUIREMENTS_LIST T.AlternativeLists__IO_RESOURCE_REQUIREMENTS_LIST T.List__IO_RESOURCE_REQUIREMENTS_LIST T.SecurityQos__IO_SECURITY_CONTEXT T.AccessState__IO_SECURITY_CONTEXT T.DesiredAccess__IO_SECURITY_CONTEXT T.FullCreateOptions__IO_SECURITY_CONTEXT T.MajorFunction__IO_STACK_LOCATION T.MinorFunction__IO_STACK_LOCATION T.Flags__IO_STACK_LOCATION T.Control__IO_STACK_LOCATION T.Parameters__IO_STACK_LOCATION T.DeviceObject__IO_STACK_LOCATION T.FileObject__IO_STACK_LOCATION T.CompletionRoutine__IO_STACK_LOCATION T.Context__IO_STACK_LOCATION T.__unnamed_4_d99b6e2b__IO_STATUS_BLOCK T.Information__IO_STATUS_BLOCK T.Type__IRP T.Size__IRP T.MdlAddress__IRP T.Flags__IRP T.AssociatedIrp__IRP T.ThreadListEntry__IRP T.IoStatus__IRP T.RequestorMode__IRP T.PendingReturned__IRP T.StackCount__IRP T.CurrentLocation__IRP T.Cancel__IRP T.CancelIrql__IRP T.ApcEnvironment__IRP T.AllocationFlags__IRP T.UserIosb__IRP T.UserEvent__IRP T.Overlay__IRP T.CancelRoutine__IRP T.UserBuffer__IRP T.Tail__IRP T.Type__KAPC T.SpareByte0__KAPC T.Size__KAPC T.SpareByte1__KAPC T.SpareLong0__KAPC T.Thread__KAPC T.ApcListEntry__KAPC T.KernelRoutine__KAPC T.RundownRoutine__KAPC T.NormalRoutine__KAPC T.NormalContext__KAPC T.SystemArgument1__KAPC T.SystemArgument2__KAPC T.ApcStateIndex__KAPC T.ApcMode__KAPC T.Inserted__KAPC T.Type__KDEVICE_QUEUE T.Size__KDEVICE_QUEUE T.DeviceListHead__KDEVICE_QUEUE T.Lock__KDEVICE_QUEUE T.Busy__KDEVICE_QUEUE T.DeviceListEntry__KDEVICE_QUEUE_ENTRY T.SortKey__KDEVICE_QUEUE_ENTRY T.Inserted__KDEVICE_QUEUE_ENTRY T.Type__KDPC T.Importance__KDPC T.Number__KDPC T.DpcListEntry__KDPC T.DeferredRoutine__KDPC T.DeferredContext__KDPC T.SystemArgument1__KDPC T.SystemArgument2__KDPC T.DpcData__KDPC T.Header__KEVENT T.KeyboardIdentifier__KEYBOARD_ATTRIBUTES T.KeyboardMode__KEYBOARD_ATTRIBUTES T.NumberOfFunctionKeys__KEYBOARD_ATTRIBUTES T.NumberOfIndicators__KEYBOARD_ATTRIBUTES T.NumberOfKeysTotal__KEYBOARD_ATTRIBUTES T.InputDataQueueLength__KEYBOARD_ATTRIBUTES T.KeyRepeatMinimum__KEYBOARD_ATTRIBUTES T.KeyRepeatMaximum__KEYBOARD_ATTRIBUTES T.Type__KEYBOARD_ID T.Subtype__KEYBOARD_ID T.UnitId__KEYBOARD_INDICATOR_PARAMETERS T.LedFlags__KEYBOARD_INDICATOR_PARAMETERS T.UnitId__KEYBOARD_INPUT_DATA T.MakeCode__KEYBOARD_INPUT_DATA T.Flags__KEYBOARD_INPUT_DATA T.Reserved__KEYBOARD_INPUT_DATA T.ExtraInformation__KEYBOARD_INPUT_DATA T.UnitId__KEYBOARD_TYPEMATIC_PARAMETERS T.Rate__KEYBOARD_TYPEMATIC_PARAMETERS T.Delay__KEYBOARD_TYPEMATIC_PARAMETERS T.Header__KSEMAPHORE T.Limit__KSEMAPHORE T.__unnamed_8_58ee4a31__LARGE_INTEGER T.u__LARGE_INTEGER T.QuadPart__LARGE_INTEGER T.Flink__LIST_ENTRY T.Blink__LIST_ENTRY T.LowPart__LUID T.HighPart__LUID T.Luid__LUID_AND_ATTRIBUTES T.Attributes__LUID_AND_ATTRIBUTES T.Next__MDL T.Size__MDL T.MdlFlags__MDL T.Process__MDL T.MappedSystemVa__MDL T.StartVa__MDL T.ByteCount__MDL T.ByteOffset__MDL T.OwnerThread__OWNER_ENTRY T.__unnamed_4_6f9ac8e1__OWNER_ENTRY T.File__PORT T.Port__PORT T.Enabled__PORT T.Reserved__PORT T.Free__PORT T.SequenceD1__POWER_SEQUENCE T.SequenceD2__POWER_SEQUENCE T.SequenceD3__POWER_SEQUENCE T.SystemState__POWER_STATE T.DeviceState__POWER_STATE T.PrivilegeCount__PRIVILEGE_SET T.Control__PRIVILEGE_SET T.Privilege__PRIVILEGE_SET T.DataSectionObject__SECTION_OBJECT_POINTERS T.SharedCacheMap__SECTION_OBJECT_POINTERS T.ImageSectionObject__SECTION_OBJECT_POINTERS T.Length__SECURITY_QUALITY_OF_SERVICE T.ImpersonationLevel__SECURITY_QUALITY_OF_SERVICE T.ContextTrackingMode__SECURITY_QUALITY_OF_SERVICE T.EffectiveOnly__SECURITY_QUALITY_OF_SERVICE T.ClientToken__SECURITY_SUBJECT_CONTEXT T.ImpersonationLevel__SECURITY_SUBJECT_CONTEXT T.PrimaryToken__SECURITY_SUBJECT_CONTEXT T.ProcessAuditId__SECURITY_SUBJECT_CONTEXT T.__unnamed_4_3a2fdc5e__SYSTEM_POWER_STATE_CONTEXT T.Length__UNICODE_STRING T.MaximumLength__UNICODE_STRING T.Buffer__UNICODE_STRING T.Type__VPB T.Size__VPB T.Flags__VPB T.VolumeLabelLength__VPB T.DeviceObject__VPB T.RealDevice__VPB T.SerialNumber__VPB T.ReferenceCount__VPB T.VolumeLabel__VPB T.WaitQueueEntry__WAIT_CONTEXT_BLOCK T.DeviceRoutine__WAIT_CONTEXT_BLOCK T.DeviceContext__WAIT_CONTEXT_BLOCK T.NumberOfMapRegisters__WAIT_CONTEXT_BLOCK T.DeviceObject__WAIT_CONTEXT_BLOCK T.CurrentIrp__WAIT_CONTEXT_BLOCK T.BufferChainingDpc__WAIT_CONTEXT_BLOCK T.GuidCount__WMILIB_CONTEXT T.GuidList__WMILIB_CONTEXT T.QueryWmiRegInfo__WMILIB_CONTEXT T.QueryWmiDataBlock__WMILIB_CONTEXT T.SetWmiDataBlock__WMILIB_CONTEXT T.SetWmiDataItem__WMILIB_CONTEXT T.ExecuteWmiMethod__WMILIB_CONTEXT T.WmiFunctionControl__WMILIB_CONTEXT T.Reserved___unnamed_12_0d6a30de T.MessageCount___unnamed_12_0d6a30de T.Vector___unnamed_12_0d6a30de T.Affinity___unnamed_12_0d6a30de T.Start___unnamed_12_17f5c211 T.Length48___unnamed_12_17f5c211 T.Start___unnamed_12_1fb42e39 T.Length___unnamed_12_1fb42e39 T.Reserved___unnamed_12_1fb42e39 T.Start___unnamed_12_2a1563c6 T.Length___unnamed_12_2a1563c6 T.DataSize___unnamed_12_31347272 T.Reserved1___unnamed_12_31347272 T.Reserved2___unnamed_12_31347272 T.Raw___unnamed_12_429aadc0 T.Translated___unnamed_12_429aadc0 T.Start___unnamed_12_4719de1a T.Length___unnamed_12_4719de1a T.Data___unnamed_12_4be56faa T.Data___unnamed_12_5ce25b92 T.Generic___unnamed_12_7a698b72 T.Port___unnamed_12_7a698b72 T.Interrupt___unnamed_12_7a698b72 T.MessageInterrupt___unnamed_12_7a698b72 T.Memory___unnamed_12_7a698b72 T.Dma___unnamed_12_7a698b72 T.DevicePrivate___unnamed_12_7a698b72 T.BusNumber___unnamed_12_7a698b72 T.DeviceSpecificData___unnamed_12_7a698b72 T.Memory40___unnamed_12_7a698b72 T.Memory48___unnamed_12_7a698b72 T.Memory64___unnamed_12_7a698b72 T.Start___unnamed_12_87c0de8d T.Length64___unnamed_12_87c0de8d T.Start___unnamed_12_98bfc55a T.Length40___unnamed_12_98bfc55a T.Priority___unnamed_12_ab1bd9d7 T.Reserved1___unnamed_12_ab1bd9d7 T.Reserved2___unnamed_12_ab1bd9d7 T.Level___unnamed_12_b0429be9 T.Vector___unnamed_12_b0429be9 T.Affinity___unnamed_12_b0429be9 T.ListEntry___unnamed_12_b43e8de8 T.__unnamed_4_f19b65c1___unnamed_12_b43e8de8 T.Level___unnamed_12_bfdb39ee T.Vector___unnamed_12_bfdb39ee T.Affinity___unnamed_12_bfdb39ee T.Start___unnamed_12_cd42b3c3 T.Length___unnamed_12_cd42b3c3 T.__unnamed_12_429aadc0___unnamed_12_e668effc T.Channel___unnamed_12_e80d029e T.Port___unnamed_12_e80d029e T.Reserved1___unnamed_12_e80d029e T.Length___unnamed_16_07c0bcc5 T.MinBusNumber___unnamed_16_07c0bcc5 T.MaxBusNumber___unnamed_16_07c0bcc5 T.Reserved___unnamed_16_07c0bcc5 T.InterfaceType___unnamed_16_29cb9f2f T.Size___unnamed_16_29cb9f2f T.Version___unnamed_16_29cb9f2f T.Interface___unnamed_16_29cb9f2f T.InterfaceSpecificData___unnamed_16_29cb9f2f T.SecurityContext___unnamed_16_30f11dbf T.Options___unnamed_16_30f11dbf T.FileAttributes___unnamed_16_30f11dbf T.ShareAccess___unnamed_16_30f11dbf T.EaLength___unnamed_16_30f11dbf T.DriverContext___unnamed_16_35034f68 T.Length___unnamed_16_487a9498 T.FileName___unnamed_16_487a9498 T.FileInformationClass___unnamed_16_487a9498 T.FileIndex___unnamed_16_487a9498 T.OutputBufferLength___unnamed_16_5f6a8844 T.InputBufferLength___unnamed_16_5f6a8844 T.FsControlCode___unnamed_16_5f6a8844 T.Type3InputBuffer___unnamed_16_5f6a8844 T.Length___unnamed_16_7177b9f3 T.FileInformationClass___unnamed_16_7177b9f3 T.FileObject___unnamed_16_7177b9f3 T.__unnamed_4_43913aa5___unnamed_16_7177b9f3 T.Length___unnamed_16_88e91ef6 T.Key___unnamed_16_88e91ef6 T.ByteOffset___unnamed_16_88e91ef6 T.Length___unnamed_16_8c506c98 T.Key___unnamed_16_8c506c98 T.ByteOffset___unnamed_16_8c506c98 T.WhichSpace___unnamed_16_9ac2e5f8 T.Buffer___unnamed_16_9ac2e5f8 T.Offset___unnamed_16_9ac2e5f8 T.Length___unnamed_16_9ac2e5f8 T.Create___unnamed_16_b93842ad T.Read___unnamed_16_b93842ad T.Write___unnamed_16_b93842ad T.QueryDirectory___unnamed_16_b93842ad T.NotifyDirectory___unnamed_16_b93842ad T.QueryFile___unnamed_16_b93842ad T.SetFile___unnamed_16_b93842ad T.QueryEa___unnamed_16_b93842ad T.SetEa___unnamed_16_b93842ad T.QueryVolume___unnamed_16_b93842ad T.SetVolume___unnamed_16_b93842ad T.FileSystemControl___unnamed_16_b93842ad T.LockControl___unnamed_16_b93842ad T.DeviceIoControl___unnamed_16_b93842ad T.QuerySecurity___unnamed_16_b93842ad T.SetSecurity___unnamed_16_b93842ad T.MountVolume___unnamed_16_b93842ad T.VerifyVolume___unnamed_16_b93842ad T.Scsi___unnamed_16_b93842ad T.QueryQuota___unnamed_16_b93842ad T.SetQuota___unnamed_16_b93842ad T.QueryDeviceRelations___unnamed_16_b93842ad T.QueryInterface___unnamed_16_b93842ad T.DeviceCapabilities___unnamed_16_b93842ad T.FilterResourceRequirements___unnamed_16_b93842ad T.ReadWriteConfig___unnamed_16_b93842ad T.SetLock___unnamed_16_b93842ad T.QueryId___unnamed_16_b93842ad T.QueryDeviceText___unnamed_16_b93842ad T.UsageNotification___unnamed_16_b93842ad T.WaitWake___unnamed_16_b93842ad T.PowerSequence___unnamed_16_b93842ad T.Power___unnamed_16_b93842ad T.StartDevice___unnamed_16_b93842ad T.WMI___unnamed_16_b93842ad T.Others___unnamed_16_b93842ad T.Length___unnamed_16_b9c62eab T.Key___unnamed_16_b9c62eab T.ByteOffset___unnamed_16_b9c62eab T.__unnamed_4_7d9d0c7e___unnamed_16_bb584060 T.Type___unnamed_16_bb584060 T.State___unnamed_16_bb584060 T.ShutdownType___unnamed_16_bb584060 T.OutputBufferLength___unnamed_16_dba55c7c T.InputBufferLength___unnamed_16_dba55c7c T.IoControlCode___unnamed_16_dba55c7c T.Type3InputBuffer___unnamed_16_dba55c7c T.DeviceQueueEntry___unnamed_16_e70c268b T.__unnamed_16_35034f68___unnamed_16_e70c268b T.Argument1___unnamed_16_e734d694 T.Argument2___unnamed_16_e734d694 T.Argument3___unnamed_16_e734d694 T.Argument4___unnamed_16_e734d694 T.ProviderId___unnamed_16_eac6dbea T.DataPath___unnamed_16_eac6dbea T.BufferSize___unnamed_16_eac6dbea T.Buffer___unnamed_16_eac6dbea T.Length___unnamed_16_f6cae4c2 T.EaList___unnamed_16_f6cae4c2 T.EaListLength___unnamed_16_f6cae4c2 T.EaIndex___unnamed_16_f6cae4c2 T.Length___unnamed_16_fe36e4f4 T.StartSid___unnamed_16_fe36e4f4 T.SidList___unnamed_16_fe36e4f4 T.SidListLength___unnamed_16_fe36e4f4 T.Abandoned___unnamed_1_29794256 T.Absolute___unnamed_1_29794256 T.NpxIrql___unnamed_1_29794256 T.Signalling___unnamed_1_29794256 T.Inserted___unnamed_1_2dc63b48 T.DebugActive___unnamed_1_2dc63b48 T.DpcActive___unnamed_1_2dc63b48 T.Size___unnamed_1_2ef8da39 T.Hand___unnamed_1_2ef8da39 T.Lock___unnamed_1_faa7dc71 T.MinimumVector___unnamed_20_f4d2e6d8 T.MaximumVector___unnamed_20_f4d2e6d8 T.AffinityPolicy___unnamed_20_f4d2e6d8 T.PriorityPolicy___unnamed_20_f4d2e6d8 T.TargetedProcessors___unnamed_20_f4d2e6d8 T.Length___unnamed_24_41cbc8c0 T.Alignment___unnamed_24_41cbc8c0 T.MinimumAddress___unnamed_24_41cbc8c0 T.MaximumAddress___unnamed_24_41cbc8c0 T.Length48___unnamed_24_5419c914 T.Alignment48___unnamed_24_5419c914 T.MinimumAddress___unnamed_24_5419c914 T.MaximumAddress___unnamed_24_5419c914 T.Length___unnamed_24_67a5ff10 T.Alignment___unnamed_24_67a5ff10 T.MinimumAddress___unnamed_24_67a5ff10 T.MaximumAddress___unnamed_24_67a5ff10 T.Port___unnamed_24_72c3976e T.Memory___unnamed_24_72c3976e T.Interrupt___unnamed_24_72c3976e T.Dma___unnamed_24_72c3976e T.Generic___unnamed_24_72c3976e T.DevicePrivate___unnamed_24_72c3976e T.BusNumber___unnamed_24_72c3976e T.ConfigData___unnamed_24_72c3976e T.Memory40___unnamed_24_72c3976e T.Memory48___unnamed_24_72c3976e T.Memory64___unnamed_24_72c3976e T.Length64___unnamed_24_a26050bb T.Alignment64___unnamed_24_a26050bb T.MinimumAddress___unnamed_24_a26050bb T.MaximumAddress___unnamed_24_a26050bb T.Length___unnamed_24_b8f476db T.Alignment___unnamed_24_b8f476db T.MinimumAddress___unnamed_24_b8f476db T.MaximumAddress___unnamed_24_b8f476db T.Length40___unnamed_24_d09044b4 T.Alignment40___unnamed_24_d09044b4 T.MinimumAddress___unnamed_24_d09044b4 T.MaximumAddress___unnamed_24_d09044b4 T.ReplaceIfExists___unnamed_2_46cc4597 T.AdvanceOnly___unnamed_2_46cc4597 T.__unnamed_16_e70c268b___unnamed_40_7218f704 T.Thread___unnamed_40_7218f704 T.AuxiliaryBuffer___unnamed_40_7218f704 T.__unnamed_12_b43e8de8___unnamed_40_7218f704 T.OriginalFileObject___unnamed_40_7218f704 T.ListEntry___unnamed_40_c55c9377 T.Wcb___unnamed_40_c55c9377 T.InitialPrivilegeSet___unnamed_44_5584090d T.PrivilegeSet___unnamed_44_5584090d T.Overlay___unnamed_48_cf99b13f T.Apc___unnamed_48_cf99b13f T.CompletionKey___unnamed_48_cf99b13f T.PowerState___unnamed_4_069846fb T.IdType___unnamed_4_224c32f4 T.Capabilities___unnamed_4_2de698da T.__unnamed_4_c3479730___unnamed_4_3a2fdc5e T.ContextAsUlong___unnamed_4_3a2fdc5e T.Length___unnamed_4_3a4c1a13 T.__unnamed_2_46cc4597___unnamed_4_43913aa5 T.ClusterCount___unnamed_4_43913aa5 T.DeleteHandle___unnamed_4_43913aa5 T.UserApcRoutine___unnamed_4_4e8dd2ba T.IssuingProcess___unnamed_4_4e8dd2ba T.Srb___unnamed_4_52603077 T.Address___unnamed_4_52c594f7 T.CreatorBackTraceIndex___unnamed_4_52c594f7 T.Type___unnamed_4_5ca00198 T.__unnamed_1_29794256___unnamed_4_5ca00198 T.__unnamed_1_2ef8da39___unnamed_4_5ca00198 T.__unnamed_1_2dc63b48___unnamed_4_5ca00198 T.MasterIrp___unnamed_4_6ac6463c T.IrpCount___unnamed_4_6ac6463c T.SystemBuffer___unnamed_4_6ac6463c T.OwnerCount___unnamed_4_6f9ac8e1 T.TableSize___unnamed_4_6f9ac8e1 T.PowerSequence___unnamed_4_7a02167b T.SystemContext___unnamed_4_7d9d0c7e T.SystemPowerStateContext___unnamed_4_7d9d0c7e T.IoResourceRequirementList___unnamed_4_82f7a864 T.Length___unnamed_4_9aec220b T.__unnamed_4_5ca00198___unnamed_4_a97c65a1 T.Lock___unnamed_4_a97c65a1 T.Reserved1___unnamed_4_c3479730 T.TargetSystemState___unnamed_4_c3479730 T.EffectiveSystemState___unnamed_4_c3479730 T.CurrentSystemState___unnamed_4_c3479730 T.IgnoreHibernationPath___unnamed_4_c3479730 T.PseudoTransition___unnamed_4_c3479730 T.Reserved2___unnamed_4_c3479730 T.Status___unnamed_4_d99b6e2b T.Pointer___unnamed_4_d99b6e2b T.CurrentStackLocation___unnamed_4_f19b65c1 T.PacketType___unnamed_4_f19b65c1 T.Type___unnamed_4_fa10fc16 T.SecurityInformation___unnamed_8_01efa60d T.Length___unnamed_8_01efa60d T.MinimumChannel___unnamed_8_08d4cef8 T.MaximumChannel___unnamed_8_08d4cef8 T.__unnamed_4_4e8dd2ba___unnamed_8_0a898c0c T.UserApcContext___unnamed_8_0a898c0c T.SecurityInformation___unnamed_8_1330f93a T.SecurityDescriptor___unnamed_8_1330f93a T.AsynchronousParameters___unnamed_8_181d0de9 T.AllocationSize___unnamed_8_181d0de9 T.Vpb___unnamed_8_4812764d T.DeviceObject___unnamed_8_4812764d T.Length___unnamed_8_559a91e6 T.FsInformationClass___unnamed_8_559a91e6 T.Length___unnamed_8_5845b309 T.FileInformationClass___unnamed_8_5845b309 T.LowPart___unnamed_8_58ee4a31 T.HighPart___unnamed_8_58ee4a31 T.AllocatedResources___unnamed_8_61acf4ce T.AllocatedResourcesTranslated___unnamed_8_61acf4ce T.DeviceTextType___unnamed_8_6acfee04 T.LocaleId___unnamed_8_6acfee04 T.Length___unnamed_8_7f26a9dd T.CompletionFilter___unnamed_8_7f26a9dd T.Vpb___unnamed_8_87add0bd T.DeviceObject___unnamed_8_87add0bd T.InPath___unnamed_8_b2773e4c T.Reserved___unnamed_8_b2773e4c T.Type___unnamed_8_b2773e4c T.Length___unnamed_8_de890d4e T.FsInformationClass___unnamed_8_de890d4e T.LowPart___unnamed_8_ef9ba0d3 T.HighPart___unnamed_8_ef9ba0d3 T.A1_CM_FULL_RESOURCE_DESCRIPTOR T.A1_CM_PARTIAL_RESOURCE_DESCRIPTOR T.A1_IO_RESOURCE_DESCRIPTOR T.A1_IO_RESOURCE_LIST T.A1_LUID_AND_ATTRIBUTES T.A256UINT2 T.A28PFDRIVER_DISPATCH T.A2UCHAR T.A2UINT2 T.A32UINT2 T.A3UCHAR T.A3UINT4 T.A3_LUID_AND_ATTRIBUTES T.A4PVOID T.A4UINT4 T.A5UINT2 T.A5_DEVICE_POWER_STATE T.A7_DEVICE_POWER_STATE T.A88CHAR T.A8UCHAR T.A9UINT2 T.BUS_QUERY_ID_TYPE T.CHAR T.DEVICE_TEXT_TYPE T.F0 T.F1 T.F10 T.F11 T.F12 T.F13 T.F14 T.F15 T.F16 T.F17 T.F18 T.F19 T.F2 T.F20 T.F21 T.F22 T.F23 T.F24 T.F25 T.F26 T.F27 T.F28 T.F29 T.F3 T.F30 T.F31 T.F32 T.F33 T.F34 T.F35 T.F36 T.F37 T.F38 T.F4 T.F5 T.F6 T.F7 T.F8 T.F9 T.FDRIVER_ADD_DEVICE T.FDRIVER_CANCEL T.FDRIVER_CONTROL T.FDRIVER_DISPATCH T.FDRIVER_INITIALIZE T.FDRIVER_STARTIO T.FDRIVER_UNLOAD T.FFAST_IO_ACQUIRE_FILE T.FFAST_IO_ACQUIRE_FOR_CCFLUSH T.FFAST_IO_ACQUIRE_FOR_MOD_WRITE T.FFAST_IO_CHECK_IF_POSSIBLE T.FFAST_IO_DETACH_DEVICE T.FFAST_IO_DEVICE_CONTROL T.FFAST_IO_LOCK T.FFAST_IO_MDL_READ T.FFAST_IO_MDL_READ_COMPLETE T.FFAST_IO_MDL_READ_COMPLETE_COMPRESSED T.FFAST_IO_MDL_WRITE_COMPLETE T.FFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED T.FFAST_IO_PREPARE_MDL_WRITE T.FFAST_IO_QUERY_BASIC_INFO T.FFAST_IO_QUERY_NETWORK_OPEN_INFO T.FFAST_IO_QUERY_OPEN T.FFAST_IO_QUERY_STANDARD_INFO T.FFAST_IO_READ T.FFAST_IO_READ_COMPRESSED T.FFAST_IO_RELEASE_FILE T.FFAST_IO_RELEASE_FOR_CCFLUSH T.FFAST_IO_RELEASE_FOR_MOD_WRITE T.FFAST_IO_UNLOCK_ALL T.FFAST_IO_UNLOCK_ALL_BY_KEY T.FFAST_IO_UNLOCK_SINGLE T.FFAST_IO_WRITE T.FFAST_IO_WRITE_COMPRESSED T.FIO_COMPLETION_ROUTINE T.FKDEFERRED_ROUTINE T.INT2 T.INT4 T.INT8 T.PA256UINT2 T.PA2UINT2 T.PA4UINT4 T.PA5UINT2 T.PA88CHAR T.PA9UINT2 T.PCHAR T.PF19 T.PF21 T.PF23 T.PF24 T.PF25 T.PF33 T.PF34 T.PF35 T.PF36 T.PF37 T.PF38 T.PFDRIVER_ADD_DEVICE T.PFDRIVER_CANCEL T.PFDRIVER_CONTROL T.PFDRIVER_DISPATCH T.PFDRIVER_INITIALIZE T.PFDRIVER_STARTIO T.PFDRIVER_UNLOAD T.PFFAST_IO_ACQUIRE_FILE T.PFFAST_IO_ACQUIRE_FOR_CCFLUSH T.PFFAST_IO_ACQUIRE_FOR_MOD_WRITE T.PFFAST_IO_CHECK_IF_POSSIBLE T.PFFAST_IO_DETACH_DEVICE T.PFFAST_IO_DEVICE_CONTROL T.PFFAST_IO_LOCK T.PFFAST_IO_MDL_READ T.PFFAST_IO_MDL_READ_COMPLETE T.PFFAST_IO_MDL_READ_COMPLETE_COMPRESSED T.PFFAST_IO_MDL_WRITE_COMPLETE T.PFFAST_IO_MDL_WRITE_COMPLETE_COMPRESSED T.PFFAST_IO_PREPARE_MDL_WRITE T.PFFAST_IO_QUERY_BASIC_INFO T.PFFAST_IO_QUERY_NETWORK_OPEN_INFO T.PFFAST_IO_QUERY_OPEN T.PFFAST_IO_QUERY_STANDARD_INFO T.PFFAST_IO_READ T.PFFAST_IO_READ_COMPRESSED T.PFFAST_IO_RELEASE_FILE T.PFFAST_IO_RELEASE_FOR_CCFLUSH T.PFFAST_IO_RELEASE_FOR_MOD_WRITE T.PFFAST_IO_UNLOCK_ALL T.PFFAST_IO_UNLOCK_ALL_BY_KEY T.PFFAST_IO_UNLOCK_SINGLE T.PFFAST_IO_WRITE T.PFFAST_IO_WRITE_COMPRESSED T.PFIO_COMPLETION_ROUTINE T.PFKDEFERRED_ROUTINE T.PINT4 T.POWER_ACTION T.PPCHAR T.PPF24 T.PPPUINT2 T.PPP_DEVICE_OBJECT T.PPP_FILE_OBJECT T.PPUINT2 T.PPUINT4 T.PPVOID T.PP_DEVICE_EXTENSION T.PP_DEVICE_OBJECT T.PP_DRIVER_OBJECT T.PP_ERESOURCE T.PP_FAST_MUTEX T.PP_FILE_OBJECT T.PP_LIST_ENTRY T.PP_MDL T.PP_PORT T.PP_UNICODE_STRING T.PUCHAR T.PUINT2 T.PUINT4 T.PVOID T.PWMIGUIDREGINFO T.P_ACCESS_STATE T.P_CM_RESOURCE_LIST T.P_COMPRESSED_DATA_INFO T.P_DEVICE_CAPABILITIES T.P_DEVICE_EXTENSION T.P_DEVICE_OBJECT T.P_DEVOBJ_EXTENSION T.P_DRIVER_EXTENSION T.P_DRIVER_OBJECT T.P_EPROCESS T.P_ERESOURCE T.P_ETHREAD T.P_FAST_IO_DISPATCH T.P_FAST_MUTEX T.P_FILE_BASIC_INFORMATION T.P_FILE_GET_QUOTA_INFORMATION T.P_FILE_NETWORK_OPEN_INFORMATION T.P_FILE_OBJECT T.P_FILE_STANDARD_INFORMATION T.P_GLOBALS T.P_GUID T.P_INTERFACE T.P_IO_COMPLETION_CONTEXT T.P_IO_REMOVE_LOCK_TRACKING_BLOCK T.P_IO_RESOURCE_REQUIREMENTS_LIST T.P_IO_SECURITY_CONTEXT T.P_IO_STACK_LOCATION T.P_IO_STATUS_BLOCK T.P_IO_TIMER T.P_IRP T.P_KAPC T.P_KDPC T.P_KEVENT T.P_KEYBOARD_INPUT_DATA T.P_KSEMAPHORE T.P_KTHREAD T.P_LARGE_INTEGER T.P_LIST_ENTRY T.P_MDL T.P_OWNER_ENTRY T.P_POOL_TYPE T.P_PORT T.P_POWER_SEQUENCE T.P_SCSI_REQUEST_BLOCK T.P_SECTION_OBJECT_POINTERS T.P_SECURITY_QUALITY_OF_SERVICE T.P_UNICODE_STRING T.P_VPB T.UCHAR T.UINT2 T.UINT4 T.VOID T.WMIENABLEDISABLECONTROL T.WMIGUIDREGINFO T._ACCESS_STATE T._CM_FULL_RESOURCE_DESCRIPTOR T._CM_PARTIAL_RESOURCE_DESCRIPTOR T._CM_PARTIAL_RESOURCE_LIST T._CM_RESOURCE_LIST T._COMPRESSED_DATA_INFO T._DEVICE_CAPABILITIES T._DEVICE_EXTENSION T._DEVICE_OBJECT T._DEVICE_POWER_STATE T._DEVICE_RELATION_TYPE T._DEVICE_USAGE_NOTIFICATION_TYPE T._DEVOBJ_EXTENSION T._DISPATCHER_HEADER T._DRIVER_EXTENSION T._DRIVER_OBJECT T._EPROCESS T._ERESOURCE T._ETHREAD T._FAST_IO_DISPATCH T._FAST_MUTEX T._FILE_BASIC_INFORMATION T._FILE_GET_QUOTA_INFORMATION T._FILE_INFORMATION_CLASS T._FILE_NETWORK_OPEN_INFORMATION T._FILE_OBJECT T._FILE_STANDARD_INFORMATION T._FSINFOCLASS T._GLOBALS T._GUID T._INITIAL_PRIVILEGE_SET T._INTERFACE T._INTERFACE_TYPE T._IO_ALLOCATION_ACTION T._IO_COMPLETION_CONTEXT T._IO_REMOVE_LOCK T._IO_REMOVE_LOCK_COMMON_BLOCK T._IO_REMOVE_LOCK_DBG_BLOCK T._IO_REMOVE_LOCK_TRACKING_BLOCK T._IO_RESOURCE_DESCRIPTOR T._IO_RESOURCE_LIST T._IO_RESOURCE_REQUIREMENTS_LIST T._IO_SECURITY_CONTEXT T._IO_STACK_LOCATION T._IO_STATUS_BLOCK T._IO_TIMER T._IRP T._IRQ_DEVICE_POLICY T._IRQ_PRIORITY T._KAPC T._KDEVICE_QUEUE T._KDEVICE_QUEUE_ENTRY T._KDPC T._KEVENT T._KEYBOARD_ATTRIBUTES T._KEYBOARD_ID T._KEYBOARD_INDICATOR_PARAMETERS T._KEYBOARD_INPUT_DATA T._KEYBOARD_TYPEMATIC_PARAMETERS T._KSEMAPHORE T._KTHREAD T._LARGE_INTEGER T._LIST_ENTRY T._LUID T._LUID_AND_ATTRIBUTES T._MDL T._OWNER_ENTRY T._POOL_TYPE T._PORT T._POWER_SEQUENCE T._POWER_STATE T._POWER_STATE_TYPE T._PRIVILEGE_SET T._SCSI_REQUEST_BLOCK T._SECTION_OBJECT_POINTERS T._SECURITY_IMPERSONATION_LEVEL T._SECURITY_QUALITY_OF_SERVICE T._SECURITY_SUBJECT_CONTEXT T._SYSTEM_POWER_STATE T._SYSTEM_POWER_STATE_CONTEXT T._UNICODE_STRING T._VPB T._WAIT_CONTEXT_BLOCK T._WMILIB_CONTEXT T.__unnamed_12_0d6a30de T.__unnamed_12_17f5c211 T.__unnamed_12_1fb42e39 T.__unnamed_12_2a1563c6 T.__unnamed_12_31347272 T.__unnamed_12_429aadc0 T.__unnamed_12_4719de1a T.__unnamed_12_4be56faa T.__unnamed_12_5ce25b92 T.__unnamed_12_7a698b72 T.__unnamed_12_87c0de8d T.__unnamed_12_98bfc55a T.__unnamed_12_ab1bd9d7 T.__unnamed_12_b0429be9 T.__unnamed_12_b43e8de8 T.__unnamed_12_bfdb39ee T.__unnamed_12_cd42b3c3 T.__unnamed_12_e668effc T.__unnamed_12_e80d029e T.__unnamed_16_07c0bcc5 T.__unnamed_16_29cb9f2f T.__unnamed_16_30f11dbf T.__unnamed_16_35034f68 T.__unnamed_16_487a9498 T.__unnamed_16_5f6a8844 T.__unnamed_16_7177b9f3 T.__unnamed_16_88e91ef6 T.__unnamed_16_8c506c98 T.__unnamed_16_9ac2e5f8 T.__unnamed_16_b93842ad T.__unnamed_16_b9c62eab T.__unnamed_16_bb584060 T.__unnamed_16_dba55c7c T.__unnamed_16_e70c268b T.__unnamed_16_e734d694 T.__unnamed_16_eac6dbea T.__unnamed_16_f6cae4c2 T.__unnamed_16_fe36e4f4 T.__unnamed_1_29794256 T.__unnamed_1_2dc63b48 T.__unnamed_1_2ef8da39 T.__unnamed_1_faa7dc71 T.__unnamed_20_f4d2e6d8 T.__unnamed_24_41cbc8c0 T.__unnamed_24_5419c914 T.__unnamed_24_67a5ff10 T.__unnamed_24_72c3976e T.__unnamed_24_a26050bb T.__unnamed_24_b8f476db T.__unnamed_24_d09044b4 T.__unnamed_2_46cc4597 T.__unnamed_40_7218f704 T.__unnamed_40_c55c9377 T.__unnamed_44_5584090d T.__unnamed_48_cf99b13f T.__unnamed_4_069846fb T.__unnamed_4_224c32f4 T.__unnamed_4_2de698da T.__unnamed_4_3a2fdc5e T.__unnamed_4_3a4c1a13 T.__unnamed_4_43913aa5 T.__unnamed_4_4e8dd2ba T.__unnamed_4_52603077 T.__unnamed_4_52c594f7 T.__unnamed_4_5ca00198 T.__unnamed_4_6ac6463c T.__unnamed_4_6f9ac8e1 T.__unnamed_4_7a02167b T.__unnamed_4_7d9d0c7e T.__unnamed_4_82f7a864 T.__unnamed_4_9aec220b T.__unnamed_4_a97c65a1 T.__unnamed_4_c3479730 T.__unnamed_4_d99b6e2b T.__unnamed_4_f19b65c1 T.__unnamed_4_fa10fc16 T.__unnamed_8_01efa60d T.__unnamed_8_08d4cef8 T.__unnamed_8_0a898c0c T.__unnamed_8_1330f93a T.__unnamed_8_181d0de9 T.__unnamed_8_4812764d T.__unnamed_8_559a91e6 T.__unnamed_8_5845b309 T.__unnamed_8_58ee4a31 T.__unnamed_8_61acf4ce T.__unnamed_8_6acfee04 T.__unnamed_8_7f26a9dd T.__unnamed_8_87add0bd T.__unnamed_8_b2773e4c T.__unnamed_8_de890d4e T.__unnamed_8_ef9ba0d3)(distinct Globals BOOGIE_LARGE_INT_3221553153))
)
(assert (forall ((f |T@[Int]Int|) (x Int) (y Int) ) (!  (=> (and (= (|Select__T@[Int]Int_| f x) x) (ReachBetween f x y y)) (= x y))
 :qid |KeyboardClassFindMorePortsbpl.1934:14|
 :skolemid |349|
 :pattern ( (|Select__T@[Int]Int_| f x) (ReachBetween f x y y))
)))
(assert (forall ((a Bool) (b Int) (c Int) ) (!  (=> a (= (choose a b c) b))
 :qid |KeyboardClassFindMorePortsbpl.1834:14|
 :skolemid |330|
 :pattern ( (choose a b c))
)))
(assert (forall ((a@@0 Int) (b@@0 Int) ) (!  (=> (or (= a@@0 0) (= b@@0 0)) (= (BIT_BAND a@@0 b@@0) 0))
 :qid |KeyboardClassFindMorePortsbpl.1840:14|
 :skolemid |334|
 :pattern ( (BIT_BAND a@@0 b@@0))
)))
(assert (forall ((f@@0 |T@[Int]Int|) (x@@0 Int) (y@@0 Int) (z Int) (w Int) ) (! (ReachBetween f@@0 x@@0 (|Select__T@[Int]Int_| f@@0 x@@0) (|Select__T@[Int]Int_| f@@0 x@@0))
 :qid |KeyboardClassFindMorePortsbpl.1928:14|
 :skolemid |347|
 :pattern ( (ReachBetween f@@0 y@@0 z w) (|Select__T@[Int]Int_| f@@0 x@@0))
)))
(assert (forall ((a@@1 Int) (b@@1 Int) (size Int) ) (!  (and (<= (* size (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size)) (- a@@1 b@@1)) (< (- a@@1 b@@1) (* size (+ (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size) 1))))
 :qid |KeyboardClassFindMorePortsbpl.1773:16|
 :skolemid |322|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT a@@1 b@@1 size))
)))
(assert (forall ((a@@2 Int) (b@@2 Int) ) (!  (=> (and (and (POW2 a@@2) (POW2 b@@2)) (not (= a@@2 b@@2))) (= (BIT_BAND a@@2 b@@2) 0))
 :qid |KeyboardClassFindMorePortsbpl.1839:14|
 :skolemid |333|
 :pattern ( (BIT_BAND a@@2 b@@2))
)))
(assert (forall ((n Int) (x@@1 Int) (y@@1 Int) ) (!  (=> (and (<= x@@1 y@@1) (= (Rep n x@@1) (Rep n y@@1))) (|Select__T@[Int]Bool_| (AtLeast n x@@1) y@@1))
 :qid |KeyboardClassFindMorePortsbpl.43:14|
 :skolemid |4|
 :pattern ( (AtLeast n x@@1) (Rep n x@@1) (Rep n y@@1))
)))
(assert (forall ((f@@1 |T@[Int]Int|) (x@@2 Int) (y@@2 Int) (z@@0 Int) ) (!  (=> (ReachBetween f@@1 x@@2 y@@2 z@@0) (and (ReachBetween f@@1 x@@2 y@@2 y@@2) (ReachBetween f@@1 y@@2 z@@0 z@@0)))
 :qid |KeyboardClassFindMorePortsbpl.1943:14|
 :skolemid |352|
 :pattern ( (ReachBetween f@@1 x@@2 y@@2 z@@0))
)))
(assert (forall ((x@@3 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@3 0 1) (File__PORTInv x@@3))
 :qid |KeyboardClassFindMorePortsbpl.1430:15|
 :skolemid |120|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@3 0 1))
)))
(assert (forall ((x@@4 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@4 0 1) (Flink__LIST_ENTRYInv x@@4))
 :qid |KeyboardClassFindMorePortsbpl.1464:15|
 :skolemid |140|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@4 0 1))
)))
(assert (forall ((x@@5 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@5 0 1) (Length__UNICODE_STRINGInv x@@5))
 :qid |KeyboardClassFindMorePortsbpl.1566:15|
 :skolemid |200|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@5 0 1))
)))
(assert (forall ((x@@6 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@6 0 1) (Self__DEVICE_EXTENSIONInv x@@6))
 :qid |KeyboardClassFindMorePortsbpl.1702:15|
 :skolemid |280|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@6 0 1))
)))
(assert (forall ((x@@7 Int) ) (! (= (MINUS_LEFT_PTR x@@7 1 0) (File__PORTInv x@@7))
 :qid |KeyboardClassFindMorePortsbpl.1431:15|
 :skolemid |121|
 :pattern ( (MINUS_LEFT_PTR x@@7 1 0))
)))
(assert (forall ((x@@8 Int) ) (! (= (MINUS_LEFT_PTR x@@8 1 0) (Flink__LIST_ENTRYInv x@@8))
 :qid |KeyboardClassFindMorePortsbpl.1465:15|
 :skolemid |141|
 :pattern ( (MINUS_LEFT_PTR x@@8 1 0))
)))
(assert (forall ((x@@9 Int) ) (! (= (MINUS_LEFT_PTR x@@9 1 0) (Length__UNICODE_STRINGInv x@@9))
 :qid |KeyboardClassFindMorePortsbpl.1567:15|
 :skolemid |201|
 :pattern ( (MINUS_LEFT_PTR x@@9 1 0))
)))
(assert (forall ((x@@10 Int) ) (! (= (MINUS_LEFT_PTR x@@10 1 0) (Self__DEVICE_EXTENSIONInv x@@10))
 :qid |KeyboardClassFindMorePortsbpl.1703:15|
 :skolemid |281|
 :pattern ( (MINUS_LEFT_PTR x@@10 1 0))
)))
(assert (forall ((x@@11 Int) ) (! (= (MINUS_LEFT_PTR x@@11 1 2) (MaximumLength__UNICODE_STRINGInv x@@11))
 :qid |KeyboardClassFindMorePortsbpl.1601:15|
 :skolemid |221|
 :pattern ( (MINUS_LEFT_PTR x@@11 1 2))
)))
(assert (forall ((x@@12 Int) ) (! (= (MINUS_LEFT_PTR x@@12 1 4) (Buffer__UNICODE_STRINGInv x@@12))
 :qid |KeyboardClassFindMorePortsbpl.1346:15|
 :skolemid |71|
 :pattern ( (MINUS_LEFT_PTR x@@12 1 4))
)))
(assert (forall ((x@@13 Int) ) (! (= (MINUS_LEFT_PTR x@@13 1 4) (GrandMaster__GLOBALSInv x@@13))
 :qid |KeyboardClassFindMorePortsbpl.1499:15|
 :skolemid |161|
 :pattern ( (MINUS_LEFT_PTR x@@13 1 4))
)))
(assert (forall ((x@@14 Int) ) (! (= (MINUS_LEFT_PTR x@@14 1 4) (Port__PORTInv x@@14))
 :qid |KeyboardClassFindMorePortsbpl.1669:15|
 :skolemid |261|
 :pattern ( (MINUS_LEFT_PTR x@@14 1 4))
)))
(assert (forall ((x@@15 Int) ) (! (= (MINUS_LEFT_PTR x@@15 1 8) (AssocClassList__GLOBALSInv x@@15))
 :qid |KeyboardClassFindMorePortsbpl.1312:15|
 :skolemid |51|
 :pattern ( (MINUS_LEFT_PTR x@@15 1 8))
)))
(assert (forall ((x@@16 Int) ) (! (= (MINUS_LEFT_PTR x@@16 1 8) (TopPort__DEVICE_EXTENSIONInv x@@16))
 :qid |KeyboardClassFindMorePortsbpl.1754:15|
 :skolemid |311|
 :pattern ( (MINUS_LEFT_PTR x@@16 1 8))
)))
(assert (forall ((x@@17 Int) ) (! (= (MINUS_LEFT_PTR x@@17 1 11) (Free__PORTInv x@@17))
 :qid |KeyboardClassFindMorePortsbpl.1482:15|
 :skolemid |151|
 :pattern ( (MINUS_LEFT_PTR x@@17 1 11))
)))
(assert (forall ((x@@18 Int) ) (! (= (MINUS_LEFT_PTR x@@18 1 20) (NumberLegacyPorts__GLOBALSInv x@@18))
 :qid |KeyboardClassFindMorePortsbpl.1635:15|
 :skolemid |241|
 :pattern ( (MINUS_LEFT_PTR x@@18 1 20))
)))
(assert (forall ((x@@19 Int) ) (! (= (MINUS_LEFT_PTR x@@19 1 24) (Mutex__GLOBALSInv x@@19))
 :qid |KeyboardClassFindMorePortsbpl.1618:15|
 :skolemid |231|
 :pattern ( (MINUS_LEFT_PTR x@@19 1 24))
)))
(assert (forall ((x@@20 Int) ) (! (= (MINUS_LEFT_PTR x@@20 1 28) (Flags__DEVICE_OBJECTInv x@@20))
 :qid |KeyboardClassFindMorePortsbpl.1448:15|
 :skolemid |131|
 :pattern ( (MINUS_LEFT_PTR x@@20 1 28))
)))
(assert (forall ((x@@21 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@21 2 1) (MaximumLength__UNICODE_STRINGInv x@@21))
 :qid |KeyboardClassFindMorePortsbpl.1600:15|
 :skolemid |220|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@21 2 1))
)))
(assert (forall ((x@@22 Int) ) (! (= (MINUS_LEFT_PTR x@@22 1 40) (DeviceExtension__DEVICE_OBJECTInv x@@22))
 :qid |KeyboardClassFindMorePortsbpl.1397:15|
 :skolemid |101|
 :pattern ( (MINUS_LEFT_PTR x@@22 1 40))
)))
(assert (forall ((x@@23 Int) ) (! (= (MINUS_LEFT_PTR x@@23 1 48) (StackSize__DEVICE_OBJECTInv x@@23))
 :qid |KeyboardClassFindMorePortsbpl.1720:15|
 :skolemid |291|
 :pattern ( (MINUS_LEFT_PTR x@@23 1 48))
)))
(assert (forall ((x@@24 Int) ) (! (= (MINUS_LEFT_PTR x@@24 1 64) (PortsServiced__GLOBALSInv x@@24))
 :qid |KeyboardClassFindMorePortsbpl.1686:15|
 :skolemid |271|
 :pattern ( (MINUS_LEFT_PTR x@@24 1 64))
)))
(assert (forall ((x@@25 Int) ) (! (= (MINUS_LEFT_PTR x@@25 1 72) (InitExtension__GLOBALSInv x@@25))
 :qid |KeyboardClassFindMorePortsbpl.1516:15|
 :skolemid |171|
 :pattern ( (MINUS_LEFT_PTR x@@25 1 72))
)))
(assert (forall ((x@@26 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@26 4 1) (Buffer__UNICODE_STRINGInv x@@26))
 :qid |KeyboardClassFindMorePortsbpl.1345:15|
 :skolemid |70|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@26 4 1))
)))
(assert (forall ((x@@27 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@27 4 1) (GrandMaster__GLOBALSInv x@@27))
 :qid |KeyboardClassFindMorePortsbpl.1498:15|
 :skolemid |160|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@27 4 1))
)))
(assert (forall ((x@@28 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@28 4 1) (Port__PORTInv x@@28))
 :qid |KeyboardClassFindMorePortsbpl.1668:15|
 :skolemid |260|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@28 4 1))
)))
(assert (forall ((x@@29 Int) ) (! (= (MINUS_LEFT_PTR x@@29 1 104) (PnP__DEVICE_EXTENSIONInv x@@29))
 :qid |KeyboardClassFindMorePortsbpl.1652:15|
 :skolemid |251|
 :pattern ( (MINUS_LEFT_PTR x@@29 1 104))
)))
(assert (forall ((x@@30 Int) ) (! (= (MINUS_LEFT_PTR x@@30 1 105) (Started__DEVICE_EXTENSIONInv x@@30))
 :qid |KeyboardClassFindMorePortsbpl.1737:15|
 :skolemid |301|
 :pattern ( (MINUS_LEFT_PTR x@@30 1 105))
)))
(assert (forall ((x@@31 Int) ) (! (= (MINUS_LEFT_PTR x@@31 1 128) (InputData__DEVICE_EXTENSIONInv x@@31))
 :qid |KeyboardClassFindMorePortsbpl.1533:15|
 :skolemid |181|
 :pattern ( (MINUS_LEFT_PTR x@@31 1 128))
)))
(assert (forall ((x@@32 Int) ) (! (= (MINUS_LEFT_PTR x@@32 1 132) (DataIn__DEVICE_EXTENSIONInv x@@32))
 :qid |KeyboardClassFindMorePortsbpl.1363:15|
 :skolemid |81|
 :pattern ( (MINUS_LEFT_PTR x@@32 1 132))
)))
(assert (forall ((x@@33 Int) ) (! (= (MINUS_LEFT_PTR x@@33 1 136) (DataOut__DEVICE_EXTENSIONInv x@@33))
 :qid |KeyboardClassFindMorePortsbpl.1380:15|
 :skolemid |91|
 :pattern ( (MINUS_LEFT_PTR x@@33 1 136))
)))
(assert (forall ((x@@34 Int) ) (! (= (MINUS_LEFT_PTR x@@34 1 196) (UnitId__DEVICE_EXTENSIONInv x@@34))
 :qid |KeyboardClassFindMorePortsbpl.1771:15|
 :skolemid |321|
 :pattern ( (MINUS_LEFT_PTR x@@34 1 196))
)))
(assert (forall ((x@@35 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@35 8 1) (AssocClassList__GLOBALSInv x@@35))
 :qid |KeyboardClassFindMorePortsbpl.1311:15|
 :skolemid |50|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@35 8 1))
)))
(assert (forall ((x@@36 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@36 8 1) (TopPort__DEVICE_EXTENSIONInv x@@36))
 :qid |KeyboardClassFindMorePortsbpl.1753:15|
 :skolemid |310|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@36 8 1))
)))
(assert (forall ((x@@37 Int) ) (! (= (MINUS_LEFT_PTR x@@37 1 272) (Link__DEVICE_EXTENSIONInv x@@37))
 :qid |KeyboardClassFindMorePortsbpl.1584:15|
 :skolemid |211|
 :pattern ( (MINUS_LEFT_PTR x@@37 1 272))
)))
(assert (forall ((x@@38 Int) ) (! (= (MINUS_LEFT_PTR x@@38 1 280) (File__DEVICE_EXTENSIONInv x@@38))
 :qid |KeyboardClassFindMorePortsbpl.1414:15|
 :skolemid |111|
 :pattern ( (MINUS_LEFT_PTR x@@38 1 280))
)))
(assert (forall ((x@@39 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@39 11 1) (Free__PORTInv x@@39))
 :qid |KeyboardClassFindMorePortsbpl.1481:15|
 :skolemid |150|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@39 11 1))
)))
(assert (forall ((x@@40 Int) ) (! (= (MINUS_LEFT_PTR x@@40 1 368) (BaseClassName__GLOBALSInv x@@40))
 :qid |KeyboardClassFindMorePortsbpl.1329:15|
 :skolemid |61|
 :pattern ( (MINUS_LEFT_PTR x@@40 1 368))
)))
(assert (forall ((x@@41 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@41 20 1) (NumberLegacyPorts__GLOBALSInv x@@41))
 :qid |KeyboardClassFindMorePortsbpl.1634:15|
 :skolemid |240|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@41 20 1))
)))
(assert (forall ((x@@42 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@42 24 1) (Mutex__GLOBALSInv x@@42))
 :qid |KeyboardClassFindMorePortsbpl.1617:15|
 :skolemid |230|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@42 24 1))
)))
(assert (forall ((x@@43 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@43 28 1) (Flags__DEVICE_OBJECTInv x@@43))
 :qid |KeyboardClassFindMorePortsbpl.1447:15|
 :skolemid |130|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@43 28 1))
)))
(assert (forall ((x@@44 Int) ) (! (= (MINUS_LEFT_PTR x@@44 1 888) (LegacyDeviceList__GLOBALSInv x@@44))
 :qid |KeyboardClassFindMorePortsbpl.1550:15|
 :skolemid |191|
 :pattern ( (MINUS_LEFT_PTR x@@44 1 888))
)))
(assert (forall ((x@@45 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@45 40 1) (DeviceExtension__DEVICE_OBJECTInv x@@45))
 :qid |KeyboardClassFindMorePortsbpl.1396:15|
 :skolemid |100|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@45 40 1))
)))
(assert (forall ((x@@46 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@46 48 1) (StackSize__DEVICE_OBJECTInv x@@46))
 :qid |KeyboardClassFindMorePortsbpl.1719:15|
 :skolemid |290|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@46 48 1))
)))
(assert (forall ((x@@47 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@47 64 1) (PortsServiced__GLOBALSInv x@@47))
 :qid |KeyboardClassFindMorePortsbpl.1685:15|
 :skolemid |270|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@47 64 1))
)))
(assert (forall ((x@@48 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@48 72 1) (InitExtension__GLOBALSInv x@@48))
 :qid |KeyboardClassFindMorePortsbpl.1515:15|
 :skolemid |170|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@48 72 1))
)))
(assert (forall ((x@@49 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@49 104 1) (PnP__DEVICE_EXTENSIONInv x@@49))
 :qid |KeyboardClassFindMorePortsbpl.1651:15|
 :skolemid |250|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@49 104 1))
)))
(assert (forall ((x@@50 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@50 105 1) (Started__DEVICE_EXTENSIONInv x@@50))
 :qid |KeyboardClassFindMorePortsbpl.1736:15|
 :skolemid |300|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@50 105 1))
)))
(assert (forall ((x@@51 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@51 128 1) (InputData__DEVICE_EXTENSIONInv x@@51))
 :qid |KeyboardClassFindMorePortsbpl.1532:15|
 :skolemid |180|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@51 128 1))
)))
(assert (forall ((x@@52 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@52 132 1) (DataIn__DEVICE_EXTENSIONInv x@@52))
 :qid |KeyboardClassFindMorePortsbpl.1362:15|
 :skolemid |80|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@52 132 1))
)))
(assert (forall ((x@@53 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@53 136 1) (DataOut__DEVICE_EXTENSIONInv x@@53))
 :qid |KeyboardClassFindMorePortsbpl.1379:15|
 :skolemid |90|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@53 136 1))
)))
(assert (forall ((x@@54 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@54 196 1) (UnitId__DEVICE_EXTENSIONInv x@@54))
 :qid |KeyboardClassFindMorePortsbpl.1770:15|
 :skolemid |320|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@54 196 1))
)))
(assert (forall ((x@@55 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@55 272 1) (Link__DEVICE_EXTENSIONInv x@@55))
 :qid |KeyboardClassFindMorePortsbpl.1583:15|
 :skolemid |210|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@55 272 1))
)))
(assert (forall ((x@@56 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@56 280 1) (File__DEVICE_EXTENSIONInv x@@56))
 :qid |KeyboardClassFindMorePortsbpl.1413:15|
 :skolemid |110|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@56 280 1))
)))
(assert (forall ((x@@57 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@57 368 1) (BaseClassName__GLOBALSInv x@@57))
 :qid |KeyboardClassFindMorePortsbpl.1328:15|
 :skolemid |60|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@57 368 1))
)))
(assert (forall ((x@@58 Int) ) (! (= (MINUS_BOTH_PTR_OR_BOTH_INT x@@58 888 1) (LegacyDeviceList__GLOBALSInv x@@58))
 :qid |KeyboardClassFindMorePortsbpl.1549:15|
 :skolemid |190|
 :pattern ( (MINUS_BOTH_PTR_OR_BOTH_INT x@@58 888 1))
)))
(assert (forall ((v Int) (t T@name) (m |T@[name][Int]Int|) ) (!  (=> (HasType v t m) (|Select__T@[Int]Bool_| (Values t m) v))
 :qid |KeyboardClassFindMorePortsbpl.111:14|
 :skolemid |38|
 :pattern ( (HasType v t m) (Values t m))
)))
(assert (forall ((x@@59 Int) (y@@3 Int) ) (! (= (|Select__T@[Int]Bool_| (Singleton y@@3) x@@59) (= x@@59 y@@3))
 :qid |KeyboardClassFindMorePortsbpl.69:14|
 :skolemid |13|
 :pattern ( (|Select__T@[Int]Bool_| (Singleton y@@3) x@@59))
)))
(assert (forall ((a@@3 Int) (a_size Int) (b@@3 Int) ) (! (= (MINUS_LEFT_PTR a@@3 a_size b@@3) (- a@@3 (* a_size b@@3)))
 :qid |KeyboardClassFindMorePortsbpl.1777:14|
 :skolemid |323|
 :pattern ( (MINUS_LEFT_PTR a@@3 a_size b@@3))
)))
(assert (forall ((a@@4 Int) (a_size@@0 Int) (b@@4 Int) ) (! (= (PLUS a@@4 a_size@@0 b@@4) (+ a@@4 (* a_size@@0 b@@4)))
 :qid |KeyboardClassFindMorePortsbpl.1780:15|
 :skolemid |324|
 :pattern ( (PLUS a@@4 a_size@@0 b@@4))
)))
(assert (forall ((x@@60 Int) (S |T@[Int]Bool|) (M |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (Dereference S M) x@@60) (exists ((y@@4 Int) ) (!  (and (= x@@60 (|Select__T@[Int]Int_| M y@@4)) (|Select__T@[Int]Bool_| S y@@4))
 :qid |KeyboardClassFindMorePortsbpl.90:102|
 :skolemid |29|
)))
 :qid |KeyboardClassFindMorePortsbpl.90:14|
 :skolemid |30|
 :pattern ( (|Select__T@[Int]Bool_| (Dereference S M) x@@60))
)))
(assert (forall ((a@@5 Int) (b@@5 Int) ) (!  (=> (= a@@5 b@@5) (= (BIT_BAND a@@5 b@@5) a@@5))
 :qid |KeyboardClassFindMorePortsbpl.1838:14|
 :skolemid |332|
 :pattern ( (BIT_BAND a@@5 b@@5))
)))
(assert (forall ((a@@6 Int) (b@@6 Int) ) (! (= (MULT a@@6 b@@6) (* a@@6 b@@6))
 :qid |KeyboardClassFindMorePortsbpl.1783:14|
 :skolemid |325|
 :pattern ( (MULT a@@6 b@@6))
)))
(assert (forall ((a@@7 Bool) ) (! (= a@@7 (not (= (LIFT a@@7) 0)))
 :qid |KeyboardClassFindMorePortsbpl.1849:14|
 :skolemid |335|
 :pattern ( (LIFT a@@7))
)))
(assert (forall ((a@@8 Int) ) (!  (=> (not (= a@@8 0)) (= (NOT a@@8) 0))
 :qid |KeyboardClassFindMorePortsbpl.1853:14|
 :skolemid |337|
 :pattern ( (NOT a@@8))
)))
(assert (forall ((a@@9 Int) ) (!  (=> (not (= a@@9 0)) (= (NULL_CHECK a@@9) 0))
 :qid |KeyboardClassFindMorePortsbpl.1857:14|
 :skolemid |339|
 :pattern ( (NULL_CHECK a@@9))
)))
(assert (forall ((a@@10 Int) ) (!  (=> (= a@@10 0) (not (= (NOT a@@10) 0)))
 :qid |KeyboardClassFindMorePortsbpl.1852:14|
 :skolemid |336|
 :pattern ( (NOT a@@10))
)))
(assert (forall ((a@@11 Int) ) (!  (=> (= a@@11 0) (not (= (NULL_CHECK a@@11) 0)))
 :qid |KeyboardClassFindMorePortsbpl.1856:14|
 :skolemid |338|
 :pattern ( (NULL_CHECK a@@11))
)))
(assert (forall ((x@@61 Int) ) (! (= (File__PORTInv x@@61) (- x@@61 0))
 :qid |KeyboardClassFindMorePortsbpl.1429:15|
 :skolemid |119|
 :pattern ( (File__PORTInv x@@61))
)))
(assert (forall ((x@@62 Int) ) (! (= (Flink__LIST_ENTRYInv x@@62) (- x@@62 0))
 :qid |KeyboardClassFindMorePortsbpl.1463:15|
 :skolemid |139|
 :pattern ( (Flink__LIST_ENTRYInv x@@62))
)))
(assert (forall ((x@@63 Int) ) (! (= (Length__UNICODE_STRINGInv x@@63) (- x@@63 0))
 :qid |KeyboardClassFindMorePortsbpl.1565:15|
 :skolemid |199|
 :pattern ( (Length__UNICODE_STRINGInv x@@63))
)))
(assert (forall ((x@@64 Int) ) (! (= (Self__DEVICE_EXTENSIONInv x@@64) (- x@@64 0))
 :qid |KeyboardClassFindMorePortsbpl.1701:15|
 :skolemid |279|
 :pattern ( (Self__DEVICE_EXTENSIONInv x@@64))
)))
(assert (forall ((x@@65 Int) ) (! (= (MaximumLength__UNICODE_STRINGInv x@@65) (- x@@65 2))
 :qid |KeyboardClassFindMorePortsbpl.1599:15|
 :skolemid |219|
 :pattern ( (MaximumLength__UNICODE_STRINGInv x@@65))
)))
(assert (forall ((x@@66 Int) ) (! (= (Buffer__UNICODE_STRINGInv x@@66) (- x@@66 4))
 :qid |KeyboardClassFindMorePortsbpl.1344:15|
 :skolemid |69|
 :pattern ( (Buffer__UNICODE_STRINGInv x@@66))
)))
(assert (forall ((x@@67 Int) ) (! (= (GrandMaster__GLOBALSInv x@@67) (- x@@67 4))
 :qid |KeyboardClassFindMorePortsbpl.1497:15|
 :skolemid |159|
 :pattern ( (GrandMaster__GLOBALSInv x@@67))
)))
(assert (forall ((x@@68 Int) ) (! (= (Port__PORTInv x@@68) (- x@@68 4))
 :qid |KeyboardClassFindMorePortsbpl.1667:15|
 :skolemid |259|
 :pattern ( (Port__PORTInv x@@68))
)))
(assert (forall ((x@@69 Int) ) (! (= (AssocClassList__GLOBALSInv x@@69) (- x@@69 8))
 :qid |KeyboardClassFindMorePortsbpl.1310:15|
 :skolemid |49|
 :pattern ( (AssocClassList__GLOBALSInv x@@69))
)))
(assert (forall ((x@@70 Int) ) (! (= (TopPort__DEVICE_EXTENSIONInv x@@70) (- x@@70 8))
 :qid |KeyboardClassFindMorePortsbpl.1752:15|
 :skolemid |309|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv x@@70))
)))
(assert (forall ((x@@71 Int) ) (! (= (Free__PORTInv x@@71) (- x@@71 11))
 :qid |KeyboardClassFindMorePortsbpl.1480:15|
 :skolemid |149|
 :pattern ( (Free__PORTInv x@@71))
)))
(assert (forall ((x@@72 Int) ) (! (= (NumberLegacyPorts__GLOBALSInv x@@72) (- x@@72 20))
 :qid |KeyboardClassFindMorePortsbpl.1633:15|
 :skolemid |239|
 :pattern ( (NumberLegacyPorts__GLOBALSInv x@@72))
)))
(assert (forall ((x@@73 Int) ) (! (= (Mutex__GLOBALSInv x@@73) (- x@@73 24))
 :qid |KeyboardClassFindMorePortsbpl.1616:15|
 :skolemid |229|
 :pattern ( (Mutex__GLOBALSInv x@@73))
)))
(assert (forall ((x@@74 Int) ) (! (= (Flags__DEVICE_OBJECTInv x@@74) (- x@@74 28))
 :qid |KeyboardClassFindMorePortsbpl.1446:15|
 :skolemid |129|
 :pattern ( (Flags__DEVICE_OBJECTInv x@@74))
)))
(assert (forall ((x@@75 Int) ) (! (= (DeviceExtension__DEVICE_OBJECTInv x@@75) (- x@@75 40))
 :qid |KeyboardClassFindMorePortsbpl.1395:15|
 :skolemid |99|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv x@@75))
)))
(assert (forall ((x@@76 Int) ) (! (= (StackSize__DEVICE_OBJECTInv x@@76) (- x@@76 48))
 :qid |KeyboardClassFindMorePortsbpl.1718:15|
 :skolemid |289|
 :pattern ( (StackSize__DEVICE_OBJECTInv x@@76))
)))
(assert (forall ((x@@77 Int) ) (! (= (PortsServiced__GLOBALSInv x@@77) (- x@@77 64))
 :qid |KeyboardClassFindMorePortsbpl.1684:15|
 :skolemid |269|
 :pattern ( (PortsServiced__GLOBALSInv x@@77))
)))
(assert (forall ((x@@78 Int) ) (! (= (InitExtension__GLOBALSInv x@@78) (- x@@78 72))
 :qid |KeyboardClassFindMorePortsbpl.1514:15|
 :skolemid |169|
 :pattern ( (InitExtension__GLOBALSInv x@@78))
)))
(assert (forall ((x@@79 Int) ) (! (= (PnP__DEVICE_EXTENSIONInv x@@79) (- x@@79 104))
 :qid |KeyboardClassFindMorePortsbpl.1650:15|
 :skolemid |249|
 :pattern ( (PnP__DEVICE_EXTENSIONInv x@@79))
)))
(assert (forall ((x@@80 Int) ) (! (= (Started__DEVICE_EXTENSIONInv x@@80) (- x@@80 105))
 :qid |KeyboardClassFindMorePortsbpl.1735:15|
 :skolemid |299|
 :pattern ( (Started__DEVICE_EXTENSIONInv x@@80))
)))
(assert (forall ((x@@81 Int) ) (! (= (InputData__DEVICE_EXTENSIONInv x@@81) (- x@@81 128))
 :qid |KeyboardClassFindMorePortsbpl.1531:15|
 :skolemid |179|
 :pattern ( (InputData__DEVICE_EXTENSIONInv x@@81))
)))
(assert (forall ((x@@82 Int) ) (! (= (DataIn__DEVICE_EXTENSIONInv x@@82) (- x@@82 132))
 :qid |KeyboardClassFindMorePortsbpl.1361:15|
 :skolemid |79|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv x@@82))
)))
(assert (forall ((x@@83 Int) ) (! (= (DataOut__DEVICE_EXTENSIONInv x@@83) (- x@@83 136))
 :qid |KeyboardClassFindMorePortsbpl.1378:15|
 :skolemid |89|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv x@@83))
)))
(assert (forall ((x@@84 Int) ) (! (= (UnitId__DEVICE_EXTENSIONInv x@@84) (- x@@84 196))
 :qid |KeyboardClassFindMorePortsbpl.1769:15|
 :skolemid |319|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv x@@84))
)))
(assert (forall ((x@@85 Int) ) (! (= (Link__DEVICE_EXTENSIONInv x@@85) (- x@@85 272))
 :qid |KeyboardClassFindMorePortsbpl.1582:15|
 :skolemid |209|
 :pattern ( (Link__DEVICE_EXTENSIONInv x@@85))
)))
(assert (forall ((x@@86 Int) ) (! (= (File__DEVICE_EXTENSIONInv x@@86) (- x@@86 280))
 :qid |KeyboardClassFindMorePortsbpl.1412:15|
 :skolemid |109|
 :pattern ( (File__DEVICE_EXTENSIONInv x@@86))
)))
(assert (forall ((x@@87 Int) ) (! (= (BaseClassName__GLOBALSInv x@@87) (- x@@87 368))
 :qid |KeyboardClassFindMorePortsbpl.1327:15|
 :skolemid |59|
 :pattern ( (BaseClassName__GLOBALSInv x@@87))
)))
(assert (forall ((x@@88 Int) ) (! (= (LegacyDeviceList__GLOBALSInv x@@88) (- x@@88 888))
 :qid |KeyboardClassFindMorePortsbpl.1548:15|
 :skolemid |189|
 :pattern ( (LegacyDeviceList__GLOBALSInv x@@88))
)))
(assert (forall ((x@@89 Int) ) (! (= (File__PORT x@@89) (+ x@@89 0))
 :qid |KeyboardClassFindMorePortsbpl.1428:15|
 :skolemid |118|
 :pattern ( (File__PORT x@@89))
)))
(assert (forall ((x@@90 Int) ) (! (= (Flink__LIST_ENTRY x@@90) (+ x@@90 0))
 :qid |KeyboardClassFindMorePortsbpl.1462:15|
 :skolemid |138|
 :pattern ( (Flink__LIST_ENTRY x@@90))
)))
(assert (forall ((x@@91 Int) ) (! (= (Length__UNICODE_STRING x@@91) (+ x@@91 0))
 :qid |KeyboardClassFindMorePortsbpl.1564:15|
 :skolemid |198|
 :pattern ( (Length__UNICODE_STRING x@@91))
)))
(assert (forall ((x@@92 Int) ) (! (= (Self__DEVICE_EXTENSION x@@92) (+ x@@92 0))
 :qid |KeyboardClassFindMorePortsbpl.1700:15|
 :skolemid |278|
 :pattern ( (Self__DEVICE_EXTENSION x@@92))
)))
(assert (forall ((x@@93 Int) ) (! (= (MaximumLength__UNICODE_STRING x@@93) (+ x@@93 2))
 :qid |KeyboardClassFindMorePortsbpl.1598:15|
 :skolemid |218|
 :pattern ( (MaximumLength__UNICODE_STRING x@@93))
)))
(assert (forall ((x@@94 Int) ) (! (= (Buffer__UNICODE_STRING x@@94) (+ x@@94 4))
 :qid |KeyboardClassFindMorePortsbpl.1343:15|
 :skolemid |68|
 :pattern ( (Buffer__UNICODE_STRING x@@94))
)))
(assert (forall ((x@@95 Int) ) (! (= (GrandMaster__GLOBALS x@@95) (+ x@@95 4))
 :qid |KeyboardClassFindMorePortsbpl.1496:15|
 :skolemid |158|
 :pattern ( (GrandMaster__GLOBALS x@@95))
)))
(assert (forall ((x@@96 Int) ) (! (= (Port__PORT x@@96) (+ x@@96 4))
 :qid |KeyboardClassFindMorePortsbpl.1666:15|
 :skolemid |258|
 :pattern ( (Port__PORT x@@96))
)))
(assert (forall ((x@@97 Int) ) (! (= (AssocClassList__GLOBALS x@@97) (+ x@@97 8))
 :qid |KeyboardClassFindMorePortsbpl.1309:15|
 :skolemid |48|
 :pattern ( (AssocClassList__GLOBALS x@@97))
)))
(assert (forall ((x@@98 Int) ) (! (= (TopPort__DEVICE_EXTENSION x@@98) (+ x@@98 8))
 :qid |KeyboardClassFindMorePortsbpl.1751:15|
 :skolemid |308|
 :pattern ( (TopPort__DEVICE_EXTENSION x@@98))
)))
(assert (forall ((x@@99 Int) ) (! (= (Free__PORT x@@99) (+ x@@99 11))
 :qid |KeyboardClassFindMorePortsbpl.1479:15|
 :skolemid |148|
 :pattern ( (Free__PORT x@@99))
)))
(assert (forall ((x@@100 Int) ) (! (= (NumberLegacyPorts__GLOBALS x@@100) (+ x@@100 20))
 :qid |KeyboardClassFindMorePortsbpl.1632:15|
 :skolemid |238|
 :pattern ( (NumberLegacyPorts__GLOBALS x@@100))
)))
(assert (forall ((x@@101 Int) ) (! (= (Mutex__GLOBALS x@@101) (+ x@@101 24))
 :qid |KeyboardClassFindMorePortsbpl.1615:15|
 :skolemid |228|
 :pattern ( (Mutex__GLOBALS x@@101))
)))
(assert (forall ((x@@102 Int) ) (! (= (Flags__DEVICE_OBJECT x@@102) (+ x@@102 28))
 :qid |KeyboardClassFindMorePortsbpl.1445:15|
 :skolemid |128|
 :pattern ( (Flags__DEVICE_OBJECT x@@102))
)))
(assert (forall ((x@@103 Int) ) (! (= (DeviceExtension__DEVICE_OBJECT x@@103) (+ x@@103 40))
 :qid |KeyboardClassFindMorePortsbpl.1394:15|
 :skolemid |98|
 :pattern ( (DeviceExtension__DEVICE_OBJECT x@@103))
)))
(assert (forall ((x@@104 Int) ) (! (= (StackSize__DEVICE_OBJECT x@@104) (+ x@@104 48))
 :qid |KeyboardClassFindMorePortsbpl.1717:15|
 :skolemid |288|
 :pattern ( (StackSize__DEVICE_OBJECT x@@104))
)))
(assert (forall ((x@@105 Int) ) (! (= (PortsServiced__GLOBALS x@@105) (+ x@@105 64))
 :qid |KeyboardClassFindMorePortsbpl.1683:15|
 :skolemid |268|
 :pattern ( (PortsServiced__GLOBALS x@@105))
)))
(assert (forall ((x@@106 Int) ) (! (= (InitExtension__GLOBALS x@@106) (+ x@@106 72))
 :qid |KeyboardClassFindMorePortsbpl.1513:15|
 :skolemid |168|
 :pattern ( (InitExtension__GLOBALS x@@106))
)))
(assert (forall ((x@@107 Int) ) (! (= (PnP__DEVICE_EXTENSION x@@107) (+ x@@107 104))
 :qid |KeyboardClassFindMorePortsbpl.1649:15|
 :skolemid |248|
 :pattern ( (PnP__DEVICE_EXTENSION x@@107))
)))
(assert (forall ((x@@108 Int) ) (! (= (Started__DEVICE_EXTENSION x@@108) (+ x@@108 105))
 :qid |KeyboardClassFindMorePortsbpl.1734:15|
 :skolemid |298|
 :pattern ( (Started__DEVICE_EXTENSION x@@108))
)))
(assert (forall ((x@@109 Int) ) (! (= (InputData__DEVICE_EXTENSION x@@109) (+ x@@109 128))
 :qid |KeyboardClassFindMorePortsbpl.1530:15|
 :skolemid |178|
 :pattern ( (InputData__DEVICE_EXTENSION x@@109))
)))
(assert (forall ((x@@110 Int) ) (! (= (DataIn__DEVICE_EXTENSION x@@110) (+ x@@110 132))
 :qid |KeyboardClassFindMorePortsbpl.1360:15|
 :skolemid |78|
 :pattern ( (DataIn__DEVICE_EXTENSION x@@110))
)))
(assert (forall ((x@@111 Int) ) (! (= (DataOut__DEVICE_EXTENSION x@@111) (+ x@@111 136))
 :qid |KeyboardClassFindMorePortsbpl.1377:15|
 :skolemid |88|
 :pattern ( (DataOut__DEVICE_EXTENSION x@@111))
)))
(assert (forall ((x@@112 Int) ) (! (= (UnitId__DEVICE_EXTENSION x@@112) (+ x@@112 196))
 :qid |KeyboardClassFindMorePortsbpl.1768:15|
 :skolemid |318|
 :pattern ( (UnitId__DEVICE_EXTENSION x@@112))
)))
(assert (forall ((x@@113 Int) ) (! (= (Link__DEVICE_EXTENSION x@@113) (+ x@@113 272))
 :qid |KeyboardClassFindMorePortsbpl.1581:15|
 :skolemid |208|
 :pattern ( (Link__DEVICE_EXTENSION x@@113))
)))
(assert (forall ((x@@114 Int) ) (! (= (File__DEVICE_EXTENSION x@@114) (+ x@@114 280))
 :qid |KeyboardClassFindMorePortsbpl.1411:15|
 :skolemid |108|
 :pattern ( (File__DEVICE_EXTENSION x@@114))
)))
(assert (forall ((x@@115 Int) ) (! (= (BaseClassName__GLOBALS x@@115) (+ x@@115 368))
 :qid |KeyboardClassFindMorePortsbpl.1326:15|
 :skolemid |58|
 :pattern ( (BaseClassName__GLOBALS x@@115))
)))
(assert (forall ((x@@116 Int) ) (! (= (LegacyDeviceList__GLOBALS x@@116) (+ x@@116 888))
 :qid |KeyboardClassFindMorePortsbpl.1547:15|
 :skolemid |188|
 :pattern ( (LegacyDeviceList__GLOBALS x@@116))
)))
(assert (forall ((f@@2 |T@[Int]Int|) (x@@117 Int) (y@@5 Int) (z@@1 Int) ) (! (= (|Select__T@[Int]Bool_| (ReachBetweenSet f@@2 x@@117 z@@1) y@@5) (ReachBetween f@@2 x@@117 y@@5 z@@1))
 :qid |KeyboardClassFindMorePortsbpl.1914:14|
 :skolemid |343|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet f@@2 x@@117 z@@1) y@@5))
)))
(assert (forall ((x@@118 Int) (S@@0 |T@[Int]Bool|) (T |T@[Int]Bool|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@0 x@@118) (Subset S@@0 T)) (|Select__T@[Int]Bool_| T x@@118))
 :qid |KeyboardClassFindMorePortsbpl.79:14|
 :skolemid |19|
 :pattern ( (|Select__T@[Int]Bool_| S@@0 x@@118) (Subset S@@0 T))
 :pattern ( (|Select__T@[Int]Bool_| T x@@118) (Subset S@@0 T))
)))
(assert (forall ((b0 T@byte) (b1 T@byte) (c0 T@byte) (c1 T@byte) ) (!  (=> (= (TwoBytesToInt b0 b1) (TwoBytesToInt c0 c1)) (and (= b0 c0) (= b1 c1)))
 :qid |KeyboardClassFindMorePortsbpl.8:14|
 :skolemid |1|
 :pattern ( (TwoBytesToInt b0 b1) (TwoBytesToInt c0 c1))
)))
(assert (forall ((f@@3 |T@[Int]Int|) (x@@119 Int) (y@@6 Int) (z@@2 Int) (w@@0 Int) ) (!  (=> (and (ReachBetween f@@3 x@@119 y@@6 z@@2) (ReachBetween f@@3 y@@6 w@@0 z@@2)) (and (ReachBetween f@@3 x@@119 y@@6 w@@0) (ReachBetween f@@3 x@@119 w@@0 z@@2)))
 :qid |KeyboardClassFindMorePortsbpl.1949:14|
 :skolemid |354|
 :pattern ( (ReachBetween f@@3 x@@119 y@@6 z@@2) (ReachBetween f@@3 y@@6 w@@0 z@@2))
)))
(assert (forall ((f@@4 |T@[Int]Int|) (x@@120 Int) (y@@7 Int) (z@@3 Int) (w@@1 Int) ) (!  (=> (and (ReachBetween f@@4 x@@120 y@@7 z@@3) (ReachBetween f@@4 x@@120 w@@1 y@@7)) (and (ReachBetween f@@4 x@@120 w@@1 z@@3) (ReachBetween f@@4 w@@1 y@@7 z@@3)))
 :qid |KeyboardClassFindMorePortsbpl.1952:14|
 :skolemid |355|
 :pattern ( (ReachBetween f@@4 x@@120 y@@7 z@@3) (ReachBetween f@@4 x@@120 w@@1 y@@7))
)))
(assert (forall ((b0@@0 T@byte) (c0@@0 T@byte) ) (!  (=> (= (OneByteToInt b0@@0) (OneByteToInt c0@@0)) (= b0@@0 c0@@0))
 :qid |KeyboardClassFindMorePortsbpl.7:14|
 :skolemid |0|
 :pattern ( (OneByteToInt b0@@0) (OneByteToInt c0@@0))
)))
(assert (forall ((M@@0 |T@[name][Int]Int|) (x@@121 Int) ) (! (= (|Select__T@[Int]Int_| (Unified M@@0) x@@121) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@0 (Field x@@121)) x@@121))
 :qid |KeyboardClassFindMorePortsbpl.99:14|
 :skolemid |35|
 :pattern ( (|Select__T@[Int]Int_| (Unified M@@0) x@@121))
)))
(assert (forall ((x@@122 Int) (S@@1 |T@[Int]Bool|) (T@@0 |T@[Int]Bool|) ) (!  (not (and (and (|Select__T@[Int]Bool_| S@@1 x@@122) (Disjoint S@@1 T@@0)) (|Select__T@[Int]Bool_| T@@0 x@@122)))
 :qid |KeyboardClassFindMorePortsbpl.81:14|
 :skolemid |22|
 :pattern ( (|Select__T@[Int]Bool_| S@@1 x@@122) (Disjoint S@@1 T@@0))
 :pattern ( (|Select__T@[Int]Bool_| T@@0 x@@122) (Disjoint S@@1 T@@0))
)))
(assert (forall ((v@@0 Int) (t@@0 T@name) (m@@0 |T@[name][Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| (Values t@@0 m@@0) v@@0) (HasType v@@0 t@@0 m@@0))
 :qid |KeyboardClassFindMorePortsbpl.110:14|
 :skolemid |37|
 :pattern ( (|Select__T@[Int]Bool_| (Values t@@0 m@@0) v@@0))
)))
(assert (forall ((x@@123 Int) (S@@2 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALS S@@2) x@@123) (|Select__T@[Int]Bool_| S@@2 (AssocClassList__GLOBALSInv x@@123)))
 :qid |KeyboardClassFindMorePortsbpl.1304:15|
 :skolemid |44|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALS S@@2) x@@123))
)))
(assert (forall ((x@@124 Int) (S@@3 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALSInv S@@3) x@@124) (|Select__T@[Int]Bool_| S@@3 (AssocClassList__GLOBALS x@@124)))
 :qid |KeyboardClassFindMorePortsbpl.1305:15|
 :skolemid |45|
 :pattern ( (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALSInv S@@3) x@@124))
)))
(assert (forall ((x@@125 Int) (S@@4 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@4) x@@125) (|Select__T@[Int]Bool_| S@@4 (BaseClassName__GLOBALSInv x@@125)))
 :qid |KeyboardClassFindMorePortsbpl.1321:15|
 :skolemid |54|
 :pattern ( (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@4) x@@125))
)))
(assert (forall ((x@@126 Int) (S@@5 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@5) x@@126) (|Select__T@[Int]Bool_| S@@5 (BaseClassName__GLOBALS x@@126)))
 :qid |KeyboardClassFindMorePortsbpl.1322:15|
 :skolemid |55|
 :pattern ( (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@5) x@@126))
)))
(assert (forall ((x@@127 Int) (S@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@6) x@@127) (|Select__T@[Int]Bool_| S@@6 (Buffer__UNICODE_STRINGInv x@@127)))
 :qid |KeyboardClassFindMorePortsbpl.1338:15|
 :skolemid |64|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@6) x@@127))
)))
(assert (forall ((x@@128 Int) (S@@7 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@7) x@@128) (|Select__T@[Int]Bool_| S@@7 (Buffer__UNICODE_STRING x@@128)))
 :qid |KeyboardClassFindMorePortsbpl.1339:15|
 :skolemid |65|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@7) x@@128))
)))
(assert (forall ((x@@129 Int) (S@@8 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@8) x@@129) (|Select__T@[Int]Bool_| S@@8 (DataIn__DEVICE_EXTENSIONInv x@@129)))
 :qid |KeyboardClassFindMorePortsbpl.1355:15|
 :skolemid |74|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@8) x@@129))
)))
(assert (forall ((x@@130 Int) (S@@9 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@9) x@@130) (|Select__T@[Int]Bool_| S@@9 (DataIn__DEVICE_EXTENSION x@@130)))
 :qid |KeyboardClassFindMorePortsbpl.1356:15|
 :skolemid |75|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@9) x@@130))
)))
(assert (forall ((x@@131 Int) (S@@10 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@10) x@@131) (|Select__T@[Int]Bool_| S@@10 (DataOut__DEVICE_EXTENSIONInv x@@131)))
 :qid |KeyboardClassFindMorePortsbpl.1372:15|
 :skolemid |84|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@10) x@@131))
)))
(assert (forall ((x@@132 Int) (S@@11 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@11) x@@132) (|Select__T@[Int]Bool_| S@@11 (DataOut__DEVICE_EXTENSION x@@132)))
 :qid |KeyboardClassFindMorePortsbpl.1373:15|
 :skolemid |85|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@11) x@@132))
)))
(assert (forall ((x@@133 Int) (S@@12 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@12) x@@133) (|Select__T@[Int]Bool_| S@@12 (DeviceExtension__DEVICE_OBJECTInv x@@133)))
 :qid |KeyboardClassFindMorePortsbpl.1389:15|
 :skolemid |94|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@12) x@@133))
)))
(assert (forall ((x@@134 Int) (S@@13 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@13) x@@134) (|Select__T@[Int]Bool_| S@@13 (DeviceExtension__DEVICE_OBJECT x@@134)))
 :qid |KeyboardClassFindMorePortsbpl.1390:15|
 :skolemid |95|
 :pattern ( (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@13) x@@134))
)))
(assert (forall ((x@@135 Int) (S@@14 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@14) x@@135) (|Select__T@[Int]Bool_| S@@14 (File__DEVICE_EXTENSIONInv x@@135)))
 :qid |KeyboardClassFindMorePortsbpl.1406:15|
 :skolemid |104|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@14) x@@135))
)))
(assert (forall ((x@@136 Int) (S@@15 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@15) x@@136) (|Select__T@[Int]Bool_| S@@15 (File__DEVICE_EXTENSION x@@136)))
 :qid |KeyboardClassFindMorePortsbpl.1407:15|
 :skolemid |105|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@15) x@@136))
)))
(assert (forall ((x@@137 Int) (S@@16 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__PORT S@@16) x@@137) (|Select__T@[Int]Bool_| S@@16 (File__PORTInv x@@137)))
 :qid |KeyboardClassFindMorePortsbpl.1423:15|
 :skolemid |114|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__PORT S@@16) x@@137))
)))
(assert (forall ((x@@138 Int) (S@@17 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_File__PORTInv S@@17) x@@138) (|Select__T@[Int]Bool_| S@@17 (File__PORT x@@138)))
 :qid |KeyboardClassFindMorePortsbpl.1424:15|
 :skolemid |115|
 :pattern ( (|Select__T@[Int]Bool_| (_S_File__PORTInv S@@17) x@@138))
)))
(assert (forall ((x@@139 Int) (S@@18 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@18) x@@139) (|Select__T@[Int]Bool_| S@@18 (Flags__DEVICE_OBJECTInv x@@139)))
 :qid |KeyboardClassFindMorePortsbpl.1440:15|
 :skolemid |124|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@18) x@@139))
)))
(assert (forall ((x@@140 Int) (S@@19 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@19) x@@140) (|Select__T@[Int]Bool_| S@@19 (Flags__DEVICE_OBJECT x@@140)))
 :qid |KeyboardClassFindMorePortsbpl.1441:15|
 :skolemid |125|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@19) x@@140))
)))
(assert (forall ((x@@141 Int) (S@@20 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@20) x@@141) (|Select__T@[Int]Bool_| S@@20 (Flink__LIST_ENTRYInv x@@141)))
 :qid |KeyboardClassFindMorePortsbpl.1457:15|
 :skolemid |134|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@20) x@@141))
)))
(assert (forall ((x@@142 Int) (S@@21 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@21) x@@142) (|Select__T@[Int]Bool_| S@@21 (Flink__LIST_ENTRY x@@142)))
 :qid |KeyboardClassFindMorePortsbpl.1458:15|
 :skolemid |135|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@21) x@@142))
)))
(assert (forall ((x@@143 Int) (S@@22 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Free__PORT S@@22) x@@143) (|Select__T@[Int]Bool_| S@@22 (Free__PORTInv x@@143)))
 :qid |KeyboardClassFindMorePortsbpl.1474:15|
 :skolemid |144|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Free__PORT S@@22) x@@143))
)))
(assert (forall ((x@@144 Int) (S@@23 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Free__PORTInv S@@23) x@@144) (|Select__T@[Int]Bool_| S@@23 (Free__PORT x@@144)))
 :qid |KeyboardClassFindMorePortsbpl.1475:15|
 :skolemid |145|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Free__PORTInv S@@23) x@@144))
)))
(assert (forall ((x@@145 Int) (S@@24 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@24) x@@145) (|Select__T@[Int]Bool_| S@@24 (GrandMaster__GLOBALSInv x@@145)))
 :qid |KeyboardClassFindMorePortsbpl.1491:15|
 :skolemid |154|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@24) x@@145))
)))
(assert (forall ((x@@146 Int) (S@@25 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@25) x@@146) (|Select__T@[Int]Bool_| S@@25 (GrandMaster__GLOBALS x@@146)))
 :qid |KeyboardClassFindMorePortsbpl.1492:15|
 :skolemid |155|
 :pattern ( (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@25) x@@146))
)))
(assert (forall ((x@@147 Int) (S@@26 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALS S@@26) x@@147) (|Select__T@[Int]Bool_| S@@26 (InitExtension__GLOBALSInv x@@147)))
 :qid |KeyboardClassFindMorePortsbpl.1508:15|
 :skolemid |164|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALS S@@26) x@@147))
)))
(assert (forall ((x@@148 Int) (S@@27 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALSInv S@@27) x@@148) (|Select__T@[Int]Bool_| S@@27 (InitExtension__GLOBALS x@@148)))
 :qid |KeyboardClassFindMorePortsbpl.1509:15|
 :skolemid |165|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALSInv S@@27) x@@148))
)))
(assert (forall ((x@@149 Int) (S@@28 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@28) x@@149) (|Select__T@[Int]Bool_| S@@28 (InputData__DEVICE_EXTENSIONInv x@@149)))
 :qid |KeyboardClassFindMorePortsbpl.1525:15|
 :skolemid |174|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@28) x@@149))
)))
(assert (forall ((x@@150 Int) (S@@29 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@29) x@@150) (|Select__T@[Int]Bool_| S@@29 (InputData__DEVICE_EXTENSION x@@150)))
 :qid |KeyboardClassFindMorePortsbpl.1526:15|
 :skolemid |175|
 :pattern ( (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@29) x@@150))
)))
(assert (forall ((x@@151 Int) (S@@30 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@30) x@@151) (|Select__T@[Int]Bool_| S@@30 (LegacyDeviceList__GLOBALSInv x@@151)))
 :qid |KeyboardClassFindMorePortsbpl.1542:15|
 :skolemid |184|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@30) x@@151))
)))
(assert (forall ((x@@152 Int) (S@@31 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@31) x@@152) (|Select__T@[Int]Bool_| S@@31 (LegacyDeviceList__GLOBALS x@@152)))
 :qid |KeyboardClassFindMorePortsbpl.1543:15|
 :skolemid |185|
 :pattern ( (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@31) x@@152))
)))
(assert (forall ((x@@153 Int) (S@@32 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@32) x@@153) (|Select__T@[Int]Bool_| S@@32 (Length__UNICODE_STRINGInv x@@153)))
 :qid |KeyboardClassFindMorePortsbpl.1559:15|
 :skolemid |194|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@32) x@@153))
)))
(assert (forall ((x@@154 Int) (S@@33 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@33) x@@154) (|Select__T@[Int]Bool_| S@@33 (Length__UNICODE_STRING x@@154)))
 :qid |KeyboardClassFindMorePortsbpl.1560:15|
 :skolemid |195|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@33) x@@154))
)))
(assert (forall ((x@@155 Int) (S@@34 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@34) x@@155) (|Select__T@[Int]Bool_| S@@34 (Link__DEVICE_EXTENSIONInv x@@155)))
 :qid |KeyboardClassFindMorePortsbpl.1576:15|
 :skolemid |204|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@34) x@@155))
)))
(assert (forall ((x@@156 Int) (S@@35 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@35) x@@156) (|Select__T@[Int]Bool_| S@@35 (Link__DEVICE_EXTENSION x@@156)))
 :qid |KeyboardClassFindMorePortsbpl.1577:15|
 :skolemid |205|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@35) x@@156))
)))
(assert (forall ((x@@157 Int) (S@@36 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@36) x@@157) (|Select__T@[Int]Bool_| S@@36 (MaximumLength__UNICODE_STRINGInv x@@157)))
 :qid |KeyboardClassFindMorePortsbpl.1593:15|
 :skolemid |214|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@36) x@@157))
)))
(assert (forall ((x@@158 Int) (S@@37 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@37) x@@158) (|Select__T@[Int]Bool_| S@@37 (MaximumLength__UNICODE_STRING x@@158)))
 :qid |KeyboardClassFindMorePortsbpl.1594:15|
 :skolemid |215|
 :pattern ( (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@37) x@@158))
)))
(assert (forall ((x@@159 Int) (S@@38 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@38) x@@159) (|Select__T@[Int]Bool_| S@@38 (Mutex__GLOBALSInv x@@159)))
 :qid |KeyboardClassFindMorePortsbpl.1610:15|
 :skolemid |224|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@38) x@@159))
)))
(assert (forall ((x@@160 Int) (S@@39 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@39) x@@160) (|Select__T@[Int]Bool_| S@@39 (Mutex__GLOBALS x@@160)))
 :qid |KeyboardClassFindMorePortsbpl.1611:15|
 :skolemid |225|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@39) x@@160))
)))
(assert (forall ((x@@161 Int) (S@@40 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALS S@@40) x@@161) (|Select__T@[Int]Bool_| S@@40 (NumberLegacyPorts__GLOBALSInv x@@161)))
 :qid |KeyboardClassFindMorePortsbpl.1627:15|
 :skolemid |234|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALS S@@40) x@@161))
)))
(assert (forall ((x@@162 Int) (S@@41 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALSInv S@@41) x@@162) (|Select__T@[Int]Bool_| S@@41 (NumberLegacyPorts__GLOBALS x@@162)))
 :qid |KeyboardClassFindMorePortsbpl.1628:15|
 :skolemid |235|
 :pattern ( (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALSInv S@@41) x@@162))
)))
(assert (forall ((x@@163 Int) (S@@42 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@42) x@@163) (|Select__T@[Int]Bool_| S@@42 (PnP__DEVICE_EXTENSIONInv x@@163)))
 :qid |KeyboardClassFindMorePortsbpl.1644:15|
 :skolemid |244|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@42) x@@163))
)))
(assert (forall ((x@@164 Int) (S@@43 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@43) x@@164) (|Select__T@[Int]Bool_| S@@43 (PnP__DEVICE_EXTENSION x@@164)))
 :qid |KeyboardClassFindMorePortsbpl.1645:15|
 :skolemid |245|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@43) x@@164))
)))
(assert (forall ((x@@165 Int) (S@@44 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Port__PORT S@@44) x@@165) (|Select__T@[Int]Bool_| S@@44 (Port__PORTInv x@@165)))
 :qid |KeyboardClassFindMorePortsbpl.1661:15|
 :skolemid |254|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Port__PORT S@@44) x@@165))
)))
(assert (forall ((x@@166 Int) (S@@45 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Port__PORTInv S@@45) x@@166) (|Select__T@[Int]Bool_| S@@45 (Port__PORT x@@166)))
 :qid |KeyboardClassFindMorePortsbpl.1662:15|
 :skolemid |255|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Port__PORTInv S@@45) x@@166))
)))
(assert (forall ((x@@167 Int) (S@@46 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALS S@@46) x@@167) (|Select__T@[Int]Bool_| S@@46 (PortsServiced__GLOBALSInv x@@167)))
 :qid |KeyboardClassFindMorePortsbpl.1678:15|
 :skolemid |264|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALS S@@46) x@@167))
)))
(assert (forall ((x@@168 Int) (S@@47 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALSInv S@@47) x@@168) (|Select__T@[Int]Bool_| S@@47 (PortsServiced__GLOBALS x@@168)))
 :qid |KeyboardClassFindMorePortsbpl.1679:15|
 :skolemid |265|
 :pattern ( (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALSInv S@@47) x@@168))
)))
(assert (forall ((x@@169 Int) (S@@48 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@48) x@@169) (|Select__T@[Int]Bool_| S@@48 (Self__DEVICE_EXTENSIONInv x@@169)))
 :qid |KeyboardClassFindMorePortsbpl.1695:15|
 :skolemid |274|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@48) x@@169))
)))
(assert (forall ((x@@170 Int) (S@@49 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@49) x@@170) (|Select__T@[Int]Bool_| S@@49 (Self__DEVICE_EXTENSION x@@170)))
 :qid |KeyboardClassFindMorePortsbpl.1696:15|
 :skolemid |275|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@49) x@@170))
)))
(assert (forall ((x@@171 Int) (S@@50 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECT S@@50) x@@171) (|Select__T@[Int]Bool_| S@@50 (StackSize__DEVICE_OBJECTInv x@@171)))
 :qid |KeyboardClassFindMorePortsbpl.1712:15|
 :skolemid |284|
 :pattern ( (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECT S@@50) x@@171))
)))
(assert (forall ((x@@172 Int) (S@@51 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECTInv S@@51) x@@172) (|Select__T@[Int]Bool_| S@@51 (StackSize__DEVICE_OBJECT x@@172)))
 :qid |KeyboardClassFindMorePortsbpl.1713:15|
 :skolemid |285|
 :pattern ( (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECTInv S@@51) x@@172))
)))
(assert (forall ((x@@173 Int) (S@@52 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@52) x@@173) (|Select__T@[Int]Bool_| S@@52 (Started__DEVICE_EXTENSIONInv x@@173)))
 :qid |KeyboardClassFindMorePortsbpl.1729:15|
 :skolemid |294|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@52) x@@173))
)))
(assert (forall ((x@@174 Int) (S@@53 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@53) x@@174) (|Select__T@[Int]Bool_| S@@53 (Started__DEVICE_EXTENSION x@@174)))
 :qid |KeyboardClassFindMorePortsbpl.1730:15|
 :skolemid |295|
 :pattern ( (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@53) x@@174))
)))
(assert (forall ((x@@175 Int) (S@@54 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@54) x@@175) (|Select__T@[Int]Bool_| S@@54 (TopPort__DEVICE_EXTENSIONInv x@@175)))
 :qid |KeyboardClassFindMorePortsbpl.1746:15|
 :skolemid |304|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@54) x@@175))
)))
(assert (forall ((x@@176 Int) (S@@55 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@55) x@@176) (|Select__T@[Int]Bool_| S@@55 (TopPort__DEVICE_EXTENSION x@@176)))
 :qid |KeyboardClassFindMorePortsbpl.1747:15|
 :skolemid |305|
 :pattern ( (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@55) x@@176))
)))
(assert (forall ((x@@177 Int) (S@@56 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@56) x@@177) (|Select__T@[Int]Bool_| S@@56 (UnitId__DEVICE_EXTENSIONInv x@@177)))
 :qid |KeyboardClassFindMorePortsbpl.1763:15|
 :skolemid |314|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@56) x@@177))
)))
(assert (forall ((x@@178 Int) (S@@57 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@57) x@@178) (|Select__T@[Int]Bool_| S@@57 (UnitId__DEVICE_EXTENSION x@@178)))
 :qid |KeyboardClassFindMorePortsbpl.1764:15|
 :skolemid |315|
 :pattern ( (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@57) x@@178))
)))
(assert (forall ((f@@5 |T@[Int]Int|) (x@@179 Int) ) (! (ReachBetween f@@5 x@@179 x@@179 x@@179)
 :qid |KeyboardClassFindMorePortsbpl.1924:14|
 :skolemid |346|
)))
(assert (forall ((f@@6 |T@[Int]Int|) (x@@180 Int) (z@@4 Int) ) (! (ReachBetween f@@6 x@@180 x@@180 x@@180)
 :qid |KeyboardClassFindMorePortsbpl.1916:14|
 :skolemid |345|
 :pattern ( (ReachBetweenSet f@@6 x@@180 z@@4))
)))
(assert (forall ((v@@1 Int) (t@@1 T@name) (m@@1 |T@[name][Int]Int|) ) (! (= (HasType v@@1 (T.Ptr t@@1) m@@1)  (or (= v@@1 0) (and (> v@@1 0) (Match v@@1 t@@1))))
 :qid |KeyboardClassFindMorePortsbpl.114:14|
 :skolemid |40|
 :pattern ( (HasType v@@1 (T.Ptr t@@1) m@@1))
)))
(assert (forall ((x@@181 Int) (S@@58 |T@[Int]Bool|) (M@@1 |T@[Int]Int|) ) (!  (=> (|Select__T@[Int]Bool_| S@@58 x@@181) (|Select__T@[Int]Bool_| (Dereference S@@58 M@@1) (|Select__T@[Int]Int_| M@@1 x@@181)))
 :qid |KeyboardClassFindMorePortsbpl.91:14|
 :skolemid |31|
 :pattern ( (|Select__T@[Int]Int_| M@@1 x@@181) (|Select__T@[Int]Bool_| S@@58 x@@181) (Dereference S@@58 M@@1))
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
 :qid |KeyboardClassFindMorePortsbpl.1967:15|
 :skolemid |359|
 :pattern ( (|Select__T@[Int]Int_| f@@7 (Flink__LIST_ENTRY __x)) (Shift_Flink__LIST_ENTRY f@@7))
 :pattern ( (|Select__T@[Int]Int_| (Shift_Flink__LIST_ENTRY f@@7) __x))
)))
(assert (forall ((a@@12 Int) (b@@7 Int) ) (!  (=> (and (< a@@12 0) (< b@@7 0)) (and (>= (* b@@7 (DIV a@@12 b@@7)) a@@12) (> a@@12 (* b@@7 (+ (DIV a@@12 b@@7) 1)))))
 :qid |KeyboardClassFindMorePortsbpl.1799:14|
 :skolemid |329|
 :pattern ( (DIV a@@12 b@@7))
)))
(assert (forall ((a@@13 Int) (b@@8 Int) ) (!  (=> (and (< a@@13 0) (> b@@8 0)) (and (>= (* b@@8 (DIV a@@13 b@@8)) a@@13) (> a@@13 (* b@@8 (- (DIV a@@13 b@@8) 1)))))
 :qid |KeyboardClassFindMorePortsbpl.1795:14|
 :skolemid |328|
 :pattern ( (DIV a@@13 b@@8))
)))
(assert (forall ((a@@14 Int) (t@@2 T@name) ) (! (= (Match a@@14 (T.Ptr t@@2)) (= (Field a@@14) (T.Ptr t@@2)))
 :qid |KeyboardClassFindMorePortsbpl.113:14|
 :skolemid |39|
 :pattern ( (Match a@@14 (T.Ptr t@@2)))
)))
(assert (forall ((f@@8 |T@[Int]Int|) (x@@182 Int) (y@@8 Int) (z@@5 Int) ) (!  (=> (ReachBetween f@@8 x@@182 y@@8 z@@5) (|Select__T@[Int]Bool_| (ReachBetweenSet f@@8 x@@182 z@@5) y@@8))
 :qid |KeyboardClassFindMorePortsbpl.1915:14|
 :skolemid |344|
 :pattern ( (ReachBetween f@@8 x@@182 y@@8 z@@5) (ReachBetweenSet f@@8 x@@182 z@@5))
)))
(assert (forall ((x@@183 Int) (y@@9 Int) (S@@59 |T@[Int]Bool|) (M@@2 |T@[Int]Int|) ) (!  (=> (not (|Select__T@[Int]Bool_| S@@59 x@@183)) (Equal (Dereference S@@59 (|Store__T@[Int]Int_| M@@2 x@@183 y@@9)) (Dereference S@@59 M@@2)))
 :qid |KeyboardClassFindMorePortsbpl.92:14|
 :skolemid |32|
 :pattern ( (Dereference S@@59 (|Store__T@[Int]Int_| M@@2 x@@183 y@@9)))
)))
(assert (forall ((n@@0 Int) (x@@184 Int) ) (! (exists ((k Int) ) (! (= (- (Rep n@@0 x@@184) x@@184) (* n@@0 k))
 :qid |KeyboardClassFindMorePortsbpl.46:49|
 :skolemid |7|
))
 :qid |KeyboardClassFindMorePortsbpl.46:14|
 :skolemid |8|
 :pattern ( (Rep n@@0 x@@184))
)))
(assert (forall ((f@@9 |T@[Int]Int|) (x@@185 Int) (y@@10 Int) (z@@6 Int) ) (! (= (ReachAvoiding f@@9 x@@185 y@@10 z@@6)  (or (ReachBetween f@@9 x@@185 y@@10 z@@6) (and (ReachBetween f@@9 x@@185 y@@10 y@@10) (not (ReachBetween f@@9 x@@185 z@@6 z@@6)))))
 :qid |KeyboardClassFindMorePortsbpl.1959:14|
 :skolemid |357|
 :pattern ( (ReachAvoiding f@@9 x@@185 y@@10 z@@6))
 :pattern ( (ReachBetween f@@9 x@@185 y@@10 z@@6))
)))
(assert (forall ((x@@186 Int) (S@@60 |T@[Int]Bool|) (T@@1 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Intersection S@@60 T@@1) x@@186)  (and (|Select__T@[Int]Bool_| S@@60 x@@186) (|Select__T@[Int]Bool_| T@@1 x@@186)))
 :qid |KeyboardClassFindMorePortsbpl.75:14|
 :skolemid |16|
 :pattern ( (|Select__T@[Int]Bool_| (Intersection S@@60 T@@1) x@@186))
 :pattern ( (Intersection S@@60 T@@1) (|Select__T@[Int]Bool_| S@@60 x@@186))
 :pattern ( (Intersection S@@60 T@@1) (|Select__T@[Int]Bool_| T@@1 x@@186))
)))
(assert (forall ((x@@187 Int) (S@@61 |T@[Int]Bool|) (T@@2 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Difference S@@61 T@@2) x@@187)  (and (|Select__T@[Int]Bool_| S@@61 x@@187) (not (|Select__T@[Int]Bool_| T@@2 x@@187))))
 :qid |KeyboardClassFindMorePortsbpl.76:14|
 :skolemid |17|
 :pattern ( (|Select__T@[Int]Bool_| (Difference S@@61 T@@2) x@@187))
 :pattern ( (Difference S@@61 T@@2) (|Select__T@[Int]Bool_| S@@61 x@@187))
 :pattern ( (Difference S@@61 T@@2) (|Select__T@[Int]Bool_| T@@2 x@@187))
)))
(assert (forall ((a@@15 Bool) (b@@9 Int) (c@@0 Int) ) (!  (=> (not a@@15) (= (choose a@@15 b@@9 c@@0) c@@0))
 :qid |KeyboardClassFindMorePortsbpl.1835:14|
 :skolemid |331|
 :pattern ( (choose a@@15 b@@9 c@@0))
)))
(assert (forall ((f@@10 |T@[Int]Int|) (__x@@0 Int) (__v Int) ) (! (= (Shift_Flink__LIST_ENTRY (|Store__T@[Int]Int_| f@@10 (Flink__LIST_ENTRY __x@@0) __v)) (|Store__T@[Int]Int_| (Shift_Flink__LIST_ENTRY f@@10) __x@@0 __v))
 :qid |KeyboardClassFindMorePortsbpl.1968:14|
 :skolemid |360|
 :pattern ( (Shift_Flink__LIST_ENTRY (|Store__T@[Int]Int_| f@@10 (Flink__LIST_ENTRY __x@@0) __v)))
)))
(assert (forall ((f@@11 |T@[Int]Int|) (x@@188 Int) ) (! (|Select__T@[Int]Bool_| (Inverse f@@11 (|Select__T@[Int]Int_| f@@11 x@@188)) x@@188)
 :qid |KeyboardClassFindMorePortsbpl.84:14|
 :skolemid |25|
 :pattern ( (Inverse f@@11 (|Select__T@[Int]Int_| f@@11 x@@188)))
)))
(assert (forall ((n@@1 Int) (x@@189 Int) (y@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (AtLeast n@@1 x@@189) y@@11) (and (<= x@@189 y@@11) (= (Rep n@@1 x@@189) (Rep n@@1 y@@11))))
 :qid |KeyboardClassFindMorePortsbpl.42:14|
 :skolemid |3|
 :pattern ( (|Select__T@[Int]Bool_| (AtLeast n@@1 x@@189) y@@11))
)))
(assert (forall ((f@@12 |T@[Int]Int|) (x@@190 Int) (y@@12 Int) ) (!  (=> (ReachBetween f@@12 x@@190 y@@12 y@@12) (or (= x@@190 y@@12) (ReachBetween f@@12 x@@190 (|Select__T@[Int]Int_| f@@12 x@@190) y@@12)))
 :qid |KeyboardClassFindMorePortsbpl.1931:14|
 :skolemid |348|
 :pattern ( (|Select__T@[Int]Int_| f@@12 x@@190) (ReachBetween f@@12 x@@190 y@@12 y@@12))
)))
(assert (forall ((S@@62 |T@[Int]Bool|) (T@@3 |T@[Int]Bool|) ) (! (= (Equal S@@62 T@@3)  (and (Subset S@@62 T@@3) (Subset T@@3 S@@62)))
 :qid |KeyboardClassFindMorePortsbpl.78:14|
 :skolemid |18|
 :pattern ( (Equal S@@62 T@@3))
)))
(assert (forall ((M@@3 |T@[name][Int]Int|) (x@@191 Int) (y@@13 Int) ) (! (= (Unified (|Store__T@[name][Int]Int_| M@@3 (Field x@@191) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@3 (Field x@@191)) x@@191 y@@13))) (|Store__T@[Int]Int_| (Unified M@@3) x@@191 y@@13))
 :qid |KeyboardClassFindMorePortsbpl.100:14|
 :skolemid |36|
 :pattern ( (Unified (|Store__T@[name][Int]Int_| M@@3 (Field x@@191) (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| M@@3 (Field x@@191)) x@@191 y@@13))))
)))
(assert (forall ((f@@13 |T@[Int]Int|) (x@@192 Int) (y@@14 Int) (z@@7 Int) ) (!  (=> (and (ReachBetween f@@13 x@@192 y@@14 y@@14) (ReachBetween f@@13 x@@192 z@@7 z@@7)) (or (ReachBetween f@@13 x@@192 y@@14 z@@7) (ReachBetween f@@13 x@@192 z@@7 y@@14)))
 :qid |KeyboardClassFindMorePortsbpl.1940:14|
 :skolemid |351|
 :pattern ( (ReachBetween f@@13 x@@192 y@@14 y@@14) (ReachBetween f@@13 x@@192 z@@7 z@@7))
)))
(assert (forall ((n@@2 Int) (x@@193 Int) ) (! (|Select__T@[Int]Bool_| (AtLeast n@@2 x@@193) x@@193)
 :qid |KeyboardClassFindMorePortsbpl.44:14|
 :skolemid |5|
 :pattern ( (AtLeast n@@2 x@@193))
)))
(assert (forall ((a@@16 Int) (b@@10 Int) ) (!  (=> (and (>= a@@16 0) (< b@@10 0)) (and (<= (* b@@10 (DIV a@@16 b@@10)) a@@16) (< a@@16 (* b@@10 (- (DIV a@@16 b@@10) 1)))))
 :qid |KeyboardClassFindMorePortsbpl.1791:14|
 :skolemid |327|
 :pattern ( (DIV a@@16 b@@10))
)))
(assert (forall ((a@@17 Int) (b@@11 Int) ) (!  (=> (and (>= a@@17 0) (> b@@11 0)) (and (<= (* b@@11 (DIV a@@17 b@@11)) a@@17) (< a@@17 (* b@@11 (+ (DIV a@@17 b@@11) 1)))))
 :qid |KeyboardClassFindMorePortsbpl.1787:14|
 :skolemid |326|
 :pattern ( (DIV a@@17 b@@11))
)))
(assert (forall ((f@@14 |T@[Int]Int|) (u Int) (x@@194 Int) ) (!  (=> (ReachBetween f@@14 u x@@194 x@@194) (ReachBetween f@@14 u u x@@194))
 :qid |KeyboardClassFindMorePortsbpl.1956:14|
 :skolemid |356|
 :pattern ( (ReachBetween f@@14 u x@@194 x@@194))
)))
(assert (forall ((x@@195 Int) ) (! (= (AssocClassList__GLOBALSInv (AssocClassList__GLOBALS x@@195)) x@@195)
 :qid |KeyboardClassFindMorePortsbpl.1301:15|
 :skolemid |42|
 :pattern ( (AssocClassList__GLOBALSInv (AssocClassList__GLOBALS x@@195)))
)))
(assert (forall ((x@@196 Int) ) (! (= (AssocClassList__GLOBALS (AssocClassList__GLOBALSInv x@@196)) x@@196)
 :qid |KeyboardClassFindMorePortsbpl.1302:15|
 :skolemid |43|
 :pattern ( (AssocClassList__GLOBALSInv x@@196))
)))
(assert (forall ((x@@197 Int) ) (! (= (BaseClassName__GLOBALSInv (BaseClassName__GLOBALS x@@197)) x@@197)
 :qid |KeyboardClassFindMorePortsbpl.1318:15|
 :skolemid |52|
 :pattern ( (BaseClassName__GLOBALSInv (BaseClassName__GLOBALS x@@197)))
)))
(assert (forall ((x@@198 Int) ) (! (= (BaseClassName__GLOBALS (BaseClassName__GLOBALSInv x@@198)) x@@198)
 :qid |KeyboardClassFindMorePortsbpl.1319:15|
 :skolemid |53|
 :pattern ( (BaseClassName__GLOBALSInv x@@198))
)))
(assert (forall ((x@@199 Int) ) (! (= (Buffer__UNICODE_STRINGInv (Buffer__UNICODE_STRING x@@199)) x@@199)
 :qid |KeyboardClassFindMorePortsbpl.1335:15|
 :skolemid |62|
 :pattern ( (Buffer__UNICODE_STRINGInv (Buffer__UNICODE_STRING x@@199)))
)))
(assert (forall ((x@@200 Int) ) (! (= (Buffer__UNICODE_STRING (Buffer__UNICODE_STRINGInv x@@200)) x@@200)
 :qid |KeyboardClassFindMorePortsbpl.1336:15|
 :skolemid |63|
 :pattern ( (Buffer__UNICODE_STRINGInv x@@200))
)))
(assert (forall ((x@@201 Int) ) (! (= (DataIn__DEVICE_EXTENSIONInv (DataIn__DEVICE_EXTENSION x@@201)) x@@201)
 :qid |KeyboardClassFindMorePortsbpl.1352:15|
 :skolemid |72|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv (DataIn__DEVICE_EXTENSION x@@201)))
)))
(assert (forall ((x@@202 Int) ) (! (= (DataIn__DEVICE_EXTENSION (DataIn__DEVICE_EXTENSIONInv x@@202)) x@@202)
 :qid |KeyboardClassFindMorePortsbpl.1353:15|
 :skolemid |73|
 :pattern ( (DataIn__DEVICE_EXTENSIONInv x@@202))
)))
(assert (forall ((x@@203 Int) ) (! (= (DataOut__DEVICE_EXTENSIONInv (DataOut__DEVICE_EXTENSION x@@203)) x@@203)
 :qid |KeyboardClassFindMorePortsbpl.1369:15|
 :skolemid |82|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv (DataOut__DEVICE_EXTENSION x@@203)))
)))
(assert (forall ((x@@204 Int) ) (! (= (DataOut__DEVICE_EXTENSION (DataOut__DEVICE_EXTENSIONInv x@@204)) x@@204)
 :qid |KeyboardClassFindMorePortsbpl.1370:15|
 :skolemid |83|
 :pattern ( (DataOut__DEVICE_EXTENSIONInv x@@204))
)))
(assert (forall ((x@@205 Int) ) (! (= (DeviceExtension__DEVICE_OBJECTInv (DeviceExtension__DEVICE_OBJECT x@@205)) x@@205)
 :qid |KeyboardClassFindMorePortsbpl.1386:15|
 :skolemid |92|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv (DeviceExtension__DEVICE_OBJECT x@@205)))
)))
(assert (forall ((x@@206 Int) ) (! (= (DeviceExtension__DEVICE_OBJECT (DeviceExtension__DEVICE_OBJECTInv x@@206)) x@@206)
 :qid |KeyboardClassFindMorePortsbpl.1387:15|
 :skolemid |93|
 :pattern ( (DeviceExtension__DEVICE_OBJECTInv x@@206))
)))
(assert (forall ((x@@207 Int) ) (! (= (File__DEVICE_EXTENSIONInv (File__DEVICE_EXTENSION x@@207)) x@@207)
 :qid |KeyboardClassFindMorePortsbpl.1403:15|
 :skolemid |102|
 :pattern ( (File__DEVICE_EXTENSIONInv (File__DEVICE_EXTENSION x@@207)))
)))
(assert (forall ((x@@208 Int) ) (! (= (File__DEVICE_EXTENSION (File__DEVICE_EXTENSIONInv x@@208)) x@@208)
 :qid |KeyboardClassFindMorePortsbpl.1404:15|
 :skolemid |103|
 :pattern ( (File__DEVICE_EXTENSIONInv x@@208))
)))
(assert (forall ((x@@209 Int) ) (! (= (File__PORTInv (File__PORT x@@209)) x@@209)
 :qid |KeyboardClassFindMorePortsbpl.1420:15|
 :skolemid |112|
 :pattern ( (File__PORTInv (File__PORT x@@209)))
)))
(assert (forall ((x@@210 Int) ) (! (= (File__PORT (File__PORTInv x@@210)) x@@210)
 :qid |KeyboardClassFindMorePortsbpl.1421:15|
 :skolemid |113|
 :pattern ( (File__PORTInv x@@210))
)))
(assert (forall ((x@@211 Int) ) (! (= (Flags__DEVICE_OBJECTInv (Flags__DEVICE_OBJECT x@@211)) x@@211)
 :qid |KeyboardClassFindMorePortsbpl.1437:15|
 :skolemid |122|
 :pattern ( (Flags__DEVICE_OBJECTInv (Flags__DEVICE_OBJECT x@@211)))
)))
(assert (forall ((x@@212 Int) ) (! (= (Flags__DEVICE_OBJECT (Flags__DEVICE_OBJECTInv x@@212)) x@@212)
 :qid |KeyboardClassFindMorePortsbpl.1438:15|
 :skolemid |123|
 :pattern ( (Flags__DEVICE_OBJECTInv x@@212))
)))
(assert (forall ((x@@213 Int) ) (! (= (Flink__LIST_ENTRYInv (Flink__LIST_ENTRY x@@213)) x@@213)
 :qid |KeyboardClassFindMorePortsbpl.1454:15|
 :skolemid |132|
 :pattern ( (Flink__LIST_ENTRYInv (Flink__LIST_ENTRY x@@213)))
)))
(assert (forall ((x@@214 Int) ) (! (= (Flink__LIST_ENTRY (Flink__LIST_ENTRYInv x@@214)) x@@214)
 :qid |KeyboardClassFindMorePortsbpl.1455:15|
 :skolemid |133|
 :pattern ( (Flink__LIST_ENTRYInv x@@214))
)))
(assert (forall ((x@@215 Int) ) (! (= (Free__PORTInv (Free__PORT x@@215)) x@@215)
 :qid |KeyboardClassFindMorePortsbpl.1471:15|
 :skolemid |142|
 :pattern ( (Free__PORTInv (Free__PORT x@@215)))
)))
(assert (forall ((x@@216 Int) ) (! (= (Free__PORT (Free__PORTInv x@@216)) x@@216)
 :qid |KeyboardClassFindMorePortsbpl.1472:15|
 :skolemid |143|
 :pattern ( (Free__PORTInv x@@216))
)))
(assert (forall ((x@@217 Int) ) (! (= (GrandMaster__GLOBALSInv (GrandMaster__GLOBALS x@@217)) x@@217)
 :qid |KeyboardClassFindMorePortsbpl.1488:15|
 :skolemid |152|
 :pattern ( (GrandMaster__GLOBALSInv (GrandMaster__GLOBALS x@@217)))
)))
(assert (forall ((x@@218 Int) ) (! (= (GrandMaster__GLOBALS (GrandMaster__GLOBALSInv x@@218)) x@@218)
 :qid |KeyboardClassFindMorePortsbpl.1489:15|
 :skolemid |153|
 :pattern ( (GrandMaster__GLOBALSInv x@@218))
)))
(assert (forall ((x@@219 Int) ) (! (= (InitExtension__GLOBALSInv (InitExtension__GLOBALS x@@219)) x@@219)
 :qid |KeyboardClassFindMorePortsbpl.1505:15|
 :skolemid |162|
 :pattern ( (InitExtension__GLOBALSInv (InitExtension__GLOBALS x@@219)))
)))
(assert (forall ((x@@220 Int) ) (! (= (InitExtension__GLOBALS (InitExtension__GLOBALSInv x@@220)) x@@220)
 :qid |KeyboardClassFindMorePortsbpl.1506:15|
 :skolemid |163|
 :pattern ( (InitExtension__GLOBALSInv x@@220))
)))
(assert (forall ((x@@221 Int) ) (! (= (InputData__DEVICE_EXTENSIONInv (InputData__DEVICE_EXTENSION x@@221)) x@@221)
 :qid |KeyboardClassFindMorePortsbpl.1522:15|
 :skolemid |172|
 :pattern ( (InputData__DEVICE_EXTENSIONInv (InputData__DEVICE_EXTENSION x@@221)))
)))
(assert (forall ((x@@222 Int) ) (! (= (InputData__DEVICE_EXTENSION (InputData__DEVICE_EXTENSIONInv x@@222)) x@@222)
 :qid |KeyboardClassFindMorePortsbpl.1523:15|
 :skolemid |173|
 :pattern ( (InputData__DEVICE_EXTENSIONInv x@@222))
)))
(assert (forall ((x@@223 Int) ) (! (= (LegacyDeviceList__GLOBALSInv (LegacyDeviceList__GLOBALS x@@223)) x@@223)
 :qid |KeyboardClassFindMorePortsbpl.1539:15|
 :skolemid |182|
 :pattern ( (LegacyDeviceList__GLOBALSInv (LegacyDeviceList__GLOBALS x@@223)))
)))
(assert (forall ((x@@224 Int) ) (! (= (LegacyDeviceList__GLOBALS (LegacyDeviceList__GLOBALSInv x@@224)) x@@224)
 :qid |KeyboardClassFindMorePortsbpl.1540:15|
 :skolemid |183|
 :pattern ( (LegacyDeviceList__GLOBALSInv x@@224))
)))
(assert (forall ((x@@225 Int) ) (! (= (Length__UNICODE_STRINGInv (Length__UNICODE_STRING x@@225)) x@@225)
 :qid |KeyboardClassFindMorePortsbpl.1556:15|
 :skolemid |192|
 :pattern ( (Length__UNICODE_STRINGInv (Length__UNICODE_STRING x@@225)))
)))
(assert (forall ((x@@226 Int) ) (! (= (Length__UNICODE_STRING (Length__UNICODE_STRINGInv x@@226)) x@@226)
 :qid |KeyboardClassFindMorePortsbpl.1557:15|
 :skolemid |193|
 :pattern ( (Length__UNICODE_STRINGInv x@@226))
)))
(assert (forall ((x@@227 Int) ) (! (= (Link__DEVICE_EXTENSIONInv (Link__DEVICE_EXTENSION x@@227)) x@@227)
 :qid |KeyboardClassFindMorePortsbpl.1573:15|
 :skolemid |202|
 :pattern ( (Link__DEVICE_EXTENSIONInv (Link__DEVICE_EXTENSION x@@227)))
)))
(assert (forall ((x@@228 Int) ) (! (= (Link__DEVICE_EXTENSION (Link__DEVICE_EXTENSIONInv x@@228)) x@@228)
 :qid |KeyboardClassFindMorePortsbpl.1574:15|
 :skolemid |203|
 :pattern ( (Link__DEVICE_EXTENSIONInv x@@228))
)))
(assert (forall ((x@@229 Int) ) (! (= (MaximumLength__UNICODE_STRINGInv (MaximumLength__UNICODE_STRING x@@229)) x@@229)
 :qid |KeyboardClassFindMorePortsbpl.1590:15|
 :skolemid |212|
 :pattern ( (MaximumLength__UNICODE_STRINGInv (MaximumLength__UNICODE_STRING x@@229)))
)))
(assert (forall ((x@@230 Int) ) (! (= (MaximumLength__UNICODE_STRING (MaximumLength__UNICODE_STRINGInv x@@230)) x@@230)
 :qid |KeyboardClassFindMorePortsbpl.1591:15|
 :skolemid |213|
 :pattern ( (MaximumLength__UNICODE_STRINGInv x@@230))
)))
(assert (forall ((x@@231 Int) ) (! (= (Mutex__GLOBALSInv (Mutex__GLOBALS x@@231)) x@@231)
 :qid |KeyboardClassFindMorePortsbpl.1607:15|
 :skolemid |222|
 :pattern ( (Mutex__GLOBALSInv (Mutex__GLOBALS x@@231)))
)))
(assert (forall ((x@@232 Int) ) (! (= (Mutex__GLOBALS (Mutex__GLOBALSInv x@@232)) x@@232)
 :qid |KeyboardClassFindMorePortsbpl.1608:15|
 :skolemid |223|
 :pattern ( (Mutex__GLOBALSInv x@@232))
)))
(assert (forall ((x@@233 Int) ) (! (= (NumberLegacyPorts__GLOBALSInv (NumberLegacyPorts__GLOBALS x@@233)) x@@233)
 :qid |KeyboardClassFindMorePortsbpl.1624:15|
 :skolemid |232|
 :pattern ( (NumberLegacyPorts__GLOBALSInv (NumberLegacyPorts__GLOBALS x@@233)))
)))
(assert (forall ((x@@234 Int) ) (! (= (NumberLegacyPorts__GLOBALS (NumberLegacyPorts__GLOBALSInv x@@234)) x@@234)
 :qid |KeyboardClassFindMorePortsbpl.1625:15|
 :skolemid |233|
 :pattern ( (NumberLegacyPorts__GLOBALSInv x@@234))
)))
(assert (forall ((x@@235 Int) ) (! (= (PnP__DEVICE_EXTENSIONInv (PnP__DEVICE_EXTENSION x@@235)) x@@235)
 :qid |KeyboardClassFindMorePortsbpl.1641:15|
 :skolemid |242|
 :pattern ( (PnP__DEVICE_EXTENSIONInv (PnP__DEVICE_EXTENSION x@@235)))
)))
(assert (forall ((x@@236 Int) ) (! (= (PnP__DEVICE_EXTENSION (PnP__DEVICE_EXTENSIONInv x@@236)) x@@236)
 :qid |KeyboardClassFindMorePortsbpl.1642:15|
 :skolemid |243|
 :pattern ( (PnP__DEVICE_EXTENSIONInv x@@236))
)))
(assert (forall ((x@@237 Int) ) (! (= (Port__PORTInv (Port__PORT x@@237)) x@@237)
 :qid |KeyboardClassFindMorePortsbpl.1658:15|
 :skolemid |252|
 :pattern ( (Port__PORTInv (Port__PORT x@@237)))
)))
(assert (forall ((x@@238 Int) ) (! (= (Port__PORT (Port__PORTInv x@@238)) x@@238)
 :qid |KeyboardClassFindMorePortsbpl.1659:15|
 :skolemid |253|
 :pattern ( (Port__PORTInv x@@238))
)))
(assert (forall ((x@@239 Int) ) (! (= (PortsServiced__GLOBALSInv (PortsServiced__GLOBALS x@@239)) x@@239)
 :qid |KeyboardClassFindMorePortsbpl.1675:15|
 :skolemid |262|
 :pattern ( (PortsServiced__GLOBALSInv (PortsServiced__GLOBALS x@@239)))
)))
(assert (forall ((x@@240 Int) ) (! (= (PortsServiced__GLOBALS (PortsServiced__GLOBALSInv x@@240)) x@@240)
 :qid |KeyboardClassFindMorePortsbpl.1676:15|
 :skolemid |263|
 :pattern ( (PortsServiced__GLOBALSInv x@@240))
)))
(assert (forall ((x@@241 Int) ) (! (= (Self__DEVICE_EXTENSIONInv (Self__DEVICE_EXTENSION x@@241)) x@@241)
 :qid |KeyboardClassFindMorePortsbpl.1692:15|
 :skolemid |272|
 :pattern ( (Self__DEVICE_EXTENSIONInv (Self__DEVICE_EXTENSION x@@241)))
)))
(assert (forall ((x@@242 Int) ) (! (= (Self__DEVICE_EXTENSION (Self__DEVICE_EXTENSIONInv x@@242)) x@@242)
 :qid |KeyboardClassFindMorePortsbpl.1693:15|
 :skolemid |273|
 :pattern ( (Self__DEVICE_EXTENSIONInv x@@242))
)))
(assert (forall ((x@@243 Int) ) (! (= (StackSize__DEVICE_OBJECTInv (StackSize__DEVICE_OBJECT x@@243)) x@@243)
 :qid |KeyboardClassFindMorePortsbpl.1709:15|
 :skolemid |282|
 :pattern ( (StackSize__DEVICE_OBJECTInv (StackSize__DEVICE_OBJECT x@@243)))
)))
(assert (forall ((x@@244 Int) ) (! (= (StackSize__DEVICE_OBJECT (StackSize__DEVICE_OBJECTInv x@@244)) x@@244)
 :qid |KeyboardClassFindMorePortsbpl.1710:15|
 :skolemid |283|
 :pattern ( (StackSize__DEVICE_OBJECTInv x@@244))
)))
(assert (forall ((x@@245 Int) ) (! (= (Started__DEVICE_EXTENSIONInv (Started__DEVICE_EXTENSION x@@245)) x@@245)
 :qid |KeyboardClassFindMorePortsbpl.1726:15|
 :skolemid |292|
 :pattern ( (Started__DEVICE_EXTENSIONInv (Started__DEVICE_EXTENSION x@@245)))
)))
(assert (forall ((x@@246 Int) ) (! (= (Started__DEVICE_EXTENSION (Started__DEVICE_EXTENSIONInv x@@246)) x@@246)
 :qid |KeyboardClassFindMorePortsbpl.1727:15|
 :skolemid |293|
 :pattern ( (Started__DEVICE_EXTENSIONInv x@@246))
)))
(assert (forall ((x@@247 Int) ) (! (= (TopPort__DEVICE_EXTENSIONInv (TopPort__DEVICE_EXTENSION x@@247)) x@@247)
 :qid |KeyboardClassFindMorePortsbpl.1743:15|
 :skolemid |302|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv (TopPort__DEVICE_EXTENSION x@@247)))
)))
(assert (forall ((x@@248 Int) ) (! (= (TopPort__DEVICE_EXTENSION (TopPort__DEVICE_EXTENSIONInv x@@248)) x@@248)
 :qid |KeyboardClassFindMorePortsbpl.1744:15|
 :skolemid |303|
 :pattern ( (TopPort__DEVICE_EXTENSIONInv x@@248))
)))
(assert (forall ((x@@249 Int) ) (! (= (UnitId__DEVICE_EXTENSIONInv (UnitId__DEVICE_EXTENSION x@@249)) x@@249)
 :qid |KeyboardClassFindMorePortsbpl.1760:15|
 :skolemid |312|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv (UnitId__DEVICE_EXTENSION x@@249)))
)))
(assert (forall ((x@@250 Int) ) (! (= (UnitId__DEVICE_EXTENSION (UnitId__DEVICE_EXTENSIONInv x@@250)) x@@250)
 :qid |KeyboardClassFindMorePortsbpl.1761:15|
 :skolemid |313|
 :pattern ( (UnitId__DEVICE_EXTENSIONInv x@@250))
)))
(assert (forall ((x@@251 Int) (n@@3 Int) (z@@8 Int) ) (!  (=> (<= z@@8 0) (Equal (q@Array x@@251 n@@3 z@@8) Empty))
 :qid |KeyboardClassFindMorePortsbpl.61:14|
 :skolemid |9|
 :pattern ( (q@Array x@@251 n@@3 z@@8))
)))
(assert (forall ((S@@63 |T@[Int]Bool|) (T@@4 |T@[Int]Bool|) ) (!  (or (Disjoint S@@63 T@@4) (exists ((x@@252 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@63 x@@252) (|Select__T@[Int]Bool_| T@@4 x@@252))
 :qid |KeyboardClassFindMorePortsbpl.82:83|
 :skolemid |23|
)))
 :qid |KeyboardClassFindMorePortsbpl.82:14|
 :skolemid |24|
 :pattern ( (Disjoint S@@63 T@@4))
)))
(assert (forall ((y@@15 Int) ) (! (|Select__T@[Int]Bool_| (Singleton y@@15) y@@15)
 :qid |KeyboardClassFindMorePortsbpl.70:14|
 :skolemid |14|
 :pattern ( (Singleton y@@15))
)))
(assert (forall ((S@@64 |T@[Int]Bool|) (T@@5 |T@[Int]Bool|) ) (!  (or (Subset S@@64 T@@5) (exists ((x@@253 Int) ) (!  (and (|Select__T@[Int]Bool_| S@@64 x@@253) (not (|Select__T@[Int]Bool_| T@@5 x@@253)))
 :qid |KeyboardClassFindMorePortsbpl.80:79|
 :skolemid |20|
)))
 :qid |KeyboardClassFindMorePortsbpl.80:14|
 :skolemid |21|
 :pattern ( (Subset S@@64 T@@5))
)))
(assert (forall ((n@@4 Int) (x@@254 Int) (z@@9 Int) ) (! (= (Rep n@@4 x@@254) (Rep n@@4 (PLUS x@@254 n@@4 z@@9)))
 :qid |KeyboardClassFindMorePortsbpl.45:14|
 :skolemid |6|
 :pattern ( (PLUS x@@254 n@@4 z@@9))
)))
(assert (forall ((x@@255 Int) (S@@65 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@65 x@@255) (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALS S@@65) (AssocClassList__GLOBALS x@@255)))
 :qid |KeyboardClassFindMorePortsbpl.1306:15|
 :skolemid |46|
 :pattern ( (|Select__T@[Int]Bool_| S@@65 x@@255) (_S_AssocClassList__GLOBALS S@@65))
)))
(assert (forall ((x@@256 Int) (S@@66 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@66 x@@256) (|Select__T@[Int]Bool_| (_S_AssocClassList__GLOBALSInv S@@66) (AssocClassList__GLOBALSInv x@@256)))
 :qid |KeyboardClassFindMorePortsbpl.1307:15|
 :skolemid |47|
 :pattern ( (|Select__T@[Int]Bool_| S@@66 x@@256) (_S_AssocClassList__GLOBALSInv S@@66))
)))
(assert (forall ((x@@257 Int) (S@@67 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@67 x@@257) (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALS S@@67) (BaseClassName__GLOBALS x@@257)))
 :qid |KeyboardClassFindMorePortsbpl.1323:15|
 :skolemid |56|
 :pattern ( (|Select__T@[Int]Bool_| S@@67 x@@257) (_S_BaseClassName__GLOBALS S@@67))
)))
(assert (forall ((x@@258 Int) (S@@68 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@68 x@@258) (|Select__T@[Int]Bool_| (_S_BaseClassName__GLOBALSInv S@@68) (BaseClassName__GLOBALSInv x@@258)))
 :qid |KeyboardClassFindMorePortsbpl.1324:15|
 :skolemid |57|
 :pattern ( (|Select__T@[Int]Bool_| S@@68 x@@258) (_S_BaseClassName__GLOBALSInv S@@68))
)))
(assert (forall ((x@@259 Int) (S@@69 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@69 x@@259) (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRING S@@69) (Buffer__UNICODE_STRING x@@259)))
 :qid |KeyboardClassFindMorePortsbpl.1340:15|
 :skolemid |66|
 :pattern ( (|Select__T@[Int]Bool_| S@@69 x@@259) (_S_Buffer__UNICODE_STRING S@@69))
)))
(assert (forall ((x@@260 Int) (S@@70 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@70 x@@260) (|Select__T@[Int]Bool_| (_S_Buffer__UNICODE_STRINGInv S@@70) (Buffer__UNICODE_STRINGInv x@@260)))
 :qid |KeyboardClassFindMorePortsbpl.1341:15|
 :skolemid |67|
 :pattern ( (|Select__T@[Int]Bool_| S@@70 x@@260) (_S_Buffer__UNICODE_STRINGInv S@@70))
)))
(assert (forall ((x@@261 Int) (S@@71 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@71 x@@261) (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSION S@@71) (DataIn__DEVICE_EXTENSION x@@261)))
 :qid |KeyboardClassFindMorePortsbpl.1357:15|
 :skolemid |76|
 :pattern ( (|Select__T@[Int]Bool_| S@@71 x@@261) (_S_DataIn__DEVICE_EXTENSION S@@71))
)))
(assert (forall ((x@@262 Int) (S@@72 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@72 x@@262) (|Select__T@[Int]Bool_| (_S_DataIn__DEVICE_EXTENSIONInv S@@72) (DataIn__DEVICE_EXTENSIONInv x@@262)))
 :qid |KeyboardClassFindMorePortsbpl.1358:15|
 :skolemid |77|
 :pattern ( (|Select__T@[Int]Bool_| S@@72 x@@262) (_S_DataIn__DEVICE_EXTENSIONInv S@@72))
)))
(assert (forall ((x@@263 Int) (S@@73 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@73 x@@263) (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSION S@@73) (DataOut__DEVICE_EXTENSION x@@263)))
 :qid |KeyboardClassFindMorePortsbpl.1374:15|
 :skolemid |86|
 :pattern ( (|Select__T@[Int]Bool_| S@@73 x@@263) (_S_DataOut__DEVICE_EXTENSION S@@73))
)))
(assert (forall ((x@@264 Int) (S@@74 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@74 x@@264) (|Select__T@[Int]Bool_| (_S_DataOut__DEVICE_EXTENSIONInv S@@74) (DataOut__DEVICE_EXTENSIONInv x@@264)))
 :qid |KeyboardClassFindMorePortsbpl.1375:15|
 :skolemid |87|
 :pattern ( (|Select__T@[Int]Bool_| S@@74 x@@264) (_S_DataOut__DEVICE_EXTENSIONInv S@@74))
)))
(assert (forall ((x@@265 Int) (S@@75 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@75 x@@265) (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECT S@@75) (DeviceExtension__DEVICE_OBJECT x@@265)))
 :qid |KeyboardClassFindMorePortsbpl.1391:15|
 :skolemid |96|
 :pattern ( (|Select__T@[Int]Bool_| S@@75 x@@265) (_S_DeviceExtension__DEVICE_OBJECT S@@75))
)))
(assert (forall ((x@@266 Int) (S@@76 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@76 x@@266) (|Select__T@[Int]Bool_| (_S_DeviceExtension__DEVICE_OBJECTInv S@@76) (DeviceExtension__DEVICE_OBJECTInv x@@266)))
 :qid |KeyboardClassFindMorePortsbpl.1392:15|
 :skolemid |97|
 :pattern ( (|Select__T@[Int]Bool_| S@@76 x@@266) (_S_DeviceExtension__DEVICE_OBJECTInv S@@76))
)))
(assert (forall ((x@@267 Int) (S@@77 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@77 x@@267) (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSION S@@77) (File__DEVICE_EXTENSION x@@267)))
 :qid |KeyboardClassFindMorePortsbpl.1408:15|
 :skolemid |106|
 :pattern ( (|Select__T@[Int]Bool_| S@@77 x@@267) (_S_File__DEVICE_EXTENSION S@@77))
)))
(assert (forall ((x@@268 Int) (S@@78 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@78 x@@268) (|Select__T@[Int]Bool_| (_S_File__DEVICE_EXTENSIONInv S@@78) (File__DEVICE_EXTENSIONInv x@@268)))
 :qid |KeyboardClassFindMorePortsbpl.1409:15|
 :skolemid |107|
 :pattern ( (|Select__T@[Int]Bool_| S@@78 x@@268) (_S_File__DEVICE_EXTENSIONInv S@@78))
)))
(assert (forall ((x@@269 Int) (S@@79 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@79 x@@269) (|Select__T@[Int]Bool_| (_S_File__PORT S@@79) (File__PORT x@@269)))
 :qid |KeyboardClassFindMorePortsbpl.1425:15|
 :skolemid |116|
 :pattern ( (|Select__T@[Int]Bool_| S@@79 x@@269) (_S_File__PORT S@@79))
)))
(assert (forall ((x@@270 Int) (S@@80 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@80 x@@270) (|Select__T@[Int]Bool_| (_S_File__PORTInv S@@80) (File__PORTInv x@@270)))
 :qid |KeyboardClassFindMorePortsbpl.1426:15|
 :skolemid |117|
 :pattern ( (|Select__T@[Int]Bool_| S@@80 x@@270) (_S_File__PORTInv S@@80))
)))
(assert (forall ((x@@271 Int) (S@@81 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@81 x@@271) (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECT S@@81) (Flags__DEVICE_OBJECT x@@271)))
 :qid |KeyboardClassFindMorePortsbpl.1442:15|
 :skolemid |126|
 :pattern ( (|Select__T@[Int]Bool_| S@@81 x@@271) (_S_Flags__DEVICE_OBJECT S@@81))
)))
(assert (forall ((x@@272 Int) (S@@82 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@82 x@@272) (|Select__T@[Int]Bool_| (_S_Flags__DEVICE_OBJECTInv S@@82) (Flags__DEVICE_OBJECTInv x@@272)))
 :qid |KeyboardClassFindMorePortsbpl.1443:15|
 :skolemid |127|
 :pattern ( (|Select__T@[Int]Bool_| S@@82 x@@272) (_S_Flags__DEVICE_OBJECTInv S@@82))
)))
(assert (forall ((x@@273 Int) (S@@83 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@83 x@@273) (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRY S@@83) (Flink__LIST_ENTRY x@@273)))
 :qid |KeyboardClassFindMorePortsbpl.1459:15|
 :skolemid |136|
 :pattern ( (|Select__T@[Int]Bool_| S@@83 x@@273) (_S_Flink__LIST_ENTRY S@@83))
)))
(assert (forall ((x@@274 Int) (S@@84 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@84 x@@274) (|Select__T@[Int]Bool_| (_S_Flink__LIST_ENTRYInv S@@84) (Flink__LIST_ENTRYInv x@@274)))
 :qid |KeyboardClassFindMorePortsbpl.1460:15|
 :skolemid |137|
 :pattern ( (|Select__T@[Int]Bool_| S@@84 x@@274) (_S_Flink__LIST_ENTRYInv S@@84))
)))
(assert (forall ((x@@275 Int) (S@@85 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@85 x@@275) (|Select__T@[Int]Bool_| (_S_Free__PORT S@@85) (Free__PORT x@@275)))
 :qid |KeyboardClassFindMorePortsbpl.1476:15|
 :skolemid |146|
 :pattern ( (|Select__T@[Int]Bool_| S@@85 x@@275) (_S_Free__PORT S@@85))
)))
(assert (forall ((x@@276 Int) (S@@86 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@86 x@@276) (|Select__T@[Int]Bool_| (_S_Free__PORTInv S@@86) (Free__PORTInv x@@276)))
 :qid |KeyboardClassFindMorePortsbpl.1477:15|
 :skolemid |147|
 :pattern ( (|Select__T@[Int]Bool_| S@@86 x@@276) (_S_Free__PORTInv S@@86))
)))
(assert (forall ((x@@277 Int) (S@@87 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@87 x@@277) (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALS S@@87) (GrandMaster__GLOBALS x@@277)))
 :qid |KeyboardClassFindMorePortsbpl.1493:15|
 :skolemid |156|
 :pattern ( (|Select__T@[Int]Bool_| S@@87 x@@277) (_S_GrandMaster__GLOBALS S@@87))
)))
(assert (forall ((x@@278 Int) (S@@88 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@88 x@@278) (|Select__T@[Int]Bool_| (_S_GrandMaster__GLOBALSInv S@@88) (GrandMaster__GLOBALSInv x@@278)))
 :qid |KeyboardClassFindMorePortsbpl.1494:15|
 :skolemid |157|
 :pattern ( (|Select__T@[Int]Bool_| S@@88 x@@278) (_S_GrandMaster__GLOBALSInv S@@88))
)))
(assert (forall ((x@@279 Int) (S@@89 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@89 x@@279) (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALS S@@89) (InitExtension__GLOBALS x@@279)))
 :qid |KeyboardClassFindMorePortsbpl.1510:15|
 :skolemid |166|
 :pattern ( (|Select__T@[Int]Bool_| S@@89 x@@279) (_S_InitExtension__GLOBALS S@@89))
)))
(assert (forall ((x@@280 Int) (S@@90 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@90 x@@280) (|Select__T@[Int]Bool_| (_S_InitExtension__GLOBALSInv S@@90) (InitExtension__GLOBALSInv x@@280)))
 :qid |KeyboardClassFindMorePortsbpl.1511:15|
 :skolemid |167|
 :pattern ( (|Select__T@[Int]Bool_| S@@90 x@@280) (_S_InitExtension__GLOBALSInv S@@90))
)))
(assert (forall ((x@@281 Int) (S@@91 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@91 x@@281) (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSION S@@91) (InputData__DEVICE_EXTENSION x@@281)))
 :qid |KeyboardClassFindMorePortsbpl.1527:15|
 :skolemid |176|
 :pattern ( (|Select__T@[Int]Bool_| S@@91 x@@281) (_S_InputData__DEVICE_EXTENSION S@@91))
)))
(assert (forall ((x@@282 Int) (S@@92 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@92 x@@282) (|Select__T@[Int]Bool_| (_S_InputData__DEVICE_EXTENSIONInv S@@92) (InputData__DEVICE_EXTENSIONInv x@@282)))
 :qid |KeyboardClassFindMorePortsbpl.1528:15|
 :skolemid |177|
 :pattern ( (|Select__T@[Int]Bool_| S@@92 x@@282) (_S_InputData__DEVICE_EXTENSIONInv S@@92))
)))
(assert (forall ((x@@283 Int) (S@@93 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@93 x@@283) (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALS S@@93) (LegacyDeviceList__GLOBALS x@@283)))
 :qid |KeyboardClassFindMorePortsbpl.1544:15|
 :skolemid |186|
 :pattern ( (|Select__T@[Int]Bool_| S@@93 x@@283) (_S_LegacyDeviceList__GLOBALS S@@93))
)))
(assert (forall ((x@@284 Int) (S@@94 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@94 x@@284) (|Select__T@[Int]Bool_| (_S_LegacyDeviceList__GLOBALSInv S@@94) (LegacyDeviceList__GLOBALSInv x@@284)))
 :qid |KeyboardClassFindMorePortsbpl.1545:15|
 :skolemid |187|
 :pattern ( (|Select__T@[Int]Bool_| S@@94 x@@284) (_S_LegacyDeviceList__GLOBALSInv S@@94))
)))
(assert (forall ((x@@285 Int) (S@@95 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@95 x@@285) (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRING S@@95) (Length__UNICODE_STRING x@@285)))
 :qid |KeyboardClassFindMorePortsbpl.1561:15|
 :skolemid |196|
 :pattern ( (|Select__T@[Int]Bool_| S@@95 x@@285) (_S_Length__UNICODE_STRING S@@95))
)))
(assert (forall ((x@@286 Int) (S@@96 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@96 x@@286) (|Select__T@[Int]Bool_| (_S_Length__UNICODE_STRINGInv S@@96) (Length__UNICODE_STRINGInv x@@286)))
 :qid |KeyboardClassFindMorePortsbpl.1562:15|
 :skolemid |197|
 :pattern ( (|Select__T@[Int]Bool_| S@@96 x@@286) (_S_Length__UNICODE_STRINGInv S@@96))
)))
(assert (forall ((x@@287 Int) (S@@97 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@97 x@@287) (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSION S@@97) (Link__DEVICE_EXTENSION x@@287)))
 :qid |KeyboardClassFindMorePortsbpl.1578:15|
 :skolemid |206|
 :pattern ( (|Select__T@[Int]Bool_| S@@97 x@@287) (_S_Link__DEVICE_EXTENSION S@@97))
)))
(assert (forall ((x@@288 Int) (S@@98 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@98 x@@288) (|Select__T@[Int]Bool_| (_S_Link__DEVICE_EXTENSIONInv S@@98) (Link__DEVICE_EXTENSIONInv x@@288)))
 :qid |KeyboardClassFindMorePortsbpl.1579:15|
 :skolemid |207|
 :pattern ( (|Select__T@[Int]Bool_| S@@98 x@@288) (_S_Link__DEVICE_EXTENSIONInv S@@98))
)))
(assert (forall ((x@@289 Int) (S@@99 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@99 x@@289) (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRING S@@99) (MaximumLength__UNICODE_STRING x@@289)))
 :qid |KeyboardClassFindMorePortsbpl.1595:15|
 :skolemid |216|
 :pattern ( (|Select__T@[Int]Bool_| S@@99 x@@289) (_S_MaximumLength__UNICODE_STRING S@@99))
)))
(assert (forall ((x@@290 Int) (S@@100 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@100 x@@290) (|Select__T@[Int]Bool_| (_S_MaximumLength__UNICODE_STRINGInv S@@100) (MaximumLength__UNICODE_STRINGInv x@@290)))
 :qid |KeyboardClassFindMorePortsbpl.1596:15|
 :skolemid |217|
 :pattern ( (|Select__T@[Int]Bool_| S@@100 x@@290) (_S_MaximumLength__UNICODE_STRINGInv S@@100))
)))
(assert (forall ((x@@291 Int) (S@@101 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@101 x@@291) (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALS S@@101) (Mutex__GLOBALS x@@291)))
 :qid |KeyboardClassFindMorePortsbpl.1612:15|
 :skolemid |226|
 :pattern ( (|Select__T@[Int]Bool_| S@@101 x@@291) (_S_Mutex__GLOBALS S@@101))
)))
(assert (forall ((x@@292 Int) (S@@102 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@102 x@@292) (|Select__T@[Int]Bool_| (_S_Mutex__GLOBALSInv S@@102) (Mutex__GLOBALSInv x@@292)))
 :qid |KeyboardClassFindMorePortsbpl.1613:15|
 :skolemid |227|
 :pattern ( (|Select__T@[Int]Bool_| S@@102 x@@292) (_S_Mutex__GLOBALSInv S@@102))
)))
(assert (forall ((x@@293 Int) (S@@103 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@103 x@@293) (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALS S@@103) (NumberLegacyPorts__GLOBALS x@@293)))
 :qid |KeyboardClassFindMorePortsbpl.1629:15|
 :skolemid |236|
 :pattern ( (|Select__T@[Int]Bool_| S@@103 x@@293) (_S_NumberLegacyPorts__GLOBALS S@@103))
)))
(assert (forall ((x@@294 Int) (S@@104 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@104 x@@294) (|Select__T@[Int]Bool_| (_S_NumberLegacyPorts__GLOBALSInv S@@104) (NumberLegacyPorts__GLOBALSInv x@@294)))
 :qid |KeyboardClassFindMorePortsbpl.1630:15|
 :skolemid |237|
 :pattern ( (|Select__T@[Int]Bool_| S@@104 x@@294) (_S_NumberLegacyPorts__GLOBALSInv S@@104))
)))
(assert (forall ((x@@295 Int) (S@@105 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@105 x@@295) (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSION S@@105) (PnP__DEVICE_EXTENSION x@@295)))
 :qid |KeyboardClassFindMorePortsbpl.1646:15|
 :skolemid |246|
 :pattern ( (|Select__T@[Int]Bool_| S@@105 x@@295) (_S_PnP__DEVICE_EXTENSION S@@105))
)))
(assert (forall ((x@@296 Int) (S@@106 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@106 x@@296) (|Select__T@[Int]Bool_| (_S_PnP__DEVICE_EXTENSIONInv S@@106) (PnP__DEVICE_EXTENSIONInv x@@296)))
 :qid |KeyboardClassFindMorePortsbpl.1647:15|
 :skolemid |247|
 :pattern ( (|Select__T@[Int]Bool_| S@@106 x@@296) (_S_PnP__DEVICE_EXTENSIONInv S@@106))
)))
(assert (forall ((x@@297 Int) (S@@107 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@107 x@@297) (|Select__T@[Int]Bool_| (_S_Port__PORT S@@107) (Port__PORT x@@297)))
 :qid |KeyboardClassFindMorePortsbpl.1663:15|
 :skolemid |256|
 :pattern ( (|Select__T@[Int]Bool_| S@@107 x@@297) (_S_Port__PORT S@@107))
)))
(assert (forall ((x@@298 Int) (S@@108 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@108 x@@298) (|Select__T@[Int]Bool_| (_S_Port__PORTInv S@@108) (Port__PORTInv x@@298)))
 :qid |KeyboardClassFindMorePortsbpl.1664:15|
 :skolemid |257|
 :pattern ( (|Select__T@[Int]Bool_| S@@108 x@@298) (_S_Port__PORTInv S@@108))
)))
(assert (forall ((x@@299 Int) (S@@109 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@109 x@@299) (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALS S@@109) (PortsServiced__GLOBALS x@@299)))
 :qid |KeyboardClassFindMorePortsbpl.1680:15|
 :skolemid |266|
 :pattern ( (|Select__T@[Int]Bool_| S@@109 x@@299) (_S_PortsServiced__GLOBALS S@@109))
)))
(assert (forall ((x@@300 Int) (S@@110 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@110 x@@300) (|Select__T@[Int]Bool_| (_S_PortsServiced__GLOBALSInv S@@110) (PortsServiced__GLOBALSInv x@@300)))
 :qid |KeyboardClassFindMorePortsbpl.1681:15|
 :skolemid |267|
 :pattern ( (|Select__T@[Int]Bool_| S@@110 x@@300) (_S_PortsServiced__GLOBALSInv S@@110))
)))
(assert (forall ((x@@301 Int) (S@@111 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@111 x@@301) (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSION S@@111) (Self__DEVICE_EXTENSION x@@301)))
 :qid |KeyboardClassFindMorePortsbpl.1697:15|
 :skolemid |276|
 :pattern ( (|Select__T@[Int]Bool_| S@@111 x@@301) (_S_Self__DEVICE_EXTENSION S@@111))
)))
(assert (forall ((x@@302 Int) (S@@112 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@112 x@@302) (|Select__T@[Int]Bool_| (_S_Self__DEVICE_EXTENSIONInv S@@112) (Self__DEVICE_EXTENSIONInv x@@302)))
 :qid |KeyboardClassFindMorePortsbpl.1698:15|
 :skolemid |277|
 :pattern ( (|Select__T@[Int]Bool_| S@@112 x@@302) (_S_Self__DEVICE_EXTENSIONInv S@@112))
)))
(assert (forall ((x@@303 Int) (S@@113 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@113 x@@303) (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECT S@@113) (StackSize__DEVICE_OBJECT x@@303)))
 :qid |KeyboardClassFindMorePortsbpl.1714:15|
 :skolemid |286|
 :pattern ( (|Select__T@[Int]Bool_| S@@113 x@@303) (_S_StackSize__DEVICE_OBJECT S@@113))
)))
(assert (forall ((x@@304 Int) (S@@114 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@114 x@@304) (|Select__T@[Int]Bool_| (_S_StackSize__DEVICE_OBJECTInv S@@114) (StackSize__DEVICE_OBJECTInv x@@304)))
 :qid |KeyboardClassFindMorePortsbpl.1715:15|
 :skolemid |287|
 :pattern ( (|Select__T@[Int]Bool_| S@@114 x@@304) (_S_StackSize__DEVICE_OBJECTInv S@@114))
)))
(assert (forall ((x@@305 Int) (S@@115 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@115 x@@305) (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSION S@@115) (Started__DEVICE_EXTENSION x@@305)))
 :qid |KeyboardClassFindMorePortsbpl.1731:15|
 :skolemid |296|
 :pattern ( (|Select__T@[Int]Bool_| S@@115 x@@305) (_S_Started__DEVICE_EXTENSION S@@115))
)))
(assert (forall ((x@@306 Int) (S@@116 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@116 x@@306) (|Select__T@[Int]Bool_| (_S_Started__DEVICE_EXTENSIONInv S@@116) (Started__DEVICE_EXTENSIONInv x@@306)))
 :qid |KeyboardClassFindMorePortsbpl.1732:15|
 :skolemid |297|
 :pattern ( (|Select__T@[Int]Bool_| S@@116 x@@306) (_S_Started__DEVICE_EXTENSIONInv S@@116))
)))
(assert (forall ((x@@307 Int) (S@@117 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@117 x@@307) (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSION S@@117) (TopPort__DEVICE_EXTENSION x@@307)))
 :qid |KeyboardClassFindMorePortsbpl.1748:15|
 :skolemid |306|
 :pattern ( (|Select__T@[Int]Bool_| S@@117 x@@307) (_S_TopPort__DEVICE_EXTENSION S@@117))
)))
(assert (forall ((x@@308 Int) (S@@118 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@118 x@@308) (|Select__T@[Int]Bool_| (_S_TopPort__DEVICE_EXTENSIONInv S@@118) (TopPort__DEVICE_EXTENSIONInv x@@308)))
 :qid |KeyboardClassFindMorePortsbpl.1749:15|
 :skolemid |307|
 :pattern ( (|Select__T@[Int]Bool_| S@@118 x@@308) (_S_TopPort__DEVICE_EXTENSIONInv S@@118))
)))
(assert (forall ((x@@309 Int) (S@@119 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@119 x@@309) (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSION S@@119) (UnitId__DEVICE_EXTENSION x@@309)))
 :qid |KeyboardClassFindMorePortsbpl.1765:15|
 :skolemid |316|
 :pattern ( (|Select__T@[Int]Bool_| S@@119 x@@309) (_S_UnitId__DEVICE_EXTENSION S@@119))
)))
(assert (forall ((x@@310 Int) (S@@120 |T@[Int]Bool|) ) (!  (=> (|Select__T@[Int]Bool_| S@@120 x@@310) (|Select__T@[Int]Bool_| (_S_UnitId__DEVICE_EXTENSIONInv S@@120) (UnitId__DEVICE_EXTENSIONInv x@@310)))
 :qid |KeyboardClassFindMorePortsbpl.1766:15|
 :skolemid |317|
 :pattern ( (|Select__T@[Int]Bool_| S@@120 x@@310) (_S_UnitId__DEVICE_EXTENSIONInv S@@120))
)))
(assert (forall ((x@@311 Int) ) (! (|Select__T@[Int]Bool_| SetTrue x@@311)
 :qid |KeyboardClassFindMorePortsbpl.67:14|
 :skolemid |12|
)))
(assert (forall ((x@@312 Int) (y@@16 Int) (S@@121 |T@[Int]Bool|) (M@@4 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@121 x@@312) (Equal (Intersection (Inverse M@@4 (|Select__T@[Int]Int_| M@@4 x@@312)) S@@121) (Singleton x@@312))) (Equal (Dereference S@@121 (|Store__T@[Int]Int_| M@@4 x@@312 y@@16)) (Union (Difference (Dereference S@@121 M@@4) (Singleton (|Select__T@[Int]Int_| M@@4 x@@312))) (Singleton y@@16))))
 :qid |KeyboardClassFindMorePortsbpl.93:14|
 :skolemid |33|
 :pattern ( (Dereference S@@121 (|Store__T@[Int]Int_| M@@4 x@@312 y@@16)))
)))
(assert (forall ((x@@313 Int) ) (!  (not (|Select__T@[Int]Bool_| Empty x@@313))
 :qid |KeyboardClassFindMorePortsbpl.65:14|
 :skolemid |11|
)))
(assert (forall ((f@@15 |T@[Int]Int|) (x@@314 Int) (y@@17 Int) ) (! (Equal (Inverse (|Store__T@[Int]Int_| f@@15 x@@314 y@@17) y@@17) (Union (Inverse f@@15 y@@17) (Singleton x@@314)))
 :qid |KeyboardClassFindMorePortsbpl.86:14|
 :skolemid |27|
 :pattern ( (Inverse (|Store__T@[Int]Int_| f@@15 x@@314 y@@17) y@@17))
)))
(assert (forall ((f@@16 |T@[Int]Int|) (x@@315 Int) (y@@18 Int) (z@@10 Int) ) (!  (or (= y@@18 z@@10) (Equal (Inverse (|Store__T@[Int]Int_| f@@16 x@@315 y@@18) z@@10) (Difference (Inverse f@@16 z@@10) (Singleton x@@315))))
 :qid |KeyboardClassFindMorePortsbpl.87:14|
 :skolemid |28|
 :pattern ( (Inverse (|Store__T@[Int]Int_| f@@16 x@@315 y@@18) z@@10))
)))
(assert (forall ((f@@17 |T@[Int]Int|) (x@@316 Int) (y@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse f@@17 y@@19) x@@316) (= (|Select__T@[Int]Int_| f@@17 x@@316) y@@19))
 :qid |KeyboardClassFindMorePortsbpl.85:14|
 :skolemid |26|
 :pattern ( (Inverse f@@17 y@@19) (|Select__T@[Int]Int_| f@@17 x@@316))
)))
(assert (forall ((b0@@1 T@byte) (b1@@0 T@byte) (b2 T@byte) (b3 T@byte) (c0@@1 T@byte) (c1@@0 T@byte) (c2 T@byte) (c3 T@byte) ) (!  (=> (= (FourBytesToInt b0@@1 b1@@0 b2 b3) (FourBytesToInt c0@@1 c1@@0 c2 c3)) (and (and (and (= b0@@1 c0@@1) (= b1@@0 c1@@0)) (= b2 c2)) (= b3 c3)))
 :qid |KeyboardClassFindMorePortsbpl.9:14|
 :skolemid |2|
 :pattern ( (FourBytesToInt b0@@1 b1@@0 b2 b3) (FourBytesToInt c0@@1 c1@@0 c2 c3))
)))
(assert (forall ((f@@18 |T@[Int]Int|) (x@@317 Int) (y@@20 Int) (z@@11 Int) ) (!  (=> (and (ReachBetween f@@18 x@@317 y@@20 y@@20) (ReachBetween f@@18 y@@20 z@@11 z@@11)) (ReachBetween f@@18 x@@317 z@@11 z@@11))
 :qid |KeyboardClassFindMorePortsbpl.1946:14|
 :skolemid |353|
 :pattern ( (ReachBetween f@@18 x@@317 y@@20 y@@20) (ReachBetween f@@18 y@@20 z@@11 z@@11))
)))
(assert (forall ((f@@19 |T@[Int]Int|) (u@@0 Int) (v@@2 Int) (x@@318 Int) (p Int) (q Int) ) (! (= (ReachAvoiding (|Store__T@[Int]Int_| f@@19 p q) u@@0 v@@2 x@@318)  (or (and (ReachAvoiding f@@19 u@@0 v@@2 p) (ReachAvoiding f@@19 u@@0 v@@2 x@@318)) (and (and (and (ReachAvoiding f@@19 u@@0 p x@@318) (not (= p x@@318))) (ReachAvoiding f@@19 q v@@2 p)) (ReachAvoiding f@@19 q v@@2 x@@318))))
 :qid |KeyboardClassFindMorePortsbpl.1962:14|
 :skolemid |358|
 :pattern ( (ReachAvoiding (|Store__T@[Int]Int_| f@@19 p q) u@@0 v@@2 x@@318))
)))
(assert (forall ((x@@319 Int) (n@@5 Int) (z@@12 Int) ) (!  (=> (> z@@12 0) (Equal (q@Array x@@319 n@@5 z@@12) (Difference (AtLeast n@@5 x@@319) (AtLeast n@@5 (PLUS x@@319 n@@5 z@@12)))))
 :qid |KeyboardClassFindMorePortsbpl.62:14|
 :skolemid |10|
 :pattern ( (q@Array x@@319 n@@5 z@@12))
)))
(assert (forall ((x@@320 Int) (y@@21 Int) (S@@122 |T@[Int]Bool|) (M@@5 |T@[Int]Int|) ) (!  (=> (and (|Select__T@[Int]Bool_| S@@122 x@@320) (not (Equal (Intersection (Inverse M@@5 (|Select__T@[Int]Int_| M@@5 x@@320)) S@@122) (Singleton x@@320)))) (Equal (Dereference S@@122 (|Store__T@[Int]Int_| M@@5 x@@320 y@@21)) (Union (Dereference S@@122 M@@5) (Singleton y@@21))))
 :qid |KeyboardClassFindMorePortsbpl.95:14|
 :skolemid |34|
 :pattern ( (Dereference S@@122 (|Store__T@[Int]Int_| M@@5 x@@320 y@@21)))
)))
(assert (forall ((f@@20 |T@[Int]Int|) (x@@321 Int) (y@@22 Int) ) (!  (=> (ReachBetween f@@20 x@@321 y@@22 x@@321) (= x@@321 y@@22))
 :qid |KeyboardClassFindMorePortsbpl.1937:14|
 :skolemid |350|
 :pattern ( (ReachBetween f@@20 x@@321 y@@22 x@@321))
)))
(assert (not (= Globals 0)))
(assert (forall ((x@@322 Int) (S@@123 |T@[Int]Bool|) (T@@6 |T@[Int]Bool|) ) (! (= (|Select__T@[Int]Bool_| (Union S@@123 T@@6) x@@322)  (or (|Select__T@[Int]Bool_| S@@123 x@@322) (|Select__T@[Int]Bool_| T@@6 x@@322)))
 :qid |KeyboardClassFindMorePortsbpl.74:14|
 :skolemid |15|
 :pattern ( (|Select__T@[Int]Bool_| (Union S@@123 T@@6) x@@322))
 :pattern ( (Union S@@123 T@@6) (|Select__T@[Int]Bool_| S@@123 x@@322))
 :pattern ( (Union S@@123 T@@6) (|Select__T@[Int]Bool_| T@@6 x@@322))
)))
(assert (forall ((v@@3 Int) (t@@3 T@name) (m1 |T@[name][Int]Int|) (m2 |T@[name][Int]Int|) ) (! (= (HasType v@@3 t@@3 m1) (HasType v@@3 t@@3 m2))
 :qid |KeyboardClassFindMorePortsbpl.116:14|
 :skolemid |41|
 :pattern ( (HasType v@@3 t@@3 m1) (HasType v@@3 t@@3 m2))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun $i$8$4890.28$KeyboardClassFindMorePorts$12@2 () Int)
(declare-fun $i$8$4890.28$KeyboardClassFindMorePorts$12@1 () Int)
(declare-fun Mem@63 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@34 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@34 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@34 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@8 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@8 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@8 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@34 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@8 () |T@[Int]Int|)
(declare-fun Mem@17 () |T@[name][Int]Int|)
(declare-fun call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 () Int)
(declare-fun Mem@61 () |T@[name][Int]Int|)
(declare-fun $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1 () Int)
(declare-fun Res_DEV_OBJ_INIT@32 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@32 () |T@[Int]Int|)
(declare-fun Mem@62 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@33 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@33 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@33 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@32 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@33 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@32 () |T@[Int]Int|)
(declare-fun Mem@31 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@17 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@17 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@17 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@17 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0 () Int)
(declare-fun Mem@57 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@31 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@31 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@31 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@31 () |T@[Int]Int|)
(declare-fun Mem@58 () |T@[name][Int]Int|)
(declare-fun Mem@59 () |T@[name][Int]Int|)
(declare-fun Mem@60 () |T@[name][Int]Int|)
(declare-fun call9formal@$result.IoGetDeviceObjectPointer$21491.0$1$@0 () Int)
(declare-fun call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 () Int)
(declare-fun Mem@55 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@29 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@29 () |T@[Int]Int|)
(declare-fun Mem@56 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@30 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@30 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@30 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@29 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@30 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@29 () |T@[Int]Int|)
(declare-fun Mem@50 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@27 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@27 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@27 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@27 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@0 () Int)
(declare-fun Mem@51 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@28 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@28 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@28 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@28 () |T@[Int]Int|)
(declare-fun Mem@52 () |T@[name][Int]Int|)
(declare-fun Mem@53 () |T@[name][Int]Int|)
(declare-fun Mem@54 () |T@[name][Int]Int|)
(declare-fun Mem@48 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0 () Int)
(declare-fun Res_DEV_EXTN@25 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@25 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@25 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@25 () |T@[Int]Int|)
(declare-fun call0formal@$Object$1$24931.15$ObfDereferenceObject$41@0 () Int)
(declare-fun Mem@49 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@26 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@26 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@26 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@26 () |T@[Int]Int|)
(declare-fun Mem@38 () |T@[name][Int]Int|)
(declare-fun Res_SPIN_LOCK@21 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@21 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@21 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@21 () |T@[Int]Int|)
(declare-fun Mem@46 () |T@[name][Int]Int|)
(declare-fun Mem@47 () |T@[name][Int]Int|)
(declare-fun call0formal@$FastMutex$1$15000.16$ExAcquireFastMutex$41@0 () Int)
(declare-fun Mem@40 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@23 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@23 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@23 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@23 () |T@[Int]Int|)
(declare-fun Mem@41 () |T@[name][Int]Int|)
(declare-fun Mem@42 () |T@[name][Int]Int|)
(declare-fun Mem@43 () |T@[name][Int]Int|)
(declare-fun Mem@44 () |T@[name][Int]Int|)
(declare-fun call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0 () Int)
(declare-fun Mem@45 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@24 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@24 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@24 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@24 () |T@[Int]Int|)
(declare-fun call8formal@$result.KeyboardAddDeviceEx$818.0$1$@0 () Int)
(declare-fun call0formal@$ListHead$1$6980.24$InsertTailList$81@0 () Int)
(declare-fun call1formal@$Entry$2$6981.41$InsertTailList$81@0 () Int)
(declare-fun Res_DEV_OBJ_INIT@22 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@22 () |T@[Int]Int|)
(declare-fun Mem@39 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@22 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@22 () |T@[Int]Int|)
(declare-fun $successfulCreates$10$4892.28$KeyboardClassFindMorePorts$12@1 () Int)
(declare-fun $successfulCreates$10$4892.28$KeyboardClassFindMorePorts$12@0 () Int)
(declare-fun Mem@35 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@0 () Int)
(declare-fun Res_DEVICE_STACK@19 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@19 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@19 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@19 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@1 () Int)
(declare-fun Mem@36 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@20 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@20 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@20 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@20 () |T@[Int]Int|)
(declare-fun Mem@37 () |T@[name][Int]Int|)
(declare-fun Mem@33 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@1 () Int)
(declare-fun call1formal@$FullClassName$2$820.28$KeyboardAddDeviceEx$121@0 () Int)
(declare-fun call2formal@$File$3$821.28$KeyboardAddDeviceEx$121@0 () Int)
(declare-fun Mem@34 () |T@[name][Int]Int|)
(declare-fun BIT_BNOT (Int) Int)
(declare-fun tempBoogie0@2 () Int)
(declare-fun call10formal@$result.KbdCreateClassObject$3353.0$1$@0 () Int)
(declare-fun Mem@22 () |T@[name][Int]Int|)
(declare-fun Mem@29 () |T@[name][Int]Int|)
(declare-fun call3formal@$DeviceObject$4$21495.26$IoGetDeviceObjectPointer$161@0 () Int)
(declare-fun Mem@30 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@11 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@11 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@11 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@11 () |T@[Int]Int|)
(declare-fun Mem@32 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@18 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@18 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@18 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@18 () |T@[Int]Int|)
(declare-fun Mem@20 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@2 () Int)
(declare-fun Mem@21 () |T@[name][Int]Int|)
(declare-fun call2formal@new@0@@3 () Int)
(declare-fun BINARY_BOTH_INT (Int Int) Int)
(declare-fun call1formal@$TmpDeviceExtension$2$3355.28$KbdCreateClassObject$201@0 () Int)
(declare-fun Res_DEV_OBJ_INIT@10 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@10 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@10 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@10 () |T@[Int]Int|)
(declare-fun Mem@64 () |T@[name][Int]Int|)
(declare-fun Res_DEV_EXTN@35 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@35 () |T@[Int]Int|)
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
(declare-fun Res_DEVICE_STACK@16 () |T@[Int]Int|)
(declare-fun Base (Int) Int)
(declare-fun alloc () |T@[Int]name|)
(declare-fun Res_DEVICE_STACK () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@16 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@16 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@16 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK () |T@[Int]Int|)
(declare-fun Mem@28 () |T@[name][Int]Int|)
(declare-fun Mem () |T@[name][Int]Int|)
(declare-fun Mem@26 () |T@[name][Int]Int|)
(declare-fun Res_DEVICE_STACK@14 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@14 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@14 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@14 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@2 () Int)
(declare-fun Mem@27 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@15 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@15 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@15 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@15 () |T@[Int]Int|)
(declare-fun Mem@24 () |T@[name][Int]Int|)
(declare-fun Res_SPIN_LOCK@12 () |T@[Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@12 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@12 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@12 () |T@[Int]Int|)
(declare-fun call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@3 () Int)
(declare-fun Mem@25 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@13 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@13 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@13 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@13 () |T@[Int]Int|)
(declare-fun Mem@23 () |T@[name][Int]Int|)
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
(declare-fun $i$8$4890.28$KeyboardClassFindMorePorts$12@0 () Int)
(declare-fun call2formal@new@0@@9 () Int)
(declare-fun alloc@11 () |T@[Int]name|)
(declare-fun Mem@18 () |T@[name][Int]Int|)
(declare-fun call3formal@$FinalStatus$4$4827.13$KeyboardClassLogError$281@0 () Int)
(declare-fun Mem@19 () |T@[name][Int]Int|)
(declare-fun Res_DEV_OBJ_INIT@9 () |T@[Int]Int|)
(declare-fun Res_DEV_EXTN@9 () |T@[Int]Int|)
(declare-fun Res_DEVICE_STACK@9 () |T@[Int]Int|)
(declare-fun Res_SPIN_LOCK@9 () |T@[Int]Int|)
(declare-fun $DriverObject$1$4861.20$KeyboardClassFindMorePorts$121 () Int)
(declare-fun $Context$2$4862.20$KeyboardClassFindMorePorts$121 () Int)
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
(set-info :boogie-vc-id KeyboardClassFindMorePorts)
(set-option :timeout 0)
(set-option :rlimit 0)
(assert (not
 (=> (= (ControlFlow 0 0) 129) (let ((label_149_correct  (=> (= $i$8$4890.28$KeyboardClassFindMorePorts$12@2 (PLUS $i$8$4890.28$KeyboardClassFindMorePorts$12@1 1 1)) (and (=> (= (ControlFlow 0 26) (- 0 43)) (forall ((_H_x Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@34 1) _H_x) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x)))) _H_x) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3289:16|
 :skolemid |639|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x)))
))) (=> (forall ((_H_x@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@34 1) _H_x@@0) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0)))) _H_x@@0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3289:16|
 :skolemid |639|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@0)))
)) (and (=> (= (ControlFlow 0 26) (- 0 42)) (forall ((_H_z Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@34 1) _H_z) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z)))) _H_z)))
 :qid |KeyboardClassFindMorePortsbpl.3291:16|
 :skolemid |640|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z)))
))) (=> (forall ((_H_z@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@34 1) _H_z@@0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0)))) _H_z@@0)))
 :qid |KeyboardClassFindMorePortsbpl.3291:16|
 :skolemid |640|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@0)))
)) (and (=> (= (ControlFlow 0 26) (- 0 41)) (and (Subset Empty (Inverse Res_DEV_EXTN@34 1)) (forall ((_H_z@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@34 1) _H_z@@1) true)
 :qid |KeyboardClassFindMorePortsbpl.3293:61|
 :skolemid |641|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@34 1) _H_z@@1))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@34 1)) (forall ((_H_z@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@34 1) _H_z@@2) true)
 :qid |KeyboardClassFindMorePortsbpl.3293:61|
 :skolemid |641|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@34 1) _H_z@@2))
))) (and (=> (= (ControlFlow 0 26) (- 0 40)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 26) (- 0 39)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 26) (- 0 38)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y) (or (= _H_y (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (MINUS_LEFT_PTR _H_y 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3299:233|
 :skolemid |642|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@0 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@0) (or (= _H_y@@0 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@34 (MINUS_LEFT_PTR _H_y@@0 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3299:233|
 :skolemid |642|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@0))
)))) (and (=> (= (ControlFlow 0 26) (- 0 37)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 26) (- 0 36)) (and (Subset Empty (Union Empty Empty)) (forall ((r Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r) (|Select__T@[Int]Int_| Res_DEVICE_STACK@34 r)))
 :qid |KeyboardClassFindMorePortsbpl.3306:62|
 :skolemid |644|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@34 r))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@0 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@0) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@0) (|Select__T@[Int]Int_| Res_DEVICE_STACK@34 r@@0)))
 :qid |KeyboardClassFindMorePortsbpl.3306:62|
 :skolemid |644|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@34 r@@0))
))) (and (=> (= (ControlFlow 0 26) (- 0 35)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@1 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@1) (|Select__T@[Int]Int_| Res_DEV_EXTN@34 r@@1)))
 :qid |KeyboardClassFindMorePortsbpl.3309:64|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@34 r@@1))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@2 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@2) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@2) (|Select__T@[Int]Int_| Res_DEV_EXTN@34 r@@2)))
 :qid |KeyboardClassFindMorePortsbpl.3309:64|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@34 r@@2))
))) (and (=> (= (ControlFlow 0 26) (- 0 34)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@3 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@3) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@3) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 r@@3)))
 :qid |KeyboardClassFindMorePortsbpl.3312:64|
 :skolemid |646|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 r@@3))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@4 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@4) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@4) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 r@@4)))
 :qid |KeyboardClassFindMorePortsbpl.3312:64|
 :skolemid |646|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@34 r@@4))
))) (and (=> (= (ControlFlow 0 26) (- 0 33)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@5 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@5) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@5) (|Select__T@[Int]Int_| Res_SPIN_LOCK@34 r@@5)))
 :qid |KeyboardClassFindMorePortsbpl.3315:62|
 :skolemid |647|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@34 r@@5))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@6 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@6) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@6) (|Select__T@[Int]Int_| Res_SPIN_LOCK@34 r@@6)))
 :qid |KeyboardClassFindMorePortsbpl.3315:62|
 :skolemid |647|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@34 r@@6))
))) (and (=> (= (ControlFlow 0 26) (- 0 32)) (and (Subset Empty (Union Empty Empty)) (forall ((_m Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.MinorFunction__IO_STACK_LOCATION) _m) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m)))
 :qid |KeyboardClassFindMorePortsbpl.3317:63|
 :skolemid |648|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.MinorFunction__IO_STACK_LOCATION) _m))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@0 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@0) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.MinorFunction__IO_STACK_LOCATION) _m@@0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@0)))
 :qid |KeyboardClassFindMorePortsbpl.3317:63|
 :skolemid |648|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.MinorFunction__IO_STACK_LOCATION) _m@@0))
))) (and (=> (= (ControlFlow 0 26) (- 0 31)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@1 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@1)))
 :qid |KeyboardClassFindMorePortsbpl.3319:63|
 :skolemid |649|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@1))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@2 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@2) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@2) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@2)))
 :qid |KeyboardClassFindMorePortsbpl.3319:63|
 :skolemid |649|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@2))
))) (and (=> (= (ControlFlow 0 26) (- 0 30)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@3 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@3) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) _m@@3) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@3)))
 :qid |KeyboardClassFindMorePortsbpl.3321:63|
 :skolemid |650|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) _m@@3))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@4 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@4) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) _m@@4) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@4)))
 :qid |KeyboardClassFindMorePortsbpl.3321:63|
 :skolemid |650|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.DeviceExtension__DEVICE_OBJECT) _m@@4))
))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@5 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@5) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) _m@@5) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@5)))
 :qid |KeyboardClassFindMorePortsbpl.3323:65|
 :skolemid |651|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) _m@@5))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@6 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@6) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) _m@@6) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@6)))
 :qid |KeyboardClassFindMorePortsbpl.3323:65|
 :skolemid |651|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Self__DEVICE_EXTENSION) _m@@6))
))) (and (=> (= (ControlFlow 0 26) (- 0 28)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@7 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@7) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Started__DEVICE_EXTENSION) _m@@7) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@7)))
 :qid |KeyboardClassFindMorePortsbpl.3325:63|
 :skolemid |652|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Started__DEVICE_EXTENSION) _m@@7))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@8 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@8) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Started__DEVICE_EXTENSION) _m@@8) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@8)))
 :qid |KeyboardClassFindMorePortsbpl.3325:63|
 :skolemid |652|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.Started__DEVICE_EXTENSION) _m@@8))
))) (and (=> (= (ControlFlow 0 26) (- 0 27)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@9 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@9) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) _m@@9) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@9)))
 :qid |KeyboardClassFindMorePortsbpl.3327:63|
 :skolemid |653|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) _m@@9))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@10 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@10) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) _m@@10) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@10)))
 :qid |KeyboardClassFindMorePortsbpl.3327:63|
 :skolemid |653|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.GrandMaster__GLOBALS) _m@@10))
))) (=> (= (ControlFlow 0 26) (- 0 25)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@11 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@11) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.P_DEVICE_OBJECT) _m@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@11)))
 :qid |KeyboardClassFindMorePortsbpl.3329:65|
 :skolemid |654|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@63 T.P_DEVICE_OBJECT) _m@@11))
)))))))))))))))))))))))))))))))))))))))))
(let ((label_99_correct  (=> (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))) (and (=> (= (ControlFlow 0 75) (- 0 76)) (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@32 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 1)))) (=> (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@32 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 1))) (=> (= Mem@62 Mem@61) (=> (and (and (and (and (and (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@33 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@33 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) 0))) (=> true (and (= Res_DEV_OBJ_INIT@33 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@32 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 0)) (= Res_DEV_EXTN@33 (|Store__T@[Int]Int_| Res_DEV_EXTN@32 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) 0))))) (and (=> (not true) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@33 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@33 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) (|Select__T@[Int]Int_| Res_DEV_EXTN@32 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)))))) (=> (not true) (and (= Res_DEV_OBJ_INIT@33 Res_DEV_OBJ_INIT@32) (= Res_DEV_EXTN@33 Res_DEV_EXTN@32))))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@7 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@7) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@32 r@@7) (|Select__T@[Int]Int_| Res_DEVICE_STACK@33 r@@7)))
 :qid |KeyboardClassFindMorePortsbpl.2205:63|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@33 r@@7))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))))) (forall ((r@@8 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@8) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0)) r@@8)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@32 r@@8) (|Select__T@[Int]Int_| Res_DEV_EXTN@33 r@@8)))
 :qid |KeyboardClassFindMorePortsbpl.2209:196|
 :skolemid |417|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@33 r@@8))
))))) (and (and (and (Subset Empty (Union (Union Empty Empty) (Singleton call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0))) (forall ((r@@9 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@9) (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0 r@@9)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@32 r@@9) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@33 r@@9)))
 :qid |KeyboardClassFindMorePortsbpl.2213:125|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@33 r@@9))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@10 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@10) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@32 r@@10) (|Select__T@[Int]Int_| Res_SPIN_LOCK@33 r@@10)))
 :qid |KeyboardClassFindMorePortsbpl.2217:63|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@33 r@@10))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@12 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@12) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.MinorFunction__IO_STACK_LOCATION) _m@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.MinorFunction__IO_STACK_LOCATION) _m@@12)))
 :qid |KeyboardClassFindMorePortsbpl.2219:64|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.MinorFunction__IO_STACK_LOCATION) _m@@12))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@13 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@13) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@13) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@13)))
 :qid |KeyboardClassFindMorePortsbpl.2221:64|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@13))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@14 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@14) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) _m@@14) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.DeviceExtension__DEVICE_OBJECT) _m@@14)))
 :qid |KeyboardClassFindMorePortsbpl.2223:64|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.DeviceExtension__DEVICE_OBJECT) _m@@14))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@15 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@15) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.Self__DEVICE_EXTENSION) _m@@15) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.Self__DEVICE_EXTENSION) _m@@15)))
 :qid |KeyboardClassFindMorePortsbpl.2225:64|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.Self__DEVICE_EXTENSION) _m@@15))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@16 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@16) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.Started__DEVICE_EXTENSION) _m@@16) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.Started__DEVICE_EXTENSION) _m@@16)))
 :qid |KeyboardClassFindMorePortsbpl.2227:64|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.Started__DEVICE_EXTENSION) _m@@16))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@17 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@17) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.GrandMaster__GLOBALS) _m@@17) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.GrandMaster__GLOBALS) _m@@17)))
 :qid |KeyboardClassFindMorePortsbpl.2229:64|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.GrandMaster__GLOBALS) _m@@17))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@18 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@18) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.P_DEVICE_OBJECT) _m@@18) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@61 T.P_DEVICE_OBJECT) _m@@18)))
 :qid |KeyboardClassFindMorePortsbpl.2231:64|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@62 T.P_DEVICE_OBJECT) _m@@18))
))) (and (= Res_DEV_EXTN@34 Res_DEV_EXTN@33) (= Res_DEV_OBJ_INIT@34 Res_DEV_OBJ_INIT@33))) (and (and (= Res_SPIN_LOCK@34 Res_SPIN_LOCK@33) (= Mem@63 Mem@62)) (and (= Res_DEVICE_STACK@34 Res_DEVICE_STACK@33) (= (ControlFlow 0 75) 26)))))) label_149_correct)))))))
(let ((label_92_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) 0) (=> (and (= Mem@61 Mem@31) (= Res_DEVICE_STACK@32 Res_DEVICE_STACK@17)) (=> (and (and (= Res_DEV_EXTN@32 Res_DEV_EXTN@17) (= Res_DEV_OBJ_INIT@32 Res_DEV_OBJ_INIT@17)) (and (= Res_SPIN_LOCK@32 Res_SPIN_LOCK@17) (= (ControlFlow 0 78) 75))) label_99_correct)))))
(let ((label_92_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) 0)) (=> (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))) (= Mem@57 Mem@31)) (and (= Res_DEV_OBJ_INIT@31 Res_DEV_OBJ_INIT@17) (= Res_DEV_EXTN@31 Res_DEV_EXTN@17))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@11 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@11) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@11) (|Select__T@[Int]Int_| Res_DEVICE_STACK@31 r@@11)))
 :qid |KeyboardClassFindMorePortsbpl.2071:63|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@31 r@@11))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@12 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@12) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@12) (|Select__T@[Int]Int_| Res_DEV_EXTN@31 r@@12)))
 :qid |KeyboardClassFindMorePortsbpl.2075:63|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@31 r@@12))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@13 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@13) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@13) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@31 r@@13)))
 :qid |KeyboardClassFindMorePortsbpl.2079:63|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@31 r@@13))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@14 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@14) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@14) (|Select__T@[Int]Int_| Res_SPIN_LOCK@31 r@@14)))
 :qid |KeyboardClassFindMorePortsbpl.2083:63|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@31 r@@14))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@19 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@19) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.MinorFunction__IO_STACK_LOCATION) _m@@19) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.MinorFunction__IO_STACK_LOCATION) _m@@19)))
 :qid |KeyboardClassFindMorePortsbpl.2085:64|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.MinorFunction__IO_STACK_LOCATION) _m@@19))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@20 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@20) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@20) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@20)))
 :qid |KeyboardClassFindMorePortsbpl.2087:64|
 :skolemid |388|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@20))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@21 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@21) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.DeviceExtension__DEVICE_OBJECT) _m@@21) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.DeviceExtension__DEVICE_OBJECT) _m@@21)))
 :qid |KeyboardClassFindMorePortsbpl.2089:64|
 :skolemid |389|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.DeviceExtension__DEVICE_OBJECT) _m@@21))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@22 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@22) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.Self__DEVICE_EXTENSION) _m@@22) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Self__DEVICE_EXTENSION) _m@@22)))
 :qid |KeyboardClassFindMorePortsbpl.2091:64|
 :skolemid |390|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.Self__DEVICE_EXTENSION) _m@@22))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@23 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@23) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.Started__DEVICE_EXTENSION) _m@@23) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.Started__DEVICE_EXTENSION) _m@@23)))
 :qid |KeyboardClassFindMorePortsbpl.2093:64|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.Started__DEVICE_EXTENSION) _m@@23))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@24 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@24) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.GrandMaster__GLOBALS) _m@@24) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.GrandMaster__GLOBALS) _m@@24)))
 :qid |KeyboardClassFindMorePortsbpl.2095:64|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.GrandMaster__GLOBALS) _m@@24))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@25 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@25) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.P_DEVICE_OBJECT) _m@@25) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) _m@@25)))
 :qid |KeyboardClassFindMorePortsbpl.2097:64|
 :skolemid |393|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.P_DEVICE_OBJECT) _m@@25))
))) (= Mem@58 (|Store__T@[name][Int]Int_| Mem@57 T.DataOut__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@57 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) 0))))) (and (and (and (= Mem@59 (|Store__T@[name][Int]Int_| Mem@58 T.DataIn__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@58 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))))) (= Mem@60 (|Store__T@[name][Int]Int_| Mem@59 T.InputData__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@59 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)))))) (and (= Mem@61 Mem@60) (= Res_DEVICE_STACK@32 Res_DEVICE_STACK@31))) (and (and (= Res_DEV_EXTN@32 Res_DEV_EXTN@31) (= Res_DEV_OBJ_INIT@32 Res_DEV_OBJ_INIT@31)) (and (= Res_SPIN_LOCK@32 Res_SPIN_LOCK@31) (= (ControlFlow 0 77) 75)))))) label_99_correct)))))
(let ((label_91_true_correct  (=> (not (= call9formal@$result.IoGetDeviceObjectPointer$21491.0$1$@0 0)) (and (=> (= (ControlFlow 0 79) 77) label_92_true_correct) (=> (= (ControlFlow 0 79) 78) label_92_false_correct)))))
(let ((label_141_correct  (=> (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))) (and (=> (= (ControlFlow 0 53) (- 0 54)) (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@29 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@29 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) 1)))) (=> (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@29 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@29 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) 1))) (=> (= Mem@56 Mem@55) (=> (and (and (and (and (and (=> true (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@30 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@30 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) 0))) (=> true (and (= Res_DEV_OBJ_INIT@30 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@29 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 0)) (= Res_DEV_EXTN@30 (|Store__T@[Int]Int_| Res_DEV_EXTN@29 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)) 0))))) (and (=> (not true) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@30 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@29 call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@30 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) (|Select__T@[Int]Int_| Res_DEV_EXTN@29 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)))))) (=> (not true) (and (= Res_DEV_OBJ_INIT@30 Res_DEV_OBJ_INIT@29) (= Res_DEV_EXTN@30 Res_DEV_EXTN@29))))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@15 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@15) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@29 r@@15) (|Select__T@[Int]Int_| Res_DEVICE_STACK@30 r@@15)))
 :qid |KeyboardClassFindMorePortsbpl.2205:63|
 :skolemid |416|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@30 r@@15))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))))) (forall ((r@@16 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@16) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0)) r@@16)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@29 r@@16) (|Select__T@[Int]Int_| Res_DEV_EXTN@30 r@@16)))
 :qid |KeyboardClassFindMorePortsbpl.2209:196|
 :skolemid |417|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@30 r@@16))
))))) (and (and (and (Subset Empty (Union (Union Empty Empty) (Singleton call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0))) (forall ((r@@17 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@17) (= call0formal@$DeviceObject$1$21328.67$IoDeleteDevice$41@0@@0 r@@17)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@29 r@@17) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@30 r@@17)))
 :qid |KeyboardClassFindMorePortsbpl.2213:125|
 :skolemid |418|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@30 r@@17))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@18 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@18) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@29 r@@18) (|Select__T@[Int]Int_| Res_SPIN_LOCK@30 r@@18)))
 :qid |KeyboardClassFindMorePortsbpl.2217:63|
 :skolemid |419|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@30 r@@18))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@26 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@26) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.MinorFunction__IO_STACK_LOCATION) _m@@26) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.MinorFunction__IO_STACK_LOCATION) _m@@26)))
 :qid |KeyboardClassFindMorePortsbpl.2219:64|
 :skolemid |420|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.MinorFunction__IO_STACK_LOCATION) _m@@26))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@27 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@27) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@27) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@27)))
 :qid |KeyboardClassFindMorePortsbpl.2221:64|
 :skolemid |421|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@27))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@28 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@28) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) _m@@28) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.DeviceExtension__DEVICE_OBJECT) _m@@28)))
 :qid |KeyboardClassFindMorePortsbpl.2223:64|
 :skolemid |422|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.DeviceExtension__DEVICE_OBJECT) _m@@28))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@29 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@29) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.Self__DEVICE_EXTENSION) _m@@29) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.Self__DEVICE_EXTENSION) _m@@29)))
 :qid |KeyboardClassFindMorePortsbpl.2225:64|
 :skolemid |423|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.Self__DEVICE_EXTENSION) _m@@29))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@30 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@30) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.Started__DEVICE_EXTENSION) _m@@30) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.Started__DEVICE_EXTENSION) _m@@30)))
 :qid |KeyboardClassFindMorePortsbpl.2227:64|
 :skolemid |424|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.Started__DEVICE_EXTENSION) _m@@30))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@31 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@31) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.GrandMaster__GLOBALS) _m@@31) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.GrandMaster__GLOBALS) _m@@31)))
 :qid |KeyboardClassFindMorePortsbpl.2229:64|
 :skolemid |425|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.GrandMaster__GLOBALS) _m@@31))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@32 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@32) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.P_DEVICE_OBJECT) _m@@32) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@55 T.P_DEVICE_OBJECT) _m@@32)))
 :qid |KeyboardClassFindMorePortsbpl.2231:64|
 :skolemid |426|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@56 T.P_DEVICE_OBJECT) _m@@32))
))) (and (= Res_DEV_EXTN@34 Res_DEV_EXTN@30) (= Res_DEV_OBJ_INIT@34 Res_DEV_OBJ_INIT@30))) (and (and (= Res_SPIN_LOCK@34 Res_SPIN_LOCK@30) (= Mem@63 Mem@56)) (and (= Res_DEVICE_STACK@34 Res_DEVICE_STACK@30) (= (ControlFlow 0 53) 26)))))) label_149_correct)))))))
(let ((label_134_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) 0) (=> (and (= Res_DEVICE_STACK@29 Res_DEVICE_STACK@27) (= Mem@55 Mem@50)) (=> (and (and (= Res_SPIN_LOCK@29 Res_SPIN_LOCK@27) (= Res_DEV_OBJ_INIT@29 Res_DEV_OBJ_INIT@27)) (and (= Res_DEV_EXTN@29 Res_DEV_EXTN@27) (= (ControlFlow 0 56) 53))) label_141_correct)))))
(let ((label_134_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) 0)) (=> (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))) (= Mem@51 Mem@50)) (and (= Res_DEV_OBJ_INIT@28 Res_DEV_OBJ_INIT@27) (= Res_DEV_EXTN@28 Res_DEV_EXTN@27))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@19 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@19) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@27 r@@19) (|Select__T@[Int]Int_| Res_DEVICE_STACK@28 r@@19)))
 :qid |KeyboardClassFindMorePortsbpl.2071:63|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@28 r@@19))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@20 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@20) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@27 r@@20) (|Select__T@[Int]Int_| Res_DEV_EXTN@28 r@@20)))
 :qid |KeyboardClassFindMorePortsbpl.2075:63|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@28 r@@20))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@21 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@21) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@27 r@@21) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@28 r@@21)))
 :qid |KeyboardClassFindMorePortsbpl.2079:63|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@28 r@@21))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@22 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@22) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@27 r@@22) (|Select__T@[Int]Int_| Res_SPIN_LOCK@28 r@@22)))
 :qid |KeyboardClassFindMorePortsbpl.2083:63|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@28 r@@22))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@33 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@33) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.MinorFunction__IO_STACK_LOCATION) _m@@33) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.MinorFunction__IO_STACK_LOCATION) _m@@33)))
 :qid |KeyboardClassFindMorePortsbpl.2085:64|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.MinorFunction__IO_STACK_LOCATION) _m@@33))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@34 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@34) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@34) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@34)))
 :qid |KeyboardClassFindMorePortsbpl.2087:64|
 :skolemid |388|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@34))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@35 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@35) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.DeviceExtension__DEVICE_OBJECT) _m@@35) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.DeviceExtension__DEVICE_OBJECT) _m@@35)))
 :qid |KeyboardClassFindMorePortsbpl.2089:64|
 :skolemid |389|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.DeviceExtension__DEVICE_OBJECT) _m@@35))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@36 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@36) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.Self__DEVICE_EXTENSION) _m@@36) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.Self__DEVICE_EXTENSION) _m@@36)))
 :qid |KeyboardClassFindMorePortsbpl.2091:64|
 :skolemid |390|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.Self__DEVICE_EXTENSION) _m@@36))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@37 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@37) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.Started__DEVICE_EXTENSION) _m@@37) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.Started__DEVICE_EXTENSION) _m@@37)))
 :qid |KeyboardClassFindMorePortsbpl.2093:64|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.Started__DEVICE_EXTENSION) _m@@37))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@38 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@38) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.GrandMaster__GLOBALS) _m@@38) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.GrandMaster__GLOBALS) _m@@38)))
 :qid |KeyboardClassFindMorePortsbpl.2095:64|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.GrandMaster__GLOBALS) _m@@38))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@39 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@39) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.P_DEVICE_OBJECT) _m@@39) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@50 T.P_DEVICE_OBJECT) _m@@39)))
 :qid |KeyboardClassFindMorePortsbpl.2097:64|
 :skolemid |393|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.P_DEVICE_OBJECT) _m@@39))
))) (= Mem@52 (|Store__T@[name][Int]Int_| Mem@51 T.DataOut__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@51 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) 0))))) (and (and (and (= Mem@53 (|Store__T@[name][Int]Int_| Mem@52 T.DataIn__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@52 T.DataOut__DEVICE_EXTENSION) (DataOut__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))))) (= Mem@54 (|Store__T@[name][Int]Int_| Mem@53 T.InputData__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.InputData__DEVICE_EXTENSION) (InputData__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@53 T.DataIn__DEVICE_EXTENSION) (DataIn__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)))))) (and (= Res_DEVICE_STACK@29 Res_DEVICE_STACK@28) (= Mem@55 Mem@54))) (and (and (= Res_SPIN_LOCK@29 Res_SPIN_LOCK@28) (= Res_DEV_OBJ_INIT@29 Res_DEV_OBJ_INIT@28)) (and (= Res_DEV_EXTN@29 Res_DEV_EXTN@28) (= (ControlFlow 0 55) 53)))))) label_141_correct)))))
(let ((label_130_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.P_FILE_OBJECT) call2formal@new@0) 0) (= Res_DEV_EXTN@27 Res_DEV_EXTN@25)) (=> (and (and (= Res_DEV_OBJ_INIT@27 Res_DEV_OBJ_INIT@25) (= Res_SPIN_LOCK@27 Res_SPIN_LOCK@25)) (and (= Mem@50 Mem@48) (= Res_DEVICE_STACK@27 Res_DEVICE_STACK@25))) (and (=> (= (ControlFlow 0 58) 55) label_134_true_correct) (=> (= (ControlFlow 0 58) 56) label_134_false_correct))))))
(let ((label_130_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.P_FILE_OBJECT) call2formal@new@0) 0)) (=> (and (and (and (and (and (= call0formal@$Object$1$24931.15$ObfDereferenceObject$41@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.P_FILE_OBJECT) call2formal@new@0)) (= Mem@49 Mem@48)) (and (= Res_DEV_OBJ_INIT@26 Res_DEV_OBJ_INIT@25) (= Res_DEV_EXTN@26 Res_DEV_EXTN@25))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@23 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@23) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@25 r@@23) (|Select__T@[Int]Int_| Res_DEVICE_STACK@26 r@@23)))
 :qid |KeyboardClassFindMorePortsbpl.2593:63|
 :skolemid |514|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@26 r@@23))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@24 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@24) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@25 r@@24) (|Select__T@[Int]Int_| Res_DEV_EXTN@26 r@@24)))
 :qid |KeyboardClassFindMorePortsbpl.2597:63|
 :skolemid |515|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@26 r@@24))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@25 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@25) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@25 r@@25) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@26 r@@25)))
 :qid |KeyboardClassFindMorePortsbpl.2601:63|
 :skolemid |516|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@26 r@@25))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@26 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@26) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@25 r@@26) (|Select__T@[Int]Int_| Res_SPIN_LOCK@26 r@@26)))
 :qid |KeyboardClassFindMorePortsbpl.2605:63|
 :skolemid |517|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@26 r@@26))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@40 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@40) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.MinorFunction__IO_STACK_LOCATION) _m@@40) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.MinorFunction__IO_STACK_LOCATION) _m@@40)))
 :qid |KeyboardClassFindMorePortsbpl.2607:64|
 :skolemid |518|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.MinorFunction__IO_STACK_LOCATION) _m@@40))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@41 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@41) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@41) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@41)))
 :qid |KeyboardClassFindMorePortsbpl.2609:64|
 :skolemid |519|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@41))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@42 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@42) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.DeviceExtension__DEVICE_OBJECT) _m@@42) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.DeviceExtension__DEVICE_OBJECT) _m@@42)))
 :qid |KeyboardClassFindMorePortsbpl.2611:64|
 :skolemid |520|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.DeviceExtension__DEVICE_OBJECT) _m@@42))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@43 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@43) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.Self__DEVICE_EXTENSION) _m@@43) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.Self__DEVICE_EXTENSION) _m@@43)))
 :qid |KeyboardClassFindMorePortsbpl.2613:64|
 :skolemid |521|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.Self__DEVICE_EXTENSION) _m@@43))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@44 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@44) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.Started__DEVICE_EXTENSION) _m@@44) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.Started__DEVICE_EXTENSION) _m@@44)))
 :qid |KeyboardClassFindMorePortsbpl.2615:64|
 :skolemid |522|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.Started__DEVICE_EXTENSION) _m@@44))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@45 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@45) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.GrandMaster__GLOBALS) _m@@45) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.GrandMaster__GLOBALS) _m@@45)))
 :qid |KeyboardClassFindMorePortsbpl.2617:64|
 :skolemid |523|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.GrandMaster__GLOBALS) _m@@45))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@46 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@46) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.P_DEVICE_OBJECT) _m@@46) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@48 T.P_DEVICE_OBJECT) _m@@46)))
 :qid |KeyboardClassFindMorePortsbpl.2619:64|
 :skolemid |524|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@49 T.P_DEVICE_OBJECT) _m@@46))
))) (= Res_DEV_EXTN@27 Res_DEV_EXTN@26)) (and (and (= Res_DEV_OBJ_INIT@27 Res_DEV_OBJ_INIT@26) (= Res_SPIN_LOCK@27 Res_SPIN_LOCK@26)) (and (= Mem@50 Mem@49) (= Res_DEVICE_STACK@27 Res_DEVICE_STACK@26)))))) (and (=> (= (ControlFlow 0 57) 55) label_134_true_correct) (=> (= (ControlFlow 0 57) 56) label_134_false_correct))))))
(let ((label_116_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) 0) (= Mem@48 Mem@38)) (=> (and (and (= Res_SPIN_LOCK@25 Res_SPIN_LOCK@21) (= Res_DEV_OBJ_INIT@25 Res_DEV_OBJ_INIT@21)) (and (= Res_DEV_EXTN@25 Res_DEV_EXTN@21) (= Res_DEVICE_STACK@25 Res_DEVICE_STACK@21))) (and (=> (= (ControlFlow 0 61) 57) label_130_true_correct) (=> (= (ControlFlow 0 61) 58) label_130_false_correct))))))
(let ((label_116_true_correct  (=> (and (and (and (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) 0)) (= Mem@46 (|Store__T@[name][Int]Int_| Mem@38 T.P_FILE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.P_FILE_OBJECT) call2formal@new@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)))))) (and (= Mem@47 (|Store__T@[name][Int]Int_| Mem@46 T.File__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@46 T.File__DEVICE_EXTENSION) (File__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) 0))) (= Mem@48 Mem@47))) (and (and (= Res_SPIN_LOCK@25 Res_SPIN_LOCK@21) (= Res_DEV_OBJ_INIT@25 Res_DEV_OBJ_INIT@21)) (and (= Res_DEV_EXTN@25 Res_DEV_EXTN@21) (= Res_DEVICE_STACK@25 Res_DEVICE_STACK@21)))) (and (=> (= (ControlFlow 0 60) 57) label_130_true_correct) (=> (= (ControlFlow 0 60) 58) label_130_false_correct)))))
(let ((label_115_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0) (and (=> (= (ControlFlow 0 62) 60) label_116_true_correct) (=> (= (ControlFlow 0 62) 61) label_116_false_correct)))))
(let ((label_115_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (=> (and (= call0formal@$FastMutex$1$15000.16$ExAcquireFastMutex$41@0 (Mutex__GLOBALS Globals)) (= Mem@40 Mem@38)) (=> (and (and (= Res_DEV_OBJ_INIT@23 Res_DEV_OBJ_INIT@21) (= Res_DEV_EXTN@23 Res_DEV_EXTN@21)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@27 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@27) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@21 r@@27) (|Select__T@[Int]Int_| Res_DEVICE_STACK@23 r@@27)))
 :qid |KeyboardClassFindMorePortsbpl.1987:63|
 :skolemid |361|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@23 r@@27))
)))) (=> (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@28 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@28) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 r@@28) (|Select__T@[Int]Int_| Res_DEV_EXTN@23 r@@28)))
 :qid |KeyboardClassFindMorePortsbpl.1991:63|
 :skolemid |362|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@23 r@@28))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@29 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@29) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 r@@29) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@23 r@@29)))
 :qid |KeyboardClassFindMorePortsbpl.1995:63|
 :skolemid |363|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@23 r@@29))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@30 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@30) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 r@@30) (|Select__T@[Int]Int_| Res_SPIN_LOCK@23 r@@30)))
 :qid |KeyboardClassFindMorePortsbpl.1999:63|
 :skolemid |364|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@23 r@@30))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@47 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@47) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.MinorFunction__IO_STACK_LOCATION) _m@@47) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.MinorFunction__IO_STACK_LOCATION) _m@@47)))
 :qid |KeyboardClassFindMorePortsbpl.2001:64|
 :skolemid |365|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.MinorFunction__IO_STACK_LOCATION) _m@@47))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@48 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@48) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@48) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@48)))
 :qid |KeyboardClassFindMorePortsbpl.2003:64|
 :skolemid |366|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@48))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@49 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@49) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.DeviceExtension__DEVICE_OBJECT) _m@@49) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) _m@@49)))
 :qid |KeyboardClassFindMorePortsbpl.2005:64|
 :skolemid |367|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.DeviceExtension__DEVICE_OBJECT) _m@@49))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@50 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@50) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Self__DEVICE_EXTENSION) _m@@50) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) _m@@50)))
 :qid |KeyboardClassFindMorePortsbpl.2007:64|
 :skolemid |368|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Self__DEVICE_EXTENSION) _m@@50))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@51 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@51) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Started__DEVICE_EXTENSION) _m@@51) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Started__DEVICE_EXTENSION) _m@@51)))
 :qid |KeyboardClassFindMorePortsbpl.2009:64|
 :skolemid |369|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.Started__DEVICE_EXTENSION) _m@@51))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@52 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@52) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.GrandMaster__GLOBALS) _m@@52) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) _m@@52)))
 :qid |KeyboardClassFindMorePortsbpl.2011:64|
 :skolemid |370|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.GrandMaster__GLOBALS) _m@@52))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@53 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@53) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.P_DEVICE_OBJECT) _m@@53) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.P_DEVICE_OBJECT) _m@@53)))
 :qid |KeyboardClassFindMorePortsbpl.2013:64|
 :skolemid |371|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.P_DEVICE_OBJECT) _m@@53))
)))) (and (and (= Mem@41 (|Store__T@[name][Int]Int_| Mem@40 T.P_FILE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.P_FILE_OBJECT) call2formal@new@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.File__PORT) (File__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@40 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)))))))) (= Mem@42 (|Store__T@[name][Int]Int_| Mem@41 T.File__PORT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.File__PORT) (File__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@41 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)))) 0)))) (and (= Mem@43 (|Store__T@[name][Int]Int_| Mem@42 T.Free__PORT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.Free__PORT) (Free__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@42 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)))) 1))) (= Mem@44 (|Store__T@[name][Int]Int_| Mem@43 T.Port__PORT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.Port__PORT) (Port__PORT (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.AssocClassList__GLOBALS) (AssocClassList__GLOBALS Globals)) 12 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@43 T.UnitId__DEVICE_EXTENSION) (UnitId__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)))) 0))))))) (=> (and (and (and (and (and (= call0formal@$FastMutex$1$15013.16$ExReleaseFastMutex$41@0 (Mutex__GLOBALS Globals)) (= Mem@45 Mem@44)) (and (= Res_DEV_OBJ_INIT@24 Res_DEV_OBJ_INIT@23) (= Res_DEV_EXTN@24 Res_DEV_EXTN@23))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@31 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@31) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@23 r@@31) (|Select__T@[Int]Int_| Res_DEVICE_STACK@24 r@@31)))
 :qid |KeyboardClassFindMorePortsbpl.2113:63|
 :skolemid |394|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@24 r@@31))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@32 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@32) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@23 r@@32) (|Select__T@[Int]Int_| Res_DEV_EXTN@24 r@@32)))
 :qid |KeyboardClassFindMorePortsbpl.2117:63|
 :skolemid |395|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@24 r@@32))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@33 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@33) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@23 r@@33) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 r@@33)))
 :qid |KeyboardClassFindMorePortsbpl.2121:63|
 :skolemid |396|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@24 r@@33))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@34 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@34) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@23 r@@34) (|Select__T@[Int]Int_| Res_SPIN_LOCK@24 r@@34)))
 :qid |KeyboardClassFindMorePortsbpl.2125:63|
 :skolemid |397|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@24 r@@34))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@54 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@54) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinorFunction__IO_STACK_LOCATION) _m@@54) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.MinorFunction__IO_STACK_LOCATION) _m@@54)))
 :qid |KeyboardClassFindMorePortsbpl.2127:64|
 :skolemid |398|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.MinorFunction__IO_STACK_LOCATION) _m@@54))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@55 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@55) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@55) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@55)))
 :qid |KeyboardClassFindMorePortsbpl.2129:64|
 :skolemid |399|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@55))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@56 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@56) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DeviceExtension__DEVICE_OBJECT) _m@@56) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.DeviceExtension__DEVICE_OBJECT) _m@@56)))
 :qid |KeyboardClassFindMorePortsbpl.2131:64|
 :skolemid |400|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.DeviceExtension__DEVICE_OBJECT) _m@@56))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@57 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@57) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Self__DEVICE_EXTENSION) _m@@57) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.Self__DEVICE_EXTENSION) _m@@57)))
 :qid |KeyboardClassFindMorePortsbpl.2133:64|
 :skolemid |401|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Self__DEVICE_EXTENSION) _m@@57))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@58 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@58) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Started__DEVICE_EXTENSION) _m@@58) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.Started__DEVICE_EXTENSION) _m@@58)))
 :qid |KeyboardClassFindMorePortsbpl.2135:64|
 :skolemid |402|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.Started__DEVICE_EXTENSION) _m@@58))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@59 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@59) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GrandMaster__GLOBALS) _m@@59) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.GrandMaster__GLOBALS) _m@@59)))
 :qid |KeyboardClassFindMorePortsbpl.2137:64|
 :skolemid |403|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.GrandMaster__GLOBALS) _m@@59))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@60 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@60) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DEVICE_OBJECT) _m@@60) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@44 T.P_DEVICE_OBJECT) _m@@60)))
 :qid |KeyboardClassFindMorePortsbpl.2139:64|
 :skolemid |404|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@45 T.P_DEVICE_OBJECT) _m@@60))
))) (= Mem@48 Mem@45)) (and (and (= Res_SPIN_LOCK@25 Res_SPIN_LOCK@24) (= Res_DEV_OBJ_INIT@25 Res_DEV_OBJ_INIT@24)) (and (= Res_DEV_EXTN@25 Res_DEV_EXTN@24) (= Res_DEVICE_STACK@25 Res_DEVICE_STACK@24)))))) (and (=> (= (ControlFlow 0 59) 57) label_130_true_correct) (=> (= (ControlFlow 0 59) 58) label_130_false_correct))))))))))
(let ((label_114_false_correct  (=> (not (<= 0 call8formal@$result.KeyboardAddDeviceEx$818.0$1$@0)) (and (=> (= (ControlFlow 0 63) 59) label_115_true_correct) (=> (= (ControlFlow 0 63) 62) label_115_false_correct)))))
(let ((label_114_true_correct  (=> (<= 0 call8formal@$result.KeyboardAddDeviceEx$818.0$1$@0) (=> (and (= call0formal@$ListHead$1$6980.24$InsertTailList$81@0 (LegacyDeviceList__GLOBALS Globals)) (= call1formal@$Entry$2$6981.41$InsertTailList$81@0 (Link__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))) (=> (and (and (and (= Res_DEV_OBJ_INIT@22 Res_DEV_OBJ_INIT@21) (= Res_DEV_EXTN@22 Res_DEV_EXTN@21)) (and (Subset (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@39 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0) (Union (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0) (Singleton call1formal@$Entry$2$6981.41$InsertTailList$81@0))) (Subset (Union (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0) (Singleton call1formal@$Entry$2$6981.41$InsertTailList$81@0)) (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@39 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY call0formal@$ListHead$1$6980.24$InsertTailList$81@0)) call0formal@$ListHead$1$6980.24$InsertTailList$81@0)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@35 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@35) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@21 r@@35) (|Select__T@[Int]Int_| Res_DEVICE_STACK@22 r@@35)))
 :qid |KeyboardClassFindMorePortsbpl.2155:63|
 :skolemid |405|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@22 r@@35))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@36 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@36) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@21 r@@36) (|Select__T@[Int]Int_| Res_DEV_EXTN@22 r@@36)))
 :qid |KeyboardClassFindMorePortsbpl.2159:63|
 :skolemid |406|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@22 r@@36))
))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@37 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@37) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@21 r@@37) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@22 r@@37)))
 :qid |KeyboardClassFindMorePortsbpl.2163:63|
 :skolemid |407|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@22 r@@37))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@38 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@38) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@21 r@@38) (|Select__T@[Int]Int_| Res_SPIN_LOCK@22 r@@38)))
 :qid |KeyboardClassFindMorePortsbpl.2167:63|
 :skolemid |408|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@22 r@@38))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@61 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@61) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.MinorFunction__IO_STACK_LOCATION) _m@@61) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.MinorFunction__IO_STACK_LOCATION) _m@@61)))
 :qid |KeyboardClassFindMorePortsbpl.2169:64|
 :skolemid |409|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.MinorFunction__IO_STACK_LOCATION) _m@@61))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@62 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@62) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@62) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@62)))
 :qid |KeyboardClassFindMorePortsbpl.2171:64|
 :skolemid |410|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@62))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@63 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@63) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.DeviceExtension__DEVICE_OBJECT) _m@@63) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.DeviceExtension__DEVICE_OBJECT) _m@@63)))
 :qid |KeyboardClassFindMorePortsbpl.2173:64|
 :skolemid |411|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.DeviceExtension__DEVICE_OBJECT) _m@@63))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@64 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@64) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Self__DEVICE_EXTENSION) _m@@64) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Self__DEVICE_EXTENSION) _m@@64)))
 :qid |KeyboardClassFindMorePortsbpl.2175:64|
 :skolemid |412|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Self__DEVICE_EXTENSION) _m@@64))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@65 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@65) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Started__DEVICE_EXTENSION) _m@@65) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.Started__DEVICE_EXTENSION) _m@@65)))
 :qid |KeyboardClassFindMorePortsbpl.2177:64|
 :skolemid |413|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.Started__DEVICE_EXTENSION) _m@@65))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@66 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@66) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.GrandMaster__GLOBALS) _m@@66) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.GrandMaster__GLOBALS) _m@@66)))
 :qid |KeyboardClassFindMorePortsbpl.2179:64|
 :skolemid |414|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.GrandMaster__GLOBALS) _m@@66))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@67 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@67) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.P_DEVICE_OBJECT) _m@@67) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@38 T.P_DEVICE_OBJECT) _m@@67)))
 :qid |KeyboardClassFindMorePortsbpl.2181:64|
 :skolemid |415|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@39 T.P_DEVICE_OBJECT) _m@@67))
))) (= $successfulCreates$10$4892.28$KeyboardClassFindMorePorts$12@1 (PLUS $successfulCreates$10$4892.28$KeyboardClassFindMorePorts$12@0 1 1))) (and (= Res_DEV_EXTN@34 Res_DEV_EXTN@22) (= Res_DEV_OBJ_INIT@34 Res_DEV_OBJ_INIT@22))) (and (and (= Res_SPIN_LOCK@34 Res_SPIN_LOCK@22) (= Mem@63 Mem@39)) (and (= Res_DEVICE_STACK@34 Res_DEVICE_STACK@22) (= (ControlFlow 0 52) 26))))) label_149_correct))))))
(let ((label_109_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.PUINT2) call2formal@new@0@@0) 0) (= Mem@38 Mem@35)) (=> (and (and (= Res_DEVICE_STACK@21 Res_DEVICE_STACK@19) (= Res_DEV_EXTN@21 Res_DEV_EXTN@19)) (and (= Res_DEV_OBJ_INIT@21 Res_DEV_OBJ_INIT@19) (= Res_SPIN_LOCK@21 Res_SPIN_LOCK@19))) (and (=> (= (ControlFlow 0 65) 52) label_114_true_correct) (=> (= (ControlFlow 0 65) 63) label_114_false_correct))))))
(let ((label_109_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.PUINT2) call2formal@new@0@@0) 0)) (=> (and (and (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.PUINT2) call2formal@new@0@@0)) (= Mem@36 Mem@35)) (and (= Res_DEV_OBJ_INIT@20 Res_DEV_OBJ_INIT@19) (= Res_DEV_EXTN@20 Res_DEV_EXTN@19))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@39 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@39) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@39) (|Select__T@[Int]Int_| Res_DEVICE_STACK@20 r@@39)))
 :qid |KeyboardClassFindMorePortsbpl.2071:63|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@20 r@@39))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@40 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@40) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@40) (|Select__T@[Int]Int_| Res_DEV_EXTN@20 r@@40)))
 :qid |KeyboardClassFindMorePortsbpl.2075:63|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@20 r@@40))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@41 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@41) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@41) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 r@@41)))
 :qid |KeyboardClassFindMorePortsbpl.2079:63|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@20 r@@41))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@42 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@42) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@42) (|Select__T@[Int]Int_| Res_SPIN_LOCK@20 r@@42)))
 :qid |KeyboardClassFindMorePortsbpl.2083:63|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@20 r@@42))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@68 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@68) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.MinorFunction__IO_STACK_LOCATION) _m@@68) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.MinorFunction__IO_STACK_LOCATION) _m@@68)))
 :qid |KeyboardClassFindMorePortsbpl.2085:64|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.MinorFunction__IO_STACK_LOCATION) _m@@68))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@69 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@69) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@69) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@69)))
 :qid |KeyboardClassFindMorePortsbpl.2087:64|
 :skolemid |388|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@69))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@70 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@70) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) _m@@70) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.DeviceExtension__DEVICE_OBJECT) _m@@70)))
 :qid |KeyboardClassFindMorePortsbpl.2089:64|
 :skolemid |389|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.DeviceExtension__DEVICE_OBJECT) _m@@70))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@71 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@71) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) _m@@71) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Self__DEVICE_EXTENSION) _m@@71)))
 :qid |KeyboardClassFindMorePortsbpl.2091:64|
 :skolemid |390|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Self__DEVICE_EXTENSION) _m@@71))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@72 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@72) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Started__DEVICE_EXTENSION) _m@@72) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.Started__DEVICE_EXTENSION) _m@@72)))
 :qid |KeyboardClassFindMorePortsbpl.2093:64|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.Started__DEVICE_EXTENSION) _m@@72))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@73 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@73) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) _m@@73) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.GrandMaster__GLOBALS) _m@@73)))
 :qid |KeyboardClassFindMorePortsbpl.2095:64|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.GrandMaster__GLOBALS) _m@@73))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@74 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@74) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.P_DEVICE_OBJECT) _m@@74) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@35 T.P_DEVICE_OBJECT) _m@@74)))
 :qid |KeyboardClassFindMorePortsbpl.2097:64|
 :skolemid |393|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.P_DEVICE_OBJECT) _m@@74))
))) (and (= Mem@37 (|Store__T@[name][Int]Int_| Mem@36 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@36 T.PUINT2) call2formal@new@0@@0 0))) (= Mem@38 Mem@37))) (and (and (= Res_DEVICE_STACK@21 Res_DEVICE_STACK@20) (= Res_DEV_EXTN@21 Res_DEV_EXTN@20)) (and (= Res_DEV_OBJ_INIT@21 Res_DEV_OBJ_INIT@20) (= Res_SPIN_LOCK@21 Res_SPIN_LOCK@20)))))) (and (=> (= (ControlFlow 0 64) 52) label_114_true_correct) (=> (= (ControlFlow 0 64) 63) label_114_false_correct))))))
(let ((label_91_false_correct  (=> (and (and (= call9formal@$result.IoGetDeviceObjectPointer$21491.0$1$@0 0) (= Mem@33 (|Store__T@[name][Int]Int_| Mem@31 T.StackSize__DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.StackSize__DEVICE_OBJECT) (StackSize__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) (PLUS 1 1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.StackSize__DEVICE_OBJECT) (StackSize__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@31 T.TopPort__DEVICE_EXTENSION) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))))))))) (and (= call1formal@$FullClassName$2$820.28$KeyboardAddDeviceEx$121@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.PUINT2) call2formal@new@0@@0)) (= call2formal@$File$3$821.28$KeyboardAddDeviceEx$121@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.P_FILE_OBJECT) call2formal@new@0)))) (and (=> (= (ControlFlow 0 66) (- 0 74)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) 1)) (=> (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) 1) (and (=> (= (ControlFlow 0 66) (- 0 73)) (forall ((_H_x@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@17 1) _H_x@@1) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1)))) _H_x@@1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2440:18|
 :skolemid |476|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@1)))
))) (=> (forall ((_H_x@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@17 1) _H_x@@2) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2)))) _H_x@@2) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2440:18|
 :skolemid |476|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@2)))
)) (and (=> (= (ControlFlow 0 66) (- 0 72)) (forall ((_H_z@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@3) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3)))) _H_z@@3)))
 :qid |KeyboardClassFindMorePortsbpl.2442:18|
 :skolemid |477|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@3)))
))) (=> (forall ((_H_z@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@4) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4)))) _H_z@@4)))
 :qid |KeyboardClassFindMorePortsbpl.2442:18|
 :skolemid |477|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@4)))
)) (and (=> (= (ControlFlow 0 66) (- 0 71)) (and (Subset Empty (Inverse Res_DEV_EXTN@17 1)) (forall ((_H_z@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@5) true)
 :qid |KeyboardClassFindMorePortsbpl.2444:63|
 :skolemid |478|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@5))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@17 1)) (forall ((_H_z@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@6) true)
 :qid |KeyboardClassFindMorePortsbpl.2444:63|
 :skolemid |478|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@17 1) _H_z@@6))
))) (and (=> (= (ControlFlow 0 66) (- 0 70)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 66) (- 0 69)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 66) (- 0 68)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@1 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@1) (or (= _H_y@@1 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (MINUS_LEFT_PTR _H_y@@1 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2450:235|
 :skolemid |479|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@1))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@2 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@2) (or (= _H_y@@2 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 (MINUS_LEFT_PTR _H_y@@2 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2450:235|
 :skolemid |479|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@2))
)))) (and (=> (= (ControlFlow 0 66) (- 0 67)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) 1) (=> (and (forall ((_H_x@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@19 1) _H_x@@3) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3)))) _H_x@@3) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2456:17|
 :skolemid |480|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@3)))
)) (forall ((_H_z@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@19 1) _H_z@@7) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7)))) _H_z@@7)))
 :qid |KeyboardClassFindMorePortsbpl.2458:17|
 :skolemid |481|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@7)))
))) (=> (and (and (Subset Empty (Inverse Res_DEV_EXTN@19 1)) (forall ((_H_z@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@19 1) _H_z@@8) true)
 :qid |KeyboardClassFindMorePortsbpl.2460:62|
 :skolemid |482|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@19 1) _H_z@@8))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (and (and (and (and (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@3 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@3) (or (= _H_y@@3 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@19 (MINUS_LEFT_PTR _H_y@@3 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2466:234|
 :skolemid |483|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@3))
))))) (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@34 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@33 T.Flink__LIST_ENTRY)))) (and (and (= Res_DEV_OBJ_INIT@19 Res_DEV_OBJ_INIT@17) (= Res_DEV_EXTN@19 Res_DEV_EXTN@17)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@43 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@43) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@43) (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@43)))
 :qid |KeyboardClassFindMorePortsbpl.2479:63|
 :skolemid |484|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@19 r@@43))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@44 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@44) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@44) (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@44)))
 :qid |KeyboardClassFindMorePortsbpl.2483:63|
 :skolemid |485|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@19 r@@44))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@45 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@45) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@45) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@45)))
 :qid |KeyboardClassFindMorePortsbpl.2487:63|
 :skolemid |486|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@19 r@@45))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@46 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@46) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@46) (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@46)))
 :qid |KeyboardClassFindMorePortsbpl.2491:63|
 :skolemid |487|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@19 r@@46))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@75 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@75) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.MinorFunction__IO_STACK_LOCATION) _m@@75) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.MinorFunction__IO_STACK_LOCATION) _m@@75)))
 :qid |KeyboardClassFindMorePortsbpl.2493:64|
 :skolemid |488|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.MinorFunction__IO_STACK_LOCATION) _m@@75))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@76 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@76) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@76) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@76)))
 :qid |KeyboardClassFindMorePortsbpl.2495:64|
 :skolemid |489|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@76))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@77 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@77) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) _m@@77) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.DeviceExtension__DEVICE_OBJECT) _m@@77)))
 :qid |KeyboardClassFindMorePortsbpl.2497:64|
 :skolemid |490|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.DeviceExtension__DEVICE_OBJECT) _m@@77))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@78 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@78) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) _m@@78) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Self__DEVICE_EXTENSION) _m@@78)))
 :qid |KeyboardClassFindMorePortsbpl.2499:64|
 :skolemid |491|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Self__DEVICE_EXTENSION) _m@@78))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@79 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@79) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Started__DEVICE_EXTENSION) _m@@79) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.Started__DEVICE_EXTENSION) _m@@79)))
 :qid |KeyboardClassFindMorePortsbpl.2501:64|
 :skolemid |492|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Started__DEVICE_EXTENSION) _m@@79))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@80 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@80) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) _m@@80) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.GrandMaster__GLOBALS) _m@@80)))
 :qid |KeyboardClassFindMorePortsbpl.2503:64|
 :skolemid |493|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.GrandMaster__GLOBALS) _m@@80))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@81 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@81) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) _m@@81) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@33 T.P_DEVICE_OBJECT) _m@@81)))
 :qid |KeyboardClassFindMorePortsbpl.2505:64|
 :skolemid |494|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) _m@@81))
)))) (and (and (forall ((r@@47 Int) ) (!  (=> (and (and (POW2 r@@47) (POW2 128)) (not (= r@@47 128))) (= (not (= (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) r@@47) 0)) (not (= (BIT_BAND (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128)) r@@47) 0))))
 :qid |KeyboardClassFindMorePortsbpl.3512:16|
 :skolemid |655|
 :pattern ( (BIT_BAND (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128)) r@@47))
)) (= (BIT_BAND (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128)) 128) 0)) (and (= tempBoogie0@2 (BIT_BAND (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (BIT_BNOT 128))) (= Mem@35 (|Store__T@[name][Int]Int_| Mem@34 T.Flags__DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.Flags__DEVICE_OBJECT) (Flags__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@34 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) tempBoogie0@2)))))))) (and (=> (= (ControlFlow 0 66) 64) label_109_true_correct) (=> (= (ControlFlow 0 66) 65) label_109_false_correct)))))))))))))))))))))))))
(let ((label_81_true_correct  (=> (and (and (and (and (and (<= 0 call10formal@$result.KbdCreateClassObject$3353.0$1$@0) (= $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1))))) (and (= Mem@29 (|Store__T@[name][Int]Int_| Mem@22 T.PnP__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.PnP__DEVICE_EXTENSION) (PnP__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) 0))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.TopPort__DEVICE_EXTENSION) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.P_DEVICE_OBJECT) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))))) (and (and (= call3formal@$DeviceObject$4$21495.26$IoGetDeviceObjectPointer$161@0 (TopPort__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1)) (= Mem@30 Mem@29)) (and (= Res_DEV_OBJ_INIT@17 Res_DEV_OBJ_INIT@11) (= Res_DEV_EXTN@17 Res_DEV_EXTN@11)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@48 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@48) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@48) (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@48)))
 :qid |KeyboardClassFindMorePortsbpl.2247:63|
 :skolemid |427|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@17 r@@48))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@49 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@49) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@49) (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@49)))
 :qid |KeyboardClassFindMorePortsbpl.2251:63|
 :skolemid |428|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@17 r@@49))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@50 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@50) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@50) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@50)))
 :qid |KeyboardClassFindMorePortsbpl.2255:63|
 :skolemid |429|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@17 r@@50))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@51 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@51) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@51) (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@51)))
 :qid |KeyboardClassFindMorePortsbpl.2259:63|
 :skolemid |430|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@17 r@@51))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@82 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@82) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.MinorFunction__IO_STACK_LOCATION) _m@@82) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.MinorFunction__IO_STACK_LOCATION) _m@@82)))
 :qid |KeyboardClassFindMorePortsbpl.2261:64|
 :skolemid |431|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.MinorFunction__IO_STACK_LOCATION) _m@@82))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@83 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@83) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@83) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@83)))
 :qid |KeyboardClassFindMorePortsbpl.2263:64|
 :skolemid |432|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@83))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@84 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@84) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) _m@@84) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.DeviceExtension__DEVICE_OBJECT) _m@@84)))
 :qid |KeyboardClassFindMorePortsbpl.2265:64|
 :skolemid |433|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.DeviceExtension__DEVICE_OBJECT) _m@@84))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@85 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@85) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) _m@@85) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.Self__DEVICE_EXTENSION) _m@@85)))
 :qid |KeyboardClassFindMorePortsbpl.2267:64|
 :skolemid |434|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Self__DEVICE_EXTENSION) _m@@85))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@86 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@86) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Started__DEVICE_EXTENSION) _m@@86) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.Started__DEVICE_EXTENSION) _m@@86)))
 :qid |KeyboardClassFindMorePortsbpl.2269:64|
 :skolemid |435|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.Started__DEVICE_EXTENSION) _m@@86))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@87 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@87) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) _m@@87) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.GrandMaster__GLOBALS) _m@@87)))
 :qid |KeyboardClassFindMorePortsbpl.2271:64|
 :skolemid |436|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.GrandMaster__GLOBALS) _m@@87))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@88 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@88) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.P_DEVICE_OBJECT) _m@@88) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@29 T.P_DEVICE_OBJECT) _m@@88)))
 :qid |KeyboardClassFindMorePortsbpl.2273:64|
 :skolemid |437|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.P_DEVICE_OBJECT) _m@@88))
))) (= Mem@31 (|Store__T@[name][Int]Int_| Mem@30 T.TopPort__DEVICE_EXTENSION (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.TopPort__DEVICE_EXTENSION) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@30 T.P_DEVICE_OBJECT) (TopPort__DEVICE_EXTENSION $deviceExtension$5$4887.28$KeyboardClassFindMorePorts$12@1))))))))) (and (=> (= (ControlFlow 0 80) 79) label_91_true_correct) (=> (= (ControlFlow 0 80) 66) label_91_false_correct)))))
(let ((label_81_false_correct  (=> (not (<= 0 call10formal@$result.KbdCreateClassObject$3353.0$1$@0)) (and (=> (= (ControlFlow 0 44) (- 0 51)) (forall ((_H_x@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@11 1) _H_x@@4) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4)))) _H_x@@4) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2514:18|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@4)))
))) (=> (forall ((_H_x@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@11 1) _H_x@@5) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5)))) _H_x@@5) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2514:18|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@5)))
)) (and (=> (= (ControlFlow 0 44) (- 0 50)) (forall ((_H_z@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@9) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@9))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@9)))) _H_z@@9)))
 :qid |KeyboardClassFindMorePortsbpl.2516:18|
 :skolemid |496|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@9)))
))) (=> (forall ((_H_z@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@10) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@10))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@10)))) _H_z@@10)))
 :qid |KeyboardClassFindMorePortsbpl.2516:18|
 :skolemid |496|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@10)))
)) (and (=> (= (ControlFlow 0 44) (- 0 49)) (and (Subset Empty (Inverse Res_DEV_EXTN@11 1)) (forall ((_H_z@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@11) true)
 :qid |KeyboardClassFindMorePortsbpl.2518:63|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@11))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@11 1)) (forall ((_H_z@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@12) true)
 :qid |KeyboardClassFindMorePortsbpl.2518:63|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@12))
))) (and (=> (= (ControlFlow 0 44) (- 0 48)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 44) (- 0 47)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 44) (- 0 46)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@4 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@4) (or (= _H_y@@4 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (MINUS_LEFT_PTR _H_y@@4 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2524:235|
 :skolemid |498|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@4))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@5 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@5) (or (= _H_y@@5 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (MINUS_LEFT_PTR _H_y@@5 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2524:235|
 :skolemid |498|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@5))
)))) (and (=> (= (ControlFlow 0 44) (- 0 45)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (and (forall ((_H_x@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@18 1) _H_x@@6) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6)))) _H_x@@6) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2528:17|
 :skolemid |499|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@6)))
)) (forall ((_H_z@@13 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@13) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13)))) _H_z@@13)))
 :qid |KeyboardClassFindMorePortsbpl.2530:17|
 :skolemid |500|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@13)))
))) (=> (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@18 1)) (forall ((_H_z@@14 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@14) true)
 :qid |KeyboardClassFindMorePortsbpl.2532:62|
 :skolemid |501|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@18 1) _H_z@@14))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@6 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@6) (or (= _H_y@@6 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@18 (MINUS_LEFT_PTR _H_y@@6 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2538:234|
 :skolemid |502|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@6))
)))))) (=> (and (and (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@32 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@18 Res_DEV_OBJ_INIT@11) (= Res_DEV_EXTN@18 Res_DEV_EXTN@11))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@52 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@52) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@52) (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@52)))
 :qid |KeyboardClassFindMorePortsbpl.2551:63|
 :skolemid |503|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@18 r@@52))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@53 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@53) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@53) (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@53)))
 :qid |KeyboardClassFindMorePortsbpl.2555:63|
 :skolemid |504|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@18 r@@53))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@54 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@54) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@54) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@54)))
 :qid |KeyboardClassFindMorePortsbpl.2559:63|
 :skolemid |505|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@18 r@@54))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@55 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@55) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@55) (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@55)))
 :qid |KeyboardClassFindMorePortsbpl.2563:63|
 :skolemid |506|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@18 r@@55))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@89 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@89) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.MinorFunction__IO_STACK_LOCATION) _m@@89) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.MinorFunction__IO_STACK_LOCATION) _m@@89)))
 :qid |KeyboardClassFindMorePortsbpl.2565:64|
 :skolemid |507|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.MinorFunction__IO_STACK_LOCATION) _m@@89))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@90 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@90) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@90) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@90)))
 :qid |KeyboardClassFindMorePortsbpl.2567:64|
 :skolemid |508|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@90))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@91 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@91) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) _m@@91) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) _m@@91)))
 :qid |KeyboardClassFindMorePortsbpl.2569:64|
 :skolemid |509|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.DeviceExtension__DEVICE_OBJECT) _m@@91))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@92 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@92) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) _m@@92) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) _m@@92)))
 :qid |KeyboardClassFindMorePortsbpl.2571:64|
 :skolemid |510|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Self__DEVICE_EXTENSION) _m@@92))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@93 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@93) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Started__DEVICE_EXTENSION) _m@@93) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Started__DEVICE_EXTENSION) _m@@93)))
 :qid |KeyboardClassFindMorePortsbpl.2573:64|
 :skolemid |511|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.Started__DEVICE_EXTENSION) _m@@93))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@94 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@94) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) _m@@94) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) _m@@94)))
 :qid |KeyboardClassFindMorePortsbpl.2575:64|
 :skolemid |512|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.GrandMaster__GLOBALS) _m@@94))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@95 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@95) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.P_DEVICE_OBJECT) _m@@95) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) _m@@95)))
 :qid |KeyboardClassFindMorePortsbpl.2577:64|
 :skolemid |513|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@32 T.P_DEVICE_OBJECT) _m@@95))
))) (and (= Res_DEV_EXTN@34 Res_DEV_EXTN@18) (= Res_DEV_OBJ_INIT@34 Res_DEV_OBJ_INIT@18))) (and (and (= Res_SPIN_LOCK@34 Res_SPIN_LOCK@18) (= Mem@63 Mem@32)) (and (= Res_DEVICE_STACK@34 Res_DEVICE_STACK@18) (= (ControlFlow 0 44) 26)))))) label_149_correct))))))))))))))))))))
(let ((label_75_true_correct  (=> (< $i$8$4890.28$KeyboardClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.UINT4) call2formal@new@0@@2)) (=> (and (= Mem@21 (|Store__T@[name][Int]Int_| Mem@20 T.UINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.UINT2) (PLUS (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 2 (MINUS_BOTH_PTR_OR_BOTH_INT (BINARY_BOTH_INT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@3)) 2) 1 1)) (PLUS 48 1 $i$8$4890.28$KeyboardClassFindMorePorts$12@1)))) (= call1formal@$TmpDeviceExtension$2$3355.28$KbdCreateClassObject$201@0 (InitExtension__GLOBALS Globals))) (and (=> (= (ControlFlow 0 81) (- 0 88)) (forall ((_H_x@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@10 1) _H_x@@7) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7)))) _H_x@@7) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2282:18|
 :skolemid |438|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@7)))
))) (=> (forall ((_H_x@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@10 1) _H_x@@8) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8)))) _H_x@@8) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2282:18|
 :skolemid |438|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@8)))
)) (and (=> (= (ControlFlow 0 81) (- 0 87)) (forall ((_H_z@@15 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@15) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@15))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@15)))) _H_z@@15)))
 :qid |KeyboardClassFindMorePortsbpl.2284:18|
 :skolemid |439|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@15)))
))) (=> (forall ((_H_z@@16 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@16) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@16))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@16)))) _H_z@@16)))
 :qid |KeyboardClassFindMorePortsbpl.2284:18|
 :skolemid |439|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@16)))
)) (and (=> (= (ControlFlow 0 81) (- 0 86)) (and (Subset Empty (Inverse Res_DEV_EXTN@10 1)) (forall ((_H_z@@17 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@17) true)
 :qid |KeyboardClassFindMorePortsbpl.2286:63|
 :skolemid |440|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@17))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@10 1)) (forall ((_H_z@@18 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@18) true)
 :qid |KeyboardClassFindMorePortsbpl.2286:63|
 :skolemid |440|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@18))
))) (and (=> (= (ControlFlow 0 81) (- 0 85)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 81) (- 0 84)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 81) (- 0 83)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@7 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@7) (or (= _H_y@@7 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (MINUS_LEFT_PTR _H_y@@7 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2292:235|
 :skolemid |441|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@7))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@8 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@8) (or (= _H_y@@8 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (MINUS_LEFT_PTR _H_y@@8 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2292:235|
 :skolemid |441|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@8))
)))) (and (=> (= (ControlFlow 0 81) (- 0 82)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (and (forall ((_H_x@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@11 1) _H_x@@9) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9)))) _H_x@@9) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2296:17|
 :skolemid |442|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@9)))
)) (forall ((_H_z@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@19) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@19))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@19)))) _H_z@@19)))
 :qid |KeyboardClassFindMorePortsbpl.2298:17|
 :skolemid |443|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@19)))
))) (=> (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@11 1)) (forall ((_H_z@@20 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@20) true)
 :qid |KeyboardClassFindMorePortsbpl.2300:62|
 :skolemid |444|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@11 1) _H_z@@20))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@9 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@9) (or (= _H_y@@9 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (MINUS_LEFT_PTR _H_y@@9 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2306:234|
 :skolemid |445|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@9))
)))))) (=> (and (and (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@22 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@21 T.Flink__LIST_ENTRY))) (and (=> (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1) 0))) (=> (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0) (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) 0))))) (and (and (=> (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) 1)) (=> (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) 1) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) 1)))) (and (=> (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) 0) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) 0))) (=> (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0) (and (= Res_DEV_OBJ_INIT@11 (|Store__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1) 1)) (= Res_DEV_EXTN@11 (|Store__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) 1))))))) (and (and (and (=> (not (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0)) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@11 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1))))))) (=> (not (>= call10formal@$result.KbdCreateClassObject$3353.0$1$@0 0)) (and (= Res_DEV_OBJ_INIT@11 Res_DEV_OBJ_INIT@10) (= Res_DEV_EXTN@11 Res_DEV_EXTN@10)))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@56 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@56) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@56) (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@56)))
 :qid |KeyboardClassFindMorePortsbpl.2331:63|
 :skolemid |446|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@11 r@@56))
)))) (and (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))))) (forall ((r@@57 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@57) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1))) r@@57)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@57) (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@57)))
 :qid |KeyboardClassFindMorePortsbpl.2335:231|
 :skolemid |447|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@11 r@@57))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1)))) (forall ((r@@58 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty r@@58) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) call2formal@new@0@@1) r@@58)) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@58) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@58)))
 :qid |KeyboardClassFindMorePortsbpl.2339:160|
 :skolemid |448|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@11 r@@58))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@59 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@59) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@59) (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@59)))
 :qid |KeyboardClassFindMorePortsbpl.2343:63|
 :skolemid |449|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@11 r@@59))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@96 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@96) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.MinorFunction__IO_STACK_LOCATION) _m@@96) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.MinorFunction__IO_STACK_LOCATION) _m@@96)))
 :qid |KeyboardClassFindMorePortsbpl.2345:64|
 :skolemid |450|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.MinorFunction__IO_STACK_LOCATION) _m@@96))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@97 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@97) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@97) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@97)))
 :qid |KeyboardClassFindMorePortsbpl.2347:64|
 :skolemid |451|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@97))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@98 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@98) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) _m@@98) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.DeviceExtension__DEVICE_OBJECT) _m@@98)))
 :qid |KeyboardClassFindMorePortsbpl.2349:64|
 :skolemid |452|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.DeviceExtension__DEVICE_OBJECT) _m@@98))
))))) (and (and (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@99 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@99) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) _m@@99) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Self__DEVICE_EXTENSION) _m@@99)))
 :qid |KeyboardClassFindMorePortsbpl.2351:66|
 :skolemid |453|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Self__DEVICE_EXTENSION) _m@@99))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@100 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@100) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Started__DEVICE_EXTENSION) _m@@100) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.Started__DEVICE_EXTENSION) _m@@100)))
 :qid |KeyboardClassFindMorePortsbpl.2353:64|
 :skolemid |454|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.Started__DEVICE_EXTENSION) _m@@100))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@101 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@101) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) _m@@101) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.GrandMaster__GLOBALS) _m@@101)))
 :qid |KeyboardClassFindMorePortsbpl.2355:64|
 :skolemid |455|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.GrandMaster__GLOBALS) _m@@101))
))) (and (Subset Empty (Union (Union Empty Empty) (Singleton call2formal@new@0@@1))) (forall ((_m@@102 Int) ) (!  (or (or (|Select__T@[Int]Bool_| Empty _m@@102) (= _m@@102 call2formal@new@0@@1)) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) _m@@102) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@21 T.P_DEVICE_OBJECT) _m@@102)))
 :qid |KeyboardClassFindMorePortsbpl.2357:137|
 :skolemid |456|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@22 T.P_DEVICE_OBJECT) _m@@102))
))))))) (and (=> (= (ControlFlow 0 81) 80) label_81_true_correct) (=> (= (ControlFlow 0 81) 44) label_81_false_correct)))))))))))))))))))))))
(let ((GeneratedUnifiedExit_correct  (and (=> (= (ControlFlow 0 2) (- 0 7)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@10) (or (= _H_y@@10 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (MINUS_LEFT_PTR _H_y@@10 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2812:234|
 :skolemid |573|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@10))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@11) (or (= _H_y@@11 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (MINUS_LEFT_PTR _H_y@@11 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2812:234|
 :skolemid |573|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@11))
)))) (and (=> (= (ControlFlow 0 2) (- 0 4)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (forall ((_H_x@@10 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@35 1) _H_x@@10) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10)))) _H_x@@10) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2816:17|
 :skolemid |574|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@10)))
))) (=> (forall ((_H_x@@11 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@35 1) _H_x@@11) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11)))) _H_x@@11) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@35 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2816:17|
 :skolemid |574|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@11)))
)) (=> (= (ControlFlow 0 2) (- 0 1)) (and (forall ((_H_z@@21 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@35 1) _H_z@@21) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@35 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21)))) _H_z@@21)))
 :qid |KeyboardClassFindMorePortsbpl.2818:18|
 :skolemid |575|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@64 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@21)))
)) (and (Subset Empty (Inverse Res_DEV_EXTN@35 1)) (forall ((_H_z@@22 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@35 1) _H_z@@22) true)
 :qid |KeyboardClassFindMorePortsbpl.2818:416|
 :skolemid |576|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@35 1) _H_z@@22))
)))))))))))))))))
(let ((label_1_correct  (=> (forall ((x@@323 Int) ) (!  (or (= x@@323 call2formal@new@0@@4) (= (|Select__T@[Int]name_| alloc@12 x@@323) (|Select__T@[Int]name_| alloc@13 x@@323)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@13 x@@323))
)) (=> (and (and (and (and (= (|Select__T@[Int]name_| alloc@13 call2formal@new@0@@4) FREED) (forall ((x@@324 Int) ) (!  (or (= x@@324 call2formal@new@0@@5) (= (|Select__T@[Int]name_| alloc@13 x@@324) (|Select__T@[Int]name_| alloc@14 x@@324)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@14 x@@324))
))) (and (= (|Select__T@[Int]name_| alloc@14 call2formal@new@0@@5) FREED) (forall ((x@@325 Int) ) (!  (or (= x@@325 call2formal@new@0@@1) (= (|Select__T@[Int]name_| alloc@14 x@@325) (|Select__T@[Int]name_| alloc@15 x@@325)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@15 x@@325))
)))) (and (and (= (|Select__T@[Int]name_| alloc@15 call2formal@new@0@@1) FREED) (forall ((x@@326 Int) ) (!  (or (= x@@326 call2formal@new@0@@6) (= (|Select__T@[Int]name_| alloc@15 x@@326) (|Select__T@[Int]name_| alloc@16 x@@326)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@16 x@@326))
))) (and (= (|Select__T@[Int]name_| alloc@16 call2formal@new@0@@6) FREED) (forall ((x@@327 Int) ) (!  (or (= x@@327 call2formal@new@0) (= (|Select__T@[Int]name_| alloc@16 x@@327) (|Select__T@[Int]name_| alloc@17 x@@327)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@17 x@@327))
))))) (and (and (and (= (|Select__T@[Int]name_| alloc@17 call2formal@new@0) FREED) (forall ((x@@328 Int) ) (!  (or (= x@@328 call2formal@new@0@@0) (= (|Select__T@[Int]name_| alloc@17 x@@328) (|Select__T@[Int]name_| alloc@18 x@@328)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@18 x@@328))
))) (and (= (|Select__T@[Int]name_| alloc@18 call2formal@new@0@@0) FREED) (forall ((x@@329 Int) ) (!  (or (= x@@329 call2formal@new@0@@3) (= (|Select__T@[Int]name_| alloc@18 x@@329) (|Select__T@[Int]name_| alloc@19 x@@329)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@19 x@@329))
)))) (and (and (= (|Select__T@[Int]name_| alloc@19 call2formal@new@0@@3) FREED) (forall ((x@@330 Int) ) (!  (or (= x@@330 call2formal@new@0@@2) (= (|Select__T@[Int]name_| alloc@19 x@@330) (|Select__T@[Int]name_| alloc@20 x@@330)))
 :qid |KeyboardClassFindMorePortsbpl.1870:17|
 :skolemid |340|
 :pattern ( (|Select__T@[Int]name_| alloc@20 x@@330))
))) (and (= (|Select__T@[Int]name_| alloc@20 call2formal@new@0@@2) FREED) (forall ((m@@2 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@2)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@2)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@16 m@@2) (|Select__T@[Int]Int_| Res_DEVICE_STACK m@@2)))
 :qid |KeyboardClassFindMorePortsbpl.2930:16|
 :skolemid |578|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@16 m@@2))
)))))) (=> (and (and (and (and (and (and (forall ((m@@3 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@3)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@3)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@16 m@@3) (|Select__T@[Int]Int_| Res_DEV_EXTN m@@3)))
 :qid |KeyboardClassFindMorePortsbpl.2931:16|
 :skolemid |579|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@16 m@@3))
)) (forall ((m@@4 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@4)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@4)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@16 m@@4) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT m@@4)))
 :qid |KeyboardClassFindMorePortsbpl.2932:16|
 :skolemid |580|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@16 m@@4))
))) (and (forall ((m@@5 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@5)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@5)) ALLOCATED))) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@16 m@@5) (|Select__T@[Int]Int_| Res_SPIN_LOCK m@@5)))
 :qid |KeyboardClassFindMorePortsbpl.2933:16|
 :skolemid |581|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@16 m@@5))
)) (forall ((m@@6 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@6)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@6)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A256UINT2) m@@6) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A256UINT2) m@@6)))
 :qid |KeyboardClassFindMorePortsbpl.2934:16|
 :skolemid |582|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A256UINT2) m@@6))
)))) (and (and (forall ((m@@7 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@7)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@7)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A2UINT2) m@@7) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A2UINT2) m@@7)))
 :qid |KeyboardClassFindMorePortsbpl.2935:16|
 :skolemid |583|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A2UINT2) m@@7))
)) (forall ((m@@8 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@8)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@8)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A4UINT4) m@@8) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A4UINT4) m@@8)))
 :qid |KeyboardClassFindMorePortsbpl.2936:16|
 :skolemid |584|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A4UINT4) m@@8))
))) (and (forall ((m@@9 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@9)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@9)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A5UINT2) m@@9) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A5UINT2) m@@9)))
 :qid |KeyboardClassFindMorePortsbpl.2937:16|
 :skolemid |585|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A5UINT2) m@@9))
)) (forall ((m@@10 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@10)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@10)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A88CHAR) m@@10) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A88CHAR) m@@10)))
 :qid |KeyboardClassFindMorePortsbpl.2938:16|
 :skolemid |586|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A88CHAR) m@@10))
))))) (and (and (and (forall ((m@@11 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@11)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@11)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A9UINT2) m@@11) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.A9UINT2) m@@11)))
 :qid |KeyboardClassFindMorePortsbpl.2939:16|
 :skolemid |587|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.A9UINT2) m@@11))
)) (forall ((m@@12 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@12)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@12)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.AssocClassList__GLOBALS) m@@12) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.AssocClassList__GLOBALS) m@@12)))
 :qid |KeyboardClassFindMorePortsbpl.2940:16|
 :skolemid |588|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.AssocClassList__GLOBALS) m@@12))
))) (and (forall ((m@@13 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@13)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@13)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.BaseClassName__GLOBALS) m@@13) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.BaseClassName__GLOBALS) m@@13)))
 :qid |KeyboardClassFindMorePortsbpl.2941:16|
 :skolemid |589|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.BaseClassName__GLOBALS) m@@13))
)) (forall ((m@@14 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@14)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@14)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Buffer__UNICODE_STRING) m@@14) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Buffer__UNICODE_STRING) m@@14)))
 :qid |KeyboardClassFindMorePortsbpl.2942:16|
 :skolemid |590|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Buffer__UNICODE_STRING) m@@14))
)))) (and (and (forall ((m@@15 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@15)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@15)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.CHAR) m@@15) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CHAR) m@@15)))
 :qid |KeyboardClassFindMorePortsbpl.2943:16|
 :skolemid |591|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.CHAR) m@@15))
)) (forall ((m@@16 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@16)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@16)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.CurrentStackLocation___unnamed_4_f19b65c1) m@@16) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.CurrentStackLocation___unnamed_4_f19b65c1) m@@16)))
 :qid |KeyboardClassFindMorePortsbpl.2944:16|
 :skolemid |592|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.CurrentStackLocation___unnamed_4_f19b65c1) m@@16))
))) (and (forall ((m@@17 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@17)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@17)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DataIn__DEVICE_EXTENSION) m@@17) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DataIn__DEVICE_EXTENSION) m@@17)))
 :qid |KeyboardClassFindMorePortsbpl.2945:16|
 :skolemid |593|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DataIn__DEVICE_EXTENSION) m@@17))
)) (forall ((m@@18 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@18)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@18)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DataOut__DEVICE_EXTENSION) m@@18) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DataOut__DEVICE_EXTENSION) m@@18)))
 :qid |KeyboardClassFindMorePortsbpl.2946:16|
 :skolemid |594|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DataOut__DEVICE_EXTENSION) m@@18))
)))))) (and (and (and (and (forall ((m@@19 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@19)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@19)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DeviceExtension__DEVICE_OBJECT) m@@19) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) m@@19)))
 :qid |KeyboardClassFindMorePortsbpl.2947:16|
 :skolemid |595|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.DeviceExtension__DEVICE_OBJECT) m@@19))
)) (forall ((m@@20 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@20)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@20)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.File__DEVICE_EXTENSION) m@@20) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.File__DEVICE_EXTENSION) m@@20)))
 :qid |KeyboardClassFindMorePortsbpl.2948:16|
 :skolemid |596|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.File__DEVICE_EXTENSION) m@@20))
))) (and (forall ((m@@21 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@21)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@21)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.File__PORT) m@@21) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.File__PORT) m@@21)))
 :qid |KeyboardClassFindMorePortsbpl.2949:16|
 :skolemid |597|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.File__PORT) m@@21))
)) (forall ((m@@22 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@22)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@22)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Flags__DEVICE_OBJECT) m@@22) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flags__DEVICE_OBJECT) m@@22)))
 :qid |KeyboardClassFindMorePortsbpl.2950:16|
 :skolemid |598|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Flags__DEVICE_OBJECT) m@@22))
)))) (and (and (forall ((m@@23 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@23)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@23)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Flink__LIST_ENTRY) m@@23) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) m@@23)))
 :qid |KeyboardClassFindMorePortsbpl.2951:16|
 :skolemid |599|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Flink__LIST_ENTRY) m@@23))
)) (forall ((m@@24 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@24)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@24)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Free__PORT) m@@24) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Free__PORT) m@@24)))
 :qid |KeyboardClassFindMorePortsbpl.2952:16|
 :skolemid |600|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Free__PORT) m@@24))
))) (and (forall ((m@@25 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@25)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@25)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.GrandMaster__GLOBALS) m@@25) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) m@@25)))
 :qid |KeyboardClassFindMorePortsbpl.2953:16|
 :skolemid |601|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.GrandMaster__GLOBALS) m@@25))
)) (forall ((m@@26 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@26)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@26)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.INT4) m@@26) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.INT4) m@@26)))
 :qid |KeyboardClassFindMorePortsbpl.2954:16|
 :skolemid |602|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.INT4) m@@26))
))))) (and (and (and (forall ((m@@27 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@27)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@27)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.InitExtension__GLOBALS) m@@27) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.InitExtension__GLOBALS) m@@27)))
 :qid |KeyboardClassFindMorePortsbpl.2955:16|
 :skolemid |603|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.InitExtension__GLOBALS) m@@27))
)) (forall ((m@@28 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@28)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@28)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.InputData__DEVICE_EXTENSION) m@@28) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.InputData__DEVICE_EXTENSION) m@@28)))
 :qid |KeyboardClassFindMorePortsbpl.2956:16|
 :skolemid |604|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.InputData__DEVICE_EXTENSION) m@@28))
))) (and (forall ((m@@29 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@29)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@29)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.LegacyDeviceList__GLOBALS) m@@29) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.LegacyDeviceList__GLOBALS) m@@29)))
 :qid |KeyboardClassFindMorePortsbpl.2957:16|
 :skolemid |605|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.LegacyDeviceList__GLOBALS) m@@29))
)) (forall ((m@@30 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@30)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@30)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Length__UNICODE_STRING) m@@30) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Length__UNICODE_STRING) m@@30)))
 :qid |KeyboardClassFindMorePortsbpl.2958:16|
 :skolemid |606|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Length__UNICODE_STRING) m@@30))
)))) (and (and (forall ((m@@31 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@31)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@31)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Link__DEVICE_EXTENSION) m@@31) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Link__DEVICE_EXTENSION) m@@31)))
 :qid |KeyboardClassFindMorePortsbpl.2959:16|
 :skolemid |607|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Link__DEVICE_EXTENSION) m@@31))
)) (forall ((m@@32 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@32)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@32)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.MaximumLength__UNICODE_STRING) m@@32) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MaximumLength__UNICODE_STRING) m@@32)))
 :qid |KeyboardClassFindMorePortsbpl.2960:16|
 :skolemid |608|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.MaximumLength__UNICODE_STRING) m@@32))
))) (and (forall ((m@@33 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@33)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@33)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.MinorFunction__IO_STACK_LOCATION) m@@33) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.MinorFunction__IO_STACK_LOCATION) m@@33)))
 :qid |KeyboardClassFindMorePortsbpl.2961:16|
 :skolemid |609|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.MinorFunction__IO_STACK_LOCATION) m@@33))
)) (forall ((m@@34 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@34)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@34)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Mutex__GLOBALS) m@@34) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Mutex__GLOBALS) m@@34)))
 :qid |KeyboardClassFindMorePortsbpl.2962:16|
 :skolemid |610|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Mutex__GLOBALS) m@@34))
))))))) (and (and (and (and (and (forall ((m@@35 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@35)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@35)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.NumberLegacyPorts__GLOBALS) m@@35) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.NumberLegacyPorts__GLOBALS) m@@35)))
 :qid |KeyboardClassFindMorePortsbpl.2963:16|
 :skolemid |611|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.NumberLegacyPorts__GLOBALS) m@@35))
)) (forall ((m@@36 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@36)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@36)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PCHAR) m@@36) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PCHAR) m@@36)))
 :qid |KeyboardClassFindMorePortsbpl.2964:16|
 :skolemid |612|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PCHAR) m@@36))
))) (and (forall ((m@@37 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@37)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@37)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PPUINT2) m@@37) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PPUINT2) m@@37)))
 :qid |KeyboardClassFindMorePortsbpl.2965:16|
 :skolemid |613|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PPUINT2) m@@37))
)) (forall ((m@@38 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@38)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@38)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PP_DEVICE_OBJECT) m@@38) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PP_DEVICE_OBJECT) m@@38)))
 :qid |KeyboardClassFindMorePortsbpl.2966:16|
 :skolemid |614|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PP_DEVICE_OBJECT) m@@38))
)))) (and (and (forall ((m@@39 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@39)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@39)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PP_FILE_OBJECT) m@@39) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PP_FILE_OBJECT) m@@39)))
 :qid |KeyboardClassFindMorePortsbpl.2967:16|
 :skolemid |615|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PP_FILE_OBJECT) m@@39))
)) (forall ((m@@40 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@40)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@40)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PUINT2) m@@40) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PUINT2) m@@40)))
 :qid |KeyboardClassFindMorePortsbpl.2968:16|
 :skolemid |616|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PUINT2) m@@40))
))) (and (forall ((m@@41 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@41)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@41)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PUINT4) m@@41) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PUINT4) m@@41)))
 :qid |KeyboardClassFindMorePortsbpl.2969:16|
 :skolemid |617|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PUINT4) m@@41))
)) (forall ((m@@42 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@42)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@42)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PVOID) m@@42) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PVOID) m@@42)))
 :qid |KeyboardClassFindMorePortsbpl.2970:16|
 :skolemid |618|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PVOID) m@@42))
))))) (and (and (and (forall ((m@@43 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@43)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@43)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DEVICE_EXTENSION) m@@43) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_EXTENSION) m@@43)))
 :qid |KeyboardClassFindMorePortsbpl.2971:16|
 :skolemid |619|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DEVICE_EXTENSION) m@@43))
)) (forall ((m@@44 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@44)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@44)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DEVICE_OBJECT) m@@44) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT) m@@44)))
 :qid |KeyboardClassFindMorePortsbpl.2972:16|
 :skolemid |620|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DEVICE_OBJECT) m@@44))
))) (and (forall ((m@@45 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@45)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@45)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DRIVER_OBJECT) m@@45) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DRIVER_OBJECT) m@@45)))
 :qid |KeyboardClassFindMorePortsbpl.2973:16|
 :skolemid |621|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_DRIVER_OBJECT) m@@45))
)) (forall ((m@@46 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@46)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@46)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_FAST_MUTEX) m@@46) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_FAST_MUTEX) m@@46)))
 :qid |KeyboardClassFindMorePortsbpl.2974:16|
 :skolemid |622|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_FAST_MUTEX) m@@46))
)))) (and (and (forall ((m@@47 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@47)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@47)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_FILE_OBJECT) m@@47) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_FILE_OBJECT) m@@47)))
 :qid |KeyboardClassFindMorePortsbpl.2975:16|
 :skolemid |623|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_FILE_OBJECT) m@@47))
)) (forall ((m@@48 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@48)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@48)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_KEYBOARD_INPUT_DATA) m@@48) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_KEYBOARD_INPUT_DATA) m@@48)))
 :qid |KeyboardClassFindMorePortsbpl.2976:16|
 :skolemid |624|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_KEYBOARD_INPUT_DATA) m@@48))
))) (and (forall ((m@@49 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@49)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@49)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_LIST_ENTRY) m@@49) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_LIST_ENTRY) m@@49)))
 :qid |KeyboardClassFindMorePortsbpl.2977:16|
 :skolemid |625|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_LIST_ENTRY) m@@49))
)) (forall ((m@@50 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@50)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@50)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_UNICODE_STRING) m@@50) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_UNICODE_STRING) m@@50)))
 :qid |KeyboardClassFindMorePortsbpl.2978:16|
 :skolemid |626|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.P_UNICODE_STRING) m@@50))
)))))) (and (and (and (and (forall ((m@@51 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@51)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@51)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PnP__DEVICE_EXTENSION) m@@51) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PnP__DEVICE_EXTENSION) m@@51)))
 :qid |KeyboardClassFindMorePortsbpl.2979:16|
 :skolemid |627|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PnP__DEVICE_EXTENSION) m@@51))
)) (forall ((m@@52 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@52)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@52)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Port__PORT) m@@52) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Port__PORT) m@@52)))
 :qid |KeyboardClassFindMorePortsbpl.2980:16|
 :skolemid |628|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Port__PORT) m@@52))
))) (and (forall ((m@@53 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@53)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@53)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PortsServiced__GLOBALS) m@@53) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.PortsServiced__GLOBALS) m@@53)))
 :qid |KeyboardClassFindMorePortsbpl.2981:16|
 :skolemid |629|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.PortsServiced__GLOBALS) m@@53))
)) (forall ((m@@54 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@54)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@54)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Self__DEVICE_EXTENSION) m@@54) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) m@@54)))
 :qid |KeyboardClassFindMorePortsbpl.2982:16|
 :skolemid |630|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Self__DEVICE_EXTENSION) m@@54))
)))) (and (and (forall ((m@@55 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@55)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@55)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.StackSize__DEVICE_OBJECT) m@@55) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.StackSize__DEVICE_OBJECT) m@@55)))
 :qid |KeyboardClassFindMorePortsbpl.2983:16|
 :skolemid |631|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.StackSize__DEVICE_OBJECT) m@@55))
)) (forall ((m@@56 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@56)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@56)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Started__DEVICE_EXTENSION) m@@56) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Started__DEVICE_EXTENSION) m@@56)))
 :qid |KeyboardClassFindMorePortsbpl.2984:16|
 :skolemid |632|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.Started__DEVICE_EXTENSION) m@@56))
))) (and (forall ((m@@57 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@57)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@57)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.TopPort__DEVICE_EXTENSION) m@@57) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.TopPort__DEVICE_EXTENSION) m@@57)))
 :qid |KeyboardClassFindMorePortsbpl.2985:16|
 :skolemid |633|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.TopPort__DEVICE_EXTENSION) m@@57))
)) (forall ((m@@58 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@58)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@58)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UCHAR) m@@58) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UCHAR) m@@58)))
 :qid |KeyboardClassFindMorePortsbpl.2986:16|
 :skolemid |634|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UCHAR) m@@58))
))))) (and (and (and (forall ((m@@59 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@59)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@59)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UINT2) m@@59) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UINT2) m@@59)))
 :qid |KeyboardClassFindMorePortsbpl.2987:16|
 :skolemid |635|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UINT2) m@@59))
)) (forall ((m@@60 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@60)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@60)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UINT4) m@@60) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UINT4) m@@60)))
 :qid |KeyboardClassFindMorePortsbpl.2988:16|
 :skolemid |636|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UINT4) m@@60))
))) (and (forall ((m@@61 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@61)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@61)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UnitId__DEVICE_EXTENSION) m@@61) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.UnitId__DEVICE_EXTENSION) m@@61)))
 :qid |KeyboardClassFindMorePortsbpl.2989:16|
 :skolemid |637|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T.UnitId__DEVICE_EXTENSION) m@@61))
)) (forall ((m@@62 Int) ) (!  (=> (and (not (= (|Select__T@[Int]name_| alloc@20 (Base m@@62)) ALLOCATED)) (not (= (|Select__T@[Int]name_| alloc (Base m@@62)) ALLOCATED))) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T._POOL_TYPE) m@@62) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T._POOL_TYPE) m@@62)))
 :qid |KeyboardClassFindMorePortsbpl.2990:16|
 :skolemid |638|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@28 T._POOL_TYPE) m@@62))
)))) (and (and (= Res_DEV_OBJ_INIT@35 Res_DEV_OBJ_INIT@16) (= Res_DEV_EXTN@35 Res_DEV_EXTN@16)) (and (= Mem@64 Mem@28) (= (ControlFlow 0 8) 2))))))) GeneratedUnifiedExit_correct)))))
(let ((label_155_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.PUINT2) call2formal@new@0@@0) 0) (=> (and (= Mem@28 Mem@26) (= Res_DEVICE_STACK@16 Res_DEVICE_STACK@14)) (=> (and (and (= Res_DEV_EXTN@16 Res_DEV_EXTN@14) (= Res_DEV_OBJ_INIT@16 Res_DEV_OBJ_INIT@14)) (and (= Res_SPIN_LOCK@16 Res_SPIN_LOCK@14) (= (ControlFlow 0 10) 8))) label_1_correct)))))
(let ((label_155_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.PUINT2) call2formal@new@0@@0) 0)) (=> (and (and (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@2 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.PUINT2) call2formal@new@0@@0)) (= Mem@27 Mem@26)) (and (= Res_DEV_OBJ_INIT@15 Res_DEV_OBJ_INIT@14) (= Res_DEV_EXTN@15 Res_DEV_EXTN@14))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@60 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@60) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@14 r@@60) (|Select__T@[Int]Int_| Res_DEVICE_STACK@15 r@@60)))
 :qid |KeyboardClassFindMorePortsbpl.2071:63|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@15 r@@60))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@61 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@61) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@14 r@@61) (|Select__T@[Int]Int_| Res_DEV_EXTN@15 r@@61)))
 :qid |KeyboardClassFindMorePortsbpl.2075:63|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@15 r@@61))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@62 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@62) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@14 r@@62) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@15 r@@62)))
 :qid |KeyboardClassFindMorePortsbpl.2079:63|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@15 r@@62))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@63 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@63) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@14 r@@63) (|Select__T@[Int]Int_| Res_SPIN_LOCK@15 r@@63)))
 :qid |KeyboardClassFindMorePortsbpl.2083:63|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@15 r@@63))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@103 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@103) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MinorFunction__IO_STACK_LOCATION) _m@@103) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.MinorFunction__IO_STACK_LOCATION) _m@@103)))
 :qid |KeyboardClassFindMorePortsbpl.2085:64|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.MinorFunction__IO_STACK_LOCATION) _m@@103))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@104 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@104) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@104) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@104)))
 :qid |KeyboardClassFindMorePortsbpl.2087:64|
 :skolemid |388|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@104))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@105 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@105) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DeviceExtension__DEVICE_OBJECT) _m@@105) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.DeviceExtension__DEVICE_OBJECT) _m@@105)))
 :qid |KeyboardClassFindMorePortsbpl.2089:64|
 :skolemid |389|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.DeviceExtension__DEVICE_OBJECT) _m@@105))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@106 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@106) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Self__DEVICE_EXTENSION) _m@@106) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Self__DEVICE_EXTENSION) _m@@106)))
 :qid |KeyboardClassFindMorePortsbpl.2091:64|
 :skolemid |390|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Self__DEVICE_EXTENSION) _m@@106))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@107 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@107) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Started__DEVICE_EXTENSION) _m@@107) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.Started__DEVICE_EXTENSION) _m@@107)))
 :qid |KeyboardClassFindMorePortsbpl.2093:64|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.Started__DEVICE_EXTENSION) _m@@107))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@108 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@108) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.GrandMaster__GLOBALS) _m@@108) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.GrandMaster__GLOBALS) _m@@108)))
 :qid |KeyboardClassFindMorePortsbpl.2095:64|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.GrandMaster__GLOBALS) _m@@108))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@109 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@109) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_OBJECT) _m@@109) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@26 T.P_DEVICE_OBJECT) _m@@109)))
 :qid |KeyboardClassFindMorePortsbpl.2097:64|
 :skolemid |393|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@27 T.P_DEVICE_OBJECT) _m@@109))
))) (and (= Mem@28 Mem@27) (= Res_DEVICE_STACK@16 Res_DEVICE_STACK@15))) (and (and (= Res_DEV_EXTN@16 Res_DEV_EXTN@15) (= Res_DEV_OBJ_INIT@16 Res_DEV_OBJ_INIT@15)) (and (= Res_SPIN_LOCK@16 Res_SPIN_LOCK@15) (= (ControlFlow 0 9) 8)))))) label_1_correct))))
(let ((label_151_false_correct  (=> (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0) (= Res_SPIN_LOCK@14 Res_SPIN_LOCK@12)) (=> (and (and (= Res_DEV_OBJ_INIT@14 Res_DEV_OBJ_INIT@12) (= Res_DEV_EXTN@14 Res_DEV_EXTN@12)) (and (= Res_DEVICE_STACK@14 Res_DEVICE_STACK@12) (= Mem@26 Mem@24))) (and (=> (= (ControlFlow 0 12) 9) label_155_true_correct) (=> (= (ControlFlow 0 12) 10) label_155_false_correct))))))
(let ((label_151_true_correct  (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0)) (=> (and (and (and (and (and (= call0formal@$P$1$14901.35$ExFreePoolWithTag$81@0@@3 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3))) (= Mem@25 Mem@24)) (and (= Res_DEV_OBJ_INIT@13 Res_DEV_OBJ_INIT@12) (= Res_DEV_EXTN@13 Res_DEV_EXTN@12))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@64 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@64) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@12 r@@64) (|Select__T@[Int]Int_| Res_DEVICE_STACK@13 r@@64)))
 :qid |KeyboardClassFindMorePortsbpl.2071:63|
 :skolemid |383|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@13 r@@64))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@65 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@65) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@12 r@@65) (|Select__T@[Int]Int_| Res_DEV_EXTN@13 r@@65)))
 :qid |KeyboardClassFindMorePortsbpl.2075:63|
 :skolemid |384|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@13 r@@65))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@66 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@66) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@12 r@@66) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@13 r@@66)))
 :qid |KeyboardClassFindMorePortsbpl.2079:63|
 :skolemid |385|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@13 r@@66))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@67 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@67) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@12 r@@67) (|Select__T@[Int]Int_| Res_SPIN_LOCK@13 r@@67)))
 :qid |KeyboardClassFindMorePortsbpl.2083:63|
 :skolemid |386|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@13 r@@67))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@110 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@110) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.MinorFunction__IO_STACK_LOCATION) _m@@110) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.MinorFunction__IO_STACK_LOCATION) _m@@110)))
 :qid |KeyboardClassFindMorePortsbpl.2085:64|
 :skolemid |387|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.MinorFunction__IO_STACK_LOCATION) _m@@110))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@111 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@111) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@111) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@111)))
 :qid |KeyboardClassFindMorePortsbpl.2087:64|
 :skolemid |388|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@111))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@112 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@112) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.DeviceExtension__DEVICE_OBJECT) _m@@112) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.DeviceExtension__DEVICE_OBJECT) _m@@112)))
 :qid |KeyboardClassFindMorePortsbpl.2089:64|
 :skolemid |389|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.DeviceExtension__DEVICE_OBJECT) _m@@112))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@113 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@113) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Self__DEVICE_EXTENSION) _m@@113) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Self__DEVICE_EXTENSION) _m@@113)))
 :qid |KeyboardClassFindMorePortsbpl.2091:64|
 :skolemid |390|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Self__DEVICE_EXTENSION) _m@@113))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@114 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@114) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Started__DEVICE_EXTENSION) _m@@114) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.Started__DEVICE_EXTENSION) _m@@114)))
 :qid |KeyboardClassFindMorePortsbpl.2093:64|
 :skolemid |391|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.Started__DEVICE_EXTENSION) _m@@114))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@115 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@115) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.GrandMaster__GLOBALS) _m@@115) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.GrandMaster__GLOBALS) _m@@115)))
 :qid |KeyboardClassFindMorePortsbpl.2095:64|
 :skolemid |392|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.GrandMaster__GLOBALS) _m@@115))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@116 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@116) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.P_DEVICE_OBJECT) _m@@116) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@24 T.P_DEVICE_OBJECT) _m@@116)))
 :qid |KeyboardClassFindMorePortsbpl.2097:64|
 :skolemid |393|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@25 T.P_DEVICE_OBJECT) _m@@116))
))) (= Res_SPIN_LOCK@14 Res_SPIN_LOCK@13)) (and (and (= Res_DEV_OBJ_INIT@14 Res_DEV_OBJ_INIT@13) (= Res_DEV_EXTN@14 Res_DEV_EXTN@13)) (and (= Res_DEVICE_STACK@14 Res_DEVICE_STACK@13) (= Mem@26 Mem@25)))))) (and (=> (= (ControlFlow 0 11) 9) label_155_true_correct) (=> (= (ControlFlow 0 11) 10) label_155_false_correct))))))
(let ((label_150_correct  (=> (= Mem@23 (|Store__T@[name][Int]Int_| Mem@20 T.NumberLegacyPorts__GLOBALS (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.NumberLegacyPorts__GLOBALS) (NumberLegacyPorts__GLOBALS Globals) $i$8$4890.28$KeyboardClassFindMorePorts$12@1))) (=> (and (= alloc@12 alloc@10) (= Mem@24 Mem@23)) (=> (and (and (= Res_DEVICE_STACK@12 Res_DEVICE_STACK@10) (= Res_DEV_EXTN@12 Res_DEV_EXTN@10)) (and (= Res_DEV_OBJ_INIT@12 Res_DEV_OBJ_INIT@10) (= Res_SPIN_LOCK@12 Res_SPIN_LOCK@10))) (and (=> (= (ControlFlow 0 22) 11) label_151_true_correct) (=> (= (ControlFlow 0 22) 12) label_151_false_correct)))))))
(let ((label_75_false_correct  (=> (and (not (< $i$8$4890.28$KeyboardClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.UINT4) call2formal@new@0@@2))) (= (ControlFlow 0 24) 22)) label_150_correct)))
(let ((label_74_true_correct  (=> (< $i$8$4890.28$KeyboardClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.PortsServiced__GLOBALS) (PortsServiced__GLOBALS Globals))) (and (=> (= (ControlFlow 0 89) 81) label_75_true_correct) (=> (= (ControlFlow 0 89) 24) label_75_false_correct)))))
(let ((label_74_false_correct  (=> (and (not (< $i$8$4890.28$KeyboardClassFindMorePorts$12@1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.PortsServiced__GLOBALS) (PortsServiced__GLOBALS Globals)))) (= (ControlFlow 0 23) 22)) label_150_correct)))
(let ((label_74_head_correct  (=> (and (forall ((_H_x@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@10 1) _H_x@@12) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12)))) _H_x@@12) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3289:16|
 :skolemid |639|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@12)))
)) (forall ((_H_z@@23 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@23) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@23))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@23)))) _H_z@@23)))
 :qid |KeyboardClassFindMorePortsbpl.3291:16|
 :skolemid |640|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@23)))
))) (=> (and (and (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@10 1)) (forall ((_H_z@@24 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@24) true)
 :qid |KeyboardClassFindMorePortsbpl.3293:61|
 :skolemid |641|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@10 1) _H_z@@24))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@12 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@12) (or (= _H_y@@12 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@10 (MINUS_LEFT_PTR _H_y@@12 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3299:233|
 :skolemid |642|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@12))
)))))) (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (forall ((f@@21 Int) ) (!  (or (= (|Select__T@[Int]name_| alloc@10 (Base f@@21)) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@10 (Base f@@21)) (|Select__T@[Int]name_| alloc@10 (Base f@@21))))
 :qid |KeyboardClassFindMorePortsbpl.3302:15|
 :skolemid |643|
 :pattern ( (|Select__T@[Int]name_| alloc@10 (Base f@@21)))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@68 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@68) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@68) (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@68)))
 :qid |KeyboardClassFindMorePortsbpl.3306:62|
 :skolemid |644|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@10 r@@68))
)))) (and (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@69 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@69) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@69) (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@69)))
 :qid |KeyboardClassFindMorePortsbpl.3309:64|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@10 r@@69))
))) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@70 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@70) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@70) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@70)))
 :qid |KeyboardClassFindMorePortsbpl.3312:64|
 :skolemid |646|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@10 r@@70))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@71 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@71) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@71) (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@71)))
 :qid |KeyboardClassFindMorePortsbpl.3315:62|
 :skolemid |647|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@10 r@@71))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@117 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@117) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.MinorFunction__IO_STACK_LOCATION) _m@@117) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@117)))
 :qid |KeyboardClassFindMorePortsbpl.3317:63|
 :skolemid |648|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.MinorFunction__IO_STACK_LOCATION) _m@@117))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@118 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@118) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@118) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@118)))
 :qid |KeyboardClassFindMorePortsbpl.3319:63|
 :skolemid |649|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@118))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@119 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@119) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) _m@@119) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@119)))
 :qid |KeyboardClassFindMorePortsbpl.3321:63|
 :skolemid |650|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.DeviceExtension__DEVICE_OBJECT) _m@@119))
))))) (and (and (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@120 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@120) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) _m@@120) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@120)))
 :qid |KeyboardClassFindMorePortsbpl.3323:65|
 :skolemid |651|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Self__DEVICE_EXTENSION) _m@@120))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@121 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@121) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Started__DEVICE_EXTENSION) _m@@121) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@121)))
 :qid |KeyboardClassFindMorePortsbpl.3325:63|
 :skolemid |652|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.Started__DEVICE_EXTENSION) _m@@121))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@122 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@122) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) _m@@122) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@122)))
 :qid |KeyboardClassFindMorePortsbpl.3327:63|
 :skolemid |653|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.GrandMaster__GLOBALS) _m@@122))
))) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@123 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@123) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.P_DEVICE_OBJECT) _m@@123) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@123)))
 :qid |KeyboardClassFindMorePortsbpl.3329:65|
 :skolemid |654|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@20 T.P_DEVICE_OBJECT) _m@@123))
))))))) (and (=> (= (ControlFlow 0 90) 89) label_74_true_correct) (=> (= (ControlFlow 0 90) 23) label_74_false_correct))))))
(let ((label_45_true_correct  (=> (and (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0)) (= $memset.arg.3$8$@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3)))) (and (=> (= (ControlFlow 0 91) (- 0 118)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@7 0) (=> (and (forall ((x@@331 Int) ) (!  (=> (and (<= call2formal@new@0@@7 x@@331) (< x@@331 (+ call2formal@new@0@@7 1))) (= (Base x@@331) call2formal@new@0@@7))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@331))
)) (forall ((x@@332 Int) ) (!  (or (= x@@332 call2formal@new@0@@7) (= (|Select__T@[Int]name_| alloc@8 x@@332) (|Select__T@[Int]name_| alloc@9 x@@332)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@9 x@@332))
))) (=> (and (and (and (= (|Select__T@[Int]name_| alloc@8 call2formal@new@0@@7) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@9 call2formal@new@0@@7) ALLOCATED)) (= Mem@14 Mem@13)) (and (= Res_DEV_OBJ_INIT@5 Res_DEV_OBJ_INIT@4) (= Res_DEV_EXTN@5 Res_DEV_EXTN@4))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@72 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@72) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@72) (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@72)))
 :qid |KeyboardClassFindMorePortsbpl.2635:63|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@72))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@73 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@73) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@73) (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@73)))
 :qid |KeyboardClassFindMorePortsbpl.2639:63|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@73))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@74 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@74) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@74) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@74)))
 :qid |KeyboardClassFindMorePortsbpl.2643:63|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@74))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@75 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@75) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@75) (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@75)))
 :qid |KeyboardClassFindMorePortsbpl.2647:63|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@75))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@124 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@124) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@124) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MinorFunction__IO_STACK_LOCATION) _m@@124)))
 :qid |KeyboardClassFindMorePortsbpl.2649:64|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@124))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@125 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@125) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@125) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@125)))
 :qid |KeyboardClassFindMorePortsbpl.2651:64|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@125))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@126 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@126) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@126) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.DeviceExtension__DEVICE_OBJECT) _m@@126)))
 :qid |KeyboardClassFindMorePortsbpl.2653:64|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@126))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@127 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@127) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@127) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Self__DEVICE_EXTENSION) _m@@127)))
 :qid |KeyboardClassFindMorePortsbpl.2655:64|
 :skolemid |532|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@127))
)))))) (=> (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@128 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@128) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@128) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Started__DEVICE_EXTENSION) _m@@128)))
 :qid |KeyboardClassFindMorePortsbpl.2657:64|
 :skolemid |533|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@128))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@129 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@129) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@129) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.GrandMaster__GLOBALS) _m@@129)))
 :qid |KeyboardClassFindMorePortsbpl.2659:64|
 :skolemid |534|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@129))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@130 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@130) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@130) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.P_DEVICE_OBJECT) _m@@130)))
 :qid |KeyboardClassFindMorePortsbpl.2661:64|
 :skolemid |535|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@130))
))) (and (= call1formal@$Source$2$7422.20$RtlAppendUnicodeToString$81@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@5))) (= Mem@15 Mem@14)))) (and (and (and (= Res_DEV_OBJ_INIT@6 Res_DEV_OBJ_INIT@5) (= Res_DEV_EXTN@6 Res_DEV_EXTN@5)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@76 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@76) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@5 r@@76) (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@76)))
 :qid |KeyboardClassFindMorePortsbpl.2635:63|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@76))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@77 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@77) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@5 r@@77) (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@77)))
 :qid |KeyboardClassFindMorePortsbpl.2639:63|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@77))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@78 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@78) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@5 r@@78) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@78)))
 :qid |KeyboardClassFindMorePortsbpl.2643:63|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@78))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@79 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@79) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@5 r@@79) (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@79)))
 :qid |KeyboardClassFindMorePortsbpl.2647:63|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@79))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@131 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@131) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.MinorFunction__IO_STACK_LOCATION) _m@@131) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.MinorFunction__IO_STACK_LOCATION) _m@@131)))
 :qid |KeyboardClassFindMorePortsbpl.2649:64|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.MinorFunction__IO_STACK_LOCATION) _m@@131))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@132 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@132) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@132) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@132)))
 :qid |KeyboardClassFindMorePortsbpl.2651:64|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@132))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@133 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@133) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.DeviceExtension__DEVICE_OBJECT) _m@@133) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.DeviceExtension__DEVICE_OBJECT) _m@@133)))
 :qid |KeyboardClassFindMorePortsbpl.2653:64|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.DeviceExtension__DEVICE_OBJECT) _m@@133))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@134 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@134) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Self__DEVICE_EXTENSION) _m@@134) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Self__DEVICE_EXTENSION) _m@@134)))
 :qid |KeyboardClassFindMorePortsbpl.2655:64|
 :skolemid |532|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Self__DEVICE_EXTENSION) _m@@134))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@135 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@135) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Started__DEVICE_EXTENSION) _m@@135) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.Started__DEVICE_EXTENSION) _m@@135)))
 :qid |KeyboardClassFindMorePortsbpl.2657:64|
 :skolemid |533|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Started__DEVICE_EXTENSION) _m@@135))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@136 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@136) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.GrandMaster__GLOBALS) _m@@136) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.GrandMaster__GLOBALS) _m@@136)))
 :qid |KeyboardClassFindMorePortsbpl.2659:64|
 :skolemid |534|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.GrandMaster__GLOBALS) _m@@136))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@137 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@137) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.P_DEVICE_OBJECT) _m@@137) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@14 T.P_DEVICE_OBJECT) _m@@137)))
 :qid |KeyboardClassFindMorePortsbpl.2661:64|
 :skolemid |535|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.P_DEVICE_OBJECT) _m@@137))
))))))) (and (=> (= (ControlFlow 0 91) (- 0 117)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@8 0) (=> (and (forall ((x@@333 Int) ) (!  (=> (and (<= call2formal@new@0@@8 x@@333) (< x@@333 (+ call2formal@new@0@@8 1))) (= (Base x@@333) call2formal@new@0@@8))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@333))
)) (forall ((x@@334 Int) ) (!  (or (= x@@334 call2formal@new@0@@8) (= (|Select__T@[Int]name_| alloc@9 x@@334) (|Select__T@[Int]name_| alloc@10 x@@334)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@10 x@@334))
))) (=> (and (and (= (|Select__T@[Int]name_| alloc@9 call2formal@new@0@@8) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@10 call2formal@new@0@@8) ALLOCATED)) (= Mem@16 Mem@15)) (=> (and (and (and (= Res_DEV_OBJ_INIT@7 Res_DEV_OBJ_INIT@6) (= Res_DEV_EXTN@7 Res_DEV_EXTN@6)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@80 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@80) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@6 r@@80) (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@80)))
 :qid |KeyboardClassFindMorePortsbpl.2635:63|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@80))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@81 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@81) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@6 r@@81) (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@81)))
 :qid |KeyboardClassFindMorePortsbpl.2639:63|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@81))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@82 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@82) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@6 r@@82) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@82)))
 :qid |KeyboardClassFindMorePortsbpl.2643:63|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@82))
))))) (=> (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@83 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@83) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@6 r@@83) (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@83)))
 :qid |KeyboardClassFindMorePortsbpl.2647:63|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@83))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@138 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@138) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@138) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.MinorFunction__IO_STACK_LOCATION) _m@@138)))
 :qid |KeyboardClassFindMorePortsbpl.2649:64|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@138))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@139 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@139) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@139) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@139)))
 :qid |KeyboardClassFindMorePortsbpl.2651:64|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@139))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@140 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@140) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@140) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.DeviceExtension__DEVICE_OBJECT) _m@@140)))
 :qid |KeyboardClassFindMorePortsbpl.2653:64|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@140))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@141 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@141) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@141) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Self__DEVICE_EXTENSION) _m@@141)))
 :qid |KeyboardClassFindMorePortsbpl.2655:64|
 :skolemid |532|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@141))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@142 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@142) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@142) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.Started__DEVICE_EXTENSION) _m@@142)))
 :qid |KeyboardClassFindMorePortsbpl.2657:64|
 :skolemid |533|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@142))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@143 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@143) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@143) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.GrandMaster__GLOBALS) _m@@143)))
 :qid |KeyboardClassFindMorePortsbpl.2659:64|
 :skolemid |534|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@143))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@144 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@144) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@144) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@15 T.P_DEVICE_OBJECT) _m@@144)))
 :qid |KeyboardClassFindMorePortsbpl.2661:64|
 :skolemid |535|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@144))
)))))) (and (=> (= (ControlFlow 0 91) (- 0 116)) (forall ((_H_x@@13 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@7 1) _H_x@@13) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@13)))) _H_x@@13) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@13))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2366:18|
 :skolemid |457|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@13)))
))) (=> (forall ((_H_x@@14 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@7 1) _H_x@@14) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@14)))) _H_x@@14) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@14))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2366:18|
 :skolemid |457|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@14)))
)) (and (=> (= (ControlFlow 0 91) (- 0 115)) (forall ((_H_z@@25 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@25) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@25))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@25)))) _H_z@@25)))
 :qid |KeyboardClassFindMorePortsbpl.2368:18|
 :skolemid |458|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@25)))
))) (=> (forall ((_H_z@@26 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@26) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@26))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@26)))) _H_z@@26)))
 :qid |KeyboardClassFindMorePortsbpl.2368:18|
 :skolemid |458|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@26)))
)) (and (=> (= (ControlFlow 0 91) (- 0 114)) (and (Subset Empty (Inverse Res_DEV_EXTN@7 1)) (forall ((_H_z@@27 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@27) true)
 :qid |KeyboardClassFindMorePortsbpl.2370:63|
 :skolemid |459|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@27))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@7 1)) (forall ((_H_z@@28 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@28) true)
 :qid |KeyboardClassFindMorePortsbpl.2370:63|
 :skolemid |459|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@7 1) _H_z@@28))
))) (and (=> (= (ControlFlow 0 91) (- 0 113)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 91) (- 0 112)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 91) (- 0 111)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@13 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@13) (or (= _H_y@@13 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (MINUS_LEFT_PTR _H_y@@13 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2376:235|
 :skolemid |460|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@13))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@14 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@14) (or (= _H_y@@14 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 (MINUS_LEFT_PTR _H_y@@14 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2376:235|
 :skolemid |460|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@14))
)))) (and (=> (= (ControlFlow 0 91) (- 0 110)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (and (forall ((_H_x@@15 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@8 1) _H_x@@15) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@15)))) _H_x@@15) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@15))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2380:17|
 :skolemid |461|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@15)))
)) (forall ((_H_z@@29 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@29) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@29))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@29)))) _H_z@@29)))
 :qid |KeyboardClassFindMorePortsbpl.2382:17|
 :skolemid |462|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@29)))
))) (=> (and (and (and (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@8 1)) (forall ((_H_z@@30 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@30) true)
 :qid |KeyboardClassFindMorePortsbpl.2384:62|
 :skolemid |463|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@30))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@15 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@15) (or (= _H_y@@15 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (MINUS_LEFT_PTR _H_y@@15 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2390:234|
 :skolemid |464|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@15))
)))))) (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@16 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@8 Res_DEV_OBJ_INIT@7) (= Res_DEV_EXTN@8 Res_DEV_EXTN@7)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@84 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@84) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@7 r@@84) (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@84)))
 :qid |KeyboardClassFindMorePortsbpl.2403:63|
 :skolemid |465|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@84))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@85 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@85) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@7 r@@85) (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@85)))
 :qid |KeyboardClassFindMorePortsbpl.2407:63|
 :skolemid |466|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@85))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@86 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@86) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@7 r@@86) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@86)))
 :qid |KeyboardClassFindMorePortsbpl.2411:63|
 :skolemid |467|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@86))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@87 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@87) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@7 r@@87) (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@87)))
 :qid |KeyboardClassFindMorePortsbpl.2415:63|
 :skolemid |468|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@87))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@145 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@145) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@145) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.MinorFunction__IO_STACK_LOCATION) _m@@145)))
 :qid |KeyboardClassFindMorePortsbpl.2417:64|
 :skolemid |469|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@145))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@146 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@146) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@146) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@146)))
 :qid |KeyboardClassFindMorePortsbpl.2419:64|
 :skolemid |470|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@146))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@147 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@147) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@147) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.DeviceExtension__DEVICE_OBJECT) _m@@147)))
 :qid |KeyboardClassFindMorePortsbpl.2421:64|
 :skolemid |471|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@147))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@148 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@148) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@148) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Self__DEVICE_EXTENSION) _m@@148)))
 :qid |KeyboardClassFindMorePortsbpl.2423:64|
 :skolemid |472|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@148))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@149 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@149) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@149) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.Started__DEVICE_EXTENSION) _m@@149)))
 :qid |KeyboardClassFindMorePortsbpl.2425:64|
 :skolemid |473|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@149))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@150 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@150) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@150) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.GrandMaster__GLOBALS) _m@@150)))
 :qid |KeyboardClassFindMorePortsbpl.2427:64|
 :skolemid |474|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@150))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@151 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@151) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@151) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@16 T.P_DEVICE_OBJECT) _m@@151)))
 :qid |KeyboardClassFindMorePortsbpl.2429:64|
 :skolemid |475|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@151))
))) (= $i$8$4890.28$KeyboardClassFindMorePorts$12@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.NumberLegacyPorts__GLOBALS) (NumberLegacyPorts__GLOBALS Globals))))))) (and (=> (= (ControlFlow 0 91) (- 0 109)) (forall ((_H_x@@16 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@8 1) _H_x@@16) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@16)))) _H_x@@16) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@16))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3289:16|
 :skolemid |639|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@16)))
))) (=> (forall ((_H_x@@17 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@8 1) _H_x@@17) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@17)))) _H_x@@17) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@17))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3289:16|
 :skolemid |639|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@17)))
)) (and (=> (= (ControlFlow 0 91) (- 0 108)) (forall ((_H_z@@31 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@31) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@31))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@31)))) _H_z@@31)))
 :qid |KeyboardClassFindMorePortsbpl.3291:16|
 :skolemid |640|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@31)))
))) (=> (forall ((_H_z@@32 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@32) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@32))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@32)))) _H_z@@32)))
 :qid |KeyboardClassFindMorePortsbpl.3291:16|
 :skolemid |640|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@32)))
)) (and (=> (= (ControlFlow 0 91) (- 0 107)) (and (Subset Empty (Inverse Res_DEV_EXTN@8 1)) (forall ((_H_z@@33 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@33) true)
 :qid |KeyboardClassFindMorePortsbpl.3293:61|
 :skolemid |641|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@33))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@8 1)) (forall ((_H_z@@34 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@34) true)
 :qid |KeyboardClassFindMorePortsbpl.3293:61|
 :skolemid |641|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@8 1) _H_z@@34))
))) (and (=> (= (ControlFlow 0 91) (- 0 106)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 91) (- 0 105)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 91) (- 0 104)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@16 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@16) (or (= _H_y@@16 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (MINUS_LEFT_PTR _H_y@@16 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3299:233|
 :skolemid |642|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@16))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@17 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@17) (or (= _H_y@@17 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 (MINUS_LEFT_PTR _H_y@@17 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.3299:233|
 :skolemid |642|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@17))
)))) (and (=> (= (ControlFlow 0 91) (- 0 103)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (and (=> (= (ControlFlow 0 91) (- 0 102)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@88 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@88) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@88) (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@88)))
 :qid |KeyboardClassFindMorePortsbpl.3306:62|
 :skolemid |644|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@88))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@89 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@89) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@89) (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@89)))
 :qid |KeyboardClassFindMorePortsbpl.3306:62|
 :skolemid |644|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@8 r@@89))
))) (and (=> (= (ControlFlow 0 91) (- 0 101)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@90 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@90) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@90) (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@90)))
 :qid |KeyboardClassFindMorePortsbpl.3309:64|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@90))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@91 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@91) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@91) (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@91)))
 :qid |KeyboardClassFindMorePortsbpl.3309:64|
 :skolemid |645|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@8 r@@91))
))) (and (=> (= (ControlFlow 0 91) (- 0 100)) (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@92 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@92) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@92) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@92)))
 :qid |KeyboardClassFindMorePortsbpl.3312:64|
 :skolemid |646|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@92))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((r@@93 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue r@@93) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@93) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@93)))
 :qid |KeyboardClassFindMorePortsbpl.3312:64|
 :skolemid |646|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@8 r@@93))
))) (and (=> (= (ControlFlow 0 91) (- 0 99)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@94 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@94) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@94) (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@94)))
 :qid |KeyboardClassFindMorePortsbpl.3315:62|
 :skolemid |647|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@94))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((r@@95 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@95) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@95) (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@95)))
 :qid |KeyboardClassFindMorePortsbpl.3315:62|
 :skolemid |647|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@8 r@@95))
))) (and (=> (= (ControlFlow 0 91) (- 0 98)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@152 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@152) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@152) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@152)))
 :qid |KeyboardClassFindMorePortsbpl.3317:63|
 :skolemid |648|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@152))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@153 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@153) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@153) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@153)))
 :qid |KeyboardClassFindMorePortsbpl.3317:63|
 :skolemid |648|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.MinorFunction__IO_STACK_LOCATION) _m@@153))
))) (and (=> (= (ControlFlow 0 91) (- 0 97)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@154 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@154) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@154) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@154)))
 :qid |KeyboardClassFindMorePortsbpl.3319:63|
 :skolemid |649|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@154))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@155 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@155) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@155) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@155)))
 :qid |KeyboardClassFindMorePortsbpl.3319:63|
 :skolemid |649|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@155))
))) (and (=> (= (ControlFlow 0 91) (- 0 96)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@156 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@156) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@156) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@156)))
 :qid |KeyboardClassFindMorePortsbpl.3321:63|
 :skolemid |650|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@156))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@157 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@157) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@157) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@157)))
 :qid |KeyboardClassFindMorePortsbpl.3321:63|
 :skolemid |650|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.DeviceExtension__DEVICE_OBJECT) _m@@157))
))) (and (=> (= (ControlFlow 0 91) (- 0 95)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@158 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@158) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@158) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@158)))
 :qid |KeyboardClassFindMorePortsbpl.3323:65|
 :skolemid |651|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@158))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@159 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@159) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@159) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@159)))
 :qid |KeyboardClassFindMorePortsbpl.3323:65|
 :skolemid |651|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Self__DEVICE_EXTENSION) _m@@159))
))) (and (=> (= (ControlFlow 0 91) (- 0 94)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@160 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@160) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@160) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@160)))
 :qid |KeyboardClassFindMorePortsbpl.3325:63|
 :skolemid |652|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@160))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@161 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@161) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@161) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@161)))
 :qid |KeyboardClassFindMorePortsbpl.3325:63|
 :skolemid |652|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.Started__DEVICE_EXTENSION) _m@@161))
))) (and (=> (= (ControlFlow 0 91) (- 0 93)) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@162 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@162) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@162) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@162)))
 :qid |KeyboardClassFindMorePortsbpl.3327:63|
 :skolemid |653|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@162))
)))) (=> (and (Subset Empty (Union Empty Empty)) (forall ((_m@@163 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@163) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@163) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@163)))
 :qid |KeyboardClassFindMorePortsbpl.3327:63|
 :skolemid |653|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.GrandMaster__GLOBALS) _m@@163))
))) (and (=> (= (ControlFlow 0 91) (- 0 92)) (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@164 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@164) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@164) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@164)))
 :qid |KeyboardClassFindMorePortsbpl.3329:65|
 :skolemid |654|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@164))
)))) (=> (and (Subset Empty (Union Empty SetTrue)) (forall ((_m@@165 Int) ) (!  (or (|Select__T@[Int]Bool_| SetTrue _m@@165) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@165) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@165)))
 :qid |KeyboardClassFindMorePortsbpl.3329:65|
 :skolemid |654|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@17 T.P_DEVICE_OBJECT) _m@@165))
))) (=> (= (ControlFlow 0 91) 90) label_74_head_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((label_45_false_correct  (=> (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3)) 0) (and (=> (= (ControlFlow 0 13) (- 0 21)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@9 0) (=> (and (forall ((x@@335 Int) ) (!  (=> (and (<= call2formal@new@0@@9 x@@335) (< x@@335 (+ call2formal@new@0@@9 1))) (= (Base x@@335) call2formal@new@0@@9))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@335))
)) (forall ((x@@336 Int) ) (!  (or (= x@@336 call2formal@new@0@@9) (= (|Select__T@[Int]name_| alloc@8 x@@336) (|Select__T@[Int]name_| alloc@11 x@@336)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@11 x@@336))
))) (=> (and (and (= (|Select__T@[Int]name_| alloc@8 call2formal@new@0@@9) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@11 call2formal@new@0@@9) ALLOCATED)) (and (= Mem@18 (|Store__T@[name][Int]Int_| Mem@13 T.UINT4 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.UINT4) (PLUS call2formal@new@0@@6 4 0) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@13 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3))))) (= call3formal@$FinalStatus$4$4827.13$KeyboardClassLogError$281@0 (- 0 1073741823)))) (and (=> (= (ControlFlow 0 13) (- 0 20)) (forall ((_H_x@@18 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@4 1) _H_x@@18) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@18)))) _H_x@@18) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@18))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2514:18|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@18)))
))) (=> (forall ((_H_x@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@4 1) _H_x@@19) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@19)))) _H_x@@19) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@19))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2514:18|
 :skolemid |495|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@19)))
)) (and (=> (= (ControlFlow 0 13) (- 0 19)) (forall ((_H_z@@35 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@35) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@35))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@35)))) _H_z@@35)))
 :qid |KeyboardClassFindMorePortsbpl.2516:18|
 :skolemid |496|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@35)))
))) (=> (forall ((_H_z@@36 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@36) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@36))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@36)))) _H_z@@36)))
 :qid |KeyboardClassFindMorePortsbpl.2516:18|
 :skolemid |496|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@36)))
)) (and (=> (= (ControlFlow 0 13) (- 0 18)) (and (Subset Empty (Inverse Res_DEV_EXTN@4 1)) (forall ((_H_z@@37 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@37) true)
 :qid |KeyboardClassFindMorePortsbpl.2518:63|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@37))
)))) (=> (and (Subset Empty (Inverse Res_DEV_EXTN@4 1)) (forall ((_H_z@@38 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@38) true)
 :qid |KeyboardClassFindMorePortsbpl.2518:63|
 :skolemid |497|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@4 1) _H_z@@38))
))) (and (=> (= (ControlFlow 0 13) (- 0 17)) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (and (=> (= (ControlFlow 0 13) (- 0 16)) (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals)))) (=> (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (and (=> (= (ControlFlow 0 13) (- 0 15)) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@18 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@18) (or (= _H_y@@18 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (MINUS_LEFT_PTR _H_y@@18 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2524:235|
 :skolemid |498|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@18))
))))) (=> (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@19 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@19) (or (= _H_y@@19 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 (MINUS_LEFT_PTR _H_y@@19 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2524:235|
 :skolemid |498|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@19))
)))) (and (=> (= (ControlFlow 0 13) (- 0 14)) (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))))))) (=> (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (=> (and (forall ((_H_x@@20 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT@9 1) _H_x@@20) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@20)))) _H_x@@20) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@9 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@20))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2528:17|
 :skolemid |499|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@20)))
)) (forall ((_H_z@@39 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@9 1) _H_z@@39) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@9 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@39))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@39)))) _H_z@@39)))
 :qid |KeyboardClassFindMorePortsbpl.2530:17|
 :skolemid |500|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@39)))
))) (=> (and (and (and (Subset Empty (Inverse Res_DEV_EXTN@9 1)) (forall ((_H_z@@40 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@9 1) _H_z@@40) true)
 :qid |KeyboardClassFindMorePortsbpl.2532:62|
 :skolemid |501|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN@9 1) _H_z@@40))
))) (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@9 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1)))) (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@20 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@20) (or (= _H_y@@20 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@9 (MINUS_LEFT_PTR _H_y@@20 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2538:234|
 :skolemid |502|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@20))
)))))) (=> (and (and (and (and (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (= (|Select__T@[name][Int]Int_| Mem@19 T.Flink__LIST_ENTRY) (|Select__T@[name][Int]Int_| Mem@18 T.Flink__LIST_ENTRY))) (and (= Res_DEV_OBJ_INIT@9 Res_DEV_OBJ_INIT@4) (= Res_DEV_EXTN@9 Res_DEV_EXTN@4))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@96 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@96) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@96) (|Select__T@[Int]Int_| Res_DEVICE_STACK@9 r@@96)))
 :qid |KeyboardClassFindMorePortsbpl.2551:63|
 :skolemid |503|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@9 r@@96))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@97 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@97) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@97) (|Select__T@[Int]Int_| Res_DEV_EXTN@9 r@@97)))
 :qid |KeyboardClassFindMorePortsbpl.2555:63|
 :skolemid |504|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@9 r@@97))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@98 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@98) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@98) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@9 r@@98)))
 :qid |KeyboardClassFindMorePortsbpl.2559:63|
 :skolemid |505|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@9 r@@98))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@99 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@99) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@99) (|Select__T@[Int]Int_| Res_SPIN_LOCK@9 r@@99)))
 :qid |KeyboardClassFindMorePortsbpl.2563:63|
 :skolemid |506|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@9 r@@99))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@166 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@166) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.MinorFunction__IO_STACK_LOCATION) _m@@166) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.MinorFunction__IO_STACK_LOCATION) _m@@166)))
 :qid |KeyboardClassFindMorePortsbpl.2565:64|
 :skolemid |507|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.MinorFunction__IO_STACK_LOCATION) _m@@166))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@167 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@167) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@167) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@167)))
 :qid |KeyboardClassFindMorePortsbpl.2567:64|
 :skolemid |508|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@167))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@168 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@168) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) _m@@168) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.DeviceExtension__DEVICE_OBJECT) _m@@168)))
 :qid |KeyboardClassFindMorePortsbpl.2569:64|
 :skolemid |509|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.DeviceExtension__DEVICE_OBJECT) _m@@168))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@169 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@169) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) _m@@169) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Self__DEVICE_EXTENSION) _m@@169)))
 :qid |KeyboardClassFindMorePortsbpl.2571:64|
 :skolemid |510|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Self__DEVICE_EXTENSION) _m@@169))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@170 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@170) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Started__DEVICE_EXTENSION) _m@@170) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.Started__DEVICE_EXTENSION) _m@@170)))
 :qid |KeyboardClassFindMorePortsbpl.2573:64|
 :skolemid |511|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.Started__DEVICE_EXTENSION) _m@@170))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@171 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@171) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) _m@@171) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.GrandMaster__GLOBALS) _m@@171)))
 :qid |KeyboardClassFindMorePortsbpl.2575:64|
 :skolemid |512|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.GrandMaster__GLOBALS) _m@@171))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@172 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@172) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.P_DEVICE_OBJECT) _m@@172) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@18 T.P_DEVICE_OBJECT) _m@@172)))
 :qid |KeyboardClassFindMorePortsbpl.2577:64|
 :skolemid |513|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@19 T.P_DEVICE_OBJECT) _m@@172))
))) (and (= alloc@12 alloc@11) (= Mem@24 Mem@19))) (and (and (= Res_DEVICE_STACK@12 Res_DEVICE_STACK@9) (= Res_DEV_EXTN@12 Res_DEV_EXTN@9)) (and (= Res_DEV_OBJ_INIT@12 Res_DEV_OBJ_INIT@9) (= Res_SPIN_LOCK@12 Res_SPIN_LOCK@9)))))) (and (=> (= (ControlFlow 0 13) 11) label_151_true_correct) (=> (= (ControlFlow 0 13) 12) label_151_false_correct)))))))))))))))))))))))))))
(let ((start_correct  (=> (and (not (= (|Select__T@[Int]name_| alloc $DriverObject$1$4861.20$KeyboardClassFindMorePorts$121) UNALLOCATED)) (not (= (|Select__T@[Int]name_| alloc $Context$2$4862.20$KeyboardClassFindMorePorts$121) UNALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 128)) (>= 512 0)) (=> (>= 512 0) (=> (> call2formal@new@0@@4 0) (=> (and (and (forall ((x@@337 Int) ) (!  (=> (and (<= call2formal@new@0@@4 x@@337) (< x@@337 (+ call2formal@new@0@@4 512))) (= (Base x@@337) call2formal@new@0@@4))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@337))
)) (forall ((x@@338 Int) ) (!  (or (= x@@338 call2formal@new@0@@4) (= (|Select__T@[Int]name_| alloc x@@338) (|Select__T@[Int]name_| alloc@0 x@@338)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@0 x@@338))
))) (and (= (|Select__T@[Int]name_| alloc call2formal@new@0@@4) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@0 call2formal@new@0@@4) ALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 127)) (>= 8 0)) (=> (>= 8 0) (=> (> call2formal@new@0@@5 0) (=> (and (and (forall ((x@@339 Int) ) (!  (=> (and (<= call2formal@new@0@@5 x@@339) (< x@@339 (+ call2formal@new@0@@5 8))) (= (Base x@@339) call2formal@new@0@@5))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@339))
)) (forall ((x@@340 Int) ) (!  (or (= x@@340 call2formal@new@0@@5) (= (|Select__T@[Int]name_| alloc@0 x@@340) (|Select__T@[Int]name_| alloc@1 x@@340)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@1 x@@340))
))) (and (= (|Select__T@[Int]name_| alloc@0 call2formal@new@0@@5) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@1 call2formal@new@0@@5) ALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 126)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0@@1 0) (=> (and (and (forall ((x@@341 Int) ) (!  (=> (and (<= call2formal@new@0@@1 x@@341) (< x@@341 (+ call2formal@new@0@@1 4))) (= (Base x@@341) call2formal@new@0@@1))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@341))
)) (forall ((x@@342 Int) ) (!  (or (= x@@342 call2formal@new@0@@1) (= (|Select__T@[Int]name_| alloc@1 x@@342) (|Select__T@[Int]name_| alloc@2 x@@342)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@2 x@@342))
))) (and (= (|Select__T@[Int]name_| alloc@1 call2formal@new@0@@1) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@2 call2formal@new@0@@1) ALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 125)) (>= 16 0)) (=> (>= 16 0) (=> (> call2formal@new@0@@6 0) (=> (and (and (forall ((x@@343 Int) ) (!  (=> (and (<= call2formal@new@0@@6 x@@343) (< x@@343 (+ call2formal@new@0@@6 16))) (= (Base x@@343) call2formal@new@0@@6))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@343))
)) (forall ((x@@344 Int) ) (!  (or (= x@@344 call2formal@new@0@@6) (= (|Select__T@[Int]name_| alloc@2 x@@344) (|Select__T@[Int]name_| alloc@3 x@@344)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@3 x@@344))
))) (and (= (|Select__T@[Int]name_| alloc@2 call2formal@new@0@@6) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@3 call2formal@new@0@@6) ALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 124)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0 0) (=> (and (and (forall ((x@@345 Int) ) (!  (=> (and (<= call2formal@new@0 x@@345) (< x@@345 (+ call2formal@new@0 4))) (= (Base x@@345) call2formal@new@0))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@345))
)) (forall ((x@@346 Int) ) (!  (or (= x@@346 call2formal@new@0) (= (|Select__T@[Int]name_| alloc@3 x@@346) (|Select__T@[Int]name_| alloc@4 x@@346)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@4 x@@346))
))) (and (= (|Select__T@[Int]name_| alloc@3 call2formal@new@0) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@4 call2formal@new@0) ALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 123)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0@@0 0) (=> (and (and (forall ((x@@347 Int) ) (!  (=> (and (<= call2formal@new@0@@0 x@@347) (< x@@347 (+ call2formal@new@0@@0 4))) (= (Base x@@347) call2formal@new@0@@0))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@347))
)) (forall ((x@@348 Int) ) (!  (or (= x@@348 call2formal@new@0@@0) (= (|Select__T@[Int]name_| alloc@4 x@@348) (|Select__T@[Int]name_| alloc@5 x@@348)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@5 x@@348))
))) (and (= (|Select__T@[Int]name_| alloc@4 call2formal@new@0@@0) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@5 call2formal@new@0@@0) ALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 122)) (>= 8 0)) (=> (>= 8 0) (=> (> call2formal@new@0@@3 0) (=> (and (and (forall ((x@@349 Int) ) (!  (=> (and (<= call2formal@new@0@@3 x@@349) (< x@@349 (+ call2formal@new@0@@3 8))) (= (Base x@@349) call2formal@new@0@@3))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@349))
)) (forall ((x@@350 Int) ) (!  (or (= x@@350 call2formal@new@0@@3) (= (|Select__T@[Int]name_| alloc@5 x@@350) (|Select__T@[Int]name_| alloc@6 x@@350)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@6 x@@350))
))) (and (= (|Select__T@[Int]name_| alloc@5 call2formal@new@0@@3) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@6 call2formal@new@0@@3) ALLOCATED))) (and (=> (= (ControlFlow 0 119) (- 0 121)) (>= 4 0)) (=> (>= 4 0) (=> (> call2formal@new@0@@2 0) (=> (and (forall ((x@@351 Int) ) (!  (=> (and (<= call2formal@new@0@@2 x@@351) (< x@@351 (+ call2formal@new@0@@2 4))) (= (Base x@@351) call2formal@new@0@@2))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@351))
)) (forall ((x@@352 Int) ) (!  (or (= x@@352 call2formal@new@0@@2) (= (|Select__T@[Int]name_| alloc@6 x@@352) (|Select__T@[Int]name_| alloc@7 x@@352)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@7 x@@352))
))) (=> (and (and (and (and (and (and (= (|Select__T@[Int]name_| alloc@6 call2formal@new@0@@2) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@7 call2formal@new@0@@2) ALLOCATED)) (= Mem@0 (|Store__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.P_DEVICE_OBJECT) call2formal@new@0@@1 0)))) (and (= Mem@1 (|Store__T@[name][Int]Int_| Mem@0 T.PUINT2 (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@0 T.PUINT2) call2formal@new@0@@0 0))) (= Mem@2 Mem@1))) (and (and (and (= Res_DEV_OBJ_INIT@0 Res_DEV_OBJ_INIT) (= Res_DEV_EXTN@0 Res_DEV_EXTN)) (and (Subset Empty (Union Empty Empty)) (forall ((r@@100 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@100) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK r@@100) (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@100)))
 :qid |KeyboardClassFindMorePortsbpl.2761:63|
 :skolemid |558|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@100))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@101 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@101) (= (|Select__T@[Int]Int_| Res_DEV_EXTN r@@101) (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@101)))
 :qid |KeyboardClassFindMorePortsbpl.2765:63|
 :skolemid |559|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@101))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@102 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@102) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT r@@102) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@102)))
 :qid |KeyboardClassFindMorePortsbpl.2769:63|
 :skolemid |560|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@102))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@103 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@103) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK r@@103) (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@103)))
 :qid |KeyboardClassFindMorePortsbpl.2773:63|
 :skolemid |561|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@103))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@173 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@173) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MinorFunction__IO_STACK_LOCATION) _m@@173) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.MinorFunction__IO_STACK_LOCATION) _m@@173)))
 :qid |KeyboardClassFindMorePortsbpl.2775:64|
 :skolemid |562|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MinorFunction__IO_STACK_LOCATION) _m@@173))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@174 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@174) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@174) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@174)))
 :qid |KeyboardClassFindMorePortsbpl.2777:64|
 :skolemid |563|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@174))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@175 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@175) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.DeviceExtension__DEVICE_OBJECT) _m@@175) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.DeviceExtension__DEVICE_OBJECT) _m@@175)))
 :qid |KeyboardClassFindMorePortsbpl.2779:64|
 :skolemid |564|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.DeviceExtension__DEVICE_OBJECT) _m@@175))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@176 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@176) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Self__DEVICE_EXTENSION) _m@@176) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Self__DEVICE_EXTENSION) _m@@176)))
 :qid |KeyboardClassFindMorePortsbpl.2781:64|
 :skolemid |565|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Self__DEVICE_EXTENSION) _m@@176))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@177 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@177) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Started__DEVICE_EXTENSION) _m@@177) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.Started__DEVICE_EXTENSION) _m@@177)))
 :qid |KeyboardClassFindMorePortsbpl.2783:64|
 :skolemid |566|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.Started__DEVICE_EXTENSION) _m@@177))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@178 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@178) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) _m@@178) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.GrandMaster__GLOBALS) _m@@178)))
 :qid |KeyboardClassFindMorePortsbpl.2785:64|
 :skolemid |567|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.GrandMaster__GLOBALS) _m@@178))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@179 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@179) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.P_DEVICE_OBJECT) _m@@179) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@1 T.P_DEVICE_OBJECT) _m@@179)))
 :qid |KeyboardClassFindMorePortsbpl.2787:64|
 :skolemid |568|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.P_DEVICE_OBJECT) _m@@179))
))))))) (and (and (and (and (and (= Mem@3 (|Store__T@[name][Int]Int_| Mem@2 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@2 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3) 0))) (= Mem@4 (|Store__T@[name][Int]Int_| Mem@3 T.Buffer__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@3 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@5) call2formal@new@0@@4)))) (and (= Mem@5 (|Store__T@[name][Int]Int_| Mem@4 T.Length__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@4 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5) 0))) (= Mem@6 (|Store__T@[name][Int]Int_| Mem@5 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@5 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@5) 512))))) (and (and (= call1formal@$SourceString$2$7402.30$RtlCopyUnicodeString$81@0 (BaseClassName__GLOBALS Globals)) (= Mem@7 Mem@6)) (and (= Res_DEV_OBJ_INIT@1 Res_DEV_OBJ_INIT@0) (= Res_DEV_EXTN@1 Res_DEV_EXTN@0)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@104 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@104) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@0 r@@104) (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@104)))
 :qid |KeyboardClassFindMorePortsbpl.2677:63|
 :skolemid |536|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@104))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@105 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@105) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@0 r@@105) (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@105)))
 :qid |KeyboardClassFindMorePortsbpl.2681:63|
 :skolemid |537|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@105))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@106 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@106) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@0 r@@106) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@106)))
 :qid |KeyboardClassFindMorePortsbpl.2685:63|
 :skolemid |538|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@106))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@107 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@107) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@0 r@@107) (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@107)))
 :qid |KeyboardClassFindMorePortsbpl.2689:63|
 :skolemid |539|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@107))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@180 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@180) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.MinorFunction__IO_STACK_LOCATION) _m@@180) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.MinorFunction__IO_STACK_LOCATION) _m@@180)))
 :qid |KeyboardClassFindMorePortsbpl.2691:64|
 :skolemid |540|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.MinorFunction__IO_STACK_LOCATION) _m@@180))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@181 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@181) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@181) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@181)))
 :qid |KeyboardClassFindMorePortsbpl.2693:64|
 :skolemid |541|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@181))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@182 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@182) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.DeviceExtension__DEVICE_OBJECT) _m@@182) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.DeviceExtension__DEVICE_OBJECT) _m@@182)))
 :qid |KeyboardClassFindMorePortsbpl.2695:64|
 :skolemid |542|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.DeviceExtension__DEVICE_OBJECT) _m@@182))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@183 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@183) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Self__DEVICE_EXTENSION) _m@@183) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Self__DEVICE_EXTENSION) _m@@183)))
 :qid |KeyboardClassFindMorePortsbpl.2697:64|
 :skolemid |543|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Self__DEVICE_EXTENSION) _m@@183))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@184 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@184) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Started__DEVICE_EXTENSION) _m@@184) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.Started__DEVICE_EXTENSION) _m@@184)))
 :qid |KeyboardClassFindMorePortsbpl.2699:64|
 :skolemid |544|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Started__DEVICE_EXTENSION) _m@@184))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@185 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@185) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.GrandMaster__GLOBALS) _m@@185) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.GrandMaster__GLOBALS) _m@@185)))
 :qid |KeyboardClassFindMorePortsbpl.2701:64|
 :skolemid |545|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.GrandMaster__GLOBALS) _m@@185))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@186 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@186) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.P_DEVICE_OBJECT) _m@@186) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@6 T.P_DEVICE_OBJECT) _m@@186)))
 :qid |KeyboardClassFindMorePortsbpl.2703:64|
 :skolemid |546|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.P_DEVICE_OBJECT) _m@@186))
))) (and (= tempBoogie0@0 (MINUS_BOTH_PTR_OR_BOTH_INT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5)) 10 1)) (= Mem@8 (|Store__T@[name][Int]Int_| Mem@7 T.Length__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@7 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5) tempBoogie0@0))))))))) (and (=> (= (ControlFlow 0 119) (- 0 120)) (>= 1 0)) (=> (>= 1 0) (=> (> call2formal@new@0@@10 0) (=> (and (forall ((x@@353 Int) ) (!  (=> (and (<= call2formal@new@0@@10 x@@353) (< x@@353 (+ call2formal@new@0@@10 1))) (= (Base x@@353) call2formal@new@0@@10))
 :qid |KeyboardClassFindMorePortsbpl.1880:17|
 :skolemid |341|
 :pattern ( (Base x@@353))
)) (forall ((x@@354 Int) ) (!  (or (= x@@354 call2formal@new@0@@10) (= (|Select__T@[Int]name_| alloc@7 x@@354) (|Select__T@[Int]name_| alloc@8 x@@354)))
 :qid |KeyboardClassFindMorePortsbpl.1881:17|
 :skolemid |342|
 :pattern ( (|Select__T@[Int]name_| alloc@8 x@@354))
))) (=> (and (and (and (and (and (= (|Select__T@[Int]name_| alloc@7 call2formal@new@0@@10) UNALLOCATED) (= (|Select__T@[Int]name_| alloc@8 call2formal@new@0@@10) ALLOCATED)) (= Mem@9 Mem@8)) (and (= Res_DEV_OBJ_INIT@2 Res_DEV_OBJ_INIT@1) (= Res_DEV_EXTN@2 Res_DEV_EXTN@1))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@108 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@108) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@1 r@@108) (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@108)))
 :qid |KeyboardClassFindMorePortsbpl.2635:63|
 :skolemid |525|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@108))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@109 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@109) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@1 r@@109) (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@109)))
 :qid |KeyboardClassFindMorePortsbpl.2639:63|
 :skolemid |526|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@109))
))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@110 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@110) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@1 r@@110) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@110)))
 :qid |KeyboardClassFindMorePortsbpl.2643:63|
 :skolemid |527|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@110))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@111 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@111) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@1 r@@111) (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@111)))
 :qid |KeyboardClassFindMorePortsbpl.2647:63|
 :skolemid |528|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@111))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@187 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@187) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.MinorFunction__IO_STACK_LOCATION) _m@@187) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.MinorFunction__IO_STACK_LOCATION) _m@@187)))
 :qid |KeyboardClassFindMorePortsbpl.2649:64|
 :skolemid |529|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.MinorFunction__IO_STACK_LOCATION) _m@@187))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@188 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@188) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@188) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@188)))
 :qid |KeyboardClassFindMorePortsbpl.2651:64|
 :skolemid |530|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@188))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@189 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@189) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.DeviceExtension__DEVICE_OBJECT) _m@@189) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.DeviceExtension__DEVICE_OBJECT) _m@@189)))
 :qid |KeyboardClassFindMorePortsbpl.2653:64|
 :skolemid |531|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.DeviceExtension__DEVICE_OBJECT) _m@@189))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@190 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@190) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Self__DEVICE_EXTENSION) _m@@190) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.Self__DEVICE_EXTENSION) _m@@190)))
 :qid |KeyboardClassFindMorePortsbpl.2655:64|
 :skolemid |532|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Self__DEVICE_EXTENSION) _m@@190))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@191 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@191) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Started__DEVICE_EXTENSION) _m@@191) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.Started__DEVICE_EXTENSION) _m@@191)))
 :qid |KeyboardClassFindMorePortsbpl.2657:64|
 :skolemid |533|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Started__DEVICE_EXTENSION) _m@@191))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@192 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@192) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.GrandMaster__GLOBALS) _m@@192) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.GrandMaster__GLOBALS) _m@@192)))
 :qid |KeyboardClassFindMorePortsbpl.2659:64|
 :skolemid |534|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.GrandMaster__GLOBALS) _m@@192))
))))))) (=> (and (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@193 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@193) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.P_DEVICE_OBJECT) _m@@193) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@8 T.P_DEVICE_OBJECT) _m@@193)))
 :qid |KeyboardClassFindMorePortsbpl.2661:64|
 :skolemid |535|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.P_DEVICE_OBJECT) _m@@193))
))) (= Mem@10 Mem@9)) (and (= Res_DEV_OBJ_INIT@3 Res_DEV_OBJ_INIT@2) (= Res_DEV_EXTN@3 Res_DEV_EXTN@2))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@112 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@112) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@2 r@@112) (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@112)))
 :qid |KeyboardClassFindMorePortsbpl.2719:63|
 :skolemid |547|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@112))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@113 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@113) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@2 r@@113) (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@113)))
 :qid |KeyboardClassFindMorePortsbpl.2723:63|
 :skolemid |548|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@113))
))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@114 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@114) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@2 r@@114) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@114)))
 :qid |KeyboardClassFindMorePortsbpl.2727:63|
 :skolemid |549|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@114))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@115 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@115) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@2 r@@115) (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@115)))
 :qid |KeyboardClassFindMorePortsbpl.2731:63|
 :skolemid |550|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@115))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@194 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@194) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MinorFunction__IO_STACK_LOCATION) _m@@194) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.MinorFunction__IO_STACK_LOCATION) _m@@194)))
 :qid |KeyboardClassFindMorePortsbpl.2733:64|
 :skolemid |551|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MinorFunction__IO_STACK_LOCATION) _m@@194))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@195 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@195) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@195) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@195)))
 :qid |KeyboardClassFindMorePortsbpl.2735:64|
 :skolemid |552|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@195))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@196 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@196) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.DeviceExtension__DEVICE_OBJECT) _m@@196) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.DeviceExtension__DEVICE_OBJECT) _m@@196)))
 :qid |KeyboardClassFindMorePortsbpl.2737:64|
 :skolemid |553|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.DeviceExtension__DEVICE_OBJECT) _m@@196))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@197 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@197) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Self__DEVICE_EXTENSION) _m@@197) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Self__DEVICE_EXTENSION) _m@@197)))
 :qid |KeyboardClassFindMorePortsbpl.2739:64|
 :skolemid |554|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Self__DEVICE_EXTENSION) _m@@197))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@198 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@198) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Started__DEVICE_EXTENSION) _m@@198) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.Started__DEVICE_EXTENSION) _m@@198)))
 :qid |KeyboardClassFindMorePortsbpl.2741:64|
 :skolemid |555|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Started__DEVICE_EXTENSION) _m@@198))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@199 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@199) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.GrandMaster__GLOBALS) _m@@199) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.GrandMaster__GLOBALS) _m@@199)))
 :qid |KeyboardClassFindMorePortsbpl.2743:64|
 :skolemid |556|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.GrandMaster__GLOBALS) _m@@199))
))))))) (and (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@200 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@200) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.P_DEVICE_OBJECT) _m@@200) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@9 T.P_DEVICE_OBJECT) _m@@200)))
 :qid |KeyboardClassFindMorePortsbpl.2745:64|
 :skolemid |557|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.P_DEVICE_OBJECT) _m@@200))
))) (= Mem@11 (|Store__T@[name][Int]Int_| Mem@10 T.MaximumLength__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3) (PLUS (PLUS 18 1 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@10 T.Length__UNICODE_STRING) (Length__UNICODE_STRING call2formal@new@0@@5))) 1 2))))) (and (and (= $ExAllocatePoolWithTag.arg.2$5$@0 (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.MaximumLength__UNICODE_STRING) (MaximumLength__UNICODE_STRING call2formal@new@0@@3))) (= Mem@12 Mem@11)) (and (= Res_DEV_OBJ_INIT@4 Res_DEV_OBJ_INIT@3) (= Res_DEV_EXTN@4 Res_DEV_EXTN@3)))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@116 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@116) (= (|Select__T@[Int]Int_| Res_DEVICE_STACK@3 r@@116) (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@116)))
 :qid |KeyboardClassFindMorePortsbpl.2029:63|
 :skolemid |372|
 :pattern ( (|Select__T@[Int]Int_| Res_DEVICE_STACK@4 r@@116))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@117 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@117) (= (|Select__T@[Int]Int_| Res_DEV_EXTN@3 r@@117) (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@117)))
 :qid |KeyboardClassFindMorePortsbpl.2033:63|
 :skolemid |373|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_EXTN@4 r@@117))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((r@@118 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@118) (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@3 r@@118) (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@118)))
 :qid |KeyboardClassFindMorePortsbpl.2037:63|
 :skolemid |374|
 :pattern ( (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT@4 r@@118))
))) (and (Subset Empty (Union Empty Empty)) (forall ((r@@119 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty r@@119) (= (|Select__T@[Int]Int_| Res_SPIN_LOCK@3 r@@119) (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@119)))
 :qid |KeyboardClassFindMorePortsbpl.2041:63|
 :skolemid |375|
 :pattern ( (|Select__T@[Int]Int_| Res_SPIN_LOCK@4 r@@119))
)))))) (and (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@201 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@201) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.MinorFunction__IO_STACK_LOCATION) _m@@201) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.MinorFunction__IO_STACK_LOCATION) _m@@201)))
 :qid |KeyboardClassFindMorePortsbpl.2043:64|
 :skolemid |376|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.MinorFunction__IO_STACK_LOCATION) _m@@201))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@202 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@202) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@202) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@202)))
 :qid |KeyboardClassFindMorePortsbpl.2045:64|
 :skolemid |377|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.CurrentStackLocation___unnamed_4_f19b65c1) _m@@202))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@203 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@203) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.DeviceExtension__DEVICE_OBJECT) _m@@203) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.DeviceExtension__DEVICE_OBJECT) _m@@203)))
 :qid |KeyboardClassFindMorePortsbpl.2047:64|
 :skolemid |378|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.DeviceExtension__DEVICE_OBJECT) _m@@203))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@204 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@204) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Self__DEVICE_EXTENSION) _m@@204) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Self__DEVICE_EXTENSION) _m@@204)))
 :qid |KeyboardClassFindMorePortsbpl.2049:64|
 :skolemid |379|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Self__DEVICE_EXTENSION) _m@@204))
))))) (and (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@205 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@205) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Started__DEVICE_EXTENSION) _m@@205) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.Started__DEVICE_EXTENSION) _m@@205)))
 :qid |KeyboardClassFindMorePortsbpl.2051:64|
 :skolemid |380|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Started__DEVICE_EXTENSION) _m@@205))
))) (and (Subset Empty (Union Empty Empty)) (forall ((_m@@206 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@206) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.GrandMaster__GLOBALS) _m@@206) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.GrandMaster__GLOBALS) _m@@206)))
 :qid |KeyboardClassFindMorePortsbpl.2053:64|
 :skolemid |381|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.GrandMaster__GLOBALS) _m@@206))
)))) (and (and (Subset Empty (Union Empty Empty)) (forall ((_m@@207 Int) ) (!  (or (|Select__T@[Int]Bool_| Empty _m@@207) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.P_DEVICE_OBJECT) _m@@207) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@11 T.P_DEVICE_OBJECT) _m@@207)))
 :qid |KeyboardClassFindMorePortsbpl.2055:64|
 :skolemid |382|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.P_DEVICE_OBJECT) _m@@207))
))) (= Mem@13 (|Store__T@[name][Int]Int_| Mem@12 T.Buffer__UNICODE_STRING (|Store__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem@12 T.Buffer__UNICODE_STRING) (Buffer__UNICODE_STRING call2formal@new@0@@3) call8formal@$result.ExAllocatePoolWithTag$14788.0$1$@0)))))))) (and (=> (= (ControlFlow 0 119) 91) label_45_true_correct) (=> (= (ControlFlow 0 119) 13) label_45_false_correct))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (=> true (=> (not (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)) 0)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals))) 1))) (=> (and (and (and (=> true (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (LegacyDeviceList__GLOBALS Globals))) (=> true (and (Subset Empty (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals))) (forall ((_H_y@@21 Int) ) (!  (=> (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@21) (or (= _H_y@@21 (LegacyDeviceList__GLOBALS Globals)) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (MINUS_LEFT_PTR _H_y@@21 1 (Link__DEVICE_EXTENSION 0))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2800:235|
 :skolemid |569|
 :pattern ( (|Select__T@[Int]Bool_| (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) _H_y@@21))
))))) (and (=> true (not (|Select__T@[Int]Bool_| (Difference (ReachBetweenSet (Shift_Flink__LIST_ENTRY (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY)) (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Flink__LIST_ENTRY) (Flink__LIST_ENTRY (LegacyDeviceList__GLOBALS Globals))) (LegacyDeviceList__GLOBALS Globals)) (Singleton (LegacyDeviceList__GLOBALS Globals))) (Link__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.GrandMaster__GLOBALS) (GrandMaster__GLOBALS Globals)))))) (forall ((_H_x@@21 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_OBJ_INIT 1) _H_x@@21) (and (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@21)))) _H_x@@21) (= (|Select__T@[Int]Int_| Res_DEV_EXTN (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@21))) 1)))
 :qid |KeyboardClassFindMorePortsbpl.2804:18|
 :skolemid |570|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT _H_x@@21)))
)))) (and (and (forall ((_H_z@@41 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@41) (and (= (|Select__T@[Int]Int_| Res_DEV_OBJ_INIT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@41))) 1) (= (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.DeviceExtension__DEVICE_OBJECT) (DeviceExtension__DEVICE_OBJECT (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@41)))) _H_z@@41)))
 :qid |KeyboardClassFindMorePortsbpl.2806:19|
 :skolemid |571|
 :pattern ( (|Select__T@[Int]Int_| (|Select__T@[name][Int]Int_| Mem T.Self__DEVICE_EXTENSION) (Self__DEVICE_EXTENSION _H_z@@41)))
)) (and (Subset Empty (Inverse Res_DEV_EXTN 1)) (forall ((_H_z@@42 Int) ) (!  (=> (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@42) true)
 :qid |KeyboardClassFindMorePortsbpl.2806:417|
 :skolemid |572|
 :pattern ( (|Select__T@[Int]Bool_| (Inverse Res_DEV_EXTN 1) _H_z@@42))
)))) (= (ControlFlow 0 129) 119))) start_correct))))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(pop 1)
; Valid
(get-info :rlimit)
