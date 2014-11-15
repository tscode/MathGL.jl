
# resetting all parameters, clear graph
function reset(gr::MglAbstractGraph)
    mgl.set_def_param(gr.ptr)
end

# Transparency options
function alpha(gr::MglAbstractGraph, enable::Bool)
    mgl.set_alpha(gr.ptr, enable)
end

function alpha(gr::MglAbstractGraph, val::Real)
    mgl.set_alpha_default(gr.ptr, val)
end

function transptype(gr::MglAbstractGraph, typ::Int)
    mgl.set_transp_type(gr.ptr, typ)
end

# Lightning options
function light(gr::MglAbstractGraph, enable::Bool)
    mgl.set_light(gr.ptr, enable)
end

function light(gr::MglAbstractGraph, n::Int, enable::Bool)
    mgl.set_light_n(gr.ptr, n, enable)
end

function light(gr::MglAbstractGraph, n::Int, dx::Real, dy::Real, dz::Real; 
               c::ASCIIString="w", bright::Real=0.5, ap::Real=0.)
    mgl.add_light_ext(gr.ptr, n, dx, dy, dz, c, bright, ap)
end

function light(gr::MglAbstractGraph, n::Int, rx::Real, ry::Real, rz::Real, dx::Real, dy::Real, dz::Real; 
               c::ASCIIString="w", bright::Real=0.5, ap::Real=0.)
    mgl.add_light_loc(gr.ptr, n, rx, ry, rz, dx, dy, dz, c, bright, ap)
end

function diffuse(gr::MglAbstractGraph, bright::Real)
    mgl.set_difbr(gr.ptr, bright)
end

function ambient(gr::MglAbstractGraph, bright::Real)
    mgl.set_ambbr(gr.ptr, bright)
end

# Fog
function fog(gr::MglAbstractGraph, d::Real; dz::Real=0.25)
    mgl.set_fog(gr.ptr, d, dz)
end

# Default widths, sizes, numbers, names...
function barwidth(gr::MglAbstractGraph, val::Real)
    mgl.set_bar_width(gr.ptr, val)
end

function marksize(gr::MglAbstractGraph, val::Real)
    mgl.set_mark_size(gr.ptr, val)
end

function arrowsize(gr::MglAbstractGraph, val::Real)
    mgl.set_arrow_size(gr.ptr, val)
end

function meshnum(gr::MglAbstractGraph, n::Int)
    mgl.set_meshnum(gr.ptr, n)
end

function facenum(gr::MglAbstractGraph, n::Int)
    mgl.set_facenum(gr.ptr, n)
end

function plotid(gr::MglAbstractGraph, id::ASCIIString)
    mgl.set_plotid(gr.ptr, id)
end

function plotid(gr::MglAbstractGraph)
    bytestring(mgl.get_plotid(gr.ptr))
end

# Cutting (excluding) points from drawing:
function cut(gr::MglAbstractGraph, enable::Bool)
    mgl.set_cut(gr.ptr, enable)
end

function cut(gr::MglAbstractGraph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real)
    mgl.set_cut_box(gr.ptr, x1, y1, z1, x2, y2, z2)
end

function cut(gr::MglAbstractGraph, cond::ASCIIString)
    mgl.set_cutoff(gr.ptr, enable)
end


# Text and font settings
function rotatetext(gr::MglAbstractGraph, enable::Bool)
    mgl.set_rotated_text(gr.ptr, enable)
end

function loadfont(gr::MglAbstractGraph, name::ASCIIString, path::ASCIIString="")
    mgl.load_font(gr.ptr, name, path)
end

function font(gr::MglAbstractGraph, fnt::ASCIIString)
    mgl.set_font_def(gr.ptr, fnt)
end

function font(gr::MglAbstractGraph, val::Real)
    mgl.set_font_size(gr.ptr, val)
end

function font(gr::MglAbstractGraph, fnt::ASCIIString, val::Real)
    mgl.set_font_def(gr.ptr, fnt)
    mgl.set_font_size(gr.ptr, val)
end

function font(gr::MglAbstractGraph, from::MglAbstractGraph)
    mgl.copy_font(gr.ptr, from.ptr)
end

function font(gr::MglAbstractGraph)
    mgl.restore_font(gr.ptr)
