if is_plat("windows") then
    target("getopt")
        set_kind("static")
        add_includedirs("getopt-for-windows", {public = true})
        add_files("getopt-for-windows/getopt.c")
    target_end()
end

target("common")
    set_kind("static")
    add_includedirs("asst1/common", {public = true})
    add_files("asst1/common/*.cpp")
target_end()


includes("asst1")
includes("asst3")