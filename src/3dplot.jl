
function surf3(gr::Graph, v::cmgl.Float, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    cmgl.surf3_val(gr.ptr, v, Data(a).ptr, stl, opt)
end

function surf3(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    cmgl.surf3_xyz_val(gr.ptr, v, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function surf3(gr::Graph, v::Array{cmgl.Float, 1}, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    for val in v
        cmgl.surf3_val(gr.ptr, val, Data(a).ptr, stl, opt)
    end
end

function surf3(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    for val in v
        cmgl.surf3_xyz_val(gr.ptr, val, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
    end
end

function surf3(gr::Graph, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    cmgl.surf3(gr.ptr, Data(a).ptr, stl, opt)
end

function surf3(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    cmgl.surf3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function cloud(gr::Graph, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    cmgl.cloud(gr.ptr, Data(a).ptr, stl, opt)
end

function cloud(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    cmgl.cloud_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function dens3(gr::Graph, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.dens3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function dens3(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.dens3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::Graph, v::Array{cmgl.Float, 1}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.cont3_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.cont3_xyz_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::Graph, v::cmgl.Float, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.cont3_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.cont3_xyz_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end


function cont3(gr::Graph, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.cont3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function cont3(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.cont3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::Graph, v::Array{cmgl.Float, 1}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.contf3_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.contf3_xyz_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::Graph, v::cmgl.Float, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.contf3_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.contf3_xyz_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end


function contf3(gr::Graph, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.contf3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contf3(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.contf3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function grid3(gr::Graph, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.grid3(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function grid3(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}; sval::cmgl.Float=-1, stl::String="", opt::String="")
    cmgl.grid3_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, sval, opt)
end

function beam(gr::Graph, tr::Array{cmgl.Float}, g1::Array{cmgl.Float}, g2::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, r::Array{cmgl.Float}; stl::String="", flag::Int=0, num::Int=3)
    cmgl.beam(gr.ptr, Data(tr).ptr, Data(g1).ptr, Data(g2).ptr, Data(a).ptr, Data(r).ptr, stl, flag, num)
end


function beam(gr::Graph, v::Array{cmgl.Float, 1}, tr::Array{cmgl.Float}, g1::Array{cmgl.Float}, g2::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, r::Array{cmgl.Float}; stl::String="", flag::Int=0)
    cmgl.beam_val(gr.ptr, Data(v).ptr, Data(tr).ptr, Data(g1).ptr, Data(g2).ptr, Data(a).ptr, Data(r).ptr, stl, flag)
end

