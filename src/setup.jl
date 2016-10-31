# Setup functions for MathGL.jl

# resetting all parameters, clear graph
function reset(gr::Graph)
    cmgl.set_def_param(gr.ptr)
end

# Transparency options
function alpha(gr::Graph, enable::Bool)
    cmgl.set_alpha(gr.ptr, enable)
end

function alpha(gr::Graph, val::Real)
    cmgl.set_alpha_default(gr.ptr, val)
end

function transptype(gr::Graph, typ::Int)
    cmgl.set_transp_type(gr.ptr, typ)
end

# Lightning options
function light(gr::Graph, enable::Bool)
    cmgl.set_light(gr.ptr, enable)
end

function light(gr::Graph, n::Int, enable::Bool)
    cmgl.set_light_n(gr.ptr, n, enable)
end

function light(gr::Graph, n::Int, dx::Real, dy::Real, dz::Real; 
               c::String="w", bright::Real=0.5, ap::Real=0.)
    cmgl.add_light_ext(gr.ptr, n, dx, dy, dz, c, bright, ap)
end

function light(gr::Graph, n::Int, rx::Real, ry::Real, rz::Real, dx::Real, dy::Real, dz::Real; 
               c::String="w", bright::Real=0.5, ap::Real=0.)
    cmgl.add_light_loc(gr.ptr, n, rx, ry, rz, dx, dy, dz, c, bright, ap)
end

function diffuse(gr::Graph, bright::Real)
    cmgl.set_difbr(gr.ptr, bright)
end

function ambient(gr::Graph, bright::Real)
    cmgl.set_ambbr(gr.ptr, bright)
end

# Fog
function fog(gr::Graph, d::Real; dz::Real=0.25)
    cmgl.set_fog(gr.ptr, d, dz)
end

# Default widths, sizes, numbers, names...
function barwidth(gr::Graph, val::Real)
    cmgl.set_bar_width(gr.ptr, val)
end

function marksize(gr::Graph, val::Real)
    cmgl.set_mark_size(gr.ptr, val)
end

function arrowsize(gr::Graph, val::Real)
    cmgl.set_arrow_size(gr.ptr, val)
end

function meshnum(gr::Graph, n::Int)
    cmgl.set_meshnum(gr.ptr, n)
end

function facenum(gr::Graph, n::Int)
    cmgl.set_facenum(gr.ptr, n)
end

function plotid(gr::Graph, id::String)
    cmgl.set_plotid(gr.ptr, id)
end

function plotid(gr::Graph)
    bytestring(cmgl.get_plotid(gr.ptr))
end

# Cutting (excluding) points from drawing:
function cut(gr::Graph, enable::Bool)
    cmgl.set_cut(gr.ptr, enable)
end

function cut(gr::Graph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real)
    cmgl.set_cut_box(gr.ptr, x1, y1, z1, x2, y2, z2)
end

function cut(gr::Graph, cond::String)
    cmgl.set_cutoff(gr.ptr, enable)
end


# Text and font settings
function rotatetext(gr::Graph, enable::Bool)
    cmgl.set_rotated_text(gr.ptr, enable)
end

function loadfont(gr::Graph, name::String, path::String="")
    cmgl.load_font(gr.ptr, name, path)
end

function font(gr::Graph, fnt::String)
    cmgl.set_font_def(gr.ptr, fnt)
end

function fontsize(gr::Graph, s::Real, dpi::Int; unit=:pt)
    # Found the conversions in base.h
    if str(unit) == "pt"
        cmgl.set_font_size(s*27/dpi)
    elseif str(unit) == "cm"
        cmgl.set_font_size(s*27*28.45/dpi)
    elseif str(unit) == "in"
        cmgl.set_font_size(s*27*72.27/dpi)
    elseif str(unit) == "mm"
        cmgl.set_font_size(s*27*2.845/dpi)
    else
        cmgl.set_font_size(s)
    end
end

function font(gr::Graph, fnt::String, val::Real)
    cmgl.set_font_def(gr.ptr, fnt)
    cmgl.set_font_size(gr.ptr, val)
