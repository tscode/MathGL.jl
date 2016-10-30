# Functions for text printing (setting font ect. is done in setup.jl

function text(gr::Graph, x::Real, y::Real, z::Real, txt::String; fnt::String=":AC", size::Real=-1.)
    cmgl.puts(gr.ptr, x, y, z, txt, fnt, size)
end

function text(gr::Graph, x::Real, y::Real, txt::String; fnt::String=":AC", size::Real=-1.)
    cmgl.puts(gr.ptr, x, y, 0., txt, fnt, size)
end

function text(gr::Graph, p::AbstractArray, txt::String; fnt::String=":AC", size::Real=-1.)
    if length(p) == 3
        cmgl.puts(gr.ptr, p..., txt, fnt, size)
    elseif length(p) == 2
        cmgl.puts(gr.ptr, p..., 0., txt, fnt, size)
    else
        error("Lengths of the input vectors must match (2 or 3 dimensional)")
    end
end


#=function text(gr::Graph, x::Real, y::Real, z::Real, txt::UTF8String; fnt::String=":AC", size::Real=-1.)=#
    #=cmgl.putsw(gr.ptr, x, y, z, txt, fnt, size)=#
#=end=#

#=function text(gr::Graph, x::Real, y::Real, txt::UTF8String; fnt::String=":AC", size::Real=-1.)=#
    #=cmgl.putsw(gr.ptr, x, y, 0., txt, fnt, size)=#
#=end=#

#=function text(gr::Graph, p::AbstractArray, txt::UTF8String; fnt::String=":AC", size::Real=-1.)=#
    #=if length(p) == 3=#
        #=cmgl.putsw(gr.ptr, p..., txt, fnt, size)=#
    #=elseif length(p) == 2=#
        #=cmgl.putsw(gr.ptr, p..., 0., txt, fnt, size)=#
    #=else=#
        #=error("Lengths of the input vectors must match (2 or 3 dimensional)")=#
    #=end=#
#=end=#


function text(gr::Graph, x::Real, y::Real, z::Real, dx::Real, dy::Real, dz::Real, txt::String; fnt::String=":AC", size::Real=-1.)
    cmgl.puts_dir(gr.ptr, x, y, z, dx, dy, dz, txt, fnt, size)
end

function text(gr::Graph, x::Real, y::Real, dx::Real, dy::Real, txt::String; fnt::String=":AC", size::Real=-1.)
    cmgl.puts_dir(gr.ptr, x, y, 0., dx, dy, 0., txt, fnt, size)
end

function text(gr::Graph, p::AbstractArray, dp::AbstractArray, txt::String; fnt::String=":AC", size::Real=-1.)
    if length(p) == length(dp) == 3
        cmgl.puts_dir(gr.ptr, p..., dp..., txt, fnt, size)
    elseif length(2) == length(dp) == 2
        cmgl.puts_dir(gr.ptr, p..., 0., dp..., 0., txt, fnt, size)
    else
        error("Lengths of the input vectors must match (2 or 3 dimensional)")
    end
end

#=function text(gr::Graph, x::Real, y::Real, z::Real, dx::Real, dy::Real, dz::Real, txt::UTF8String; fnt::String=":AC", size::Real=-1.)=#
    #=cmgl.putsw_dir(gr.ptr, x, y, z, dx, dy, dz, txt, fnt, size)=#
#=end=#

#=function text(gr::Graph, x::Real, y::Real, dx::Real, dy::Real, txt::UTF8String; fnt::String=":AC", size::Real=-1.)=#
    #=cmgl.putsw_dir(gr.ptr, x, y, 0., dx, dy, 0., txt, fnt, size)=#
#=end=#

#=function text(gr::Graph, p::AbstractArray, dp::AbstractArray, txt::UTF8String; fnt::String=":AC", size::Real=-1.)=#
    #=if length(p) == length(dp) == 3=#
        #=cmgl.putsw_dir(gr.ptr, p..., dp..., txt, fnt, size)=#
    #=elseif length(2) == length(dp) == 2=#
        #=cmgl.putsw_dir(gr.ptr, p..., 0., dp..., 0., txt, fnt, size)=#
    #=else=#
        #=error("Lengths of the input vectors must match (2 or 3 dimensional)")=#
    #=end=#
#=end=#

#TODO: Strings along curves
