# Setup functions for MathGL.jl

# resetting all parameters, clear graph
function reset(gr::AbstractGraph)
    mgl.set_def_param(gr.ptr)
end

# Transparency options
function alpha(gr::AbstractGraph, enable::Bool)
    mgl.set_alpha(gr.ptr, enable)
end

function alpha(gr::AbstractGraph, val::Real)
    mgl.set_alpha_default(gr.ptr, val)
end

function transptype(gr::AbstractGraph, typ::Int)
    mgl.set_transp_type(gr.ptr, typ)
end

# Lightning options
function light(gr::AbstractGraph, enable::Bool)
    mgl.set_light(gr.ptr, enable)
end

function light(gr::AbstractGraph, n::Int, enable::Bool)
    mgl.set_light_n(gr.ptr, n, enable)
end

function light(gr::AbstractGraph, n::Int, dx::Real, dy::Real, dz::Real; 
               c::ASCIIString="w", bright::Real=0.5, ap::Real=0.)
    mgl.add_light_ext(gr.ptr, n, dx, dy, dz, c, bright, ap)
end

function light(gr::AbstractGraph, n::Int, rx::Real, ry::Real, rz::Real, dx::Real, dy::Real, dz::Real; 
               c::ASCIIString="w", bright::Real=0.5, ap::Real=0.)
    mgl.add_light_loc(gr.ptr, n, rx, ry, rz, dx, dy, dz, c, bright, ap)
end

function diffuse(gr::AbstractGraph, bright::Real)
    mgl.set_difbr(gr.ptr, bright)
end

function ambient(gr::AbstractGraph, bright::Real)
    mgl.set_ambbr(gr.ptr, bright)
end

# Fog
function fog(gr::AbstractGraph, d::Real; dz::Real=0.25)
    mgl.set_fog(gr.ptr, d, dz)
end

# Default widths, sizes, numbers, names...
function barwidth(gr::AbstractGraph, val::Real)
    mgl.set_bar_width(gr.ptr, val)
end

function marksize(gr::AbstractGraph, val::Real)
    mgl.set_mark_size(gr.ptr, val)
end

function arrowsize(gr::AbstractGraph, val::Real)
    mgl.set_arrow_size(gr.ptr, val)
end

function meshnum(gr::AbstractGraph, n::Int)
    mgl.set_meshnum(gr.ptr, n)
end

function facenum(gr::AbstractGraph, n::Int)
    mgl.set_facenum(gr.ptr, n)
end

function plotid(gr::AbstractGraph, id::ASCIIString)
    mgl.set_plotid(gr.ptr, id)
end

function plotid(gr::AbstractGraph)
    bytestring(mgl.get_plotid(gr.ptr))
end

# Cutting (excluding) points from drawing:
function cut(gr::AbstractGraph, enable::Bool)
    mgl.set_cut(gr.ptr, enable)
end

function cut(gr::AbstractGraph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real)
    mgl.set_cut_box(gr.ptr, x1, y1, z1, x2, y2, z2)
end

function cut(gr::AbstractGraph, cond::ASCIIString)
    mgl.set_cutoff(gr.ptr, enable)
end


# Text and font settings
function rotatetext(gr::AbstractGraph, enable::Bool)
    mgl.set_rotated_text(gr.ptr, enable)
end

function loadfont(gr::AbstractGraph, name::ASCIIString, path::ASCIIString="")
    mgl.load_font(gr.ptr, name, path)
end

function font(gr::AbstractGraph, fnt::ASCIIString)
    mgl.set_font_def(gr.ptr, fnt)
end

function font(gr::AbstractGraph, val::Real)
    mgl.set_font_size(gr.ptr, val)
end

function font(gr::AbstractGraph, fnt::ASCIIString, val::Real)
    mgl.set_font_def(gr.ptr, fnt)
    mgl.set_font_size(gr.ptr, val)
end

function font(gr::AbstractGraph, from::AbstractGraph)
    mgl.copy_font(gr.ptr, from.ptr)
end

function restorefont(gr::AbstractGraph)
    mgl.restore_font(gr.ptr)
end

function defaultfont(name::ASCIIString, path::ASCIIString="")
    mgl.def_font(name, path)
end

# Color palette, colors, ...
function palette(gr::AbstractGraph, colors::ASCIIString)
    mgl.set_palette(gr.ptr, colors)
end

function scheme(gr::AbstractGraph, sch::ASCIIString)
    mgl.set_def_sch(gr.ptr, sch)
