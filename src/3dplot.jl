
function surf3(gr::AbstractGraph, v::mgl.Float, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3_val(gr.ptr, v, Data(a).ptr, stl, opt)
end

function surf3(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3_xyz_val(gr.ptr, v, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function surf3(gr::AbstractGraph, v::Array{mgl.Float, 1}, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    for val in v
        mgl.surf3_val(gr.ptr, val, Data(a).ptr, stl, opt)
    end
end

function surf3(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    for val in v
        mgl.surf3_xyz_val(gr.ptr, val, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
    end
end

function surf3(gr::AbstractGraph, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3(gr.ptr, Data(a).ptr, stl, opt)
end

function surf3(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function cloud(gr::AbstractGraph, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cloud(gr.ptr, Data(a).ptr, stl, opt)
end

function cloud(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cloud_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function dens3(gr::AbstractGraph, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.dens3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function dens3(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.dens3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::AbstractGraph, v::Array{mgl.Float, 1}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont3_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont3_xyz_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::AbstractGraph, v::mgl.Float, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont3_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont3_xyz_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end


function cont3(gr::AbstractGraph, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::AbstractGraph, v::Array{mgl.Float, 1}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf3_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf3_xyz_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::AbstractGraph, v::mgl.Float, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf3_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf3_xyz_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end


function contf3(gr::AbstractGraph, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function grid3(gr::AbstractGraph, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.grid3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function grid3(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}; sval::mgl.Float=-1, stl::ASCIIString="", opt::ASCIIString="")
    mgl.grid3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function beam(gr::AbstractGraph, tr::Array{mgl.Float}, g1::Array{mgl.Float}, g2::Array{mgl.Float}, a::Array{mgl.Float, 3}, r::Array{mgl.Float}; stl::ASCIIString="", flag::Int=0, num::Int=3)
    mgl.beam(gr.ptr, Data(tr).ptr, Data(g1).ptr, Data(g2).ptr, Data(a).ptr, Data(r).ptr, stl, flag, num)
end


function beam(gr::AbstractGraph, v::Array{mgl.Float, 1}, tr::Array{mgl.Float}, g1::Array{mgl.Float}, g2::Array{mgl.Float}, a::Array{mgl.Float, 3}, r::Array{mgl.Float}; stl::ASCIIString="", flag::Int=0)
    mgl.beam_val(gr.ptr, Data(v).ptr, Data(tr).ptr, Data(g1).ptr, Data(g2).ptr, Data(a).ptr, Data(r).ptr, stl, flag)
end

