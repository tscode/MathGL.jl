function box(gr::MglAbstractGraph)
    mgl.box(gr.ptr)
end

function box(gr::MglAbstractGraph, col::ASCIIString="", ticks::Bool=true)
    mgl.box_str(gr.ptr, col, ticks)
end