end

function colorid(id::Char, r::Real, g::Real, b::Real)
    mgl.set_color(id, r, g, b)
end

# Masks
function mask(id::Char, hex::ASCIIString)
    mgl.set_mask(id, hex)
end

function mask(id::Char, hex::Integer)
    mgl.set_mask(id, hex)
end

function mask(gr::AbstractGraph, angle::Integer)
    mgl.set_mask_angle(gr.ptr, angle)
end

# TODO: Error handling
# TODO: Stop drawing
function stop(gr::AbstractGraph, enable::Bool=true)
    mgl.ask_stop(gr.ptr, enable)
end

# Ranges (partially done) TODO: allow ranges to be set according to data
function xrange(gr::AbstractGraph, x1::Real, x2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'x', x1, x2)
    else
        mgl.set_range_val(gr.ptr, 'x', x1, x2)
    end
end

function xrange(gr::AbstractGraph, x::Array{mgl.Float})
    mgl.set_range_val(gr.ptr, 'x', minimum(x), maximum(x))
end

function yrange(gr::AbstractGraph, y1::Real, y2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'y', y1, y2)
    else
        mgl.set_range_val(gr.ptr, 'y', y1, y2)
    end
end

function yrange(gr::AbstractGraph, y::Array{mgl.Float})
    mgl.set_range_val(gr.ptr, 'y', minimum(y), maximum(y))
end

function zrange(gr::AbstractGraph, z1::Real, z2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'z', z1, z2)
    else
        mgl.set_range_val(gr.ptr, 'z', z1, z2)
    end
end

function zrange(gr::AbstractGraph, z::Array{mgl.Float})
    mgl.set_range_val(gr.ptr, 'z', minimum(z), maximum(z))
end

function crange(gr::AbstractGraph, c1::Real, c2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'c', c1, c2)
    else
        mgl.set_range_val(gr.ptr, 'c', c1, c2)
    end
end

function crange(gr::AbstractGraph, c::Array{mgl.Float})
    mgl.set_range_val(gr.ptr, 'c', minimum(c), maximum(c))
end

function ranges(gr::AbstractGraph, x1::Real, x2::Real, y1::Real, y2::Real, z1::Real=0., z2::Real=0.)
    mgl.set_ranges(gr.ptr, x1, x2, y1, y2, z1, z2)
end

function ranges(gr::AbstractGraph, x::Array{mgl.Float}, y::Array{mgl.Float}, z::Array{mgl.Float}=[0.])
    mgl.set_ranges(gr.ptr, minimum(x), maximum(x), minimum(y), maximum(y), minimum(z), maximum(z))
end

function origin(gr::AbstractGraph, x0::Real, y0::Real, z0::Real=NaN)
    mgl.set_origin(gr.ptr, x0, y0, z0)
end

function zoomaxis(gr::AbstractGraph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real)
    mgl.zoom_axis(gr.ptr, x1, y1, z1, x2, y2, z2)
end

# Curvilinear coordinates
function coords(gr::AbstractGraph; X::ASCIIString="", Y::ASCIIString="", Z::ASCIIString="", C::ASCIIString="")
    mgl.set_func(gr.ptr, X, Y, Z, C)
end

function coords(gr::AbstractGraph, how::Integer=0)
    mgl.set_coor(gr.ptr, how)
end

function ternary(gr::AbstractGraph, tern::Integer)
    mgl.set_ternary(gr.ptr, tern)
end

# Ticks TODO: many options for ticks
function adjust(gr::AbstractGraph, dir::ASCIIString="xyzc")
    mgl.adjust_ticks(gr.ptr, dir)
end

function xtick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'x', dir, d, ns, org, fact)
end

function ytick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'y', dir, d, ns, org, fact)
end

function ztick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'z', dir, d, ns, org, fact)
end

function ctick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'c', dir, d, ns, org, fact)
end

function xtick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'x', dir, d, ns, org, fact)
end

function ytick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'y', dir, d, ns, org, fact)
end

function ztick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'z', dir, d, ns, org, fact)
end

function ctick(gr::AbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'c', dir, d, ns, org, fact)
end