end

function font(gr::Graph, from::Graph)
    cmgl.copy_font(gr.ptr, from.ptr)
end

function restorefont(gr::Graph)
    cmgl.restore_font(gr.ptr)
end

function defaultfont(name::String, path::String="")
    cmgl.def_font(name, path)
end

# Color palette, colors, ...
function palette(gr::Graph, colors::String)
    cmgl.set_palette(gr.ptr, colors)
end

function scheme(gr::Graph, sch::String)
    cmgl.set_def_sch(gr.ptr, sch)
end

function colorid(id::Char, r::Real, g::Real, b::Real)
    cmgl.set_color(id, r, g, b)
end

# Masks
function mask(id::Char, hex::String)
    cmgl.set_mask(id, hex)
end

function mask(id::Char, hex::Integer)
    cmgl.set_mask(id, hex)
end

function mask(gr::Graph, angle::Integer)
    cmgl.set_mask_angle(gr.ptr, angle)
end

# TODO: Error handling
# TODO: Stop drawing
function stop(gr::Graph, enable::Bool=true)
    cmgl.ask_stop(gr.ptr, enable)
end

# Ranges (partially done) TODO: allow ranges to be set according to data
function xrange(gr::Graph, x1::Real, x2::Real; add::Bool=false)
    if add
        cmgl.add_range_val(gr.ptr, 'x', x1, x2)
    else
        cmgl.set_range_val(gr.ptr, 'x', x1, x2)
    end
end

function xrange(gr::Graph, x::Array{cmgl.Float})
    cmgl.set_range_val(gr.ptr, 'x', minimum(x), maximum(x))
end

function yrange(gr::Graph, y1::Real, y2::Real; add::Bool=false)
    if add
        cmgl.add_range_val(gr.ptr, 'y', y1, y2)
    else
        cmgl.set_range_val(gr.ptr, 'y', y1, y2)
    end
end

function yrange(gr::Graph, y::Array{cmgl.Float})
    cmgl.set_range_val(gr.ptr, 'y', minimum(y), maximum(y))
end

function zrange(gr::Graph, z1::Real, z2::Real; add::Bool=false)
    if add
        cmgl.add_range_val(gr.ptr, 'z', z1, z2)
    else
        cmgl.set_range_val(gr.ptr, 'z', z1, z2)
    end
end

function zrange(gr::Graph, z::Array{cmgl.Float})
    cmgl.set_range_val(gr.ptr, 'z', minimum(z), maximum(z))
end

function crange(gr::Graph, c1::Real, c2::Real; add::Bool=false)
    if add
        cmgl.add_range_val(gr.ptr, 'c', c1, c2)
    else
        cmgl.set_range_val(gr.ptr, 'c', c1, c2)
    end
end

function crange(gr::Graph, c::Array{cmgl.Float})
    cmgl.set_range_val(gr.ptr, 'c', minimum(c), maximum(c))
end

function ranges(gr::Graph, x1::Real, x2::Real, y1::Real, y2::Real, z1::Real=0., z2::Real=0.)
    cmgl.set_ranges(gr.ptr, x1, x2, y1, y2, z1, z2)
end

function ranges(gr::Graph, x::Array{cmgl.Float}, y::Array{cmgl.Float}, z::Array{cmgl.Float}=[0.])
    cmgl.set_ranges(gr.ptr, minimum(x), maximum(x), minimum(y), maximum(y), minimum(z), maximum(z))
end

function origin(gr::Graph, x0::Real, y0::Real, z0::Real=NaN)
    cmgl.set_origin(gr.ptr, x0, y0, z0)
end

function zoomaxis(gr::Graph, x1::Real, y1::Real, z1::Real, x2::Real, y2::Real, z2::Real)
    cmgl.zoom_axis(gr.ptr, x1, y1, z1, x2, y2, z2)
end

# Curvilinear coordinates
function coords(gr::Graph, how::Integer=0; X::String="", Y::String="", Z::String="", C::String="")
    if X == Y == Z == C == ""
        cmgl.set_coor(gr.ptr, how)
    else
        cmgl.set_func(gr.ptr, X, Y, Z, C)
    end
