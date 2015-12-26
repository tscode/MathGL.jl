# Plotting functions of the section "4.16 Other plotting" of the mgl manual

function densx(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.dens_x(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function densy(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.dens_y(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function densz(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.dens_z(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contx(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.cont_x(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function conty(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.cont_y(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contz(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.cont_z(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contx(gr::AbstractGraph, v::Array{mgl.Float}, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.cont_x_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function conty(gr::AbstractGraph, v::Array{mgl.Float}, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.cont_y_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contz(gr::AbstractGraph, v::Array{mgl.Float}, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.cont_z_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end


function contfx(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.contf_x(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contfy(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.contf_y(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contfz(gr::AbstractGraph, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.contf_z(gr.ptr, Data(a).ptr, stl, sval, opt)
end

function contfx(gr::AbstractGraph, v::Array{mgl.Float}, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.contf_x_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contfy(gr::AbstractGraph, v::Array{mgl.Float}, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.contf_y_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function contfz(gr::AbstractGraph, v::Array{mgl.Float}, a::Array{mgl.Float}, sval=NaN; stl::ASCIIString="", opt::ASCIIString="") 
    mgl.contf_z_val(gr.ptr, Data(v).ptr, Data(a).ptr, stl, sval, opt)
end

function fplot(gr::AbstractGraph, eqY::ASCIIString; stl::ASCIIString="", opt::ASCIIString="")
    mgl.fplot(gr.ptr, eqY, stl, opt)
end

function fplot(gr::AbstractGraph, eqX::ASCIIString, eqY::ASCIIString, eqZ::ASCIIString; 
                                  stl::ASCIIString="", opt::ASCIIString="")
    mgl.fplot_xyz(gr.ptr, eqX, eqY, eqZ, stl, opt)
end

function fsurf(gr::AbstractGraph, eqZ::ASCIIString; stl::ASCIIString="", opt::ASCIIString="")
    mgl.fsurf(gr.ptr, eqZ, stl, opt)
end

function fsurf(gr::AbstractGraph, eqX::ASCIIString, eqY::ASCIIString, eqZ::ASCIIString; 
                                  stl::ASCIIString="", opt::ASCIIString="")
    mgl.fsurf_xyz(gr.ptr, eqX, eqY, eqZ, stl, opt)
end

function triplot(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float};
                                    stl::ASCIIString="", opt::ASCIIString="")
    mgl.triplot_xy(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function triplot(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float},
                                    z::Array{mgl.Float};
                                    stl::ASCIIString="", opt::ASCIIString="")
    mgl.triplot_xyz(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function triplot(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float},
                                    z::Array{mgl.Float}, c::Array{mgl.Float};
                                    stl::ASCIIString="", opt::ASCIIString="")
    mgl.triplot_xyzc(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function tricont(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float},
                                    z::Array{mgl.Float}, c::Array{mgl.Float};
                                    stl::ASCIIString="", opt::ASCIIString="")
    mgl.tricont_xyzc(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, 
                             stl, opt)
end

function tricont(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float},
                                    z::Array{mgl.Float};
                                    stl::ASCIIString="", opt::ASCIIString="")
    mgl.tricont_xyz(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function tricont(gr::AbstractGraph, v::Array{mgl.Float}, id::Array{mgl.Float}, x::Array{mgl.Float}, 
                                    y::Array{mgl.Float}, z::Array{mgl.Float}, c::Array{mgl.Float};
                                    stl::ASCIIString="", opt::ASCIIString="")
    mgl.tricont_xyzcv(gr.ptr, Data(v).ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, 
                              Data(z).ptr, Data(c).ptr, stl, opt)
end

function tricont(gr::AbstractGraph, v::Array{mgl.Float}, id::Array{mgl.Float}, x::Array{mgl.Float}, 
                                    y::Array{mgl.Float}, z::Array{mgl.Float};
                                    stl::ASCIIString="", opt::ASCIIString="")
    mgl.tricont_xyzv(gr.ptr, Data(v).ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, 
                             Data(z).ptr, stl, opt)
end

function quadplot(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float};
                                     stl::ASCIIString="", opt::ASCIIString="")
    mgl.quadplot_xy(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, stl, opt)
end

function quadplot(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float},
                                     z::Array{mgl.Float};
                                     stl::ASCIIString="", opt::ASCIIString="")
    mgl.quadplot_xyz(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function quadplot(gr::AbstractGraph, id::Array{mgl.Float}, x::Array{mgl.Float}, y::Array{mgl.Float},
                                     z::Array{mgl.Float}, c::Array{mgl.Float};
                                     stl::ASCIIString="", opt::ASCIIString="")
    mgl.quadplot_xyzc(gr.ptr, Data(id).ptr, Data(x).ptr, Data(y).ptr, 
                              Data(z).ptr, Data(c).ptr, stl, opt)
end

function dots(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float};
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.dots(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end

function dots(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float},
                                 a::Array{mgl.Float};
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.dots_a(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(a).ptr, stl, opt)
end

function dots(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float},
                                 a::Array{mgl.Float}, c::Array{mgl.Float};
                                 stl::ASCIIString="", opt::ASCIIString="")
    mgl.dots_ca(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, Data(c).ptr, Data(a).ptr, stl, opt)
end

function crust(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float};
                                  stl::ASCIIString="", opt::ASCIIString="")
    mgl.crust(gr.ptr, Data(x).ptr, Data(y).ptr, Data(z).ptr, stl, opt)
end
