# Vector fields (section 4.15 in the mgl manual)

function traj(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.traj_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function traj(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float},  z::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.traj_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                     Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function vect(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.vect_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function vect(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float},  z::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.vect_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                     Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function vect(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.vect_2d(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function vect(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.vect_3d(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end


function vect3(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float},  z::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float},
                                 sval::mgl.Float=-1.; stl::ASCIIString="", opt::ASCIIString="")
    mgl.vect3_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                      Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, sval, opt)
end

function vect3(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float},
                                 sval::mgl.Float=-1; stl::ASCIIString="",  opt::ASCIIString="")
    mgl.vect3(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, sval, opt)
end

function dew(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float}, 
                                ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                stl::ASCIIString="",  opt::ASCIIString="")
    mgl.dew_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function dew(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                stl::ASCIIString="",  opt::ASCIIString="")
    mgl.dew(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flow_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::AbstractGraph, x::Array{mgl.Float},  y::Array{mgl.Float},  z::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flow_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                     Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function flow(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flow_2d(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flow_3d(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function flow(gr::AbstractGraph, x0::mgl.Float,        y0::mgl.Float,
                                 x::Array{mgl.Float},  y::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flowp_xy(gr.ptr, x0, y0, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::AbstractGraph, x0::mgl.Float,        y0::mgl.Float,        z0::mgl.Float,
                                 x::Array{mgl.Float},  y::Array{mgl.Float},  z::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flowp_xyz(gr.ptr, x0, y0, z0, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                      Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function flow(gr::AbstractGraph, x0::mgl.Float,  y0::mgl.Float, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flowp_2d(gr.ptr, x0, y0, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::AbstractGraph, x0::mgl.Float,  y0::mgl.Float,  z0::mgl.Float, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float};
                                 stl::ASCIIString="",  opt::ASCIIString="")
    mgl.flowp_3d(gr.ptr, x0, y0, z0, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function grad(gr::AbstractGraph, phi::Array{mgl.Float}; stl::ASCIIString="", opt::ASCIIString="")
    mgl.grad(gr.ptr, Data(phi).ptr, stl, opt)
end

function grad(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, phi::Array{mgl.Float}; 
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.grad_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(phi).ptr, stl, opt)
end

function grad(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, phi::Array{mgl.Float}; 
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.grad_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(phi).ptr, stl, opt)
end

function pipe(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, r0::mgl.Float=0.05;
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.pipe_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, r0, opt) 
end

function pipe(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}, 
                                 ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float}, r0::mgl.Float=0.05;
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.pipe_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                         Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, r0, opt) 
end

function pipe(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float}, r0::mgl.Float=0.05;
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.pipe_2d(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, r0, opt) 
end

function pipe(gr::AbstractGraph, ax::Array{mgl.Float}, ay::Array{mgl.Float}, az::Array{mgl.Float}, r0::mgl.Float=0.05;
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.pipe_3d(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, r0, opt) 
end
