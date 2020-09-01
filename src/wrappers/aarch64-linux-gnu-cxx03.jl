# Autogenerated wrapper script for DuckDB_jll for aarch64-linux-gnu-cxx03
export libduckdb

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"
LIBPATH_default = ""

# Relative path to `libduckdb`
const libduckdb_splitpath = ["lib", "libduckdb.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libduckdb_path = ""

# libduckdb-specific global declaration
# This will be filled out by __init__()
libduckdb_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libduckdb = "libduckdb.so"


# Inform that the wrapper is available for this platform
wrapper_available = true

"""
Open all libraries
"""
function __init__()
    # This either calls `@artifact_str()`, or returns a constant string if we're overridden.
    global artifact_dir = find_artifact_dir()

    global PATH_list, LIBPATH_list
    global libduckdb_path = normpath(joinpath(artifact_dir, libduckdb_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libduckdb_handle = dlopen(libduckdb_path, RTLD_LAZY | RTLD_DEEPBIND)
    push!(LIBPATH_list, dirname(libduckdb_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(vcat(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)]), ':')

    
end  # __init__()
