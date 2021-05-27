import ProtoBuf
import BenchmarkTools
import ProfileView

include("./protos_jl/waymo.jl")
import .waymo.Protos

function read_example_proto()
    open("./data/example.pbbin", "r") do io
        ProtoBuf.readproto(io, Protos.Scenario())
    end
end

BenchmarkTools.@benchmark(read_example_proto()) |> display

ProfileView.@profview read_example_proto()
