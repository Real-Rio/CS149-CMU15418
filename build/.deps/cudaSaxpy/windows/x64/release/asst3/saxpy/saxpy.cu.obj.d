{
    values = {
        [[C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.4\bin\nvcc]],
        {
            "-O3",
            [[-IC:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.4\include]],
            "-Igetopt-for-windows",
            "-m64",
            "-rdc=true",
            "-gencode",
            "arch=compute_61,code=sm_61"
        }
    },
    depfiles_gcc = "build/.objs/cudaSaxpy/windows/x64/release/asst3/saxpy/saxpy.cu.obj : asst3/saxpy/saxpy.cu     E:/Documents/qq\\ file/MobileFile/CS149-CMU15418/asst3/saxpy/saxpy.cu     C://Program\\ Files//NVIDIA\\ GPU\\ Computing\\ Toolkit//CUDA//v12.4//include/cuda_runtime.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/host_config.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/crtdefs.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/vcruntime.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/sal.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/concurrencysal.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/vadefs.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/cstdarg     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/yvals_core.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/xkeycheck.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/stdarg.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/builtin_types.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/device_types.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/host_defines.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/ctype.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_wctype.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/driver_types.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/vector_types.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/limits.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/stddef.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/surface_types.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/texture_types.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/library_types.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/channel_descriptor.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/cuda_runtime_api.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/cuda_device_runtime_api.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/stdlib.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_malloc.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_search.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdlib.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/driver_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/vector_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/vector_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/common_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/host_defines.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/string.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_memory.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_memcpy_s.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/errno.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/vcruntime_string.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_wstring.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/time.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_wtime.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/new     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/exception     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/yvals.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/crtdbg.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/vcruntime_new_debug.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/vcruntime_new.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/use_ansi.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/cstdlib     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/math.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_math.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/type_traits     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/cstddef     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/xtr1common     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/cstdint     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/stdint.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/malloc.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/vcruntime_exception.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/eh.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_terminate.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/stdio.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdio.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/corecrt_stdio_config.h     E:/Windows\\ Kits/10/include/10.0.22621.0/ucrt/assert.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/math_functions.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/cmath     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/math_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/device_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/device_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/device_atomic_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/device_atomic_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/device_double_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/device_double_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_20_atomic_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_20_atomic_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_32_atomic_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_32_atomic_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_35_atomic_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_60_atomic_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_60_atomic_functions.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_20_intrinsics.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_20_intrinsics.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_30_intrinsics.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_30_intrinsics.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_32_intrinsics.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_32_intrinsics.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_35_intrinsics.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_61_intrinsics.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/sm_61_intrinsics.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/sm_70_rt.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/sm_70_rt.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/sm_80_rt.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/sm_80_rt.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/sm_90_rt.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/sm_90_rt.hpp     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/texture_indirect_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/surface_indirect_functions.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/crt/cudacc_ext.h     C:/Program\\ Files/NVIDIA\\ GPU\\ Computing\\ Toolkit/CUDA/v12.4/include/device_launch_parameters.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/utility     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/initializer_list     C://Program\\ Files//NVIDIA\\ GPU\\ Computing\\ Toolkit//CUDA//v12.4//include/cuda.h     C://Program\\ Files//NVIDIA\\ GPU\\ Computing\\ Toolkit//CUDA//v12.4//include/driver_functions.h     E:/Documents/qq\\ file/MobileFile/CS149-CMU15418/asst3/saxpy/CycleTimer.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/windows.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/winapifamily.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/winpackagefamily.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/sdkddkver.h     E:/software/visual\\ studio2022/VC/Tools/MSVC/14.38.33130/include/excpt.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/windef.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/minwindef.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/specstrings.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/specstrings_strict.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/specstrings_undef.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/driverspecs.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/sdv_driverspecs.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winnt.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/kernelspecs.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/basetsd.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/guiddef.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/pshpack4.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/poppack.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/pshpack2.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/pshpack8.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/pshpack1.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/apiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/ktmtypes.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winbase.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/apisetcconv.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/minwinbase.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/apiquery2.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/processenv.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/fileapifromapp.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/fileapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/debugapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/utilapiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/handleapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/errhandlingapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/fibersapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/namedpipeapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/profileapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/heapapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/ioapiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/synchapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/interlockedapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/processthreadsapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/sysinfoapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/memoryapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/enclaveapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/threadpoollegacyapiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/threadpoolapiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/jobapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/jobapi2.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/wow64apiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/libloaderapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/securitybaseapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/namespaceapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/systemtopologyapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/processtopologyapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/securityappcontainer.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/realtimeapiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/winerror.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/timezoneapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/wingdi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winuser.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/tvout.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winnls.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/datetimeapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/stringapiset.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/wincon.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/wincontypes.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/consoleapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/consoleapi2.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/consoleapi3.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winver.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/verrsrc.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winreg.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/reason.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winnetwk.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/wnnc.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/cderr.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/dde.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/ddeml.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/dlgs.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/lzexpand.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/mmsystem.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/mmsyscom.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/mciapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/mmiscapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/mmiscapi2.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/playsoundapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/mmeapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/timeapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/joystickapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/nb30.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/rpc.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/rpcdce.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/rpcdcep.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/rpcnsi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/rpcnterr.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/rpcasync.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/shellapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winperf.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winsock.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/inaddr.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/wincrypt.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/bcrypt.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/ncrypt.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/dpapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winefs.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winscard.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/wtypes.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/rpcndr.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/rpcnsip.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/rpcsal.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/wtypesbase.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winioctl.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/winsmcrd.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winspool.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/prsht.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/ole2.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/objbase.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/combaseapi.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/unknwnbase.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/objidlbase.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/cguid.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/coml2api.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/objidl.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/unknwn.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/propidlbase.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/oaidl.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/urlmon.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/oleidl.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/servprov.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/msxml.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/propidl.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/oleauto.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/commdlg.h     E:/Windows\\ Kits/10/include/10.0.22621.0/shared/stralign.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/winsvc.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/mcx.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/imm.h     E:/Windows\\ Kits/10/include/10.0.22621.0/um/ime_cmodes.h\
",
    files = {
        [[asst3\saxpy\saxpy.cu]]
    }
}