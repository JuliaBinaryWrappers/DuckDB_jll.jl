# Autogenerated wrapper script for DuckDB_jll for aarch64-apple-darwin
export duckdb, libduckdb

JLLWrappers.@generate_wrapper_header("DuckDB")
JLLWrappers.@declare_library_product(libduckdb, "@rpath/libduckdb.dylib")
JLLWrappers.@declare_executable_product(duckdb)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        libduckdb,
        "lib/libduckdb.dylib",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_executable_product(
        duckdb,
        "bin/duckdb",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
