
function surfc(gr::Graph, z::Array{cmgl.Float}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surfc(gr.ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end

function surfc(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surfc_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end


function surf3c(gr::Graph, v::cmgl.Float, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3c_val(gr.ptr, v, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3c(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3c_xyz_val(gr.ptr, v, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3c(gr::Graph, v::Array{cmgl.Float, 1}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    for val in v
        cmgl.surf3c_val(gr.ptr, val, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end

function surf3c(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    for val in v
        cmgl.surf3c_xyz_val(gr.ptr, val, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end



function surf3c(gr::Graph, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3c(gr.ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3c(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3c_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end


function surfa(gr::Graph, z::Array{cmgl.Float}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surfa(gr.ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end

function surfa(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surfa_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end


function surf3a(gr::Graph, v::cmgl.Float, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3a_val(gr.ptr, v, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3a(gr::Graph, v::cmgl.Float, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3a_xyz_val(gr.ptr, v, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3a(gr::Graph, v::Array{cmgl.Float, 1}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    for val in v
        cmgl.surf3a_val(gr.ptr, val, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end

function surf3a(gr::Graph, v::Array{cmgl.Float, 1}, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float, 3}; stl::String="", opt::String="")
    for val in v
        cmgl.surf3a_xyz_val(gr.ptr, val, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end

function surf3a(gr::Graph, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3a(gr.ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3a(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, a::Array{cmgl.Float, 3}, c::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.surf3a_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function tiles(gr::Graph, z::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tiles(gr.ptr, Data(z).ptr, Data(r).ptr, stl, opt)
end

function tiles(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, r::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.tiles_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, stl, opt)
end

function map(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.map(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function map(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, ax::Array{cmgl.Float}, ay::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.map_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function stfa(gr::Graph, real::Array{cmgl.Float}, imag::Array{cmgl.Float}, dn::Int; stl::String="", opt::String="")
    cmgl.stfa(gr.ptr, Data(real).ptr, Data(imag).ptr, dn, stl, opt)
end

function stfa(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, real::Array{cmgl.Float}, imag::Array{cmgl.Float}, dn::Int; stl::String="", opt::String="")
    cmgl.stfa_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(real).ptr, Data(imag).ptr, dn, stl, opt)
end
