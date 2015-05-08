# Functions used for 1d plotting, i.e. plotting data depending on only one
# parameter

function plot(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.plot(gr.ptr, Data(y).ptr, stl, opt)
end

function plot(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.plot_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function plot(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.plot_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function radar(gr::AbstractGraph, a::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.radar(gr.ptr, Data(a).ptr, stl, opt)
end


function step(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.step(gr.ptr, Data(y).ptr, stl, opt)
end

function step(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.step_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function step(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.step_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function tens(gr::AbstractGraph, y::Array{mgl.Float, 1}, c::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tens(gr.ptr, Data(y).ptr, Data(c).ptr, stl, opt)
end

function plot(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tens_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(c).ptr, stl, opt)
end

function plot(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, c::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tens_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end

function tape(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tape(gr.ptr, Data(y).ptr, stl, opt)
end

function tape(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tape_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function tape(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tape_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function area(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.area(gr.ptr, Data(y).ptr, stl, opt)
end

function area(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.area_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function area(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.area_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function region(gr::AbstractGraph, y1::Array{mgl.Float, 1}, y2::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.region(gr.ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function region(gr::AbstractGraph, x::Array{mgl.Float, 1}, y1::Array{mgl.Float, 1}, y2::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.region_xy(gr.ptr, Data(x).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function region(gr::AbstractGraph, x1::Array{mgl.Float, 1}, x2::Array{mgl.Float, 1}, y1::Array{mgl.Float, 1}, y2::Array{mgl.Float, 1}, z1::Array{mgl.Float, 1}, z2::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.region_3d(gr.ptr, Data(x1).ptr, Data(x2).ptr, Data(y1).ptr, Data(y2).ptr, Data(z1).ptr, Data(z2).ptr, stl, opt)
end


function bars(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars(gr.ptr, Data(y).ptr, stl, opt)
end

function bars(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function bars(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function bars(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.bars(gr.ptr, Data(y).ptr, stl, opt)
end

function stem(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stem(gr.ptr, Data(y).ptr, stl, opt)
end

function stem(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stem_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function stem(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stem_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function barh(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.barh(gr.ptr, Data(y).ptr, stl, opt)
end

function barh(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.barh_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function cones(gr::AbstractGraph, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cones(gr.ptr, Data(y).ptr, stl, opt)
end

function cones(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cones_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function cones(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cones_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function chart(gr::AbstractGraph, a::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.chart(gr.ptr, Data(a).ptr, stl, opt)
end

function boxplot(gr::AbstractGraph, a::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.boxplot(gr.ptr, Data(y).ptr, stl, opt)
end

function boxplot(gr::AbstractGraph, x::Array{mgl.Float, 1}, a::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.boxplot_xy(gr.ptr, Data(x).ptr, Data(a).ptr, stl, opt)
end


function candle(gr::AbstractGraph, v1::Array{mgl.Float, 1}, y1::Array{mgl.Float, 1}, y2::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.candle(gr.ptr, Data(v1).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function candle(gr::AbstractGraph, v1::Array{mgl.Float, 1}, v2::Array{mgl.Float, 1}, y1::Array{mgl.Float, 1}, y2::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.candle_yv(gr.ptr, Data(v1).ptr, Data(v2).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function candle(gr::AbstractGraph, x::Array{mgl.Float, 1}, v1::Array{mgl.Float, 1}, v2::Array{mgl.Float, 1}, y1::Array{mgl.Float, 1}, y2::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.candle_xyv(gr.ptr, Data(x).ptr, Data(v1).ptr, Data(v2).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function ohlc(gr::AbstractGraph, o::Array{mgl.Float, 1}, h::Array{mgl.Float, 1}, l::Array{mgl.Float, 1}, c::Array{mgl.Float, 1}, stl::ASCIIString="", opt::ASCIIString="")
    mgl.ohcl(gr.ptr, Data(o).ptr, Data(h).ptr, Data(l).ptr, Data(c).ptr, stl, opt)
end

function ohlc(gr::AbstractGraph, x::Array{mgl.Float, 1}, o::Array{mgl.Float, 1}, h::Array{mgl.Float, 1}, l::Array{mgl.Float, 1}, c::Array{mgl.Float, 1}, stl::ASCIIString="", opt::ASCIIString="")
    mgl.ohcl_x(gr.ptr, Data(x).ptr, Data(o).ptr, Data(h).ptr, Data(l).ptr, Data(c).ptr, stl, opt)
end

function error(gr::AbstractGraph, y::Array{mgl.Float, 1}, ey::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.error(gr.ptr, Data(y).ptr, Data(ey).ptr, pen, opt)
end

function error(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, ey::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.error_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ey).ptr, pen, opt)
end

function error(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, ex::Array{mgl.Float, 1}, ey::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.error_exy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ex).ptr, Data(ey).ptr, pen, opt)
end

function mark(gr::AbstractGraph, y::Array{mgl.Float, 1}; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.mark_y(gr.ptr, Data(y).ptr, Data(r_).ptr, pen, opt)
end

function mark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.mark_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r_).ptr, pen, opt)
end

function mark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; r::mgl.Float=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.mark_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r_).ptr, pen, opt)
end

function mark(gr::AbstractGraph, y::Array{mgl.Float, 1}; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.mark_y(gr.ptr, Data(y).ptr, Data(r).ptr, pen, opt)
end

function mark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.mark_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r).ptr, pen, opt)
end

function mark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.mark_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, pen, opt)
end


function textmark(gr::AbstractGraph, y::Array{mgl.Float, 1}, txt::ASCIIString; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.textmark_yr(gr.ptr, Data(y).ptr, Data(r_).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, y::Array{mgl.Float, 1}, txt::UTF8String; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.textmarkw_yr(gr.ptr, Data(y).ptr, Data(r_).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, y::Array{mgl.Float, 1}, txt::ASCIIString; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.textmark_yr(gr.ptr, Data(y).ptr, Data(r).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, y::Array{mgl.Float, 1}, txt::UTF8String; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.textmarkw_yr(gr.ptr, Data(y).ptr, Data(r).ptr, txt, stl, opt)
end


function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, txt::ASCIIString; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.textmark_xyr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r_).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, txt::UTF8String; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.textmarkw_xyr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r_).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, txt::ASCIIString; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.textmark_xyr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, txt::UTF8String; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.textmarkw_xyr(gr.ptr, Data(x), Data(y).ptr, Data(r).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, txt::ASCIIString; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.textmark_xyzr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r_).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, txt::UTF8String; r::mgl.Float=1, stl::ASCIIString="", opt::ASCIIString="")
    r_ = zeros(length(y))
    fill!(r_, r)
    mgl.textmarkw_xyzr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r_).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, txt::ASCIIString; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.textmark_xyzr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, txt, stl, opt)
end

function textmark(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, txt::UTF8String; r::Array{mgl.Float, 1}=ones(length(y)), stl::ASCIIString="", opt::ASCIIString="")
    mgl.textmarkw_xyzr(gr.ptr, Data(x), Data(y).ptr, Data(z).ptr, Data(r).ptr, txt, stl, opt)
end


function label(gr::AbstractGraph, y::Array{mgl.Float, 1}, txt::ASCIIString; stl::ASCIIString="", opt::ASCIIString="")
    mgl.label(gr.ptr, Data(y).ptr, txt, stl, opt)
end

function label(gr::AbstractGraph, y::Array{mgl.Float, 1}, txt::UTF8String; stl::ASCIIString="", opt::ASCIIString="")
    mgl.labelw(gr.ptr, Data(y).ptr, txt, stl, opt)
end

function label(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, txt::ASCIIString; stl::ASCIIString="", opt::ASCIIString="")
    mgl.label_xy(gr.ptr, Data(x).ptr, Data(y).ptr, txt, stl, opt)
end

function label(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, txt::UTF8String; stl::ASCIIString="", opt::ASCIIString="")
    mgl.labelw_xy(gr.ptr, Data(x).ptr, Data(y).ptr, txt, stl, opt)
end

function label(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, txt::ASCIIString; stl::ASCIIString="", opt::ASCIIString="")
    mgl.label_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, txt, stl, opt)
end

function label(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, txt::UTF8String; stl::ASCIIString="", opt::ASCIIString="")
    mgl.labelw_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, txt, stl, opt)
end

function table(gr::AbstractGraph, val::Array{mgl.Float}, txt::Array{ASCIIString, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.table(gr.ptr, 0, 0, Data(val).ptr, join(txt, '\n'), stl)
end

function table(gr::AbstractGraph, val::Array{mgl.Float}, txt::Array{UTF8String, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tablew(gr.ptr, 0, 0, Data(val).ptr, join(txt, '\n'), stl)
end

function table(gr::AbstractGraph, x::mgl.Float, y::mgl.Float, val::Array{mgl.Float}, txt::Array{ASCIIString, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.table(gr.ptr, x, y, Data(val).ptr, join(txt, '\n'), stl)
end

function table(gr::AbstractGraph, x::mgl.Float, y::mgl.Float, val::Array{mgl.Float}, txt::Array{UTF8String, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tablew(gr.ptr, x, y, Data(val).ptr, join(txt, '\n'), stl)
end

function tube(gr::AbstractGraph, y::Array{mgl.Float, 1}, r::mgl.Float; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tube(gr.ptr, Data(y).ptr, r, stl, opt)
end

function tube(gr::AbstractGraph, y::Array{mgl.Float, 1}, r::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tube_r(gr.ptr, Data(y).ptr, Data(r).ptr, stl, opt)
end

function tube(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, r::mgl.Float; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tube_xy(gr.ptr, Data(x).ptr, Data(y).ptr, r, stl, opt)
end

function tube(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, r::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tube_xyr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r).ptr, stl, opt)
end

function tube(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, r::mgl.Float; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tube_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, r, stl, opt)
end

function tube(gr::AbstractGraph, x::Array{mgl.Float, 1}, y::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}, r::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tube_xyzr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, stl, opt)
end

function torus(gr::AbstractGraph, r::Array{mgl.Float, 1}, z::Array{mgl.Float, 1}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.torus(gr.ptr, Data(r).ptr, Data(z).ptr, stl, opt)
end
