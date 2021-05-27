# syntax: proto2
using ProtoBuf
import ProtoBuf.meta

mutable struct MapPoint <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MapPoint(; kwargs...)
        obj = new(meta(MapPoint), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MapPoint
const __meta_MapPoint = Ref{ProtoMeta}()
function meta(::Type{MapPoint})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MapPoint)
            __meta_MapPoint[] = target = ProtoMeta(MapPoint)
            allflds = Pair{Symbol,Union{Type,String}}[:x => Float64, :y => Float64, :z => Float64]
            meta(target, MapPoint, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_MapPoint[]
    end
end
function Base.getproperty(obj::MapPoint, name::Symbol)
    if name === :x
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :y
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :z
        return (obj.__protobuf_jl_internal_values[name])::Float64
    else
        getfield(obj, name)
    end
end

const TrafficSignalLaneState_State = (;[
    Symbol("LANE_STATE_UNKNOWN") => Int32(0),
    Symbol("LANE_STATE_ARROW_STOP") => Int32(1),
    Symbol("LANE_STATE_ARROW_CAUTION") => Int32(2),
    Symbol("LANE_STATE_ARROW_GO") => Int32(3),
    Symbol("LANE_STATE_STOP") => Int32(4),
    Symbol("LANE_STATE_CAUTION") => Int32(5),
    Symbol("LANE_STATE_GO") => Int32(6),
    Symbol("LANE_STATE_FLASHING_STOP") => Int32(7),
    Symbol("LANE_STATE_FLASHING_CAUTION") => Int32(8),
]...)

mutable struct TrafficSignalLaneState <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function TrafficSignalLaneState(; kwargs...)
        obj = new(meta(TrafficSignalLaneState), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct TrafficSignalLaneState
const __meta_TrafficSignalLaneState = Ref{ProtoMeta}()
function meta(::Type{TrafficSignalLaneState})
    ProtoBuf.metalock() do
        if !isassigned(__meta_TrafficSignalLaneState)
            __meta_TrafficSignalLaneState[] = target = ProtoMeta(TrafficSignalLaneState)
            allflds = Pair{Symbol,Union{Type,String}}[:lane => Int64, :state => Int32, :stop_point => MapPoint]
            meta(target, TrafficSignalLaneState, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_TrafficSignalLaneState[]
    end
end
function Base.getproperty(obj::TrafficSignalLaneState, name::Symbol)
    if name === :lane
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :state
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :stop_point
        return (obj.__protobuf_jl_internal_values[name])::MapPoint
    else
        getfield(obj, name)
    end
end

mutable struct DynamicState <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function DynamicState(; kwargs...)
        obj = new(meta(DynamicState), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct DynamicState
const __meta_DynamicState = Ref{ProtoMeta}()
function meta(::Type{DynamicState})
    ProtoBuf.metalock() do
        if !isassigned(__meta_DynamicState)
            __meta_DynamicState[] = target = ProtoMeta(DynamicState)
            allflds = Pair{Symbol,Union{Type,String}}[:timestamp_seconds => Float64, :lane_states => Base.Vector{TrafficSignalLaneState}]
            meta(target, DynamicState, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_DynamicState[]
    end
end
function Base.getproperty(obj::DynamicState, name::Symbol)
    if name === :timestamp_seconds
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :lane_states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{TrafficSignalLaneState}
    else
        getfield(obj, name)
    end
end

const LaneCenter_LaneType = (;[
    Symbol("TYPE_UNDEFINED") => Int32(0),
    Symbol("TYPE_FREEWAY") => Int32(1),
    Symbol("TYPE_SURFACE_STREET") => Int32(2),
    Symbol("TYPE_BIKE_LANE") => Int32(3),
]...)

mutable struct LaneCenter <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function LaneCenter(; kwargs...)
        obj = new(meta(LaneCenter), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct LaneCenter
const __meta_LaneCenter = Ref{ProtoMeta}()
function meta(::Type{LaneCenter})
    ProtoBuf.metalock() do
        if !isassigned(__meta_LaneCenter)
            __meta_LaneCenter[] = target = ProtoMeta(LaneCenter)
            fnum = Int[1,2,3,8]
            allflds = Pair{Symbol,Union{Type,String}}[:speed_limit_mph => Float64, :_type => Int32, :interpolating => Bool, :polyline => Base.Vector{MapPoint}]
            meta(target, LaneCenter, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_LaneCenter[]
    end
end
function Base.getproperty(obj::LaneCenter, name::Symbol)
    if name === :speed_limit_mph
        return (obj.__protobuf_jl_internal_values[name])::Float64
    elseif name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :interpolating
        return (obj.__protobuf_jl_internal_values[name])::Bool
    elseif name === :polyline
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MapPoint}
    else
        getfield(obj, name)
    end
end

const RoadEdge_RoadEdgeType = (;[
    Symbol("TYPE_UNKNOWN") => Int32(0),
    Symbol("TYPE_ROAD_EDGE_BOUNDARY") => Int32(1),
    Symbol("TYPE_ROAD_EDGE_MEDIAN") => Int32(2),
]...)

mutable struct RoadEdge <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RoadEdge(; kwargs...)
        obj = new(meta(RoadEdge), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RoadEdge
const __meta_RoadEdge = Ref{ProtoMeta}()
function meta(::Type{RoadEdge})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RoadEdge)
            __meta_RoadEdge[] = target = ProtoMeta(RoadEdge)
            allflds = Pair{Symbol,Union{Type,String}}[:_type => Int32, :polyline => Base.Vector{MapPoint}]
            meta(target, RoadEdge, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RoadEdge[]
    end
end
function Base.getproperty(obj::RoadEdge, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :polyline
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MapPoint}
    else
        getfield(obj, name)
    end
end

const RoadLine_RoadLineType = (;[
    Symbol("TYPE_UNKNOWN") => Int32(0),
    Symbol("TYPE_BROKEN_SINGLE_WHITE") => Int32(1),
    Symbol("TYPE_SOLID_SINGLE_WHITE") => Int32(2),
    Symbol("TYPE_SOLID_DOUBLE_WHITE") => Int32(3),
    Symbol("TYPE_BROKEN_SINGLE_YELLOW") => Int32(4),
    Symbol("TYPE_BROKEN_DOUBLE_YELLOW") => Int32(5),
    Symbol("TYPE_SOLID_SINGLE_YELLOW") => Int32(6),
    Symbol("TYPE_SOLID_DOUBLE_YELLOW") => Int32(7),
    Symbol("TYPE_PASSING_DOUBLE_YELLOW") => Int32(8),
]...)

mutable struct RoadLine <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function RoadLine(; kwargs...)
        obj = new(meta(RoadLine), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct RoadLine
const __meta_RoadLine = Ref{ProtoMeta}()
function meta(::Type{RoadLine})
    ProtoBuf.metalock() do
        if !isassigned(__meta_RoadLine)
            __meta_RoadLine[] = target = ProtoMeta(RoadLine)
            allflds = Pair{Symbol,Union{Type,String}}[:_type => Int32, :polyline => Base.Vector{MapPoint}]
            meta(target, RoadLine, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_RoadLine[]
    end
end
function Base.getproperty(obj::RoadLine, name::Symbol)
    if name === :_type
        return (obj.__protobuf_jl_internal_values[name])::Int32
    elseif name === :polyline
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MapPoint}
    else
        getfield(obj, name)
    end
end

mutable struct StopSign <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function StopSign(; kwargs...)
        obj = new(meta(StopSign), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct StopSign
const __meta_StopSign = Ref{ProtoMeta}()
function meta(::Type{StopSign})
    ProtoBuf.metalock() do
        if !isassigned(__meta_StopSign)
            __meta_StopSign[] = target = ProtoMeta(StopSign)
            allflds = Pair{Symbol,Union{Type,String}}[:lane => Base.Vector{Int64}, :position => MapPoint]
            meta(target, StopSign, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_StopSign[]
    end
end
function Base.getproperty(obj::StopSign, name::Symbol)
    if name === :lane
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{Int64}
    elseif name === :position
        return (obj.__protobuf_jl_internal_values[name])::MapPoint
    else
        getfield(obj, name)
    end
end

mutable struct Crosswalk <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Crosswalk(; kwargs...)
        obj = new(meta(Crosswalk), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Crosswalk
const __meta_Crosswalk = Ref{ProtoMeta}()
function meta(::Type{Crosswalk})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Crosswalk)
            __meta_Crosswalk[] = target = ProtoMeta(Crosswalk)
            allflds = Pair{Symbol,Union{Type,String}}[:polygon => Base.Vector{MapPoint}]
            meta(target, Crosswalk, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Crosswalk[]
    end
end
function Base.getproperty(obj::Crosswalk, name::Symbol)
    if name === :polygon
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MapPoint}
    else
        getfield(obj, name)
    end
end

mutable struct SpeedBump <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function SpeedBump(; kwargs...)
        obj = new(meta(SpeedBump), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct SpeedBump
const __meta_SpeedBump = Ref{ProtoMeta}()
function meta(::Type{SpeedBump})
    ProtoBuf.metalock() do
        if !isassigned(__meta_SpeedBump)
            __meta_SpeedBump[] = target = ProtoMeta(SpeedBump)
            allflds = Pair{Symbol,Union{Type,String}}[:polygon => Base.Vector{MapPoint}]
            meta(target, SpeedBump, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_SpeedBump[]
    end
end
function Base.getproperty(obj::SpeedBump, name::Symbol)
    if name === :polygon
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MapPoint}
    else
        getfield(obj, name)
    end
end

mutable struct MapFeature <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function MapFeature(; kwargs...)
        obj = new(meta(MapFeature), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct MapFeature
const __meta_MapFeature = Ref{ProtoMeta}()
function meta(::Type{MapFeature})
    ProtoBuf.metalock() do
        if !isassigned(__meta_MapFeature)
            __meta_MapFeature[] = target = ProtoMeta(MapFeature)
            fnum = Int[1,3,4,5,7,8,9]
            allflds = Pair{Symbol,Union{Type,String}}[:id => Int64, :lane => LaneCenter, :road_line => RoadLine, :road_edge => RoadEdge, :stop_sign => StopSign, :crosswalk => Crosswalk, :speed_bump => SpeedBump]
            oneofs = Int[0,1,1,1,1,1,1]
            oneof_names = Symbol[Symbol("feature_data")]
            meta(target, MapFeature, allflds, ProtoBuf.DEF_REQ, fnum, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, oneofs, oneof_names)
        end
        __meta_MapFeature[]
    end
end
function Base.getproperty(obj::MapFeature, name::Symbol)
    if name === :id
        return (obj.__protobuf_jl_internal_values[name])::Int64
    elseif name === :lane
        return (obj.__protobuf_jl_internal_values[name])::LaneCenter
    elseif name === :road_line
        return (obj.__protobuf_jl_internal_values[name])::RoadLine
    elseif name === :road_edge
        return (obj.__protobuf_jl_internal_values[name])::RoadEdge
    elseif name === :stop_sign
        return (obj.__protobuf_jl_internal_values[name])::StopSign
    elseif name === :crosswalk
        return (obj.__protobuf_jl_internal_values[name])::Crosswalk
    elseif name === :speed_bump
        return (obj.__protobuf_jl_internal_values[name])::SpeedBump
    else
        getfield(obj, name)
    end
end

mutable struct Map <: ProtoType
    __protobuf_jl_internal_meta::ProtoMeta
    __protobuf_jl_internal_values::Dict{Symbol,Any}
    __protobuf_jl_internal_defaultset::Set{Symbol}

    function Map(; kwargs...)
        obj = new(meta(Map), Dict{Symbol,Any}(), Set{Symbol}())
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
end # mutable struct Map
const __meta_Map = Ref{ProtoMeta}()
function meta(::Type{Map})
    ProtoBuf.metalock() do
        if !isassigned(__meta_Map)
            __meta_Map[] = target = ProtoMeta(Map)
            allflds = Pair{Symbol,Union{Type,String}}[:map_features => Base.Vector{MapFeature}, :dynamic_states => Base.Vector{DynamicState}]
            meta(target, Map, allflds, ProtoBuf.DEF_REQ, ProtoBuf.DEF_FNUM, ProtoBuf.DEF_VAL, ProtoBuf.DEF_PACK, ProtoBuf.DEF_WTYPES, ProtoBuf.DEF_ONEOFS, ProtoBuf.DEF_ONEOF_NAMES)
        end
        __meta_Map[]
    end
end
function Base.getproperty(obj::Map, name::Symbol)
    if name === :map_features
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{MapFeature}
    elseif name === :dynamic_states
        return (obj.__protobuf_jl_internal_values[name])::Base.Vector{DynamicState}
    else
        getfield(obj, name)
    end
end

export Map, DynamicState, TrafficSignalLaneState_State, TrafficSignalLaneState, MapFeature, MapPoint, LaneCenter_LaneType, LaneCenter, RoadEdge_RoadEdgeType, RoadEdge, RoadLine_RoadLineType, RoadLine, StopSign, Crosswalk, SpeedBump