end

function ternary(gr::Graph, tern::Integer)
    cmgl.set_ternary(gr.ptr, tern)
end

# Ticks TODO: many options for ticks
function adjust(gr::Graph, dir::String="xyzc")
    cmgl.adjust_ticks(gr.ptr, dir)
end

function xtick(gr::Graph, d::Real=0; ns::Int=0, org::Real=NaN, fact::String="")
    cmgl.set_ticks_fact(gr.ptr, 'x', d, ns, org, fact)
end

function ytick(gr::Graph, d::Real=0; ns::Int=0, org::Real=NaN, fact::String="")
    cmgl.set_ticks_fact(gr.ptr, 'y', d, ns, org, fact)
end

function ztick(gr::Graph, d::Real=0; ns::Int=0, org::Real=NaN, fact::String="")
    cmgl.set_ticks_fact(gr.ptr, 'z', d, ns, org, fact)
end

function ctick(gr::Graph, d::Real=0; ns::Int=0, org::Real=NaN, fact::String="")
    cmgl.set_ticks_fact(gr.ptr, 'c', d, ns, org, fact)
end


function xtick(gr::Graph, lbl::Array{String}; add=false)
    cmgl.set_ticks_str(gr.ptr, 'x', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ytick(gr::Graph, lbl::Array{String}; add=false)
    cmgl.set_ticks_str(gr.ptr, 'y', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ztick(gr::Graph, lbl::Array{String}; add=false)
    cmgl.set_ticks_str(gr.ptr, 'z', reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ctick(gr::Graph, lbl::Array{String}; add=false)
    cmgl.set_ticks_str(gr.ptr, 'c', reduce(*, Base.map(x->x*"\n", lbl)), add)
end


function xtick(gr::Graph, val::Array{cmgl.Float}, lbl::Array{String}; add=false)
    cmgl.set_ticks_val(gr.ptr, 'x', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ytick(gr::Graph, val::Array{cmgl.Float}, lbl::Array{String}; add=false)
    cmgl.set_ticks_val(gr.ptr, 'y', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ztick(gr::Graph, val::Array{cmgl.Float}, lbl::Array{String}; add=false)
    cmgl.set_ticks_val(gr.ptr, 'y', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end
function ctick(gr::Graph, val::Array{cmgl.Float}, lbl::Array{String}; add=false)
    cmgl.set_ticks_val(gr.ptr, 'c', Data(val).ptr, reduce(*, Base.map(x->x*"\n", lbl)), add)
end


# For Resetting <- would trigger overwrite-warning
#=function xtick(gr::Graph)=#
    #=cmgl.set_ticks(gr.ptr, 'x', 0, 0, NaN)=#
#=end=#
#=function ytick(gr::Graph)=#
    #=cmgl.set_ticks(gr.ptr, 'y', 0, 0, NaN)=#
#=end=#
#=function ztick(gr::Graph)=#
    #=cmgl.set_ticks(gr.ptr, 'z', 0, 0, NaN)=#
#=end=#


function xtick(gr::Graph, val::Real, lbl::String)
    cmgl.add_tick(gr.ptr, 'x', val, lbl)
end
function ytick(gr::Graph, val::Real, lbl::String)
    cmgl.add_tick(gr.ptr, 'y', val, lbl)
end
function ztick(gr::Graph, val::Real, lbl::String)
    cmgl.add_tick(gr.ptr, 'z', val, lbl)
end
function ctick(gr::Graph, val::Real, lbl::String)
    cmgl.add_tick(gr.ptr, 'c', val, lbl)
end


function xtick(gr::Graph, templ::String)
    cmgl.set_tick_templ(gr.ptr, 'x', templ)
end
function ytick(gr::Graph, templ::String)
    cmgl.set_tick_templ(gr.ptr, 'y', templ)
end
function ztick(gr::Graph, templ::String)
    cmgl.set_tick_templ(gr.ptr, 'z', templ)
end
function ctick(gr::Graph, templ::String)
    cmgl.set_tick_templ(gr.ptr, 'c', templ)
end

function tuneticks(gr::Graph, tune::Int, pos::Real)
    cmgl.tune_ticks(gr.ptr, tune, pos)
end

function tickshift(gr::Graph, dx::Real, dy::Real, dz::Real, dc::Real)
    cmgl.tickshift(gr.ptr, dx, dy, dz, dc)
end
function tickshift(gr::Graph; dx::Real=0., dy::Real=0., dz::Real=0., dc::Real=0.)
    cmgl.tickshift(gr.ptr, dx, dy, dz, dc)
end

function tickrotate(gr::Graph, val::Bool=true)
    cmgl.set_tick_rotate(gr.ptr, val)
end

function tickskip(gr::Graph, val::Bool=true)
    cmgl.set_tick_skip(gr.ptr, val)
end

#TODO: time formats for tics etc.

function origintick(gr::Graph, val::Bool=true)
    cmgl.set_flag(gr.ptr, val, cmgl.MGL_NO_ORIGIN)
end

function ticklen(gr::Graph, val::Real, stt::Real=1.)
    cmgl.set_tick_len(gr.ptr, val, stt)
end

function axisstl(gr::Graph, stl::String="", tck::String="", sub::String="")
    cmgl.set_axis_stl(gr.ptr, stl, tck, sub)
end

# Subplots and Rotations
# Preferred Order: subplot,multiplot,inplot -> title -> rotate,aspect -> plotting
# or:              columnplot, gridplot, stickplot, relative inplot -> ...

function subplot(gr::Graph, nx::Int, ny::Int, m::Int; stl::String="<>_^", dx::Real=0, dy::Real=0)
    cmgl.subplot_d(gr.ptr, nx, ny, m-1, stl, dx, dy)
end

function multiplot(gr::Graph, nx::Int, ny::Int, m::Int, dx::Int, dy::Int; stl::String="<>_^")
    cmgl.multiplot(gr.ptr, nx, ny, m-1, dx, dy, stl)
end

function inplot(gr::Graph, x1::Real, x2::Real, y1::Real, y2::Real, rel::Bool=true)
    if rel
        cmgl.inplot(gr.ptr, x1, x2, y1, y2)
    else
        cmgl.relplot(gr.ptr, x1, x2, y1, y2)
    end
end

function columnplot(gr::Graph, num::Int, ind::Int, d::Real=0.)
    cmgl.columnplot_d(gr.ptr, num, ind-1, d)
end

function gridplot(gr::Graph, nx::Int, ny::Int, ind::Int, d::Real=0.)
    cmgl.gridplot_d(gr.ptr, nx, ny, ind-1, d)
end

function stickplot(gr::Graph, num::Int, ind::Int, tet::Real, phi::Real)
    cmgl.stickplot(gr.ptr, num, ind-1, tet, phi)
end

function title(gr::Graph, txt::String; stl::String="", size::Real=-2)
    cmgl.title(gr.ptr, txt, stl, size)
end
#=function title(gr::Graph, txt::UTF8String; stl::String="", size::Int=-2)=#
    #=cmgl.titlew(gr.ptr, txt, stl, size)=#
#=end=#

function rotate(gr::Graph, tetx::Real, tetz::Real, tety::Real=0.)
    cmgl.rotate(gr.ptr, tetx, tetz, tety)
end

function rotate(gr::Graph, tet::Real, x::Real, y::Real, z::Real)
    cmgl.rotate_vector(gr.ptr, tet, x, y, z)
end

function xrotate(gr::Graph, tet::Real)
    cmgl.rotate_vector(gr.ptr, tet, 1., 0., 0.)
end
function yrotate(gr::Graph, tet::Real)
    cmgl.rotate_vector(gr.ptr, tet, 0., 1., 0.)
end
function zrotate(gr::Graph, tet::Real)
    cmgl.rotate_vector(gr.ptr, tet, 0., 0., 1.)
end

function aspect(gr::Graph, ax::Real, ay::Real, az::Real=1.)
    cmgl.aspect(gr.ptr, ax, ay, az)
end

#TODO Push and Pop for matrices on stack
function plotfactor(gr::Graph, val::Real)
    cmgl.plotfactor(gr.ptr, val)
end

function perspective(gr::Graph, a::Real)
    cmgl.perspective(gr.ptr, a)
end

function view(gr::Graph, tetx::Real, tetz::Real, tety::Real=0.)
    cmgl.view(gr.ptr, tetx, tetz, tety)
end

function zoom(gr::Graph, x1::Real, y1::Real, x2::Real, y2::Real)
    cmgl.set_zoom(gr.ptr, x1, y1, x2, y2)
end

# Additional helper functions
function setsize(gr::Graph, width::Int, height::Int)
    cmgl.set_size(gr.ptr, width, height)
end

function quality(gr::Graph, val::Int)
    cmgl.set_quality(gr.ptr, val)
end

function quality(gr::Graph)
    cmgl.get_quality(gr.ptr)
end

function startgroup(gr::Graph, name::String)
    cmgl.start_group(gr.ptr, name)
end

function endgroup(gr::Graph)
    cmgl.end_group(gr.ptr)
end

# File Export
function write(gr::Graph, fname::String="", descr::String="")
    cmgl.write_frame(gr.ptr, fname, descr)
end

function writepng(gr::Graph, fname::String, descr::String="", compr::Int=""; alpha::Bool=true)
    if alpha 
        cmgl.write_png(gr.ptr, fname, descr)
    else
        cmgl.write_png_solid(gr.ptr, fname, descr)
    end
end

function writejpg(gr::Graph, fname::String, descr::String="")
    cmgl.write_jpg(gr.ptr, fname, descr)
end

function writegif(gr::Graph, fname::String, descr::String="")
    cmgl.write_gif(gr.ptr, fname, descr)
end

function writebmp(gr::Graph, fname::String, descr::String="")
    cmgl.write_bmp(gr.ptr, fname, descr)
end

function writetga(gr::Graph, fname::String, descr::String="")
    cmgl.write_tga(gr.ptr, fname, descr)
end

function writeeps(gr::Graph, fname::String, descr::String="")
    cmgl.write_eps(gr.ptr, fname, descr)
end

function writebps(gr::Graph, fname::String, descr::String="")
    cmgl.write_bps(gr.ptr, fname, descr)
end

function writesvg(gr::Graph, fname::String, descr::String="")
    cmgl.write_svg(gr.ptr, fname, descr)
end

function writetex(gr::Graph, fname::String, descr::String="")
    cmgl.write_tex(gr.ptr, fname, descr)
end

function writeprc(gr::Graph, fname::String, descr::String=""; pdf=true)
    cmgl.write_prc(gr.ptr, fname, descr, pdf)
end

function writeobj(gr::Graph, fname::String, descr::String="")
    cmgl.write_obj(gr.ptr, fname, descr)
end

function writexyz(gr::Graph, fname::String, descr::String="")
    cmgl.write_xyz(gr.ptr, fname, descr)
end

function writestl(gr::Graph, fname::String, descr::String="")
    cmgl.write_stl(gr.ptr, fname, descr)
end

function writeoff(gr::Graph, fname::String, descr::String=""; colored::Bool=true)
    cmgl.write_off(gr.ptr, fname, descr, colored)
end

function writejson(gr::Graph, fname::String, descr::String="")
    cmgl.write_json(gr.ptr, fname, descr)
end

function exportmgld(gr::Graph, fname::String, descr::String="")
    cmgl.export_mgld(gr.ptr, fname, descr)
end

function importmgld(gr::Graph, fname::String; add::Bool=true)
    cmgl.import_mgld(gr.ptr, fname, add)
end

#=#TODO:show image function=#
function showwith(gr::Graph, viewer::String; wait::Bool=true)
    cmgl.show_image(gr.ptr, viewer, wait)
end

function newframe(gr::Graph)
    cmgl.new_frame(gr.ptr)
end

function endframe(gr::Graph)
    cmgl.end_frame(gr.ptr)
end

function getnumframe(gr::Graph)
    cmgl.get_num_frame(gr.ptr)
end

function setnumframe(gr::Graph, n::Int)
    cmgl.set_num_frame(gr.ptr, n)
end

function getframe(gr::Graph, n::Int)
    cmgl.get_frame(gr.ptr, n)
end

function showframe(gr::Graph, n::Int)
    cmgl.show_frame(gr.ptr, n)
end

function delframe(gr::Graph, n::Int)
    cmgl.del_frame(gr.ptr, n)
end

function resetframes(gr::Graph)
    cmgl.reset_frames(gr.ptr)
end

function clearframe(gr::Graph, n::Int)
    cmgl.clear_frame(gr.ptr, n)
end

function startgif(gr::Graph, fname::String, ms::Int=100)
    cmgl.start_gif(gr.ptr, fname, ms)
end

function closegif(gr::Graph)
    cmgl.close_gif(gr.ptr)
end

function width(gr::Graph)
    cmgl.get_width(gr.ptr)
end
function height(gr::Graph)
    cmgl.get_height(gr.ptr)
end

function getrgb(gr::Graph)
    pointer_to_array(cmgl.get_rgb(gr.ptr), (3, width(gr), height(gr)), true)
end

function getrgba(gr::Graph)
    pointer_to_array(cmgl.get_rgba(gr.ptr), (4, width(gr), height(gr)), true)
end

function getwidth(gr::Graph)
    cmgl.get_width(gr.ptr)
end

function getheight(gr::Graph)
    cmgl.get_height(gr.ptr)
end

function calcxyz(gr::Graph, xs::Int, ys::Int)
    x = Int[0]
    y = Int[0]
    z = Int[0]
    cmgl.calc_xyz(gr.ptr, xs, ys, x, y, z)
    [x,y,z]
end

function calcscr(gr::Graph, x::Int, y::Int, z::Int)
    xs = Int[0]
    ys = Int[0]
    cmgl.calc_scr(gr.ptr, x, y, z, xs, ys)
    [xs, ys]
end

function objectid(gr::Graph, id::Int)
    cmgl.set_obj_id(gr.ptr, id)
end

function objectid(gr::Graph, xs::Int, ys::Int)
    cmgl.get_obj_id(gr.ptr, xs, ys)
end

function subplotid(gr::Graph, xs::Int, ys::Int)
    cmgl.get_spl_id(gr.ptr, xs, ys)
end

function highlight(gr::Graph, id::Int)
    cmgl.highlight(gr.ptr, id)
end

function isactive(gr::Graph, xs::Int, ys::Int, d::Int=1)
    cmgl.is_active(gr.ptr, xs, ys, d)
end

function drawregion(gr::Graph, nx::Int, ny::Int, m::Int)
    cmgl.set_draw_reg(gr.ptr, nx, ny, m)
end

## NOT TO BE EXPORTED ###
function numthreads(n::Int)
    cmgl.set_num_thr(n)
end

function combine(gr::Graph, gr2::Graph)
    cmgl.combine_gr(gr.ptr, gr2.ptr)
end

function mpisend(gr::Graph, id::Int)
    cmgl.mpi_send(gr.ptr, id)
end

function mpirecv(gr::Graph, id::Int)
    cmgl.mpi_recv(gr.ptr, id)
end

function clf(gr::Graph)
    cmgl.clf(gr.ptr)
end

function clf(gr::Graph, col::String)
    cmgl.clf_str(gr.ptr, col)
end

function clf(gr::Graph, col::Char)
    cmgl.clf_chr(gr.ptr, col)
end

function clf(gr::Graph, r::Real, g::Real, b::Real)
    cmgl.clf_rgb(gr.ptr, r, g, b)
end

function rasterize(gr::Graph)
    cmgl.rasterize(gr.ptr)
end

function background(gr::Graph, fname::String, alpha::Float64=1)
    cmgl.load_background(gr.ptr, fname, alpha)
end