function xtick(gr::AbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'x', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ytick(gr::AbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'y', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ztick(gr::AbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'z', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ctick(gr::AbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'c', reduce(*, Base.map(x->x*"\n", lbl)), add)
end

function xtick(gr::AbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'x', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ytick(gr::AbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'y', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ztick(gr::AbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'z', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ctick(gr::AbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'c', reduce(*, Base.map(x->x*"\n", lbl)), add)
end

function xtick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'x', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ytick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'y', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ztick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'y', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ctick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'c', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end

function xtick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'x', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ytick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'y', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ztick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'y', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ctick{T<:Real}(gr::AbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'c', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end

# For Resetting
function xtick(gr::AbstractGraph)
    mgl.set_ticks(gr.ptr, 'x', 0, 0, NaN)
end
function ytick(gr::AbstractGraph)
    mgl.set_ticks(gr.ptr, 'y', 0, 0, NaN)
end
function ztick(gr::AbstractGraph)
    mgl.set_ticks(gr.ptr, 'z', 0, 0, NaN)
end


function xtick(gr::AbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'x', val, lbl)
end
function ytick(gr::AbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'y', val, lbl)
end
function ztick(gr::AbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'z', val, lbl)
end
function ctick(gr::AbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'c', val, lbl)
end

function xtick(gr::AbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'x', val, lbl)
end
function ytick(gr::AbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'y', val, lbl)
end
function ztick(gr::AbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'z', val, lbl)
end
function ctick(gr::AbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'c', val, lbl)
end

function xtick(gr::AbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'x', templ)
end
function ytick(gr::AbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'y', templ)
end
function ztick(gr::AbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'z', templ)
end
function ctick(gr::AbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'c', templ)
end

function xtick(gr::AbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'x', templ)
end
function ytick(gr::AbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'y', templ)
end
function ztick(gr::AbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'z', templ)
end
function ctick(gr::AbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'c', templ)
end

function tuneticks(gr::AbstractGraph, tune::Int, pos::Real)
    mgl.tune_ticks(gr.ptr, tune, pos)
end

function tickshift(gr::AbstractGraph, dx::Real, dy::Real, dz::Real, dc::Real)
    mgl.tickshift(gr.ptr, dx, dy, dz, dc)
end
function tickshift(gr::AbstractGraph; dx::Real=0., dy::Real=0., dz::Real=0., dc::Real=0.)
    mgl.tickshift(gr.ptr, dx, dy, dz, dc)
end

function tickrotate(gr::AbstractGraph, val::Bool=true)
    mgl.set_tick_rotate(gr.ptr, val)
end

function tickskip(gr::AbstractGraph, val::Bool=true)
    mgl.set_tick_skip(gr.ptr, val)
end

#TODO: time formats for tics etc.

function origintick(gr::AbstractGraph, val::Bool=true)
    mgl.set_flag(gr.ptr, val, mgl.MGL_NO_ORIGIN)
end

function ticklen(gr::AbstractGraph, val::Real, stt::Real=1.)
    mgl.set_tick_len(gr.ptr, val, stt)
end

function axisstl(gr::AbstractGraph, stl::ASCIIString="", tck::ASCIIString="", sub::ASCIIString="")
    mgl.set_axis_stl(gr.ptr, stl, tck, sub)
end

# Subplots and Rotations
# Preferred Order: subplot,multiplot,inplot -> title -> rotate,aspect -> plotting
# or:              columnplot, gridplot, stickplot, relative inplot -> ...

function subplot(gr::AbstractGraph, nx::Int, ny::Int, m::Int; stl::ASCIIString="<>_^", dx::Real=0, dy::Real=0)
    mgl.subplot_d(gr.ptr, nx, ny, m, stl, dx, dy)
end

function multiplot(gr::AbstractGraph, nx::Int, ny::Int, m::Int, dx::Int, dy::Int; stl::ASCIIString="<>_^")
    mgl.multiplot(gr.ptr, nx, ny, m, dx, dy, stl)
end

function inplot(gr::AbstractGraph, x1::Real, x2::Real, y1::Real, y2::Real, rel::Bool=true)
    if rel
        mgl.inplot(gr.ptr, x1, x2, y1, y2)
    else
        mgl.relplot(gr.ptr, x1, x2, y1, y2)
    end
end

function columnplot(gr::AbstractGraph, num::Int, ind::Int, d::Real=0.)
    mgl.columnplot_d(gr.ptr, num, ind, d)
end

function gridplot(gr::AbstractGraph, nx::Int, ny::Int, ind::Int, d::Real=0.)
    mgl.gridplot_d(gr.ptr, nx, ny, ind, d)
end

function stickplot(gr::AbstractGraph, num::Int, ind::Int, tet::Real, phi::Real)
    mgl.stickplot(gr.ptr, num, ind, tet, phi)
end

function title(gr::AbstractGraph, txt::ASCIIString; stl::ASCIIString="", size::Int=-2)
    mgl.title(gr.ptr, txt, stl, size)
end
function title(gr::AbstractGraph, txt::UTF8String; stl::ASCIIString="", size::Int=-2)
    mgl.titlew(gr.ptr, txt, stl, size)
end

function rotate(gr::AbstractGraph, tetx::Real, tetz::Real, tety::Real=0.)
    mgl.rotate(gr.ptr, tetx, tetz, tety)
end

function rotate(gr::AbstractGraph, tet::Real, x::Real, y::Real, z::Real)
    mgl.rotate_vector(gr.ptr, tet, x, y, z)
end

function xrotate(gr::AbstractGraph, tet::Real)
    mgl.rotate_vector(gr.ptr, tet, 1., 0., 0.)
end
function yrotate(gr::AbstractGraph, tet::Real)
    mgl.rotate_vector(gr.ptr, tet, 0., 1., 0.)
end
function zrotate(gr::AbstractGraph, tet::Real)
    mgl.rotate_vector(gr.ptr, tet, 0., 0., 1.)
end

function aspect(gr::AbstractGraph, ax::Real, ay::Real, az::Real=1.)
    mgl.aspect(gr.ptr, ax, ay, az)
end

#TODO Push and Pop for matrices on stack
function plotfactor(gr::AbstractGraph, val::Real)
    mgl.plotfactor(gr.ptr, val)
end

function perspective(gr::AbstractGraph, a::Real)
    mgl.perspective(gr.ptr, a)
end

function view(gr::AbstractGraph, tetx::Real, tetz::Real, tety::Real=0.)
    mgl.view(gr.ptr, tetx, tetz, tety)
end

function zoom(gr::AbstractGraph, x1::Real, y1::Real, x2::Real, y2::Real)
    mgl.set_zoom(gr.ptr, x1, y1, x2, y2)
end

# Additional helper functions
function setsize(gr::AbstractGraph, width::Int, height::Int)
    mgl.set_size(gr.ptr, width, height)
end

function quality(gr::AbstractGraph, val::Int)
    mgl.set_quality(gr.ptr, val)
end

function quality(gr::AbstractGraph)
    mgl.get_quality(gr.ptr)
end

function startgroup(gr::AbstractGraph, name::ASCIIString)
    mgl.start_group(gr.ptr, name)
end

function endgroup(gr::AbstractGraph)
    mgl.end_group(gr.ptr)
end

# File Export
function write(gr::AbstractGraph, fname::ASCIIString="", descr::ASCIIString="")
    mgl.write_frame(gr.ptr, fname, descr)
end

function writepng(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="", compr::Int=""; alpha::Bool=true)
    if alpha 
        mgl.write_png(gr.ptr, fname, descr)
    else
        mgl.write_png_solid(gr.ptr, fname, descr)
    end
end

function writejpg(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_jpg(gr.ptr, fname, descr)
end

function writegif(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_gif(gr.ptr, fname, descr)
end

function writebmp(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_bmp(gr.ptr, fname, descr)
end

function writetga(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_tga(gr.ptr, fname, descr)
end

function writeeps(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_eps(gr.ptr, fname, descr)
end

function writebps(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_bps(gr.ptr, fname, descr)
end

function writesvg(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_svg(gr.ptr, fname, descr)
end

function writetex(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_tex(gr.ptr, fname, descr)
end

function writeprc(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString=""; pdf=true)
    mgl.write_prc(gr.ptr, fname, descr, pdf)
end

function writeobj(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_obj(gr.ptr, fname, descr)
end

function writexyz(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_xyz(gr.ptr, fname, descr)
end

function writestl(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_stl(gr.ptr, fname, descr)
end

function writeoff(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString=""; colored::Bool=true)
    mgl.write_off(gr.ptr, fname, descr, colored)
end

function writejson(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_json(gr.ptr, fname, descr)
end

function exportmgld(gr::AbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.export_mgld(gr.ptr, fname, descr)
end

function importmgld(gr::AbstractGraph, fname::ASCIIString; add::Bool=true)
    mgl.import_mgld(gr.ptr, fname, add)
end

#=#TODO:show image function=#
function showwith(gr::AbstractGraph, viewer::ASCIIString; wait::Bool=true)
    mgl.show_image(gr.ptr, viewer, wait)
end

function newframe(gr::AbstractGraph)
    mgl.new_frame(gr.ptr)
end

function endframe(gr::AbstractGraph)
    mgl.end_frame(gr.ptr)
end

function getnumframe(gr::AbstractGraph)
    mgl.get_num_frame(gr.ptr)
end

function setnumframe(gr::AbstractGraph, n::Int)
    mgl.set_num_frame(gr.ptr, n)
end

function getframe(gr::AbstractGraph, n::Int)
    mgl.get_frame(gr.ptr, n)
end

function showframe(gr::AbstractGraph, n::Int)
    mgl.show_frame(gr.ptr, n)
end

function delframe(gr::AbstractGraph, n::Int)
    mgl.del_frame(gr.ptr, n)
end

function resetframes(gr::AbstractGraph)
    mgl.reset_frames(gr.ptr)
end

function clearframe(gr::AbstractGraph, n::Int)
    mgl.clear_frame(gr.ptr, n)
end

function startgif(gr::AbstractGraph, fname::ASCIIString, ms::Int=100)
    mgl.start_gif(gr.ptr, fname, ms)
end

function closegif(gr::AbstractGraph)
    mgl.close_gif(gr.ptr)
end

function width(gr::AbstractGraph)
    mgl.get_width(gr.ptr)
end
function height(gr::AbstractGraph)
    mgl.get_height(gr.ptr)
end

function getrgb(gr::AbstractGraph)
    pointer_to_array(mgl.get_rgb(gr.ptr), (3, width(gr), height(gr)), true)
end

function getrgba(gr::AbstractGraph)
    pointer_to_array(mgl.get_rgba(gr.ptr), (4, width(gr), height(gr)), true)
end

function getwidth(gr::AbstractGraph)
    mgl.get_width(gr.ptr)
end

function getheight(gr::AbstractGraph)
    mgl.get_height(gr.ptr)
end

function calcxyz(gr::AbstractGraph, xs::Int, ys::Int)
    x = Int[0]
    y = Int[0]
    z = Int[0]
    mgl.calc_xyz(gr.ptr, xs, ys, x, y, z)
    [x,y,z]
end

function calcscr(gr::AbstractGraph, x::Int, y::Int, z::Int)
    xs = Int[0]
    ys = Int[0]
    mgl.calc_scr(gr.ptr, x, y, z, xs, ys)
    [xs, ys]
end

function objectid(gr::AbstractGraph, id::Int)
    mgl.set_obj_id(gr.ptr, id)
end

function objectid(gr::AbstractGraph, xs::Int, ys::Int)
    mgl.get_obj_id(gr.ptr, xs, ys)
end

function subplotid(gr::AbstractGraph, xs::Int, ys::Int)
    mgl.get_spl_id(gr.ptr, xs, ys)
end

function highlight(gr::AbstractGraph, id::Int)
    mgl.highlight(gr.ptr, id)
end

function isactive(gr::AbstractGraph, xs::Int, ys::Int, d::Int=1)
    mgl.is_active(gr.ptr, xs, ys, d)
end

function drawregion(gr::AbstractGraph, nx::Int, ny::Int, m::Int)
    mgl.set_draw_reg(gr.ptr, nx, ny, m)
end

## NOT TO BE EXPORTED ###
function numthreads(n::Int)
    mgl.set_num_thr(n)
end

function combine(gr::AbstractGraph, gr2::AbstractGraph)
    mgl.combine_gr(gr.ptr, gr2.ptr)
end

function mpisend(gr::AbstractGraph, id::Int)
    mgl.mpi_send(gr.ptr, id)
end

function mpirecv(gr::AbstractGraph, id::Int)
    mgl.mpi_recv(gr.ptr, id)
end

function clf(gr::AbstractGraph)
    mgl.clf(gr.ptr)
end

function clf(gr::AbstractGraph, col::ASCIIString)
    mgl.clf_str(gr.ptr, col)
end

function clf(gr::AbstractGraph, col::Char)
    mgl.clf_chr(gr.ptr, col)
end

function clf(gr::AbstractGraph, r::Real, g::Real, b::Real)
    mgl.clf_chr(gr.ptr, r, g, b)
end

function rasterize(gr::AbstractGraph)
    mgl.rasterize(gr.ptr)
end

function background(gr::AbstractGraph, fname::ASCIIString, alpha::Float64=1)
    mgl.load_background(gr.ptr, fname, alpha)
end

