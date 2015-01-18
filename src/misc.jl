
function axis(gr::AbstractGraph, dir::ASCIIString="xyz"; sch::ASCIIString="", opt::ASCIIString="")
    mgl.axis(gr.ptr, dir, sch, opt)
end

function axis(gr::AbstractGraph, dir::Symbol=:xyz; sch::ASCIIString="", opt::ASCIIString="")
    mgl.axis(gr.ptr, string(dir), sch, opt)
end

function colorbar(gr::AbstractGraph; sch::ASCIIString="")
    mgl.colorbar(gr.ptr, sch)
end

function colorbar(gr::AbstractGraph, v::Array{mgl.Float, 1}; sch::ASCIIString="")
    mgl.colorbar_val(gr.ptr, Data(v).ptr, sch)
end

function colorbar(gr::AbstractGraph, x::Real, y::Real; w::Real=1., h::Real=1., sch::ASCIIString="")
    mgl.colorbar_ext(gr.ptr, sch, x, y, w, h)
end

function colorbar(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Real, y::Real; w::Real=1., h::Real=1., sch::ASCIIString="")
    mgl.colorbar_val_ext(gr.ptr, Data(v).ptr, sch, x, y, w, h)
end

function grid(gr::AbstractGraph, dir::ASCIIString="xyz"; pen::ASCIIString="B", opt::ASCIIString="")
    mgl.axis_grid(gr.ptr, dir, pen, opt)
end

function grid(gr::AbstractGraph, dir::ASCIIString=:xyz; pen::ASCIIString="B", opt::ASCIIString="")
    mgl.axis_grid(gr.ptr, string(dir), pen, opt)
end

function box(gr::AbstractGraph; col::ASCIIString="", ticks::Bool=true)
    mgl.box_str(gr.ptr, col, ticks)
end

function box(gr::AbstractGraph)
    mgl.box(gr.ptr)
end

function label(gr::AbstractGraph, dir::Char, text::ASCIIString; pos::Real=1., opt::ASCIIString="")
    mgl.label(gr.ptr, dir, text, pos, opt)
end

function label(gr::AbstractGraph, dir::Char, text::UTF8String;  pos::Real=1., opt::ASCIIString="")
    mgl.labelw(gr.ptr, dir, text, pos, opt)
end

function xlabel(gr::AbstractGraph, text::ASCIIString; pos::Real=1., opt::ASCIIString="")
    mgl.label(gr.ptr, 'x', text, pos, opt)
end

function ylabel(gr::AbstractGraph, text::ASCIIString; pos::Real=1., opt::ASCIIString="")
    mgl.label(gr.ptr, 'y', text, pos, opt)
end

function zlabel(gr::AbstractGraph, text::ASCIIString; pos::Real=1., opt::ASCIIString="")
    mgl.label(gr.ptr, 'z', text, pos, opt)
end

function xlabel(gr::AbstractGraph, text::UTF8String; pos::Real=1., opt::ASCIIString="")
    mgl.labelw(gr.ptr, 'x', text, pos, opt)
end

function ylabel(gr::AbstractGraph, text::UTF8String; pos::Real=1., opt::ASCIIString="")
    mgl.labelw(gr.ptr, 'y', text, pos, opt)
end

function zlabel(gr::AbstractGraph, text::UTF8String; pos::Real=1., opt::ASCIIString="")
    mgl.labelw(gr.ptr, 'z', text, pos, opt)
end

function legend(gr::AbstractGraph; pos::Int=3, fnt::ASCIIString="#", opt::ASCIIString="")
    mgl.legend(gr.ptr, pos, fnt, opt)
end

function legend(gr::AbstractGraph, x::Real, y::Real; fnt::ASCIIString="#", opt::ASCIIString="")
    mgl.legend_pos(gr.ptr, x, y, fnt, opt)
end

function addlegend(gr::AbstractGraph, text::ASCIIString, style::ASCIIString)
    mgl.add_legend(gr.ptr, text, style)
end

function addlegend(gr::AbstractGraph, text::UTF8String, style::ASCIIString)
    mgl.add_legendw(gr.ptr, text, style)
end

function clearlegend(gr::AbstractGraph)
    mgl.clear_legend(gr.ptr)
end

function legendamarks(gr::AbstractGraph, num::Int)
    mgl.set_legend_marks(gr.ptr, num)
end