end

function font(name::ASCIIString, path::ASCIIString="")
    mgl.def_font(name, path)
end

# Color palette, colors, ...
function palette(gr::MglAbstractGraph, colors::ASCIIString)
    mgl.set_palette(gr.ptr, colors)
end

function scheme(gr::MglAbstractGraph, sch::ASCIIString)
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

function mask(gr::MglAbstractGraph, angle::Integer)
    mgl.set_mask_angle(gr.ptr, angle)
end

# TODO: Error handling
# TODO: Stop drawing
function stop(gr::MglAbstractGraph, enable::Bool=true)
    mgl.ask_stop(gr.ptr, enable)
end

# Ranges TODO: allow ranges to be set according to data
function xrange(gr::MglAbstractGraph, x1::Real, x2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'x', x1, x2)
    else
        mgl.set_range_val(gr.ptr, 'x', x1, x2)
    end
end

function yrange(gr::MglAbstractGraph, y1::Real, y2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'y', y1, y2)
    else
        mgl.set_range_val(gr.ptr, 'y', y1, y2)
    end
end

function zrange(gr::MglAbstractGraph, z1::Real, z2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'z', z1, z2)
    else
        mgl.set_range_val(gr.ptr, 'z', z1, z2)
    end
end

function crange(gr::MglAbstractGraph, c1::Real, c2::Real; add::Bool=false)
    if add
        mgl.add_range_val(gr.ptr, 'c', c1, c2)
    else
        mgl.set_range_val(gr.ptr, 'c', c1, c2)
    end
end

function ranges(gr::MglAbstractGraph, x1::Real, x2::Real, y1::Real, y2::Real, z1::Real=0., z2::Real=0.)
    mgl.set_ranges(gr.ptr, x1, x2, y1, y2, z1, z2)
end

function origin(gr::MglAbstractGraph, x0::Real, y0::Real, z0::Real=NaN)
    mgl.set_origin(gr.ptr, x0, y0, z0)
end

function zoomaxis(gr::MglAbstractGraph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real)
    mgl.zoom_axis(gr.ptr, x1, y1, z1, x2, y2, z2)
end

# Curvilinear coordinates
function axis(gr::MglAbstractGraph, eqx::ASCIIString, eqy::ASCIIString, eqz::ASCIIString)
    mgl.set_func(gr.ptr, eqx, eqy, eqz)
end

function axis(gr::MglAbstractGraph, how::Integer)
    mgl.set_coor(gr.ptr, how)
end

function ternary(gr::MglAbstractGraph, tern::Integer)
    mgl.set_ternary(gr.ptr, tern)
end

# Ticks TODO: many options for ticks
function adjust(gr::MglAbstractGraph, dir::ASCIIString="xyzc")
    mgl.adjust_ticks(gr.ptr, dir)
end

function xtick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'x', dir, d, ns, org, fact)
end

function ytick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'y', dir, d, ns, org, fact)
end

function ztick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'z', dir, d, ns, org, fact)
end

function ctick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::ASCIIString="")
    mgl.set_ticks_fact(gr.ptr, 'c', dir, d, ns, org, fact)
end

function xtick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'x', dir, d, ns, org, fact)
end

function ytick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'y', dir, d, ns, org, fact)
end

function ztick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'z', dir, d, ns, org, fact)
end

function ctick(gr::MglAbstractGraph, d::Real=0; ns::Int=0, org::Real=NaN, fact::UTF8String=UTF8String(""))
    mgl.set_ticks_factw(gr.ptr, 'c', dir, d, ns, org, fact)
end

