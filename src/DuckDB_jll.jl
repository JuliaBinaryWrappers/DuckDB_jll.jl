# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule DuckDB_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("DuckDB")
JLLWrappers.@generate_main_file("DuckDB", UUID("2cbbab25-fc8b-58cf-88d4-687a02676033"))
end  # module DuckDB_jll
