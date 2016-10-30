# Draw Primitives
function mark(gr::Graph, x::Real, y::Real, z::Real, mark::String)
    cmgl.mark(gr.ptr, x, y, z, mark)
end

function mark(gr::Graph, x::Real, y::Real, mark::String)
    cmgl.mark(gr.ptr, x, y, 0., mark)
end

function mark(gr::Graph, p::AbstractArray, mark::String)
    if length(mark) == 3
        cmgl.mark(gr.ptr, p..., mark)
    elseif length(mark) == 2
        cmgl.mark(gr.ptr, p..., 0., mark)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end


# Ball function with color seems to be not implemented by MathGL Capi
function ball(gr::Graph, x::Real, y::Real)
    cmgl.ball(gr.ptr, x, y, 0.)
end

function ball(gr::Graph, x::Real, y::Real, z::Real)
    cmgl.ball(gr.ptr, x, y, z)
end

function ball(gr::Graph, p::AbstractArray, ball::String)
    if length(ball) == 3
        cmgl.ball(gr.ptr, p...)
    elseif length(ball) == 2
        cmgl.ball(gr.ptr, p..., 0.)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end


function errbox(gr::Graph, x::Real, y::Real, z::Real, ex::Real, ey::Real, ez::Real; stl::String="")
    cmgl.error_box(gr.ptr, x, y, z, ex, ey, ez, stl)
end

function errbox(gr::Graph, x::Real, y::Real, ex::Real, ey::Real; stl::String="")
    cmgl.error_box(gr.ptr, x, y, 0., ex, ey, NaN, stl)
end

