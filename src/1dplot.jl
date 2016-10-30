# Functions used for 1d plotting, i.e. plotting data depending on only one
# parameter

function plot(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.plot(gr.ptr, Data(y).ptr, stl, opt)
end

function plot(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.plot_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function plot(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.plot_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function radar(gr::Graph, a::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.radar(gr.ptr, Data(a).ptr, stl, opt)
end


function step(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.step(gr.ptr, Data(y).ptr, stl, opt)
end

function step(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.step_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function step(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.step_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function tens(gr::Graph, y::Array{cmgl.Float}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tens(gr.ptr, Data(y).ptr, Data(c).ptr, stl, opt)
end

function tens(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tens_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(c).ptr, stl, opt)
end

function tens(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tens_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end

function tape(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tape(gr.ptr, Data(y).ptr, stl, opt)
end

function tape(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tape_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function tape(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tape_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function area(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.area(gr.ptr, Data(y).ptr, stl, opt)
end

function area(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.area_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function area(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.area_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function region(gr::Graph, y1::Array{cmgl.Float}, y2::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.region(gr.ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function region(gr::Graph, x::Array{cmgl.Float}, y1::Array{cmgl.Float}, y2::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.region_xy(gr.ptr, Data(x).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function region(gr::Graph, x1::Array{cmgl.Float}, x2::Array{cmgl.Float}, y1::Array{cmgl.Float}, y2::Array{cmgl.Float}, z1::Array{cmgl.Float}, z2::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.region_3d(gr.ptr, Data(x1).ptr, Data(x2).ptr, Data(y1).ptr, Data(y2).ptr, Data(z1).ptr, Data(z2).ptr, stl, opt)
end


function bars(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.bars(gr.ptr, Data(y).ptr, stl, opt)
end

function bars(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.bars_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function bars(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.bars_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function stem(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.stem(gr.ptr, Data(y).ptr, stl, opt)
end

function stem(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.stem_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function stem(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.stem_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function barh(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.barh(gr.ptr, Data(y).ptr, stl, opt)
end

function barh(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.barh_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function cones(gr::Graph, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.cones(gr.ptr, Data(y).ptr, stl, opt)
end

function cones(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.cones_xy(gr.ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function cones(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.cones_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function chart(gr::Graph, a::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.chart(gr.ptr, Data(a).ptr, stl, opt)
end

function boxplot(gr::Graph, a::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.boxplot(gr.ptr, Data(y).ptr, stl, opt)
end

function boxplot(gr::Graph, x::Array{cmgl.Float}, a::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.boxplot_xy(gr.ptr, Data(x).ptr, Data(a).ptr, stl, opt)
end


function candle(gr::Graph, v1::Array{cmgl.Float}, y1::Array{cmgl.Float}, y2::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.candle(gr.ptr, Data(v1).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function candle(gr::Graph, v1::Array{cmgl.Float}, v2::Array{cmgl.Float}, y1::Array{cmgl.Float}, y2::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.candle_yv(gr.ptr, Data(v1).ptr, Data(v2).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function candle(gr::Graph, x::Array{cmgl.Float}, v1::Array{cmgl.Float}, v2::Array{cmgl.Float}, y1::Array{cmgl.Float}, y2::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.candle_xyv(gr.ptr, Data(x).ptr, Data(v1).ptr, Data(v2).ptr, Data(y1).ptr, Data(y2).ptr, stl, opt)
end

function ohlc(gr::Graph, o::Array{cmgl.Float}, h::Array{cmgl.Float}, l::Array{cmgl.Float}, c::Array{cmgl.Float}, stl::String="", opt::String="")
    cmgl.ohcl(gr.ptr, Data(o).ptr, Data(h).ptr, Data(l).ptr, Data(c).ptr, stl, opt)
end

function ohlc(gr::Graph, x::Array{cmgl.Float}, o::Array{cmgl.Float}, h::Array{cmgl.Float}, l::Array{cmgl.Float}, c::Array{cmgl.Float}, stl::String="", opt::String="")
    cmgl.ohcl_x(gr.ptr, Data(x).ptr, Data(o).ptr, Data(h).ptr, Data(l).ptr, Data(c).ptr, stl, opt)
end

function error(gr::Graph, y::Array{cmgl.Float}, ey::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.error(gr.ptr, Data(y).ptr, Data(ey).ptr, pen, opt)
end

function error(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, ey::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.error_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ey).ptr, pen, opt)
end

function error(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, ex::Array{cmgl.Float}, ey::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.error_exy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ex).ptr, Data(ey).ptr, pen, opt)
end

#=function mark(gr::Graph, y::Array{cmgl.Float}; r::cmgl.Float=1, stl::String="", opt::String="")=#
    #=r_ = zeros(length(y))=#
    #=fill!(r_, r)=#
    #=cmgl.mark_y(gr.ptr, Data(y).ptr, Data(r_).ptr, pen, opt)=#
#=end=#

#=function mark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}; r::cmgl.Float=1, stl::String="", opt::String="")=#
    #=r_ = zeros(length(y))=#
    #=fill!(r_, r)=#
    #=cmgl.mark_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r_).ptr, pen, opt)=#
#=end=#

#=function mark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}; r::cmgl.Float=ones(length(y)), stl::String="", opt::String="")=#
    #=r_ = zeros(length(y))=#
    #=fill!(r_, r)=#
    #=cmgl.mark_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r_).ptr, pen, opt)=#
#=end=#

function mark(gr::Graph, y::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.mark_y(gr.ptr, Data(y).ptr, Data(r).ptr, pen, opt)
end

function mark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.mark_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r).ptr, pen, opt)
end

function mark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.mark_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, pen, opt)
end


#=function textmark(gr::Graph, y::Array{cmgl.Float}, txt::String; r::cmgl.Float=1, stl::String="", opt::String="")=#
    #=r_ = zeros(length(y))=#
    #=fill!(r_, r)=#
    #=cmgl.textmark_yr(gr.ptr, Data(y).ptr, Data(r_).ptr, txt, stl, opt)=#
#=end=#

function textmark(gr::Graph, y::Array{cmgl.Float}, txt::String, r::Array{cmgl.Float}=ones(length(y)); stl::String="", opt::String="")
    cmgl.textmark_yr(gr.ptr, Data(y).ptr, Data(r).ptr, txt, stl, opt)
end

function textmark(gr::Graph, y::Array{cmgl.Float}, txt::String, r::cmgl.Float; stl::String="", opt::String="")
    r_ = zeros(length(y))
    fill!(r_, r)
    cmgl.textmark_yr(gr.ptr, Data(y).ptr, Data(r_).ptr, txt, stl, opt)
end

function textmark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, txt::String, r::Array{cmgl.Float}=ones(length(y)); stl::String="", opt::String="")
    cmgl.textmark_xyr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r).ptr, txt, stl, opt)
end


function textmark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, txt::String, r::cmgl.Float; stl::String="", opt::String="")
    r_ = zeros(length(y))
    fill!(r_, r)
    cmgl.textmark_xyr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r_).ptr, txt, stl, opt)
end


function textmark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, txt::String, r::Array{cmgl.Float}=ones(length(y)); stl::String="", opt::String="")
    cmgl.textmark_xyzr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, txt, stl, opt)
end

function textmark(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, txt::String, r::cmgl.Float; stl::String="", opt::String="")
    r_ = zeros(length(y))
    fill!(r_, r)
    cmgl.textmark_xyzr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r_).ptr, txt, stl, opt)
end


function label(gr::Graph, y::Array{cmgl.Float}, txt::String; stl::String="", opt::String="")
    cmgl.label(gr.ptr, Data(y).ptr, txt, stl, opt)
end


function label(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, txt::String; stl::String="", opt::String="")
    cmgl.label_xy(gr.ptr, Data(x).ptr, Data(y).ptr, txt, stl, opt)
end

#=function label(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, txt::UTF8String; stl::String="", opt::String="")=#
    #=cmgl.labelw_xy(gr.ptr, Data(x).ptr, Data(y).ptr, txt, stl, opt)=#
#=end=#

function label(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, txt::String; stl::String="", opt::String="")
    cmgl.label_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, txt, stl, opt)
end

#=function label(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, txt::UTF8String; stl::String="", opt::String="")=#
    #=cmgl.labelw_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, txt, stl, opt)=#
#=end=#

function table(gr::Graph, val::Array{cmgl.Float}, txt::Array{String, 1}; stl::String="", opt::String="")
    cmgl.table(gr.ptr, 0, 0, Data(val).ptr, join(txt, '\n'), stl)
end

#=function table(gr::Graph, val::Array{cmgl.Float}, txt::Array{UTF8String, 1}; stl::String="", opt::String="")=#
    #=cmgl.tablew(gr.ptr, 0, 0, Data(val).ptr, join(txt, '\n'), stl)=#
#=end=#

function table(gr::Graph, x::cmgl.Float, y::cmgl.Float, val::Array{cmgl.Float}, txt::Array{String, 1}; stl::String="", opt::String="")
    cmgl.table(gr.ptr, x, y, Data(val).ptr, join(txt, '\n'), stl)
end

#=function table(gr::Graph, x::cmgl.Float, y::cmgl.Float, val::Array{cmgl.Float}, txt::Array{UTF8String, 1}; stl::String="", opt::String="")=#
    #=cmgl.tablew(gr.ptr, x, y, Data(val).ptr, join(txt, '\n'), stl)=#
#=end=#

function tube(gr::Graph, y::Array{cmgl.Float}, r::cmgl.Float; stl::String="", opt::String="")
    cmgl.tube(gr.ptr, Data(y).ptr, r, stl, opt)
end

function tube(gr::Graph, y::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tube_r(gr.ptr, Data(y).ptr, Data(r).ptr, stl, opt)
end

function tube(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, r::cmgl.Float; stl::String="", opt::String="")
    cmgl.tube_xy(gr.ptr, Data(x).ptr, Data(y).ptr, r, stl, opt)
end

function tube(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tube_xyr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(r).ptr, stl, opt)
end

function tube(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, r::cmgl.Float; stl::String="", opt::String="")
    cmgl.tube_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, r, stl, opt)
end

function tube(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tube_xyzr(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, stl, opt)
end

function torus(gr::Graph, r::Array{cmgl.Float}, z::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.torus(gr.ptr, Data(r).ptr, Data(z).ptr, stl, opt)
end
