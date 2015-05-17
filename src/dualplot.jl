
function surfc(gr::AbstractGraph, z::Array{mgl.Float}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surfc(gr.ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end

function surfc(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surfc_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end


function surf3c(gr::AbstractGraph, v::mgl.Float, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3c_val(gr.ptr, v, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3c(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3c_xyz_val(gr.ptr, v, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3c(gr::AbstractGraph, v::Array{mgl.Float, 1}, a::Array{mgl.Float, 3}, c::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    for val in v
        mgl.surf3c_val(gr.ptr, val, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end

function surf3c(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}, c::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    for val in v
        mgl.surf3c_xyz_val(gr.ptr, val, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end



function surf3c(gr::AbstractGraph, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3c(gr.ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3c(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3c_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end


function surfa(gr::AbstractGraph, z::Array{mgl.Float}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surfa(gr.ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end

function surfa(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surfa_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, stl, opt)
end


function surf3a(gr::AbstractGraph, v::mgl.Float, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3a_val(gr.ptr, v, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3a(gr::AbstractGraph, v::mgl.Float, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3a_xyz_val(gr.ptr, v, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3a(gr::AbstractGraph, v::Array{mgl.Float, 1}, a::Array{mgl.Float, 3}, c::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    for val in v
        mgl.surf3a_val(gr.ptr, val, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end

function surf3a(gr::AbstractGraph, v::Array{mgl.Float, 1}, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}, c::Array{mgl.Float, 3}; stl::ASCIIString="", opt::ASCIIString="")
    for val in v
        mgl.surf3a_xyz_val(gr.ptr, val, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
    end
end

function surf3a(gr::AbstractGraph, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3a(gr.ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function surf3a(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, a::Array{mgl.Float, 3}, c::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.surf3a_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, Data(c).ptr, stl, opt)
end

function tiles(gr::AbstractGraph, z::Array{mgl.Float}, r::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tiles(gr.ptr, Data(z).ptr, Data(r).ptr, stl, opt)
end

function tiles(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, r::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.tiles_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(r).ptr, stl, opt)
end

function map(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.map(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function map(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, ax::Array{mgl.Float}, ay::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.map_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function stfa(gr::AbstractGraph, real::Array{mgl.Float}, imag::Array{mgl.Float}, dn::Int; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stfa(gr.ptr, Data(real).ptr, Data(imag).ptr, dn, stl, opt)
end

function stfa(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, real::Array{mgl.Float}, imag::Array{mgl.Float}, dn::Int; stl::ASCIIString="", opt::ASCIIString="")
    mgl.stfa_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(real).ptr, Data(imag).ptr, dn, stl, opt)
end
