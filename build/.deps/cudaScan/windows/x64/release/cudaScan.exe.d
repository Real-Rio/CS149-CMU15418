{
    files = {
        [[build\.objs\cudaScan\windows\x64\release\asst3\scan\main.cpp.obj]],
        [[build\.objs\cudaScan\windows\x64\release\asst3\scan\scan.cu.obj]],
        [[build\.objs\cudaScan\windows\x64\release\rules\cuda\devlink\cudaScan_gpucode.cu.obj]],
        [[build\windows\x64\release\getopt.lib]]
    },
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
    }
}