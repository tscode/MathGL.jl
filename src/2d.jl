
function surf(gr::MglAbstractGraph, z::Array{mgl.Float, 2}; sch::ASCIIString="", opt::ASCIIString="")
    mgl.surf(gr.ptr, MglData(z).ptr, sch, opt)
end

function surf(gr::MglAbstractGraph, x::Array{mgl.Float, 2}, y::Array{mgl.Float, 2}, z::Array{mgl.Float, 2}; sch::ASCIIString="", opt::ASCIIString="")
    mgl.surf_xy(gr.ptr, MglData(x).ptr, MglData(y).ptr, MglData(z).ptr, sch, opt)
end
