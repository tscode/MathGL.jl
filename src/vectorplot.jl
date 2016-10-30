# Vector fields (section 4.15 in the mgl manual)

function traj(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.traj_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function traj(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float},  z::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.traj_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                     Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function vect(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.vect_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function vect(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float},  z::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.vect_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                     Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function vect(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.vect_2d(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function vect(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.vect_3d(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end


function vect3(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float},  z::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float},
                                 sval::cmgl.Float=-1.; stl::String="", opt::String="")
    cmgl.vect3_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                      Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, sval, opt)
end

function vect3(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float},
                                 sval::cmgl.Float=-1; stl::String="",  opt::String="")
    cmgl.vect3(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, sval, opt)
end

function dew(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float}, 
                                ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                stl::String="",  opt::String="")
    cmgl.dew_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function dew(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                stl::String="",  opt::String="")
    cmgl.dew(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flow_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::Graph, x::Array{cmgl.Float},  y::Array{cmgl.Float},  z::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flow_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                     Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function flow(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flow_2d(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flow_3d(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function flow(gr::Graph, x0::cmgl.Float,        y0::cmgl.Float,
                                 x::Array{cmgl.Float},  y::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flowp_xy(gr.ptr, x0, y0, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::Graph, x0::cmgl.Float,        y0::cmgl.Float,        z0::cmgl.Float,
                                 x::Array{cmgl.Float},  y::Array{cmgl.Float},  z::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flowp_xyz(gr.ptr, x0, y0, z0, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                      Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function flow(gr::Graph, x0::cmgl.Float,  y0::cmgl.Float, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flowp_2d(gr.ptr, x0, y0, Data(ax).ptr, Data(ay).ptr, stl, opt)
end

function flow(gr::Graph, x0::cmgl.Float,  y0::cmgl.Float,  z0::cmgl.Float, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float};
                                 stl::String="",  opt::String="")
    cmgl.flowp_3d(gr.ptr, x0, y0, z0, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, opt)
end

function grad(gr::Graph, phi::Array{cmgl.Float}; stl::String="", opt::String="")
    cmgl.grad(gr.ptr, Data(phi).ptr, stl, opt)
end

function grad(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, phi::Array{cmgl.Float}; 
                                 stl::String="", opt::String="")
    cmgl.grad_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(phi).ptr, stl, opt)
end

function grad(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, phi::Array{cmgl.Float}; 
                                 stl::String="", opt::String="")
    cmgl.grad_xyz(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(phi).ptr, stl, opt)
end

function pipe(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, r0::cmgl.Float=0.05;
                                 stl::String="", opt::String="")
    cmgl.pipe_xy(gr.ptr, Data(x).ptr, Data(y).ptr, Data(ax).ptr, Data(ay).ptr, stl, r0, opt) 
end

function pipe(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}, 
                                 ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float}, r0::cmgl.Float=0.05;
                                 stl::String="", opt::String="")
    cmgl.pipe_xyz(gr.ptr, Data(x).ptr,  Data(y).ptr,  Data(z).ptr, 
                         Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, r0, opt) 
end

function pipe(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, r0::cmgl.Float=0.05;
                                 stl::String="", opt::String="")
    cmgl.pipe_2d(gr.ptr, Data(ax).ptr, Data(ay).ptr, stl, r0, opt) 
end

function pipe(gr::Graph, ax::Array{cmgl.Float}, ay::Array{cmgl.Float}, az::Array{cmgl.Float}, r0::cmgl.Float=0.05;
                                 stl::String="", opt::String="")
    cmgl.pipe_3d(gr.ptr, Data(ax).ptr, Data(ay).ptr, Data(az).ptr, stl, r0, opt) 
end
