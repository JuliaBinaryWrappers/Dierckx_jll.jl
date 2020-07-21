# Autogenerated wrapper script for Dierckx_jll for i686-w64-mingw32-libgfortran5
export libddierckx

using CompilerSupportLibraries_jll
## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "PATH"
LIBPATH_default = ""

# Relative path to `libddierckx`
const libddierckx_splitpath = ["bin", "libddierckx.dll"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libddierckx_path = ""

# libddierckx-specific global declaration
# This will be filled out by __init__()
libddierckx_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libddierckx = "libddierckx.dll"


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"Dierckx")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # From the list of our dependencies, generate a tuple of all the PATH and LIBPATH lists,
    # then append them to our own.
    foreach(p -> append!(PATH_list, p), (CompilerSupportLibraries_jll.PATH_list,))
    foreach(p -> append!(LIBPATH_list, p), (CompilerSupportLibraries_jll.LIBPATH_list,))

    global libddierckx_path = normpath(joinpath(artifact_dir, libddierckx_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libddierckx_handle = dlopen(libddierckx_path)
    push!(LIBPATH_list, dirname(libddierckx_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ';')
    global LIBPATH = join(vcat(LIBPATH_list, [Sys.BINDIR, joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ';')

    
end  # __init__()

