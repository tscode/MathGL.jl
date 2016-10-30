# Plotting functions of the section "4.16 Other plotting" of the mgl manual

function densx(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.dens_x(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function densy(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.dens_y(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function densz(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.dens_z(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contx(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.cont_x(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function conty(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.cont_y(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contz(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.cont_z(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contx(gr::Graph, v::Array{cmgl.Float}, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.cont_x_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function conty(gr::Graph, v::Array{cmgl.Float}, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.cont_y_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contz(gr::Graph, v::Array{cmgl.Float}, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.cont_z_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end


function contfx(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.contf_x(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contfy(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.contf_y(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contfz(gr::Graph, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.contf_z(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contfx(gr::Graph, v::Array{cmgl.Float}, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.contf_x_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contfy(gr::Graph, v::Array{cmgl.Float}, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.contf_y_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contfz(gr::Graph, v::Array{cmgl.Float}, a::Array{cmgl.Float}, sval=NaN; stl::String="", opt::String="") 
    cmgl.contf_z_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function fplot(gr::Graph, eqY::String; stl::String="", opt::String="")
    cmgl.fplot(gr.ptr, eqY, stl, opt)
end

function fplot(gr::Graph, eqX::String, eqY::String, eqZ::String; 
                                  stl::String="", opt::String="")
    cmgl.fplot_xyz(gr.ptr, eqX, eqY, eqZ, stl, opt)
end

function fsurf(gr::Graph, eqZ::String; stl::String="", opt::String="")
    cmgl.fsurf(gr.ptr, eqZ, stl, opt)
end

function fsurf(gr::Graph, eqX::String, eqY::String, eqZ::String; 
                                  stl::String="", opt::String="")
    cmgl.fsurf_xyz(gr.ptr, eqX, eqY, eqZ, stl, opt)
end

function triplot(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float};
                                    stl::String="", opt::String="")
    cmgl.triplot_xy(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function triplot(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float},
                                    z::Array{cmgl.Float};
                                    stl::String="", opt::String="")
    cmgl.triplot_xyz(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function triplot(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float},
                                    z::Array{cmgl.Float}, c::Array{cmgl.Float};
                                    stl::String="", opt::String="")
    cmgl.triplot_xyzc(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

#=function tricont(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float},=#
                                    #=z::Array{cmgl.Float}, c::Array{cmgl.Float};=#
                                    #=stl::String="", opt::String="")=#
    #=cmgl.tricont_xyzc(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, =#
                             #=stl, opt)=#
#=end=#

function tricont(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float},
                                    z::Array{cmgl.Float};
                                    stl::String="", opt::String="")
    cmgl.tricont_xyz(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function tricont(gr::Graph, v::Array{cmgl.Float}, id::Array{cmgl.Float}, x::Array{cmgl.Float}, 
                                    y::Array{cmgl.Float}, z::Array{cmgl.Float}, c::Array{cmgl.Float};
                                    stl::String="", opt::String="")
    cmgl.tricont_xyzcv(gr.ptr, Data(v).ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, 
                              Data(z).ptr, Data(c).ptr, stl, opt)
end

function tricont(gr::Graph, v::Array{cmgl.Float}, id::Array{cmgl.Float}, x::Array{cmgl.Float}, 
                                    y::Array{cmgl.Float}, z::Array{cmgl.Float};
                                    stl::String="", opt::String="")
    cmgl.tricont_xyzv(gr.ptr, Data(v).ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, 
                             Data(z).ptr, stl, opt)
end

function quadplot(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float};
                                     stl::String="", opt::String="")
    cmgl.quadplot_xy(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function quadplot(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float},
                                     z::Array{cmgl.Float};
                                     stl::String="", opt::String="")
    cmgl.quadplot_xyz(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function quadplot(gr::Graph, id::Array{cmgl.Float}, x::Array{cmgl.Float}, y::Array{cmgl.Float},
                                     z::Array{cmgl.Float}, c::Array{cmgl.Float};
                                     stl::String="", opt::String="")
    cmgl.quadplot_xyzc(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, 
                              Data(z).ptr, Data(c).ptr, stl, opt)
end

function dots(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float};
                                 stl::String="", opt::String="")
    cmgl.dots(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function dots(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float},
                                 a::Array{cmgl.Float};
                                 stl::String="", opt::String="")
    cmgl.dots_a(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function dots(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float},
                                 a::Array{cmgl.Float}, c::Array{cmgl.Float};
                                 stl::String="", opt::String="")
    cmgl.dots_ca(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, Data(a).ptr, stl, opt)
end

function crust(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float};
                                  stl::String="", opt::String="")
    cmgl.crust(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end
