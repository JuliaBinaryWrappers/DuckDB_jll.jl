# Autogenerated wrapper script for DuckDB_jll for i686-w64-mingw32-cxx03
export libduckdb

JLLWrappers.@generate_wrapper_header("DuckDB")
JLLWrappers.@declare_library_product(libduckdb, "libduckdb.dll")
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libduckdb,
        "bin\\libduckdb.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
