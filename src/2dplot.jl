

function surf(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.surf(gr.ptr, Data(z).ptr, stl, opt)
end

function surf(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.surf_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function mesh(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.mesh(gr.ptr, Data(z).ptr, stl, opt)
end

function mesh(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.mesh_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function fall(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.fall(gr.ptr, Data(z).ptr, stl, opt)
end

function fall(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.fall_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function belt(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.belt(gr.ptr, Data(z).ptr, stl, opt)
end

function belt(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.belt_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function boxs(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.boxs(gr.ptr, Data(z).ptr, stl, opt)
end

function boxs(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.boxs_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function tile(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.tile(gr.ptr, Data(z).ptr, stl, opt)
end

function tile(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.tile_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function dens(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.dens(gr.ptr, Data(z).ptr, stl, opt)
end

function dens(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.dens_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function cont(gr::Graph, v::Array{cmgl.Float, 1}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.cont_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function cont(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.cont_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function cont(gr::Graph, v::cmgl.Float, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.cont_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function cont(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.cont_xy_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function cont(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.cont(gr.ptr, Data(z).ptr, stl, opt)
end

function cont(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.cont_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contf(gr::Graph, v::Array{cmgl.Float, 1}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contf_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function contf(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contf_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contf(gr::Graph, v::cmgl.Float, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contf_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function contf(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contf_xy_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function contf(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contf(gr.ptr, Data(z).ptr, stl, opt)
end

function contf(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contf_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end



function contd(gr::Graph, v::Array{cmgl.Float, 1}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contd_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function contd(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contd_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contd(gr::Graph, v::cmgl.Float, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contd_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function contd(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contd_xy_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function contd(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contd(gr.ptr, Data(z).ptr, stl, opt)
end

function contd(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contd_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contv(gr::Graph, v::Array{cmgl.Float, 1}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contv_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function contv(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contv_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function contv(gr::Graph, v::cmgl.Float, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contv_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function contv(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contv_xy_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function contv(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contv(gr.ptr, Data(z).ptr, stl, opt)
end

function contv(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.contv_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function axial(gr::Graph, v::Array{cmgl.Float, 1}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.axial_val(gr.ptr, Data(v).ptr, Data(z).ptr, stl, opt)
end

function axial(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.axial_xy_val(gr.ptr, Data(v).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end


function axial(gr::Graph, v::cmgl.Float, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.axial_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(z).ptr, stl, opt)
end

function axial(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.axial_xy_val(gr.ptr, Data(cmgl.Float[v]).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function axial(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.axial(gr.ptr, Data(z).ptr, stl, opt)
end

function axial(gr::Graph, x::Array{cmgl.Float, 2}, y::Array{cmgl.Float, 2}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.axial_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function grid(gr::Graph, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.grid(gr.ptr, Data(z).ptr, stl, opt)
end

function grid(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float, 2}; stl::String="", opt::String="")
    cmgl.grid_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

