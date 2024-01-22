import ProtoBuf
import BenchmarkTools
import ProfileView

include("./protos_jl/waymo/waymo.jl")
using .waymo: open_dataset

function read_example_proto()
    open("./data/example.pbbin", "r") do io
        decoder = ProtoBuf.ProtoDecoder(io)
        ProtoBuf.decode(decoder, open_dataset.Scenario)
    end
end

BenchmarkTools.@benchmark(read_example_proto()) |> display

ProfileView.@profview read_example_proto()