function xtick(gr::MglAbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'x', reduce(*, map(x->x*"\n", lbl)), add)
end
function ytick(gr::MglAbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'y', reduce(*, map(x->x*"\n", lbl)), add)
end
function ztick(gr::MglAbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'z', reduce(*, map(x->x*"\n", lbl)), add)
end
function ctick(gr::MglAbstractGraph, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_str(gr.ptr, 'c', reduce(*, map(x->x*"\n", lbl)), add)
end

function xtick(gr::MglAbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'x', reduce(*, map(x->x*"\n", lbl)), add)
end
function ytick(gr::MglAbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'y', reduce(*, map(x->x*"\n", lbl)), add)
end
function ztick(gr::MglAbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'z', reduce(*, map(x->x*"\n", lbl)), add)
end
function ctick(gr::MglAbstractGraph, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_wcs(gr.ptr, 'c', reduce(*, map(x->x*"\n", lbl)), add)
end

function xtick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'x', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end
function ytick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'y', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end
function ztick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'y', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end
function ctick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{ASCIIString}; add=false)
    mgl.set_ticks_val(gr.ptr, 'c', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end

function xtick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'x', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end
function ytick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'y', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end
function ztick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'y', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end
function ctick{T<:Real}(gr::MglAbstractGraph, val::Array{T}, lbl::Array{UTF8String}; add=false)
    mgl.set_ticks_valw(gr.ptr, 'c', MglData(val).ptr, reduce(*, map(x->x*"\n", lbl)), add)
end


function xtick(gr::MglAbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'x', val, lbl)
end
function ytick(gr::MglAbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'y', val, lbl)
end
function ztick(gr::MglAbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'z', val, lbl)
end
function ctick(gr::MglAbstractGraph, val::Real, lbl::ASCIIString)
    mgl.add_tick(gr.ptr, 'c', val, lbl)
end

function xtick(gr::MglAbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'x', val, lbl)
end
function ytick(gr::MglAbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'y', val, lbl)
end
function ztick(gr::MglAbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'z', val, lbl)
end
function ctick(gr::MglAbstractGraph, val::Real, lbl::UTF8String)
    mgl.add_tickw(gr.ptr, 'c', val, lbl)
end

function xtick(gr::MglAbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'x', templ)
end
function ytick(gr::MglAbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'y', templ)
end
function ztick(gr::MglAbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'z', templ)
end
function ctick(gr::MglAbstractGraph, templ::ASCIIString)
    mgl.set_tick_templ(gr.ptr, 'c', templ)
end

function xtick(gr::MglAbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'x', templ)
end
function ytick(gr::MglAbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'y', templ)
end
function ztick(gr::MglAbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'z', templ)
end
function ctick(gr::MglAbstractGraph, templ::UTF8String)
    mgl.set_tick_templw(gr.ptr, 'c', templ)
end

function tuneticks(gr::MglAbstractGraph, tune::Int, pos::Real)
    mgl.tune_ticks(gr.ptr, tune, pos)
end

function tickshift(gr::MglAbstractGraph, dx::Real, dy::Real, dz::Real, dc::Real)
    mgl.tickshift(gr.ptr, dx, dy, dz, dc)
end
function tickshift(gr::MglAbstractGraph; dx::Real=0., dy::Real=0., dz::Real=0., dc::Real=0.)
    mgl.tickshift(gr.ptr, dx, dy, dz, dc)
end

function tickrotate(gr::MglAbstractGraph, val::Bool=true)
    mgl.set_tick_rotate(gr.ptr, val)
end

function tickskip(gr::MglAbstractGraph, val::Bool=true)
    mgl.set_tick_skip(gr.ptr, val)
end

#TODO: time formats for tics etc.

function origintick(gr::MglAbstractGraph, val::Bool=true)
    mgl.set_flag(gr.ptr, val, mgl.MGL_NO_ORIGIN)
end

function ticklen(gr::MglAbstractGraph, val::Real, stt::Real=1.)
    mgl.set_tick_len(gr.ptr, val, stt)
end

function axisstl(gr::MglAbstractGraph, stl::ASCIIString="", tck::ASCIIString="", sub::ASCIIString="")
    mgl.set_axis_stl(gr.ptr, stl, tck, sub)
end

# Subplots and Rotations
# Preferred Order: subplot,multiplot,inplot -> title -> rotate,aspect -> plotting
# or:              columnplot, gridplot, stickplot, relative inplot -> ...

function subplot(gr::MglAbstractGraph, nx::Int, ny::Int, m::Int; stl::ASCIIString="<>_^", dx::Real=0, dy::Real=0)
    mgl.subplot_d(gr.ptr, nx, ny, m, stl, dx, dy)
end

function multiplot(gr::MglAbstractGraph, nx::Int, ny::Int, m::Int, dx::Int, dy::Int; stl::ASCIIString="<>_^")
    mgl.multiplot(gr.ptr, nx, ny, m, dx, dy, stl)
end

function inplot(gr::MglAbstractGraph, x1::Real, x2::Real, y1::Real, y2::Real, rel::Bool=true)
    if rel
        mgl.inplot(gr.ptr, x1, x2, y1, y2)
    else
        mgl.relplot(gr.ptr, x1, x2, y1, y2)
    end
end

function columnplot(gr::MglAbstractGraph, num::Int, ind::Int, d::Real=0.)
    mgl.columnplot_d(gr.ptr, num, ind, d)
end

function gridplot(gr::MglAbstractGraph, nx::Int, ny::Int, ind::Int, d::Real=0.)
    mgl.gridplot_d(gr.ptr, nx, ny, ind, d)
end

function stickplot(gr::MglAbstractGraph, num::Int, ind::Int, tet::Real, phi::Real)
    mgl.stickplot(gr.ptr, num, ind, tet, phi)
end

function title(gr::MglAbstractGraph, txt::ASCIIString; stl::ASCIIString="", size::ASCIIString=-2)
    mgl.title(gr.ptr, txt, stl, size)
end
function title(gr::MglAbstractGraph, txt::UTF8String; stl::ASCIIString="", size::ASCIIString=-2)
    mgl.titlew(gr.ptr, txt, stl, size)
end

function rotate(gr::MglAbstractGraph, tetx::Real, tetz::Real, tety::Real=0.)
    mgl.rotate(gr.ptr, tetx, tetz, tety)
end

function rotate(gr::MglAbstractGraph, tet::Real, x::Real, y::Real, z::Real)
    mgl.rotate_vector(gr.ptr, tet, x, y, z)
end

function xrotate(gr::MglAbstractGraph, tet::Real)
    mgl.rotate_vector(gr.ptr, tet, 1., 0., 0.)
end
function yrotate(gr::MglAbstractGraph, tet::Real)
    mgl.rotate_vector(gr.ptr, tet, 0., 1., 0.)
end
function zrotate(gr::MglAbstractGraph, tet::Real)
    mgl.rotate_vector(gr.ptr, tet, 0., 0., 1.)
end

function aspect(gr::MglAbstractGraph, ax::Real, ay::Real, az::Real=1.)
    mgl.aspect(gr.ptr, ax, ay, az)
end

#TODO Push and Pop for matrices on stack
function plotfactor(gr::MglAbstractGraph, val::Real)
    mgl.plotfactor(gr.ptr, val)
end

function perspective(gr::MglAbstractGraph, a::Real)
    mgl.perspective(gr.ptr, a)
end

function view(gr::MglAbstractGraph, tetx::Real, tetz::Real, tety::Real=0.)
    mgl.view(gr.ptr, tetx, tetz, tety)
end

function zoom(gr::MglAbstractGraph, x1::Real, y1::Real, x2::Real, y2::Real)
    mgl.set_zoom(gr.ptr, x1, y1, x2, y2)
end

# Additional helper functions
function setsize(gr::MglAbstractGraph, width::Int, height::Int)
    mgl.set_size(gr.ptr, width, height)
end

function quality(gr::MglAbstractGraph, val::Int)
    mgl.set_quality(gr.ptr, val)
end

function quality(gr::MglAbstractGraph)
    mgl.get_quality(gr.ptr)
end

function startgroup(gr::MglAbstractGraph, name::ASCIIString)
    mgl.start_group(gr.ptr, name)
end

function endgroup(gr::MglAbstractGraph)
    mgl.end_group(gr.ptr)
end

# File Export
function writeframe(gr::MglAbstractGraph, fname::ASCIIString="", descr::ASCIIString="")
    mgl.write_frame(gr.ptr, fname, descr)
end

function writepng(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="", compr::Int=""; alpha::Bool=true)
    if alpha 
        mgl.write_png(gr.ptr, fname, descr)
    else
        mgl.write_png_solid(gr.ptr, fname, descr)
    end
end

function writejpg(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_jpg(gr.ptr, fname, descr)
end

function writegif(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_gif(gr.ptr, fname, descr)
end

function writebmp(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_bmp(gr.ptr, fname, descr)
end

function writetga(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_tga(gr.ptr, fname, descr)
end

function writeeps(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_eps(gr.ptr, fname, descr)
end

function writebps(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_bps(gr.ptr, fname, descr)
end

function writesvg(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_svg(gr.ptr, fname, descr)
end

function writetex(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_tex(gr.ptr, fname, descr)
end

function writeprc(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString=""; pdf=true)
    mgl.write_prc(gr.ptr, fname, descr, pdf)
end

function writeobj(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_obj(gr.ptr, fname, descr)
end

function writexyz(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_xyz(gr.ptr, fname, descr)
end

function writestl(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_stl(gr.ptr, fname, descr)
end

function writeoff(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString=""; colored::Bool=true)
    mgl.write_off(gr.ptr, fname, descr, colored)
end

function writejson(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.write_json(gr.ptr, fname, descr)
end

function exportmgld(gr::MglAbstractGraph, fname::ASCIIString, descr::ASCIIString="")
    mgl.export_mgld(gr.ptr, fname, descr)
end

function importmgld(gr::MglAbstractGraph, fname::ASCIIString; add::Bool=true)
    mgl.import_mgld(gr.ptr, fname, add)
end

#TODO:show image function

function newframe(gr::MglAbstractGraph)
    mgl.new_frame(gr.ptr)
end

function endframe(gr::MglAbstractGraph)
    mgl.end_frame(gr.ptr)
end

function getnumframe(gr::MglAbstractGraph)
    mgl.get_num_frame(gr.ptr)
end

function setnumframe(gr::MglAbstractGraph, n::Int)
    mgl.set_num_frame(gr.ptr, n)
end

function getframe(gr::MglAbstractGraph, n::Int)
    mgl.get_frame(gr.ptr, n)
end

function showframe(gr::MglAbstractGraph, n::Int)
    mgl.show_frame(gr.ptr, n)
end

function delframe(gr::MglAbstractGraph, n::Int)
    mgl.del_frame(gr.ptr, n)
end

function resetframes(gr::MglAbstractGraph)
    mgl.reset_frames(gr.ptr)
end

function clearframe(gr::MglAbstractGraph, n::Int)
    mgl.clear_frame(gr.ptr, n)
end

function startgif(gr::MglAbstractGraph, fname::ASCIIString, ms::Int=100)
    mgl.start_gif(gr.ptr, fname, ms)
end

function closegif(gr::MglAbstractGraph)
    mgl.close_gif(gr.ptr)
end

function width(gr::MglAbstractGraph)
    mgl.get_width(gr.ptr)
end
function height(gr::MglAbstractGraph)
    mgl.get_width(gr.ptr)
end

function getrgb(gr::MglAbstractGraph)
    pointer_to_array(mgl.get_rgb(gr.ptr), (3, width(gr), height(gr)), true)
end

function getrgba(gr::MglAbstractGraph)
    pointer_to_array(mgl.get_rgba(gr.ptr), (4, width(gr), height(gr)), true)
end

function getwidth(gr::MglAbstractGraph)
    mgl.get_width(gr.ptr)
end

function getheight(gr::MglAbstractGraph)
    mgl.get_height(gr.ptr)
end

function calcxyz(gr::MglAbstractGraph, xs::Int, ys::Int)
    x = Int[0]
    y = Int[0]
    z = Int[0]
    mgl.calc_xyz(gr.ptr, xs, ys, x, y, z)
    [x,y,z]
end

function calcscr(gr::MglAbstractGraph, x::Int, y::Int, z::Int)
    xs = Int[0]
    ys = Int[0]
    mgl.calc_scr(gr.ptr, x, y, z, xs, ys)
    [xs, ys]
end

# TODO: yet to implement object, draw region, ids ect...

## NOT TO BE EXPORTED ###
function numthr(n::Int)
    mgl.set_num_thr(n)
end

function combine(gr::MglAbstractGraph, gr2::MglAbstractGraph)
    mgl.combine_gr(gr.ptr, gr2.ptr)
end

function mpisend(gr::MglAbstractGraph, id::Int)
    mgl.mpi_send(gr.ptr, id)
end

function mpirecv(gr::MglAbstractGraph, id::Int)
    mgl.mpi_recv(gr.ptr, id)
end

function clf(gr::MglAbstractGraph)
    mgl.clf(gr.ptr)
end

function clf(gr::MglAbstractGraph, col::ASCIIString)
    mgl.clf_str(gr.ptr, col)
end

function clf(gr::MglAbstractGraph, col::Char)
    mgl.clf_chr(gr.ptr, col)
end

function clf(gr::MglAbstractGraph, r::Real, g::Real, b::Real)
    mgl.clf_chr(gr.ptr, r, g, b)
end

function rasterize(gr::MglAbstractGraph)
    mgl.rasterize(gr.ptr)
end

function background(gr::MglAbstractGraph, fname::ASCIIString, alpha::Float64)
    mgl.load_background(gr.ptr, fname, alpha)
end

# Draw Primitives
function mark(gr::MglAbstractGraph, x::Real, y::Real, z::Real, mark::ASCIIString)
    mgl.mark(gr.ptr, x, y, z, mark)
end

function mark(gr::MglAbstractGraph, p::AbstractArray, mark::ASCIIString)
    mark(gr, p[1], p[2], p[3], mark)
end

function errbox(gr::MglAbstractGraph, x::Real, y::Real, z::Real, ex::Real, ey::Real, ez::Real; stl::ASCIIString="")
    mgl.error_box(gr.ptr, x, y, z, ex, ey, ez, stl)
end

function errbox(gr::MglAbstractGraph, p::AbstractArray, ep::AbstractArray; stl::ASCIIString="")
    if length(p) == length(ep) == 2
        errbox(gr, p..., 0., ep..., NaN, stl)
    elseif length(p) == length(ep) == 3
        errbox(gr, p..., ep..., stl=stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

function line(gr::MglAbstractGraph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real; stl::ASCIIString="B", num::Int=2)
    mgl.line(gr.ptr, x1, y1, z1, x2, y2, z2, stl, num)
end

function line(gr::MglAbstractGraph, p1::AbstractArray, p2::AbstractArray; stl::ASCIIString="B", num::Int=2)
    if length(p1) == length(p2) == 2
        line(gr, p1..., 0., p2..., 0., stl=stl, num=num)
    elseif length(p1) == length(p2) == 3
        line(gr, p1..., p2..., stl=stl, num=num)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

function curve(gr::MglAbstractGraph, x1::Int, y1::Int, z1::Int, dx1::Int, dy1::Int, dz1::Int, x2::Int, y2::Int, z2::Int, dx2::Int, dy2::Int, dz2::Int; stl::ASCIIString="B", num::Int=100)
    mgl.curve(gr.ptr, x1, y1, z1, dx1, dy1, dz1, x2, y2, z2, dx2, dy2, dz2, stl, num)
end

function curve(gr::MglAbstractGraph, p1::AbstractArray, dp1::AbstractArray, p2::AbstractArray, dp2::AbstractArray; stl::ASCIIString="B", num::Int=100)
    if length(p1) == length(dp1) == length(p2) == length(dp2) == 2
        curve(gr, p1..., 0., dp1..., 0., p2..., 0., dp2..., 0., stl=stl, num=num)
    elseif length(p1) == length(dp1) == length(p2) == length(dp2) == 3
        curve(gr, p1..., dp1..., p2..., dp2..., stl=stl, num=num)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end

function face(gr::MglAbstractGraph, x1::Int, y1::Int, z1::Int, x2::Int, y2::Int, z2::Int, x3::Int, y3::Int, z3::Int, x4::Int, y4::Int, z4::Int; stl::ASCIIString="w") 
    face(gr.ptr, x1, y1, z1, x2, y2, z2, x3, y3, z3, x4, y4, z4, stl)
end

function face(gr::MglAbstractGraph, p1::AbstractArray, p2::AbstractArray, p3::AbstractArray, p4::AbstractArray; stl::ASCIIString="w")
    if length(p1) == length(p2) == length(p3) == length(p4) == 2
        face(gr, p1..., 0., p2..., 0., p3..., 0., p4..., 0., stl=stl)
    elseif length(p1) == length(p2) == length(p3) == length(p4) == 3
        face(gr, p1..., p2..., p3..., p4..., stl=stl)
    else
        error("Lengths of the input vectors must match (either 2 or 3 dimensional)")
    end
end
