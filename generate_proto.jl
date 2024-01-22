using ProtoBuf: protojl

protojl(["map.proto", "scenario.proto"], "protos", "protos_jl")
