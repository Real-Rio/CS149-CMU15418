{
    values = {
        [[E:\software\visual studio2022\VC\Tools\MSVC\14.38.33130\bin\HostX64\x64\link.exe]],
        {
            "-nologo",
            "-dynamicbase",
            "-nxcompat",
            "-machine:x64",
            [[-libpath:C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.4\lib\x64]],
            [[-libpath:build\windows\x64\release]],
            "cudart.lib",
            "getopt.lib",
            "cudadevrt.lib"
        }
    },
    files = {
        [[build\.objs\cudaSaxpy\windows\x64\release\asst3\saxpy\main.cpp.obj]],
        [[build\.objs\cudaSaxpy\windows\x64\release\asst3\saxpy\saxpy.cu.obj]],
        [[build\.objs\cudaSaxpy\windows\x64\release\rules\cuda\devlink\cudaSaxpy_gpucode.cu.obj]],
        [[build\windows\x64\release\getopt.lib]]
    }
}