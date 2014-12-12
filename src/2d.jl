
function surf(gr::AbstractGraph, z::Array{mgl.Float, 2}; sch::ASCIIString="", opt::ASCIIString="")
    mgl.surf(gr.ptr, Data(z).ptr, sch, opt)
end

function surf(gr::AbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; sch::ASCIIString="", opt::ASCIIString="")
    mgl.surf_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, sch, opt)
end
