# Use baremodule to shave off a few KB from the serialized `.ji` file
baremodule Dierckx_jll
using Base
using Base: UUID
import JLLWrappers

JLLWrappers.@generate_main_file_header("Dierckx")
JLLWrappers.@generate_main_file("Dierckx", UUID("cd4c43a9-7502-52ba-aa6d-59fb2a88580b"))
end  # module Dierckx_jll
