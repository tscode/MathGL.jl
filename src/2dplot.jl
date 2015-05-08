

function surf(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf(gr.ptr, Data(z).ptr, stl, opt)
end

function surf(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function mesh(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.mesh(gr.ptr, Data(z).ptr, stl, opt)
end

function mesh(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.mesh_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function fall(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.fall(gr.ptr, Data(z).ptr, stl, opt)
end

function fall(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.fall_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function belt(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.belt(gr.ptr, Data(z).ptr, stl, opt)
end

function belt(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.belt_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function boxs(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.boxs(gr.ptr, Data(z).ptr, stl, opt)
end

function boxs(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.boxs_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function tile(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tile(gr.ptr, Data(z).ptr, stl, opt)
end

function tile(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tile_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function dens(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.dens(gr.ptr, Data(z).ptr, stl, opt)
end

function dens(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.dens_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function cont(gr::AbstractGraph, v::Array{mgl.Float, 1}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function cont(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function cont(gr::AbstractGraph, v::mgl.Float, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function cont(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont_xy_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function cont(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont(gr.ptr, Data(z).ptr, stl, opt)
end

function cont(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.cont_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contf(gr::AbstractGraph, v::Array{mgl.Float, 1}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function contf(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contf(gr::AbstractGraph, v::mgl.Float, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function contf(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf_xy_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function contf(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf(gr.ptr, Data(z).ptr, stl, opt)
end

function contf(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contf_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end



function contd(gr::AbstractGraph, v::Array{mgl.Float, 1}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contd_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function contd(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contd_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contd(gr::AbstractGraph, v::mgl.Float, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contd_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function contd(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contd_xy_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function contd(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contd(gr.ptr, Data(z).ptr, stl, opt)
end

function contd(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contd_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contv(gr::AbstractGraph, v::Array{mgl.Float, 1}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contv_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function contv(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contv_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contv(gr::AbstractGraph, v::mgl.Float, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contv_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function contv(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contv_xy_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function contv(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contv(gr.ptr, Data(z).ptr, stl, opt)
end

function contv(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.contv_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function axial(gr::AbstractGraph, v::Array{mgl.Float, 1}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.axial_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function axial(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.axial_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function axial(gr::AbstractGraph, v::mgl.Float, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.axial_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function axial(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.axial_xy_val(gr.ptr, Data(mgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function axial(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.axial(gr.ptr, Data(z).ptr, stl, opt)
end

function axial(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.axial_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function grid(gr::AbstractGraph, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.grid(gr.ptr, Data(z).ptr, stl, opt)
end

function grid(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float, 2}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.grid_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

