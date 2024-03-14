{
    files = {
        [[build\.objs\cudaScan\windows\x64\release\asst3\scan\scan.cu.obj]],
        [[build\windows\x64\release\getopt.lib]]
    },
    values = {
        [[C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.4\bin\nvcc]],
        {
            [[-LC:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v12.4\lib\x64]],
            [[-Lbuild\windows\x64\release]],
            "-lcudart",
            "-lgetopt",
            "-lcudadevrt",
            "-m64",
            "-gencode",
            "arch=compute_61,code=sm_61",
            "-dlink"
        }
    }
}