function box(gr::AbstractGraph)
    mgl.box(gr.ptr)
end

function box(gr::AbstractGraph, col::ASCIIString="", ticks::Bool=true)
    mgl.box_str(gr.ptr, col, ticks)
end
