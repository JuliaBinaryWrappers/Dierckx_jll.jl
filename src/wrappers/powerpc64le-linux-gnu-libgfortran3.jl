# Autogenerated wrapper script for Dierckx_jll for powerpc64le-linux-gnu-libgfortran3
export libddierckx

using CompilerSupportLibraries_jll
JLLWrappers.@generate_wrapper_header("Dierckx")
JLLWrappers.@declare_library_product(libddierckx, "libddierckx.so")
function __init__()
    JLLWrappers.@generate_init_header(CompilerSupportLibraries_jll)
    JLLWrappers.@init_library_product(
        libddierckx,
        "lib/libddierckx.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
