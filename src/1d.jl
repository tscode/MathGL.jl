# Functions used for 1d plotting, i.e. plotting data depending on only one
# parameter

function plot(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.plot(gr.ptr, Data(y), stl, opt)
end

function plot(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.plot_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function plot(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.plot_xyz(gr.ptr, Data(x), Data(y), Data(z), stl, opt)
end

function radar(gr::AbstractGraph, a::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.radar(gr.ptr, Data(a), stl, opt)
end


function step(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.step(gr.ptr, Data(y), stl, opt)
end

function step(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.step_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function step(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.step_xyz(gr.ptr, Data(x), Data(y), Data(z), stl, opt)
end


function tens(gr::AbstractGraph, y::Array{1, mgl.Float}, c::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tens(gr.ptr, Data(y), Data(c), stl, opt)
end

function plot(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tens_xy(gr.ptr, Data(x), Data(y), Data(c), stl, opt)
end

function plot(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}, c::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tens_xyz(gr.ptr, Data(x), Data(y), Data(z), Data(c), stl, opt)
end

function tape(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tape(gr.ptr, Data(y), stl, opt)
end

function tape(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tape_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function tape(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tape_xyz(gr.ptr, Data(x), Data(y), Data(z), stl, opt)
end

function area(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.area(gr.ptr, Data(y), stl, opt)
end

function area(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.area_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function area(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.area_xyz(gr.ptr, Data(x), Data(y), Data(z), stl, opt)
end

function region(gr::AbstractGraph, y1::Array{1, mgl.Float}, y2::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.region(gr.ptr, Data(y1), Data(y2), stl, opt)
end

function region(gr::AbstractGraph, x::Array{1, mgl.Float}, y1::Array{1, mgl.Float}, y2::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.region_xy(gr.ptr, Data(x), Data(y1), Data(y2), stl, opt)
end

function region(gr::AbstractGraph, x1::Array{1, mgl.Float}, x2::Array{1, mgl.Float}, y1::Array{1, mgl.Float}, y2::Array{1, mgl.Float}, z1::Array{1, mgl.Float}, z2::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.region_3d(gr.ptr, Data(x1), Data(x2), Data(y1), Data(y2), Data(z1), Data(z2), stl, opt)
end


function bars(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars(gr.ptr, Data(y), stl, opt)
end

function bars(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function bars(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars_xyz(gr.ptr, Data(x), Data(y), Data(z), stl, opt)
end

function bars(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars(gr.ptr, Data(y), stl, opt)
end

function stem(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stem(gr.ptr, Data(y), stl, opt)
end

function stem(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stem_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function stem(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stem_xyz(gr.ptr, Data(x), Data(y), Data(z), stl, opt)
end

function barh(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.barh(gr.ptr, Data(y), stl, opt)
end

function barh(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.barh_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function cones(gr::AbstractGraph, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cones(gr.ptr, Data(y), stl, opt)
end

function cones(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cones_xy(gr.ptr, Data(x), Data(y), stl, opt)
end

function cones(gr::AbstractGraph, x::Array{1, mgl.Float}, y::Array{1, mgl.Float}, z::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cones_xyz(gr.ptr, Data(x), Data(y), Data(z), stl, opt)
end

function chart(gr::AbstractGraph, a::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.chart(gr.ptr, Data(a), stl, opt)
end

function boxplot(gr::AbstractGraph, a::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.boxplot(gr.ptr, Data(y), stl, opt)
end

function boxplot(gr::AbstractGraph, x::Array{1, mgl.Float}, a::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.boxplot_xy(gr.ptr, Data(x), Data(a), stl, opt)
end


function candle(gr::AbstractGraph, v1::Array{1, mgl.Float}, y1::Array{1, mgl.Float}, y2::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.candle(gr.ptr, Data(v1), Data(y1), Data(y2), stl, opt)
end

function candle(gr::AbstractGraph, v1::Array{1, mgl.Float}, v2::Array{1, mgl.Float}, y1::Array{1, mgl.Float}, y2::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.candle_yv(gr.ptr, Data(v1), Data(v2), Data(y1), Data(y2), stl, opt)
end

function candle(gr::AbstractGraph, x::Array{1, mgl.Float}, v1::Array{1, mgl.Float}, v2::Array{1, mgl.Float}, y1::Array{1, mgl.Float}, y2::Array{1, mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.candle_xyv(gr.ptr, Data(x), Data(v1), Data(v2), Data(y1), Data(y2), stl, opt)
end

function ohlc(gr::AbstractGraph, o::Array{1, mgl.Float}, h::Array{1, mgl.Float}, l::Array{1, mgl.Float}, c::Array{1, mgl.Float}, stl::ASCIIString="", opt::ASCIIString="")
    mgl.ohcl(gr.ptr, Data(o), Data(h), Data(l), Data(c), stl, opt)
end

function ohlc(gr::AbstractGraph, x::Array{1, mgl.Float}, o::Array{1, mgl.Float}, h::Array{1, mgl.Float}, l::Array{1, mgl.Float}, c::Array{1, mgl.Float}, stl::ASCIIString="", opt::ASCIIString="")
    mgl.ohcl_x(gr.ptr, Data(x), Data(o), Data(h), Data(l), Data(c), stl, opt)
end
