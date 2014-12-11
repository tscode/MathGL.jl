# Functions for text printing (setting font ect. is done in setup.jl

function text(gr::MglAbstractGraph, x::Real, y::Real, z::Real, txt::ASCIIString; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.puts(gr.ptr, x, y, z, txt, fnt, size)
end

function text(gr::MglAbstractGraph, x::Real, y::Real, txt::ASCIIString; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.puts(gr.ptr, x, y, 0., txt, fnt, size)
end

function text(gr::MglAbstractGraph, p::AbstractArray, txt::ASCIIString; fnt::ASCIIString=":AC", size::Real=-1.)
    if length(p) == 3
        mgl.puts(gr.ptr, p..., txt, fnt, size)
    elseif length(p) == 2
        mgl.puts(gr.ptr, p..., 0., txt, fnt, size)
    else
        error("Lengths of the input vectors must match (2 or 3 dimensional)")
    end
end


function text(gr::MglAbstractGraph, x::Real, y::Real, z::Real, txt::UTF8String; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.putsw(gr.ptr, x, y, z, txt, fnt, size)
end

function text(gr::MglAbstractGraph, x::Real, y::Real, txt::UTF8String; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.putsw(gr.ptr, x, y, 0., txt, fnt, size)
end

function text(gr::MglAbstractGraph, p::AbstractArray, txt::UTF8String; fnt::ASCIIString=":AC", size::Real=-1.)
    if length(p) == 3
        mgl.putsw(gr.ptr, p..., txt, fnt, size)
    elseif length(p) == 2
        mgl.putsw(gr.ptr, p..., 0., txt, fnt, size)
    else
        error("Lengths of the input vectors must match (2 or 3 dimensional)")
    end
end


function text(gr::MglAbstractGraph, x::Real, y::Real, z::Real, dx::Real, dy::Real, dz::Real, txt::ASCIIString; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.puts_dir(gr.ptr, x, y, z, dx, dy, dz, txt, fnt, size)
end

function text(gr::MglAbstractGraph, x::Real, y::Real, dx::Real, dy::Real, txt::ASCIIString; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.puts_dir(gr.ptr, x, y, 0., dx, dy, 0., txt, fnt, size)
end

function text(gr::MglAbstractGraph, p::AbstractArray, dp::AbstractArray, txt::ASCIIString; fnt::ASCIIString=":AC", size::Real=-1.)
    if length(p) == length(dp) == 3
        mgl.puts_dir(gr.ptr, p..., dp..., txt, fnt, size)
    elseif length(2) == length(dp) == 2
        mgl.puts_dir(gr.ptr, p..., 0., dp..., 0., txt, fnt, size)
    else
        error("Lengths of the input vectors must match (2 or 3 dimensional)")
    end
end

function text(gr::MglAbstractGraph, x::Real, y::Real, z::Real, dx::Real, dy::Real, dz::Real, txt::UTF8String; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.putsw_dir(gr.ptr, x, y, z, dx, dy, dz, txt, fnt, size)
end

function text(gr::MglAbstractGraph, x::Real, y::Real, dx::Real, dy::Real, txt::UTF8String; fnt::ASCIIString=":AC", size::Real=-1.)
    mgl.putsw_dir(gr.ptr, x, y, 0., dx, dy, 0., txt, fnt, size)
end

function text(gr::MglAbstractGraph, p::AbstractArray, dp::AbstractArray, txt::UTF8String; fnt::ASCIIString=":AC", size::Real=-1.)
    if length(p) == length(dp) == 3
        mgl.putsw_dir(gr.ptr, p..., dp..., txt, fnt, size)
    elseif length(2) == length(dp) == 2
        mgl.putsw_dir(gr.ptr, p..., 0., dp..., 0., txt, fnt, size)
    else
        error("Lengths of the input vectors must match (2 or 3 dimensional)")
    end
end

#TODO: Strings along curves