function errbox(gr::Graph, p::AbstractArray, ep::AbstractArray; stl::String="")
    if length(p) == length(ep) == 2
        cmgl.error_box(gr.ptr, p..., 0., ep..., NaN, stl)
    elseif length(p) == length(ep) == 3
        cmgl.error_box(gr.ptr, p..., ep..., stl=stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

function line(gr::Graph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real; stl::String="B", num::Int=2)
    cmgl.line(gr.ptr, x1, y1, z1, x2, y2, z2, stl, num)
end

function line(gr::Graph, x1::Real, y1::Real, x2::Real, y2::Real; stl::String="B", num::Int=2)
    cmgl.line(gr.ptr, x1, y1, 0., x2, y2, 0., stl, num)
end

function line(gr::Graph, p1::AbstractArray, p2::AbstractArray; stl::String="B", num::Int=2)
    if length(p1) == length(p2) == 2
        cmgl.line(gr.ptr, p1..., 0., p2..., 0., stl=stl, num=num)
    elseif length(p1) == length(p2) == 3
        cmgl.line(gr.ptr, p1..., p2..., stl=stl, num=num)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end


function curve(gr::Graph, x1::Real, y1::Real, z1::Real, dx1::Real, dy1::Real, dz1::Real, x2::Real, y2::Real, z2::Real, dx2::Real, dy2::Real, dz2::Real; stl::String="B", num::Int=100)
    cmgl.curve(gr.ptr, x1, y1, z1, dx1, dy1, dz1, x2, y2, z2, dx2, dy2, dz2, stl, num)
end

function curve(gr::Graph, x1::Real, y1::Real, dx1::Real, dy1::Real, x2::Real, y2::Real, dx2::Real, dy2::Real; stl::String="B", num::Int=100)
    cmgl.curve(gr.ptr, x1, y1, 0., dx1, dy1, 0., x2, y2, 0., dx2, dy2, 0., stl, num)
end

function curve(gr::Graph, p1::AbstractArray, dp1::AbstractArray, p2::AbstractArray, dp2::AbstractArray; stl::String="B", num::Int=100)
    if length(p1) == length(dp1) == length(p2) == length(dp2) == 2
        cmgl.curve(gr.ptr, p1..., 0., dp1..., 0., p2..., 0., dp2..., 0., stl=stl, num=num)
    elseif length(p1) == length(dp1) == length(p2) == length(dp2) == 3
        cmgl.curve(gr.ptr, p1..., dp1..., p2..., dp2..., stl=stl, num=num)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

function face(gr::Graph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real, x3::Real, y3::Real, z3::Real, x4::Real, y4::Real, z4::Real; stl::String="w") 
    cmgl.face(gr.ptr, x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4, stl)
end

function face(gr::Graph, x1::Real, y1::Real, x2::Real, y2::Real, x3::Real, y3::Real, x4::Real, y4::Real; stl::String="w") 
    cmgl.face(gr.ptr, x1, y1, 0., x2, y2, 0., x3, y3, 0., x4, y4, 0., stl)
end

function face(gr::Graph, p1::AbstractArray, p2::AbstractArray, p3::AbstractArray, p4::AbstractArray; stl::String="w")
    if length(p1) == length(p2) == length(p3) == length(p4) == 2
        cmgl.face(gr.ptr, p1..., 0., p2..., 0., p3..., 0., p4..., 0., stl=stl)
    elseif length(p1) == length(p2) == length(p3) == length(p4) == 3
        cmgl.face(gr.ptr, p1..., p2..., p3..., p4..., stl=stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

# TODO: facex, facey, facez
#=function facex(gr::Graph, x1::Int, y1::Int, z1::Int, x2::Int, y2::Int, z2::Int, x3::Int, y3::Int, z3::Int, x4::Int, y4::Int, z4::Int; stl::String="w") =#
    #=cmgl.face(gr.ptr, x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4, stl)=#
#=end=#

function sphere(gr::Graph, x0::Real, y0::Real, z0::Real, r::Real; stl::String="r")
    cmgl.sphere(gr.ptr, x0, y0, z0, r, stl)
end

function sphere(gr::Graph, x0::Real, y0::Real, r::Real; stl::String="r")
    cmgl.sphere(gr.ptr, x0, y0, 0., r, stl)
end

function sphere(gr::Graph, p::AbstractArray, r::Real; stl="r")
    if length(p) == 2
        cmgl.sphere(gr.ptr, p..., 0., r, stl)
    elseif length(p) == 3
        cmgl.sphere(gr.ptr, p..., r, stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end


function drop(gr::Graph, x0::Real, y0::Real, z0::Real, dx::Real, dy::Real, dz::Real, r::Real; stl::String="r", sh::Real=1., asp::Real=1.)
    cmgl.drop(gr.ptr, x0, y0, z0, dx, dy, dz, r, stl, sh, asp)
end

function drop(gr::Graph, x0::Real, y0::Real, dx::Real, dy::Real, r::Real; stl="r", sh=1., asp=1.)
    cmgl.drop(gr.ptr, x0, y0, 0., dx, dy, 0., r, stl, sh, asp)
end

function drop(gr::Graph, p::AbstractArray, d::AbstractArray, r::Real; stl::String="r", sh::Real=1., asp::Real=1.)
    if length(p) == length(d) == 2
        cmgl.sphere(gr.ptr, p..., 0., d..., 0., r, stl)
    elseif length(p) == length(d) == 3
        cmgl.sphere(gr.ptr, p..., d..., r, stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end


function cone(gr::Graph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real, r1::Real; r2::Real=-1., stl::String="B")
    cmgl.cone(gr.ptr, x1, y1, z1, x2,y2, z2, r1, r2, stl)
end

function cone(gr::Graph, p1::AbstractArray, p2::AbstractArray, r1::Real; r2::Real=-1., stl::String="B")
    if length(p1) == length(p2) == 3
        cmgl.cone(gr.ptr, x1, y1, z1, x2,y2, z2, r1, r2, stl)
    else
        error("Lengths of the input vectors must match and be 3 dimensional")
    end
end

#TODO: Get to know why there is no C function for circle
function circle(gr::Graph, x0::Real, y0::Real, z0::Real, r::Real; stl::String="r")
    cmgl.ellipse(gr.ptr, x0, y0, z0, x0, y0, z0, r, stl)
end

function circle(gr::Graph, x0::Real, y0::Real, r::Real; stl::String="r")
    cmgl.ellipse(gr.ptr, x0, y0, 0., x0, y0, 0., r, stl)
end

function circle(gr::Graph, p0::AbstractArray, r::Real; stl::String="r")
    if length(p0) == 3
        cmgl.ellipse(gr.ptr, p0..., p0..., r, stl)
    elseif length(p0) == 2
        cmgl.ellipse(gr.ptr, p0..., 0., p0..., 0., r, stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end


function ellipse(gr::Graph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real, r::Real; stl::String="r")
    cmgl.ellipse(gr.ptr, x1, y1, z1, x2, y2, z2, r, stl)
end

function ellipse(gr::Graph, x1::Real, y1::Real, x2::Real, y2::Real, r::Real; stl::String="r")
    cmgl.ellipse(gr.ptr, x1, y1, 0., x2, y2, 0., r, stl)
end

function ellipse(gr::Graph, p1::AbstractArray, p2::AbstractArray, r::Real; stl::String=r)
    if length(p1) == length(p2) == 3
        cmgl.ellipse(gr.ptr, p1..., p2..., r, stl)
    elseif length(p1) == length(p2) == 2
        cmgl.ellipse(gr.ptr, p1..., 0., p2..., 0., r, stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

function rhomb(gr::Graph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real, r::Real; stl::String="r")
    cmgl.rhomb(gr.ptr, x1, y1, z1, x2, y2, z2, r, stl)
end

function rhomb(gr::Graph, x1::Real, y1::Real, x2::Real, y2::Real, r::Real; stl::String="r")
    cmgl.rhomb(gr.ptr, x1, y1, 0., x2, y2, 0., r, stl)
end

function rhomb(gr::Graph, p1::AbstractArray, p2::AbstractArray, r::Real; stl::String=r)
    if length(p1) == length(p2) == 3
        cmgl.rhomb(gr.ptr, p1..., p2..., r, stl)
    elseif length(p1) == length(p2) == 2
        cmgl.rhomb(gr.ptr, p1..., 0., p2..., 0., r, stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

# Arc for 3 dimensions
function arc(gr::Graph, x0::Real, y0::Real, z0::Real, x1::Real, y1::Real, z1::Real, a::Real; stl::String="r")
    cmgl.arc_ext(gr.ptr, x0, y0, z0, 0., 0., 1., x1, y1, z1, a, stl)
end

function arc(gr::Graph, x0::Real, y0::Real, z0::Real, xa::Real, ya::Real, za::Real, x1::Real, y1::Real, z1::Real, a::Real; stl::String="r")
    cmgl.arc_ext(gr.ptr, x0, y0, z0, xa, ya, za, x1, y1, z1, a, stl)
end

# 2d Arc function
function arc(gr::Graph, x0::Real, y0::Real, x1::Real, z1::Real, a::Real; stl::String="r")
    cmgl.arc(gr.ptr, x0, y0, x1, y1, a, stl)
end

function arc(gr::Graph, p0::AbstractArray, p1::AbstractArray, a::Real; stl::String="r")
    if length(p0) == length(p1) == 3
        cmgl.arc_ext(gr.ptr, p0..., 0., 0., 1., p1..., a, stl)
    elseif length(p1) == length(p2) == 2
        cmgl.arc(gr.ptr, p0..., p1..., a, stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

function arc(gr::Graph, p0::AbstractArray, pa::AbstractArray, p1::AbstractArray, a::Real; stl::String="r")
    if length(p0) == length(p1) == length(pa) == 3
        cmgl.arc_ext(gr.ptr, p0..., pa..., p1..., a, stl)
    else
        error("Lengths of the input vectors must match and be 3 dimensional)")
    end
end


function polygon(gr::Graph, x0::Real, y0::Real, z0::Real, x1::Real, y1::Real, z1::Real, num::Int; stl::String="r")
    cmgl.polygon(gr.ptr, x0, y0, z0, x1, y1, z1, num, stl)
end

function polygon(gr::Graph, x0::Real, y0::Real, x1::Real, y1::Real, num::Int; stl::String="r")
    cmgl.polygon(gr.ptr, x0, y0, 0., x1, y1, 0., num, stl)
end

function polygon(gr::Graph, p0::AbstractArray, p1::AbstractArray, num::Int; stl::String="r")
    if length(p0) == length(p1) == length(pa) == 3
        cmgl.polygon(gr.ptr, p0..., p1..., num, stl)
    elseif length(p0) == length(p1) == length(pa) == 2
        cmgl.polygon(gr.ptr, p0..., 0., p1..., 0., num, stl)
    else
        error("Lengths of the input vectors must match and be 3 dimensional)")
    end
end
