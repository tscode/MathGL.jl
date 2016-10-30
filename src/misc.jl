
function axis(gr::Graph; dir::String="xyz", stl::String="", opt::String="")
    cmgl.axis(gr.ptr, dir, stl, opt)
end

#=function axis(gr::Graph, dir::Symbol=:xyz; stl::String="", opt::String="")=#
    #=cmgl.axis(gr.ptr, string(dir), stl, opt)=#
#=end=#

function colorbar(gr::Graph; stl::String="")
    cmgl.colorbar(gr.ptr, stl)
end

function colorbar(gr::Graph, v::Array{cmgl.Float, 1}; stl::String="")
    cmgl.colorbar_val(gr.ptr, Data(v).ptr, stl)
end

function colorbar(gr::Graph, x::Real, y::Real; w::Real=1., h::Real=1., stl::String="")
    cmgl.colorbar_ext(gr.ptr, stl, x, y, w, h)
end

function colorbar(gr::Graph, v::Array{cmgl.Float, 1}, x::Real, y::Real; w::Real=1., h::Real=1., stl::String="")
    cmgl.colorbar_val_ext(gr.ptr, Data(v).ptr, stl, x, y, w, h)
end

function grid(gr::Graph, dir::String="xyz"; stl::String="h-", opt::String="")
    cmgl.axis_grid(gr.ptr, dir, stl, opt)
end

function subgrid(gr::Graph, dir::String="xyz"; stl::String="h=", opt::String="")
    cmgl.axis_grid(gr.ptr, "!"*dir, stl, opt)
end

function box(gr::Graph; stl::String="", ticks::Bool=true)
    cmgl.box_str(gr.ptr, stl, ticks)
end

#=function box(gr::Graph) <- causes overwrite-warning=#
    #=cmgl.box(gr.ptr)=#
#=end=#

function label(gr::Graph, dir::Char, text::String; pos::Real=0., opt::String="")
    cmgl.label(gr.ptr, dir, text, pos, opt)
end

#=function label(gr::Graph, dir::Char, text::UTF8String;  pos::Real=0., opt::String="")=#
    #=cmgl.labelw(gr.ptr, dir, text, pos, opt)=#
#=end=#

function xlabel(gr::Graph, text::String; pos::Real=0., opt::String="")
    cmgl.label(gr.ptr, 'x', text, pos, opt)
end

function ylabel(gr::Graph, text::String; pos::Real=0., opt::String="")
    cmgl.label(gr.ptr, 'y', text, pos, opt)
end

function zlabel(gr::Graph, text::String; pos::Real=0., opt::String="")
    cmgl.label(gr.ptr, 'z', text, pos, opt)
end

#=function xlabel(gr::Graph, text::UTF8String; pos::Real=0., opt::String="")=#
    #=cmgl.labelw(gr.ptr, 'x', text, pos, opt)=#
#=end=#

#=function ylabel(gr::Graph, text::UTF8String; pos::Real=0., opt::String="")=#
    #=cmgl.labelw(gr.ptr, 'y', text, pos, opt)=#
#=end=#

#=function zlabel(gr::Graph, text::UTF8String; pos::Real=0., opt::String="")=#
    #=cmgl.labelw(gr.ptr, 'z', text, pos, opt)=#
#=end=#

function legend(gr::Graph; pos::Int=3, fnt::String="", opt::String="")
    cmgl.legend(gr.ptr, pos, fnt, opt)
end

function legend(gr::Graph, x::Real, y::Real; fnt::String="", opt::String="")
    cmgl.legend_pos(gr.ptr, x, y, fnt, opt)
end

function addlegend(gr::Graph, text::String; stl::String="")
    cmgl.add_legend(gr.ptr, text, stl)
end

#=function addlegend(gr::Graph, text::UTF8String; stl::String="")=#
    #=cmgl.add_legendw(gr.ptr, text, stl)=#
#=end=#

function clearlegend(gr::Graph)
    cmgl.clear_legend(gr.ptr)
end

function legendamarks(gr::Graph, num::Int)
    cmgl.set_legend_marks(gr.ptr, num)
end


