# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

mutable struct ObjectState <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function ObjectState(; kwargs...)
        obj = new(meta(ObjectState), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct ObjectState
const __meta_ObjectState = Ref{ProtoMeta}()
function meta(::Type{ObjectState})
    ProtoBuf.metalock() do
        if !isassigned(__meta_ObjectState)
            __meta_ObjectState[] = target = ProtoMeta(ObjectState)
            fnum = Int[2,3,4,5,6,7,8,9,10,11]
            allflds = Pair{Symbol,Union{Type,String}}[:center_x => Float64, :center_y => Float64, :center_z => Float64, :length => Float32, :width => Float32, :height => Float32, :heading => Float32, :velocity_x => Float32, :velocity_y => Float32, :valid => Bool]
            meta(target, ObjectState, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_ObjectState[]
    end
end
function Base.getproperty(obj::ObjectState, name::Symbol)
    if name === :center_x
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :center_y
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :center_z
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :length
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :width
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :height
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :heading
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :velocity_x
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :velocity_y
        return (obj.__protobuf_jl_internal_values[name])::Float32
    elseif name === :valid
        return (obj.__protobuf_jl_internal_values[name])::Bool
    else
        getfield(obj, name)
    end
end

const Track_ObjectType = (;[
    Symbol("TYPE_UNSET") => Int32(0),
    Symbol("TYPE_VEHICLE") => Int32(1),
    Symbol("TYPE_PEDESTRIAN") => Int32(2),
    Symbol("TYPE_CYCLIST") => Int32(3),
    Symbol("TYPE_OTHER") => Int32(4),
]...)

mutable struct Track <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Track(; kwargs...)
        obj = new(meta(Track), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Track
const __meta_Track = Ref{ProtoMeta}()
function meta(::Type{Track})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Track)
            __meta_Track[] = target = ProtoMeta(Track)
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int32, :object_type => Int32, :states => Base.Vector{ObjectState}]
            meta(target, Track, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Track[]
    end
end
function Base.getproperty(obj::Track, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :object_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{ObjectState}
    else
        getfield(obj, name)
    end
end

mutable struct DynamicMapState <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DynamicMapState(; kwargs...)
        obj = new(meta(DynamicMapState), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct DynamicMapState
const __meta_DynamicMapState = Ref{ProtoMeta}()
function meta(::Type{DynamicMapState})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DynamicMapState)
            __meta_DynamicMapState[] = target = ProtoMeta(DynamicMapState)
            allflds = Pair{Symbol,Union{Type,String}}[:lane_states => Base.Vector{TrafficSignalLaneState}]
            meta(target, DynamicMapState, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DynamicMapState[]
    end
end
function Base.getproperty(obj::DynamicMapState, name::Symbol)
    if name === :lane_states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TrafficSignalLaneState}
    else
        getfield(obj, name)
    end
end

const RequiredPrediction_DifficultyLevel = (;[
    Symbol("NONE") => Int32(0),
    Symbol("LEVEL_1") => Int32(1),
    Symbol("LEVEL_2") => Int32(2),
]...)

mutable struct RequiredPrediction <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RequiredPrediction(; kwargs...)
        obj = new(meta(RequiredPrediction), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct RequiredPrediction
const __meta_RequiredPrediction = Ref{ProtoMeta}()
function meta(::Type{RequiredPrediction})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RequiredPrediction)
            __meta_RequiredPrediction[] = target = ProtoMeta(RequiredPrediction)
            allflds = Pair{Symbol,Union{Type,String}}[:track_index => Int32, :difficulty => Int32]
            meta(target, RequiredPrediction, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RequiredPrediction[]
    end
end
function Base.getproperty(obj::RequiredPrediction, name::Symbol)
    if name === :track_index
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :difficulty
        return (obj.__protobuf_jl_internal_values[name])::Int32
    else
        getfield(obj, name)
    end
end

mutable struct Scenario <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Scenario(; kwargs...)
        obj = new(meta(Scenario), Dict{Symbol,Any}(), Set{Symbol}())
        values = obj.__protobuf_jl_internal_values
        symdict = obj.__protobuf_jl_internal_meta.symdict
        for nv in kwargs
            fldname, fldval = nv
            fldtype = symdict[fldname].jtyp
            (fldname in keys(symdict)) || error(string(typeof(obj), " has no field with name ", fldname))
            values[fldname] = isa(fldval, fldtype) ? fldval : convert(fldtype, fldval)
        end
        obj
    end
end # mutable struct Scenario
const __meta_Scenario = Ref{ProtoMeta}()
function meta(::Type{Scenario})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Scenario)
            __meta_Scenario[] = target = ProtoMeta(Scenario)
            fnum = Int[5,1,10,2,7,8,6,4,11]
            allflds = Pair{Symbol,Union{Type,String}}[:scenario_id => AbstractString, :timestamps_seconds => Base.Vector{Float64}, :current_time_index => Int32, :tracks => Base.Vector{Track}, :dynamic_map_states => Base.Vector{DynamicMapState}, :map_features => Base.Vector{MapFeature}, :sdc_track_index => Int32, :objects_of_interest => Base.Vector{Int32}, :tracks_to_predict => Base.Vector{RequiredPrediction}]
            meta(target, Scenario, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Scenario[]
    end
end
function Base.getproperty(obj::Scenario, name::Symbol)
    if name === :scenario_id
        return (obj.__protobuf_jl_internal_values[name])::AbstractString
    elseif name === :timestamps_seconds
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Float64}
    elseif name === :current_time_index
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :tracks
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Track}
    elseif name === :dynamic_map_states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{DynamicMapState}
    elseif name === :map_features
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MapFeature}
    elseif name === :sdc_track_index
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :objects_of_interest
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int32}
    elseif name === :tracks_to_predict
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{RequiredPrediction}
    else
        getfield(obj, name)
    end
end

export ObjectState, Track_ObjectType, Track, DynamicMapState, RequiredPrediction_DifficultyLevel, RequiredPrediction, Scenario
