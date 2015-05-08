#addon.h
#=@getf mgl_difr_axial(a::Ptr{dual}, n::Cint, step::Cint, q::dual, Border::Cint, tmp::Ptr{dual}, kk::Cint, di::Cdouble)::Void=#
#=@getf mgl_difr_axial_old(a::Ptr{dual}, n::Cint, step::Cint, q::dual, Border::Cint, tmp1::Ptr{dual}, tmp2::Ptr{dual}, kk::Cint, di::Cdouble)::Void=#
#=@getf mgl_difr_grid(a::Ptr{dual}, n::Cint, step::Cint, q::dual, Border::Cint, tmp::Ptr{dual}, kk::Cint)::Void=#
#=@getf mgl_difr_grid_old(a::Ptr{dual}, n::Cint, step::Cint, q::dual, Border::Cint, tmp1::Ptr{dual}, tmp2::Ptr{dual}, kk::Cint)::Void=#

@getf lib mgl_gauss_rnd()::Cdouble
@getf lib mgl_fft_freq(freq::Ptr{Cdouble}, nn::Clong)::Void
@getf lib mgl_strcls(str::Ptr{Cchar})::Void
@getf lib mgl_strpos(str::Ptr{Cchar}, fnd::Ptr{Cchar})::Cint
@getf lib mgl_chrpos(str::Ptr{Cchar}, fnd::Cchar)::Cint
@getf lib mgl_fgetpar(fp::Ptr{FILE}, str::Ptr{Cchar})::Void
@getf lib mgl_istrue(ch::Cchar)::Cint
@getf lib mgl_test(str::Ptr{Cchar})::Void
@getf lib mgl_info(str::Ptr{Cchar})::Void

#base_cf.h
@getf lib mgl_get_warn(gr::HMGL)::Cint
@getf lib mgl_set_warn(gr::HMGL, code::Cint, text::Ptr{Cchar})::Void
@getf lib mgl_get_plotid(gr::HMGL)::Ptr{Cchar}
@getf lib mgl_set_plotid(gr::HMGL, id::Ptr{Cchar})::Void
@getf lib mgl_get_quality(gr::HMGL)::Cint
@getf lib mgl_set_quality(gr::HMGL, qual::Cint)::Void
@getf lib mgl_set_draw_reg(gr::HMGL, nx::Clong, ny::Clong, m::Clong)::Void
@getf lib mgl_is_frames(gr::HMGL)::Cint
@getf lib mgl_get_flag(gr::HMGL, flag::uint32_t)::Cint
@getf lib mgl_set_flag(gr::HMGL, val::Cint, flag::uint32_t)::Void
@getf lib mgl_use_graph(gr::HMGL, inc::Cint)::Clong
@getf lib mgl_set_rdc_acc(gr::HMGL, reduce::Cint)::Void
@getf lib mgl_start_group(gr::HMGL, name::Ptr{Cchar})::Void
@getf lib mgl_end_group(gr::HMGL)::Void
@getf lib mgl_highlight(gr::HMGL, id::Cint)::Void
@getf lib mgl_set_palette(gr::HMGL, colors::Ptr{Cchar})::Void
@getf lib mgl_set_color(id::Cchar, r::Cdouble, g::Cdouble, b::Cdouble)::Void
@getf lib mgl_set_def_sch(gr::HMGL, sch::Ptr{Cchar})::Void
@getf lib mgl_set_mask(id::Cchar, mask::Ptr{Cchar})::Void
@getf lib mgl_set_mask_val(id::Cchar, mask::Culonglong)::Void
@getf lib mgl_set_mask_angle(gr::HMGL, angle::Cint)::Void
@getf lib mgl_set_alpha_default(gr::HMGL, alpha::Cdouble)::Void
@getf lib mgl_set_bar_width(gr::HMGL, width::Cdouble)::Void
@getf lib mgl_set_meshnum(gr::HMGL, num::Cint)::Void
@getf lib mgl_set_facenum(gr::HMGL, num::Cint)::Void
@getf lib mgl_clear_unused(gr::HMGL)::Void
@getf lib mgl_set_ambbr(gr::HMGL, i::Cdouble)::Void
@getf lib mgl_set_difbr(gr::HMGL, i::Cdouble)::Void
@getf lib mgl_set_light_dif(gr::HMGL, enable::Cint)::Void
@getf lib mgl_set_cut(gr::HMGL, cut::Cint)::Void
@getf lib mgl_set_cut_box(gr::HMGL, x1::Cdouble, y1::Cdouble, z1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble)::Void
@getf lib mgl_set_cutoff(gr::HMGL, EqC::Ptr{Cchar})::Void
@getf lib mgl_set_ranges(gr::HMGL, x1::Cdouble, x2::Cdouble, y1::Cdouble, y2::Cdouble, z1::Cdouble, z2::Cdouble)::Void
@getf lib mgl_set_range_val(gr::HMGL, dir::Cchar, v1::Cdouble, v2::Cdouble)::Void
@getf lib mgl_add_range_val(gr::HMGL, dir::Cchar, v1::Cdouble, v2::Cdouble)::Void
@getf lib mgl_set_range_dat(gr::HMGL, dir::Cchar, a::HCDT, add::Cint)::Void
@getf lib mgl_set_auto_ranges(gr::HMGL, x1::Cdouble, x2::Cdouble, y1::Cdouble, y2::Cdouble, z1::Cdouble, z2::Cdouble, c1::Cdouble, c2::Cdouble)::Void
@getf lib mgl_zoom_axis(gr::HMGL, x1::Cdouble, y1::Cdouble, z1::Cdouble, c1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble, c2::Cdouble)::Void
@getf lib mgl_set_origin(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble)::Void
@getf lib mgl_set_func(gr::HMGL, EqX::Ptr{Cchar}, EqY::Ptr{Cchar}, EqZ::Ptr{Cchar}, EqA::Ptr{Cchar})::Void
@getf lib mgl_set_coor(gr::HMGL, how::Cint)::Void
@getf lib mgl_set_ternary(gr::HMGL, enable::Cint)::Void
@getf lib mgl_set_tick_rotate(gr::HMGL, enable::Cint)::Void
@getf lib mgl_set_tick_skip(gr::HMGL, enable::Cint)::Void
@getf lib mgl_def_font(name::Ptr{Cchar}, path::Ptr{Cchar})::Void
@getf lib mgl_set_mark_size(gr::HMGL, size::Cdouble)::Void
@getf lib mgl_set_arrow_size(gr::HMGL, size::Cdouble)::Void
@getf lib mgl_set_font_size(gr::HMGL, size::Cdouble)::Void
@getf lib mgl_set_font_def(gr::HMGL, fnt::Ptr{Cchar})::Void
@getf lib mgl_set_rotated_text(gr::HMGL, enable::Cint)::Void
@getf lib mgl_load_font(gr::HMGL, name::Ptr{Cchar}, path::Ptr{Cchar})::Void
@getf lib mgl_copy_font(gr::HMGL, gr_from::HMGL)::Void
@getf lib mgl_restore_font(gr::HMGL)::Void

#canvas_cf.h
@getf lib mgl_create_graph(width::Cint, height::Cint)::HMGL
@getf lib mgl_delete_graph(gr::HMGL)::Void
@getf lib mgl_set_size(gr::HMGL, width::Cint, height::Cint)::Void
@getf lib mgl_set_def_param(gr::HMGL)::Void
@getf lib mgl_combine_gr(gr::HMGL, gr2::HMGL)::Void
@getf lib mgl_finish(gr::HMGL)::Void
@getf lib mgl_set_tick_len(gr::HMGL, len::Cdouble, stt::Cdouble)::Void
@getf lib mgl_set_axis_stl(gr::HMGL, stl::Ptr{Cchar}, tck::Ptr{Cchar}, sub::Ptr{Cchar})::Void
@getf lib mgl_adjust_ticks(gr::HMGL, dir::Ptr{Cchar})::Void
@getf lib mgl_set_ticks(gr::HMGL, dir::Cchar, d::Cdouble, ns::Cint, org::Cdouble)::Void
@getf lib mgl_set_ticks_str(gr::HMGL, dir::Cchar, lbl::Ptr{Cchar}, add::Cint)::Void
@getf lib mgl_set_ticks_wcs(gr::HMGL, dir::Cchar, lbl::Ptr{Cwchar_t}, add::Cint)::Void
@getf lib mgl_set_ticks_val(gr::HMGL, dir::Cchar, val::HCDT, lbl::Ptr{Cchar}, add::Cint)::Void
@getf lib mgl_set_ticks_valw(gr::HMGL, dir::Cchar, val::HCDT, lbl::Ptr{Cwchar_t}, add::Cint)::Void
@getf lib mgl_tune_ticks(gr::HMGL, tune::Cint, fact_pos::Cdouble)::Void
@getf lib mgl_set_tick_templ(gr::HMGL, dir::Cchar, templ::Ptr{Cchar})::Void
@getf lib mgl_set_tick_templw(gr::HMGL, dir::Cchar, templ::Ptr{Cwchar_t})::Void
@getf lib mgl_set_ticks_time(gr::HMGL, dir::Cchar, d::Cdouble, t::Ptr{Cchar})::Void
@getf lib mgl_set_tick_shift(gr::HMGL, sx::Cdouble, sy::Cdouble, sz::Cdouble, sc::Cdouble)::Void
@getf lib mgl_box(gr::HMGL)::Void
@getf lib mgl_box_str(gr::HMGL, col::Ptr{Cchar}, ticks::Cint)::Void
@getf lib mgl_axis(gr::HMGL, dir::Ptr{Cchar}, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_axis_grid(gr::HMGL, dir::Ptr{Cchar}, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_label(gr::HMGL, dir::Cchar, text::Ptr{Cchar}, pos::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_labelw(gr::HMGL, dir::Cchar, text::Ptr{Cwchar_t}, pos::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_colorbar(gr::HMGL, sch::Ptr{Cchar})::Void
@getf lib mgl_colorbar_ext(gr::HMGL, sch::Ptr{Cchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble)::Void
@getf lib mgl_colorbar_val(gr::HMGL, dat::HCDT, sch::Ptr{Cchar})::Void
@getf lib mgl_colorbar_val_ext(gr::HMGL, dat::HCDT, sch::Ptr{Cchar}, x::Cdouble, y::Cdouble, w::Cdouble, h::Cdouble)::Void
@getf lib mgl_add_legend(gr::HMGL, text::Ptr{Cchar}, style::Ptr{Cchar})::Void
@getf lib mgl_add_legendw(gr::HMGL, text::Ptr{Cwchar_t}, style::Ptr{Cchar})::Void
@getf lib mgl_clear_legend(gr::HMGL)::Void
@getf lib mgl_legend_pos(gr::HMGL, x::Cdouble, y::Cdouble, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_legend(gr::HMGL, where::Cint, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_set_legend_marks(gr::HMGL, num::Cint)::Void
@getf lib mgl_show_image(gr::HMGL, viewer::Ptr{Cchar}, keep::Cint)::Void
@getf lib mgl_write_frame(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_tga(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_bmp(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_jpg(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_png(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_png_solid(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_bps(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_eps(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_svg(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_tex(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_obj(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar}, use_png::Cint)::Void
@getf lib mgl_write_obj_old(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar}, use_png::Cint)::Void
@getf lib mgl_write_stl(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_off(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar}, colored::Cint)::Void
@getf lib mgl_write_xyz(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_wgl(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_prc(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar}, make_pdf::Cint)::Void
@getf lib mgl_write_gif(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_start_gif(gr::HMGL, fname::Ptr{Cchar}, ms::Cint)::Void
@getf lib mgl_close_gif(gr::HMGL)::Void
@getf lib mgl_export_mgld(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_import_mgld(gr::HMGL, fname::Ptr{Cchar}, add::Cint)::Void
@getf lib mgl_write_json(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_write_json_z(gr::HMGL, fname::Ptr{Cchar}, descr::Ptr{Cchar})::Void
@getf lib mgl_get_json(gr::HMGL)::Ptr{Char}
@getf lib mgl_get_rgb(gr::HMGL)::Ptr{Uint8}
@getf lib mgl_get_rgba(gr::HMGL)::Ptr{Uint8}
@getf lib mgl_set_obj_id(gr::HMGL, id::Cint)::Void
@getf lib mgl_get_obj_id(gr::HMGL, x::Cint, y::Cint)::Cint
@getf lib mgl_get_spl_id(gr::HMGL, x::Cint, y::Cint)::Cint
@getf lib mgl_get_width(gr::HMGL)::Cint
@getf lib mgl_get_height(gr::HMGL)::Cint
@getf lib mgl_calc_xyz(gr::HMGL, xs::Cint, ys::Cint, x::Ptr{Float}, y::Ptr{Float}, z::Ptr{Float})::Void
@getf lib mgl_calc_scr(gr::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, xs::Ptr{Cint}, ys::Ptr{Cint})::Void
@getf lib mgl_is_active(gr::HMGL, xs::Cint, ys::Cint, d::Cint)::Clong
@getf lib mgl_new_frame(gr::HMGL)::Cint
@getf lib mgl_end_frame(gr::HMGL)::Void
@getf lib mgl_get_num_frame(gr::HMGL)::Cint
@getf lib mgl_reset_frames(gr::HMGL)::Void
@getf lib mgl_get_frame(gr::HMGL, i::Cint)::Void
@getf lib mgl_set_frame(gr::HMGL, i::Cint)::Void
@getf lib mgl_show_frame(gr::HMGL, i::Cint)::Void
@getf lib mgl_del_frame(gr::HMGL, i::Cint)::Void
@getf lib mgl_set_transp_type(gr::HMGL, kind::Cint)::Void
@getf lib mgl_set_alpha(gr::HMGL, enable::Cint)::Void
@getf lib mgl_set_fog(gr::HMGL, d::Cdouble, dz::Cdouble)::Void
@getf lib mgl_set_light(gr::HMGL, enable::Cint)::Void
@getf lib mgl_set_light_n(gr::HMGL, n::Cint, enable::Cint)::Void
@getf lib mgl_add_light(gr::HMGL, n::Cint, x::Cdouble, y::Cdouble, z::Cdouble)::Void
@getf lib mgl_add_light_ext(gr::HMGL, n::Cint, x::Cdouble, y::Cdouble, z::Cdouble, c::Cchar, br::Cdouble, ap::Cdouble)::Void
@getf lib mgl_add_light_loc(gr::HMGL, n::Cint, x::Cdouble, y::Cdouble, z::Cdouble, dx::Cdouble, dy::Cdouble, dz::Cdouble, c::Cchar, br::Cdouble, ap::Cdouble)::Void
@getf lib mgl_mat_pop(gr::HMGL)::Void
@getf lib mgl_mat_push(gr::HMGL)::Void
@getf lib mgl_clf(gr::HMGL)::Void
@getf lib mgl_clf_rgb(gr::HMGL, r::Cdouble, g::Cdouble, b::Cdouble)::Void
@getf lib mgl_clf_chr(gr::HMGL, col::Cchar)::Void
@getf lib mgl_subplot(gr::HMGL, nx::Cint, ny::Cint, m::Cint, style::Ptr{Cchar})::Void
@getf lib mgl_subplot_d(gr::HMGL, nx::Cint, ny::Cint, m::Cint, style::Ptr{Cchar}, dx::Cdouble, dy::Cdouble)::Void
@getf lib mgl_multiplot(gr::HMGL, nx::Cint, ny::Cint, m::Cint, dx::Cint, dy::Cint, style::Ptr{Cchar})::Void
@getf lib mgl_inplot(gr::HMGL, x1::Cdouble, x2::Cdouble, y1::Cdouble, y2::Cdouble)::Void
@getf lib mgl_relplot(gr::HMGL, x1::Cdouble, x2::Cdouble, y1::Cdouble, y2::Cdouble)::Void
@getf lib mgl_columnplot(gr::HMGL, num::Cint, ind::Cint, d::Cdouble)::Void
@getf lib mgl_gridplot(gr::HMGL, nx::Cint, ny::Cint, m::Cint, d::Cdouble)::Void
@getf lib mgl_stickplot(gr::HMGL, num::Cint, ind::Cint, tet::Cdouble, phi::Cdouble)::Void
@getf lib mgl_title(gr::HMGL, title::Ptr{Cchar}, stl::Ptr{Cchar}, size::Cdouble)::Void
@getf lib mgl_titlew(gr::HMGL, title::Ptr{Cwchar_t}, stl::Ptr{Cchar}, size::Cdouble)::Void
@getf lib mgl_set_plotfactor(gr::HMGL, val::Cdouble)::Void
@getf lib mgl_aspect(gr::HMGL, Ax::Cdouble, Ay::Cdouble, Az::Cdouble)::Void
@getf lib mgl_rotate(gr::HMGL, TetX::Cdouble, TetZ::Cdouble, TetY::Cdouble)::Void
@getf lib mgl_rotate_vector(gr::HMGL, Tet::Cdouble, x::Cdouble, y::Cdouble, z::Cdouble)::Void
@getf lib mgl_perspective(gr::HMGL, val::Cdouble)::Void
@getf lib mgl_view(gr::HMGL, TetX::Cdouble, TetZ::Cdouble, TetY::Cdouble)::Void
@getf lib mgl_zoom(gr::HMGL, x1::Cdouble, y1::Cdouble, x2::Cdouble, y2::Cdouble)::Void
@getf lib mgl_draw_thr()::Void
@getf lib mgl_set_click_func(gr::HMGL, p::Ptr{Void})::Void
@getf lib mgl_wnd_set_delay(gr::HMGL, dt::Cdouble)::Void
@getf lib mgl_wnd_get_delay(gr::HMGL)::Cdouble
@getf lib mgl_setup_window(gr::HMGL, clf_upd::Cint, showpos::Cint)::Void
@getf lib mgl_wnd_toggle_alpha(gr::HMGL)::Void
@getf lib mgl_wnd_toggle_light(gr::HMGL)::Void
@getf lib mgl_wnd_toggle_zoom(gr::HMGL)::Void
@getf lib mgl_wnd_toggle_rotate(gr::HMGL)::Void
@getf lib mgl_wnd_toggle_no(gr::HMGL)::Void
@getf lib mgl_wnd_update(gr::HMGL)::Void
@getf lib mgl_wnd_reload(gr::HMGL)::Void
@getf lib mgl_wnd_adjust(gr::HMGL)::Void
@getf lib mgl_wnd_next_frame(gr::HMGL)::Void
@getf lib mgl_wnd_prev_frame(gr::HMGL)::Void
@getf lib mgl_wnd_animation(gr::HMGL)::Void
@getf lib mgl_get_last_mouse_pos(gr::HMGL, x::Ptr{Float}, y::Ptr{Float}, z::Ptr{Float})::Void
@getf lib mgl_create_parser()::HMPR
@getf lib mgl_use_parser(p::HMPR, inc::Cint)::Clong
@getf lib mgl_delete_parser(p::HMPR)::Void
@getf lib mgl_parser_add_param(p::HMPR, id::Cint, str::Ptr{Cchar})::Void
@getf lib mgl_parser_add_paramw(p::HMPR, id::Cint, str::Ptr{Cwchar_t})::Void
@getf lib mgl_parser_add_var(p::HMPR, name::Ptr{Cchar})::HMDT
@getf lib mgl_parser_add_varw(p::HMPR, name::Ptr{Cwchar_t})::HMDT
@getf lib mgl_parser_find_var(p::HMPR, name::Ptr{Cchar})::HMDT
@getf lib mgl_parser_find_varw(p::HMPR, name::Ptr{Cwchar_t})::HMDT
@getf lib mgl_parser_del_var(p::HMPR, name::Ptr{Cchar})::Void
@getf lib mgl_parser_del_varw(p::HMPR, name::Ptr{Cwchar_t})::Void
@getf lib mgl_parser_del_all(p::HMPR)::Void
@getf lib mgl_parse_line(gr::HMGL, p::HMPR, str::Ptr{Cchar}, pos::Cint)::Cint
@getf lib mgl_parse_linew(gr::HMGL, p::HMPR, str::Ptr{Cwchar_t}, pos::Cint)::Cint
@getf lib mgl_parse_file(gr::HMGL, p::HMPR, fp::Ptr{FILE}, print::Cint)::Void
@getf lib mgl_parse_text(gr::HMGL, p::HMPR, str::Ptr{Cchar})::Void
@getf lib mgl_parse_textw(gr::HMGL, p::HMPR, str::Ptr{Cwchar_t})::Void
@getf lib mgl_parser_restore_once(p::HMPR)::Void
@getf lib mgl_parser_allow_setsize(p::HMPR, a::Cint)::Void
@getf lib mgl_parser_allow_file_io(p::HMPR, a::Cint)::Void
@getf lib mgl_parser_stop(p::HMPR)::Void
@getf lib mgl_parser_cmd_type(pr::HMPR, name::Ptr{Cchar})::Cint
@getf lib mgl_parser_cmd_num(pr::HMPR)::Clong
@getf lib mgl_parser_calc(pr::HMPR, formula::Ptr{Cchar})::HMDT
@getf lib mgl_parser_calcw(pr::HMPR, formula::Ptr{Cwchar_t})::HMDT

#cont.h
@getf lib mgl_text_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, text::Ptr{Cchar}, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textw_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, text::Ptr{Cwchar_t}, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_text_xy(gr::HMGL, x::HCDT, y::HCDT, text::Ptr{Cchar}, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textw_xy(gr::HMGL, x::HCDT, y::HCDT, text::Ptr{Cwchar_t}, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_text_y(gr::HMGL, y::HCDT, text::Ptr{Cchar}, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textw_y(gr::HMGL, y::HCDT, text::Ptr{Cwchar_t}, font::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_gen(gr::HMGL, val::Cdouble, a::HCDT, x::HCDT, y::HCDT, z::HCDT, stl::Ptr{Cchar})::Void
@getf lib mgl_contf_gen(gr::HMGL, v1::Cdouble, v2::Cdouble, a::HCDT, x::HCDT, y::HCDT, z::HCDT, stl::Ptr{Cchar})::Void
@getf lib mgl_cont_xy_val(gr::HMGL, v::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_val(gr::HMGL, v::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_xy(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cont(gr::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_xy_val(gr::HMGL, v::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_val(gr::HMGL, v::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_xy(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contf(gr::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contd_xy_val(gr::HMGL, v::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contd_val(gr::HMGL, v::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contd_xy(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contd(gr::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contv_xy_val(gr::HMGL, v::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contv_val(gr::HMGL, v::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contv_xy(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_contv(gr::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_axial_xy_val(gr::HMGL, v::HCDT, x::HCDT, y::HCDT, a::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_axial_val(gr::HMGL, v::HCDT, a::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_axial_xy(gr::HMGL, x::HCDT, y::HCDT, a::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_axial(gr::HMGL, a::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_torus(gr::HMGL, r::HCDT, z::HCDT, col::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_grid3_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_grid3(gr::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_dens3_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_dens3(gr::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont3_xyz_val(gr::HMGL, v::HCDT, x::HCDT, y::HCDT, z::HCDT, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont3_val(gr::HMGL, v::HCDT, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont3_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont3(gr::HMGL, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf3_xyz_val(gr::HMGL, v::HCDT, x::HCDT, y::HCDT, z::HCDT, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf3_val(gr::HMGL, v::HCDT, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf3_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf3(gr::HMGL, a::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void

#datac_cf.h
@getf lib mgl_srnd(seed::Clong)::Void
@getf lib mgl_rnd()::Cdouble
@getf lib mgl_ipowc(x::Dual, n::Cint)::Dual
@getf lib mgl_expi(a::Dual)::Dual
@getf lib mgl_create_datac()::HADT
@getf lib mgl_create_datac_size(nx::Clong, ny::Clong, nz::Clong)::HADT
@getf lib mgl_create_datac_file(fname::Ptr{Cchar})::HADT
@getf lib mgl_delete_datac(dat::HADT)::Void
@getf lib mgl_datac_rearrange(dat::HADT, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_datac_link(dat::HADT, A::Ptr{Dual}, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_datac_set_float(dat::HADT, A::Ptr{Cfloat}, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_datac_set_double(dat::HADT, A::Ptr{Cdouble}, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_datac_set_complex(dat::HADT, A::Ptr{Dual}, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_datac_set(dat::HADT, a::HCDT)::Void
@getf lib mgl_datac_set_vector(dat::HADT, v::Ptr{gsl_vector})::Void
@getf lib mgl_datac_set_matrix(dat::HADT, m::Ptr{gsl_matrix})::Void
@getf lib mgl_datac_set_value(dat::HADT, v::Dual, i::Clong, j::Clong, k::Clong)::Void
@getf lib mgl_datac_get_value(dat::HCDT, i::Clong, j::Clong, k::Clong)::Dual
@getf lib mgl_datac_set_values(dat::HADT, val::Ptr{Cchar}, nx::Clong, ny::Clong, nz::Clong)::Void
@getf lib mgl_datac_set_ri(dat::HADT, re::HCDT, im::HCDT)::Void
@getf lib mgl_datac_set_ap(dat::HADT, abs::HCDT, phi::HCDT)::Void
@getf lib mgl_datac_read(dat::HADT, fname::Ptr{Cchar})::Cint
@getf lib mgl_datac_read_mat(dat::HADT, fname::Ptr{Cchar}, dim::Clong)::Cint
@getf lib mgl_datac_read_dim(dat::HADT, fname::Ptr{Cchar}, mx::Clong, my::Clong, mz::Clong)::Cint
@getf lib mgl_datac_read_range(d::HADT, templ::Ptr{Cchar}, from::Cdouble, to::Cdouble, step::Cdouble, as_slice::Cint)::Cint
@getf lib mgl_datac_read_all(dat::HADT, templ::Ptr{Cchar}, as_slice::Cint)::Cint
@getf lib mgl_datac_save(dat::HCDT, fname::Ptr{Cchar}, ns::Clong)::Void
@getf lib mgl_datac_read_hdf(d::HADT, fname::Ptr{Cchar}, data::Ptr{Cchar})::Cint
@getf lib mgl_datac_save_hdf(d::HCDT, fname::Ptr{Cchar}, data::Ptr{Cchar}, rewrite::Cint)::Void
@getf lib mgl_datac_create(dat::HADT, nx::Clong, ny::Clong, nz::Clong)::Void
@getf lib mgl_datac_transpose(dat::HADT, dim::Ptr{Cchar})::Void
@getf lib mgl_datac_set_id(d::HADT, id::Ptr{Cchar})::Void
@getf lib mgl_datac_fill(dat::HADT, x1::Dual, x2::Dual, dir::Cchar)::Void
@getf lib mgl_datac_fill_eq(gr::HMGL, dat::HADT, eq::Ptr{Cchar}, vdat::HCDT, wdat::HCDT, opt::Ptr{Cchar})::Void
@getf lib mgl_datac_modify(dat::HADT, eq::Ptr{Cchar}, dim::Clong)::Void
@getf lib mgl_datac_modify_vw(dat::HADT, eq::Ptr{Cchar}, vdat::HCDT, wdat::HCDT)::Void
@getf lib mgl_datac_put_val(dat::HADT, val::Dual, i::Clong, j::Clong, k::Clong)::Void
@getf lib mgl_datac_put_dat(dat::HADT, val::HCDT, i::Clong, j::Clong, k::Clong)::Void
@getf lib mgl_datac_squeeze(dat::HADT, rx::Clong, ry::Clong, rz::Clong, smooth::Clong)::Void
@getf lib mgl_datac_extend(dat::HADT, n1::Clong, n2::Clong)::Void
@getf lib mgl_datac_insert(dat::HADT, dir::Cchar, at::Clong, num::Clong)::Void
@getf lib mgl_datac_delete(dat::HADT, dir::Cchar, at::Clong, num::Clong)::Void
@getf lib mgl_datac_join(dat::HADT, d::HCDT)::Void
@getf lib mgl_datac_smooth(d::HADT, dirs::Ptr{Cchar}, delta::Float)::Void
@getf lib mgl_datac_cumsum(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_integral(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_diff(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_diff2(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_swap(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_roll(dat::HADT, dir::Cchar, num::Clong)::Void
@getf lib mgl_datac_mirror(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_crop(dat::HADT, n1::Clong, n2::Clong, dir::Cchar)::Void
@getf lib mgl_datac_hankel(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_fft(dat::HADT, dir::Ptr{Cchar})::Void
@getf lib mgl_datac_correl(dat1::HCDT, dat2::HCDT, dir::Ptr{Cchar})::HADT
@getf lib mgl_datac_diffr(dat::HADT, how::Ptr{Cchar}, q::Float)::Void
@getf lib mgl_datac_real(dat::HCDT)::HMDT
@getf lib mgl_datac_imag(dat::HCDT)::HMDT
@getf lib mgl_datac_abs(dat::HCDT)::HMDT
@getf lib mgl_datac_arg(dat::HCDT)::HMDT
@getf lib mgl_datac_linear(d::HCDT, x::Float, y::Float, z::Float)::Dual
@getf lib mgl_datac_linear_ext(d::HCDT, x::Float, y::Float, z::Float, dx::Ptr{Dual}, dy::Ptr{Dual}, dz::Ptr{Dual})::Dual
@getf lib mgl_datac_spline(dat::HCDT, x::Float, y::Float, z::Float)::Dual
@getf lib mgl_datac_spline_ext(dat::HCDT, x::Float, y::Float, z::Float, dx::Ptr{Dual}, dy::Ptr{Dual}, dz::Ptr{Dual})::Dual
@getf lib mgl_create_cexpr(expr::Ptr{Cchar})::HAEX
@getf lib mgl_delete_cexpr(ex::HAEX)::Void
@getf lib mgl_cexpr_eval(ex::HAEX, x::Dual, y::Dual, z::Dual)::Dual
@getf lib mgl_cexpr_eval_v(ex::HAEX, vars::Ptr{Dual})::Dual

#data_cf.h
@getf lib mgl_srnd(seed::Clong)::Void
@getf lib mgl_rnd()::Cdouble
@getf lib mgl_ipow(x::Cdouble, n::Cint)::Cdouble
@getf lib mgl_get_time(time::Ptr{Cchar}, fmt::Ptr{Cchar})::Cdouble
@getf lib mgl_create_data()::HMDT
@getf lib mgl_create_data_size(nx::Clong, ny::Clong, nz::Clong)::HMDT
@getf lib mgl_create_data_file(fname::Ptr{Cchar})::HMDT
@getf lib mgl_delete_data(dat::HMDT)::Void
@getf lib mgl_data_rearrange(dat::HMDT, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_data_link(dat::HMDT, A::Ptr{Float}, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_data_set_float(dat::HMDT, A::Ptr{Cfloat}, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_data_set_double(dat::HMDT, A::Ptr{Cdouble}, mx::Clong, my::Clong, mz::Clong)::Void
@getf lib mgl_data_set_float2(d::HMDT)::Void
@getf lib mgl_data_set_double2(d::HMDT)::Void
@getf lib mgl_data_set_float3(d::HMDT)::Void
@getf lib mgl_data_set_double3(d::HMDT)::Void
@getf lib mgl_data_set(dat::HMDT, a::HCDT)::Void
@getf lib mgl_data_set_vector(dat::HMDT, v::Ptr{gsl_vector})::Void
@getf lib mgl_data_set_matrix(dat::HMDT, m::Ptr{gsl_matrix})::Void
@getf lib mgl_data_set_value(dat::HMDT, v::Float, i::Clong, j::Clong, k::Clong)::Void
@getf lib mgl_data_get_value(dat::HCDT, i::Clong, j::Clong, k::Clong)::Float
@getf lib mgl_data_set_values(dat::HMDT, val::Ptr{Cchar}, nx::Clong, ny::Clong, nz::Clong)::Void
@getf lib mgl_data_read_hdf(d::HMDT, fname::Ptr{Cchar}, data::Ptr{Cchar})::Cint
@getf lib mgl_data_save_hdf(d::HCDT, fname::Ptr{Cchar}, data::Ptr{Cchar}, rewrite::Cint)::Void
@getf lib mgl_datas_hdf(fname::Ptr{Cchar}, buf::Ptr{Cchar}, size::Clong)::Cint
@getf lib mgl_data_read(dat::HMDT, fname::Ptr{Cchar})::Cint
@getf lib mgl_data_read_mat(dat::HMDT, fname::Ptr{Cchar}, dim::Clong)::Cint
@getf lib mgl_data_read_dim(dat::HMDT, fname::Ptr{Cchar}, mx::Clong, my::Clong, mz::Clong)::Cint
@getf lib mgl_data_read_range(d::HMDT, templ::Ptr{Cchar}, n1::Cdouble, n2::Cdouble, step::Cdouble, as_slice::Cint)::Cint
@getf lib mgl_data_read_all(dat::HMDT, templ::Ptr{Cchar}, as_slice::Cint)::Cint
@getf lib mgl_data_save(dat::HCDT, fname::Ptr{Cchar}, ns::Clong)::Void
@getf lib mgl_data_export(dat::HCDT, fname::Ptr{Cchar}, scheme::Ptr{Cchar}, v1::Float, v2::Float, ns::Clong)::Void
@getf lib mgl_data_import(dat::HMDT, fname::Ptr{Cchar}, scheme::Ptr{Cchar}, v1::Float, v2::Float)::Void
@getf lib mgl_data_create(dat::HMDT, nx::Clong, ny::Clong, nz::Clong)::Void
@getf lib mgl_data_transpose(dat::HMDT, dim::Ptr{Cchar})::Void
@getf lib mgl_data_norm(dat::HMDT, v1::Float, v2::Float, sym::Clong, dim::Clong)::Void
@getf lib mgl_data_norm_slice(dat::HMDT, v1::Float, v2::Float, dir::Cchar, keep_en::Clong, sym::Clong)::Void
@getf lib mgl_data_subdata(dat::HCDT, xx::Clong, yy::Clong, zz::Clong)::HMDT
@getf lib mgl_data_subdata_ext(dat::HCDT, xx::HCDT, yy::HCDT, zz::HCDT)::HMDT
@getf lib mgl_data_column(dat::HCDT, eq::Ptr{Cchar})::HMDT
@getf lib mgl_data_set_id(d::HMDT, id::Ptr{Cchar})::Void
@getf lib mgl_data_fill(dat::HMDT, x1::Float, x2::Float, dir::Cchar)::Void
@getf lib mgl_data_fill_eq(gr::HMGL, dat::HMDT, eq::Ptr{Cchar}, vdat::HCDT, wdat::HCDT, opt::Ptr{Cchar})::Void
@getf lib mgl_data_refill_x(dat::HMDT, xdat::HCDT, vdat::HCDT, x1::Float, x2::Float, sl::Clong)::Void
@getf lib mgl_data_refill_xy(dat::HMDT, xdat::HCDT, ydat::HCDT, vdat::HCDT, x1::Float, x2::Float, y1::Float, y2::Float, sl::Clong)::Void
@getf lib mgl_data_refill_xyz(dat::HMDT, xdat::HCDT, ydat::HCDT, zdat::HCDT, vdat::HCDT, x1::Float, x2::Float, y1::Float, y2::Float, z1::Float, z2::Float)::Void
@getf lib mgl_data_refill_gr(gr::HMGL, dat::HMDT, xdat::HCDT, ydat::HCDT, zdat::HCDT, vdat::HCDT, sl::Clong, opt::Ptr{Cchar})::Void
@getf lib mgl_data_grid(gr::HMGL, d::HMDT, xdat::HCDT, ydat::HCDT, zdat::HCDT, opt::Ptr{Cchar})::Void
@getf lib mgl_data_grid_xy(d::HMDT, xdat::HCDT, ydat::HCDT, zdat::HCDT, x1::Float, x2::Float, y1::Float, y2::Float)::Void
@getf lib mgl_data_put_val(dat::HMDT, val::Float, i::Clong, j::Clong, k::Clong)::Void
@getf lib mgl_data_put_dat(dat::HMDT, val::HCDT, i::Clong, j::Clong, k::Clong)::Void
@getf lib mgl_data_modify(dat::HMDT, eq::Ptr{Cchar}, dim::Clong)::Void
@getf lib mgl_data_modify_vw(dat::HMDT, eq::Ptr{Cchar}, vdat::HCDT, wdat::HCDT)::Void
@getf lib mgl_data_squeeze(dat::HMDT, rx::Clong, ry::Clong, rz::Clong, smooth::Clong)::Void
@getf lib mgl_data_max(dat::HCDT)::Float
@getf lib mgl_data_neg_max(dat::HCDT)::Float
@getf lib mgl_data_min(dat::HCDT)::Float
@getf lib mgl_data_pos_min(dat::HCDT)::Float
@getf lib mgl_data_get_nx(d::HCDT)::Clong
@getf lib mgl_data_get_ny(d::HCDT)::Clong
@getf lib mgl_data_get_nz(d::HCDT)::Clong
@getf lib mgl_data_first(dat::HCDT, cond::Ptr{Cchar}, i::Ptr{Clong}, j::Ptr{Clong}, k::Ptr{Clong})::Float
@getf lib mgl_data_last(dat::HCDT, cond::Ptr{Cchar}, i::Ptr{Clong}, j::Ptr{Clong}, k::Ptr{Clong})::Float
@getf lib mgl_data_find(dat::HCDT, cond::Ptr{Cchar}, dir::Cchar, i::Clong, j::Clong, k::Clong)::Clong
@getf lib mgl_data_find_any(dat::HCDT, cond::Ptr{Cchar})::Cint
@getf lib mgl_data_max_int(dat::HCDT, i::Ptr{Clong}, j::Ptr{Clong}, k::Ptr{Clong})::Float
@getf lib mgl_data_max_real(dat::HCDT, x::Ptr{Float}, y::Ptr{Float}, z::Ptr{Float})::Float
@getf lib mgl_data_min_int(dat::HCDT, i::Ptr{Clong}, j::Ptr{Clong}, k::Ptr{Clong})::Float
@getf lib mgl_data_min_real(dat::HCDT, x::Ptr{Float}, y::Ptr{Float}, z::Ptr{Float})::Float
@getf lib mgl_data_momentum_val(d::HCDT, dir::Cchar, m::Ptr{Float}, w::Ptr{Float}, s::Ptr{Float}, k::Ptr{Float})::Float
@getf lib mgl_data_combine(dat1::HCDT, dat2::HCDT)::HMDT
@getf lib mgl_data_extend(dat::HMDT, n1::Clong, n2::Clong)::Void
@getf lib mgl_data_insert(dat::HMDT, dir::Cchar, at::Clong, num::Clong)::Void
@getf lib mgl_data_delete(dat::HMDT, dir::Cchar, at::Clong, num::Clong)::Void
@getf lib mgl_data_join(dat::HMDT, d::HCDT)::Void
@getf lib mgl_data_smooth(d::HMDT, dirs::Ptr{Cchar}, delta::Float)::Void
@getf lib mgl_data_sum(dat::HCDT, dir::Ptr{Cchar})::HMDT
@getf lib mgl_data_max_dir(dat::HCDT, dir::Ptr{Cchar})::HMDT
@getf lib mgl_data_min_dir(dat::HCDT, dir::Ptr{Cchar})::HMDT
@getf lib mgl_data_cumsum(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_integral(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_diff(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_diff_par(dat::HMDT, v1::HCDT, v2::HCDT, v3::HCDT)::Void
@getf lib mgl_data_diff2(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_swap(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_roll(dat::HMDT, dir::Cchar, num::Clong)::Void
@getf lib mgl_data_mirror(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_sort(dat::HMDT, idx::Clong, idy::Clong)::Void
@getf lib mgl_data_hankel(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_sinfft(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_cosfft(dat::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_fill_sample(dat::HMDT, how::Ptr{Cchar})::Void
@getf lib mgl_data_correl(dat1::HCDT, dat2::HCDT, dir::Ptr{Cchar})::HMDT
@getf lib mgl_fft_free(wt::Ptr{Void})::Void
@getf lib mgl_fft_free_thr(wt::Ptr{Void})::Void
@getf lib mgl_fft(x::Ptr{Cdouble}, s::Clong, n::Clong, wt::Ptr{Void}, ws::Ptr{Void}, inv::Cint)::Void
@getf lib mgl_clear_fft()::Void
@getf lib mgl_data_spline(dat::HCDT, x::Float, y::Float, z::Float)::Float
@getf lib mgl_data_linear(dat::HCDT, x::Float, y::Float, z::Float)::Float
@getf lib mgl_data_spline_ext(dat::HCDT, x::Float, y::Float, z::Float, dx::Ptr{Float}, dy::Ptr{Float}, dz::Ptr{Float})::Float
@getf lib mgl_data_linear_ext(dat::HCDT, x::Float, y::Float, z::Float, dx::Ptr{Float}, dy::Ptr{Float}, dz::Ptr{Float})::Float
@getf lib mgl_data_solve_1d(dat::HCDT, val::Float, spl::Cint, i0::Clong)::Float
@getf lib mgl_data_solve(dat::HCDT, val::Float, dir::Cchar, i0::HCDT, norm::Cint)::HMDT
@getf lib mgl_data_trace(d::HCDT)::HMDT
@getf lib mgl_data_resize(dat::HCDT, mx::Clong, my::Clong, mz::Clong)::HMDT
@getf lib mgl_data_resize_box(dat::HCDT, mx::Clong, my::Clong, mz::Clong, x1::Float, x2::Float, y1::Float, y2::Float, z1::Float, z2::Float)::HMDT
@getf lib mgl_data_hist(dat::HCDT, n::Clong, v1::Float, v2::Float, nsub::Clong)::HMDT
@getf lib mgl_data_hist_w(dat::HCDT, weight::HCDT, n::Clong, v1::Float, v2::Float, nsub::Clong)::HMDT
@getf lib mgl_data_momentum(dat::HCDT, dir::Cchar, how::Ptr{Cchar})::HMDT
@getf lib mgl_data_evaluate(dat::HCDT, idat::HCDT, jdat::HCDT, kdat::HCDT, norm::Cint)::HMDT
@getf lib mgl_data_envelop(dat::HMDT, dir::Cchar)::Void
@getf lib mgl_data_sew(dat::HMDT, dirs::Ptr{Cchar}, da::Float)::Void
@getf lib mgl_data_crop(dat::HMDT, n1::Clong, n2::Clong, dir::Cchar)::Void
@getf lib mgl_data_clean(dat::HMDT, id::Clong)::Void
@getf lib mgl_data_mul_dat(dat::HMDT, d::HCDT)::Void
@getf lib mgl_data_div_dat(dat::HMDT, d::HCDT)::Void
@getf lib mgl_data_add_dat(dat::HMDT, d::HCDT)::Void
@getf lib mgl_data_sub_dat(dat::HMDT, d::HCDT)::Void
@getf lib mgl_data_mul_num(dat::HMDT, d::Float)::Void
@getf lib mgl_data_div_num(dat::HMDT, d::Float)::Void
@getf lib mgl_data_add_num(dat::HMDT, d::Float)::Void
@getf lib mgl_data_sub_num(dat::HMDT, d::Float)::Void
@getf lib mgl_transform_a(am::HCDT, ph::HCDT, tr::Ptr{Cchar})::HMDT
@getf lib mgl_transform(re::HCDT, im::HCDT, tr::Ptr{Cchar})::HMDT
@getf lib mgl_data_fourier(re::HMDT, im::HMDT, dir::Ptr{Cchar})::Void
@getf lib mgl_data_stfa(re::HCDT, im::HCDT, dn::Clong, dir::Cchar)::HMDT
@getf lib mgl_triangulation_3d(x::HCDT, y::HCDT, z::HCDT)::HMDT
@getf lib mgl_triangulation_2d(x::HCDT, y::HCDT)::HMDT
@getf lib mgl_find_root()::Float
@getf lib mgl_find_root_txt(func::Ptr{Cchar}, ini::Float, var_id::Cchar)::Float
@getf lib mgl_data_roots(func::Ptr{Cchar}, ini::HCDT, var_id::Cchar)::HMDT
@getf lib mgl_create_expr(expr::Ptr{Cchar})::HMEX
@getf lib mgl_delete_expr(ex::HMEX)::Void
@getf lib mgl_expr_eval(ex::HMEX, x::Cdouble, y::Cdouble, z::Cdouble)::Cdouble
@getf lib mgl_expr_eval_v(ex::HMEX, vars::Ptr{Float})::Cdouble
@getf lib mgl_expr_diff(ex::HMEX, dir::Cchar, x::Cdouble, y::Cdouble, z::Cdouble)::Cdouble
@getf lib mgl_expr_diff_v(ex::HMEX, dir::Cchar, vars::Ptr{Float})::Cdouble

#define.h
@getf lib mgl_hypot(x::Cdouble, y::Cdouble)::Cdouble
@getf lib mgl_wcslen(str::Ptr{Cwchar_t})::Csize_t
@getf lib mgl_chrrgb(id::Cchar, rgb::Cfloat)::Void
@getf lib mgl_have_color(stl::Ptr{Cchar})::Clong
@getf lib mgl_set_num_thr(n::Cint)::Void
@getf lib mgl_test_txt(str::Ptr{Cchar})::Void
@getf lib mgl_set_test_mode(enable::Cint)::Void
@getf lib mgl_strtrim(str::Ptr{Cchar})::Void
@getf lib mgl_wcstrim(str::Ptr{Cwchar_t})::Void
@getf lib mgl_strlwr(str::Ptr{Cchar})::Void
@getf lib mgl_wcslwr(str::Ptr{Cwchar_t})::Void
@getf lib mgl_wcstombs(dst::Ptr{Cchar}, src::Ptr{Cwchar_t}, size::Cint)::Void
@getf lib mgl_clear_fft()::Void

#mgl_cf.h
@getf lib mgl_create_graph_gl()::HMGL

#mpi.h
@getf lib mgl_mpi_send(gr::HMGL, id::Cint)::Void
@getf lib mgl_mpi_recv(gr::HMGL, id::Cint)::Void

#other.h
@getf lib mgl_triplot_xyzc(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_triplot_xyz(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_triplot_xy(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_quadplot_xyzc(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_quadplot_xyz(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_quadplot_xy(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tricont_xyzcv(gr::HMGL, v::HCDT, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tricont_xycv(gr::HMGL, v::HCDT, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tricont_xyzc(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tricont_xyc(gr::HMGL, nums::HCDT, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dots(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dots_a(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dots_ca(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, c::HCDT, a::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_crust(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dens_x(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_dens_y(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_dens_z(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_x(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_y(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_z(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_x_val(graph::HMGL, v::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_y_val(graph::HMGL, v::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_cont_z_val(graph::HMGL, v::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_x(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_y(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_z(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_x_val(graph::HMGL, v::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_y_val(graph::HMGL, v::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_contf_z_val(graph::HMGL, v::HCDT, a::HCDT, stl::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void

#pde.h
#=@getf lib mgl_pde_solve_c(gr::HMGL, ham::Ptr{Cchar}, ini_re::HCDT, ini_im::HCDT, dz::Float, k0::Float, opt::Ptr{Cchar})::HADT=#
#=@getf lib mgl_pde_solve(gr::HMGL, ham::Ptr{Cchar}, ini_re::HCDT, ini_im::HCDT, dz::Float, k0::Float, opt::Ptr{Cchar})::HMDT=#
#=@getf lib mgl_qo2d_solve_c(ham::Ptr{Cchar}, ini_re::HCDT, ini_im::HCDT, ray::HCDT, r::Float, k0::Float, xx::HMDT, yy::HMDT)::HADT=#
#=@getf lib mgl_qo2d_func_c()::HADT=#
#=@getf lib mgl_qo2d_solve(ham::Ptr{Cchar}, ini_re::HCDT, ini_im::HCDT, ray::HCDT, r::Float, k0::Float, xx::HMDT, yy::HMDT)::HMDT=#
#=@getf lib mgl_qo2d_func()::HMDT=#
#=@getf lib mgl_qo3d_solve_c(ham::Ptr{Cchar}, ini_re::HCDT, ini_im::HCDT, ray::HCDT, r::Float, k0::Float, xx::HMDT, yy::HMDT, zz::HMDT)::HADT=#
#=@getf lib mgl_qo3d_func_c()::HADT=#
#=@getf lib mgl_qo3d_solve(ham::Ptr{Cchar}, ini_re::HCDT, ini_im::HCDT, ray::HCDT, r::Float, k0::Float, xx::HMDT, yy::HMDT, zz::HMDT)::HMDT=#
#=@getf lib mgl_qo3d_func()::HMDT=#
#=@getf lib mgl_ode_solve(x::Ptr{Float}, dx::Ptr{Float}, par::Ptr{Void}, n::Cint, x0::Ptr{Float}, dt::Float, tmax::Float, par::Ptr{Void})::HMDT=#
#=@getf lib mgl_ray_trace(ham::Ptr{Cchar}, x0::Float, y0::Float, z0::Float, px::Float, py::Float, pz::Float, dt::Float, tmax::Float)::HMDT=#
#=@getf lib mgl_jacobian_2d(x::HCDT, y::HCDT)::HMDT=#
#=@getf lib mgl_jacobian_3d(x::HCDT, y::HCDT, z::HCDT)::HMDT=#

#plot.h
@getf lib mgl_fplot(gr::HMGL, eqY::Ptr{Cchar}, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_fplot_xyz(gr::HMGL, eqX::Ptr{Cchar}, eqY::Ptr{Cchar}, eqZ::Ptr{Cchar}, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_radar(graph::HMGL, a::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_plot_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_plot_xy(graph::HMGL, x::HCDT, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_plot(graph::HMGL, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tens_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, c::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tens_xy(graph::HMGL, x::HCDT, y::HCDT, c::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tens(graph::HMGL, y::HCDT, c::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tape_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tape_xy(graph::HMGL, x::HCDT, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tape(graph::HMGL, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_boxplot_xy(graph::HMGL, x::HCDT, a::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_boxplot(graph::HMGL, a::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_area_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_area_xy(graph::HMGL, x::HCDT, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_area(graph::HMGL, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_region_3d(graph::HMGL, x1::HCDT, y1::HCDT, z1::HCDT, x2::HCDT, y2::HCDT, z2::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_region_xy(graph::HMGL, x::HCDT, y1::HCDT, y2::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_region(graph::HMGL, y1::HCDT, y2::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_stem_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_stem_xy(graph::HMGL, x::HCDT, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_stem(graph::HMGL, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_step_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_step_xy(graph::HMGL, x::HCDT, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_step(graph::HMGL, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_bars_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_bars_xy(graph::HMGL, x::HCDT, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_bars(graph::HMGL, y::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_barh_yx(graph::HMGL, y::HCDT, v::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_barh(graph::HMGL, v::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_ohlc_x(graph::HMGL, x::HCDT, open::HCDT, high::HCDT, low::HCDT, close::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_ohlc(graph::HMGL, open::HCDT, high::HCDT, low::HCDT, close::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_chart(graph::HMGL, a::HCDT, col::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_error_exy(graph::HMGL, x::HCDT, y::HCDT, ex::HCDT, ey::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_error_xy(graph::HMGL, x::HCDT, y::HCDT, ey::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_error(graph::HMGL, y::HCDT, ey::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_mark_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, r::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_mark_xy(graph::HMGL, x::HCDT, y::HCDT, r::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_mark_y(graph::HMGL, y::HCDT, r::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tube_xyzr(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, r::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tube_xyr(graph::HMGL, x::HCDT, y::HCDT, r::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tube_r(graph::HMGL, y::HCDT, r::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tube_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, r::Cdouble, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tube_xy(graph::HMGL, x::HCDT, y::HCDT, r::Cdouble, penl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tube(graph::HMGL, y::HCDT, r::Cdouble, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_candle_xyv(gr::HMGL, x::HCDT, v1::HCDT, v2::HCDT, y1::HCDT, y2::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_candle_yv(gr::HMGL, v1::HCDT, v2::HCDT, y1::HCDT, y2::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_candle(gr::HMGL, v::HCDT, y1::HCDT, y2::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void

#prim.h
@getf lib mgl_mark(gr::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, mark::Ptr{Cchar})::Void
@getf lib mgl_ball(gr::HMGL, x::Cdouble, y::Cdouble, z::Cdouble)::Void
@getf lib mgl_line(gr::HMGL, x1::Cdouble, y1::Cdouble, z1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble, pen::Ptr{Cchar}, n::Cint)::Void
@getf lib mgl_curve(gr::HMGL, x1::Cdouble, y1::Cdouble, z1::Cdouble, dx1::Cdouble, dy1::Cdouble, dz1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble, dx2::Cdouble, dy2::Cdouble, dz2::Cdouble, pen::Ptr{Cchar}, n::Cint)::Void
@getf lib mgl_error_box(gr::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, ex::Cdouble, ey::Cdouble, ez::Cdouble, pen::Ptr{Cchar})::Void
@getf lib mgl_face(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, x1::Cdouble, y1::Cdouble, z1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble, x3::Cdouble, y3::Cdouble, z3::Cdouble, stl::Ptr{Cchar})::Void
@getf lib mgl_facex(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, wy::Cdouble, wz::Cdouble, stl::Ptr{Cchar}, dx::Cdouble, dy::Cdouble)::Void
@getf lib mgl_facey(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, wx::Cdouble, wz::Cdouble, stl::Ptr{Cchar}, dx::Cdouble, dy::Cdouble)::Void
@getf lib mgl_facez(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, wx::Cdouble, wy::Cdouble, stl::Ptr{Cchar}, dx::Cdouble, dy::Cdouble)::Void
@getf lib mgl_sphere(gr::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, r::Cdouble, stl::Ptr{Cchar})::Void
@getf lib mgl_drop(gr::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, dx::Cdouble, dy::Cdouble, dz::Cdouble, r::Cdouble, stl::Ptr{Cchar}, shift::Cdouble, ap::Cdouble)::Void
@getf lib mgl_cone(gr::HMGL, x1::Cdouble, y1::Cdouble, z1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble, r1::Cdouble, r2::Cdouble, stl::Ptr{Cchar})::Void
@getf lib mgl_ellipse(gr::HMGL, x1::Cdouble, y1::Cdouble, z1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble, r::Cdouble, stl::Ptr{Cchar})::Void
@getf lib mgl_rhomb(gr::HMGL, x1::Cdouble, y1::Cdouble, z1::Cdouble, x2::Cdouble, y2::Cdouble, z2::Cdouble, r::Cdouble, stl::Ptr{Cchar})::Void
@getf lib mgl_cones_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cones_xz(graph::HMGL, x::HCDT, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cones(graph::HMGL, z::HCDT, pen::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dew_xy(gr::HMGL, x::HCDT, y::HCDT, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dew_2d(gr::HMGL, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, optl::Ptr{Cchar})::Void
@getf lib mgl_puts(graph::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, text::Ptr{Cchar}, font::Ptr{Cchar}, size::Cdouble)::Void
@getf lib mgl_putsw(graph::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, text::Ptr{Cwchar_t}, font::Ptr{Cchar}, size::Cdouble)::Void
@getf lib mgl_puts_dir(graph::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, dx::Cdouble, dy::Cdouble, dz::Cdouble, text::Ptr{Cchar}, font::Ptr{Cchar}, size::Cdouble)::Void
@getf lib mgl_putsw_dir(graph::HMGL, x::Cdouble, y::Cdouble, z::Cdouble, dx::Cdouble, dy::Cdouble, dz::Cdouble, text::Ptr{Cwchar_t}, font::Ptr{Cchar}, size::Cdouble)::Void
@getf lib mgl_textmark_xyzr(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, r::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textmarkw_xyzr(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, r::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textmark_xyr(graph::HMGL, x::HCDT, y::HCDT, r::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textmarkw_xyr(graph::HMGL, x::HCDT, y::HCDT, r::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textmark_yr(graph::HMGL, y::HCDT, r::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textmarkw_yr(graph::HMGL, y::HCDT, r::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textmark(graph::HMGL, y::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_textmarkw(graph::HMGL, y::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_label_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_labelw_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_label_xy(graph::HMGL, x::HCDT, y::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_labelw_xy(graph::HMGL, x::HCDT, y::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_label_y(graph::HMGL, y::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_labelw_y(graph::HMGL, y::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_table(gr::HMGL, x::Cdouble, y::Cdouble, val::HCDT, text::Ptr{Cchar}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tablew(gr::HMGL, x::Cdouble, y::Cdouble, val::HCDT, text::Ptr{Cwchar_t}, fnt::Ptr{Cchar}, opt::Ptr{Cchar})::Void

#surf.h
@getf lib mgl_fsurf(graph::HMGL, fz::Ptr{Cchar}, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_fsurf_xyz(graph::HMGL, fx::Ptr{Cchar}, fy::Ptr{Cchar}, fz::Ptr{Cchar}, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_grid_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_grid(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_mesh_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_mesh(graph::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_fall_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_fall(graph::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_belt_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_belt(graph::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf(graph::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dens_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_dens(graph::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_boxs_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_boxs(graph::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tile_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tile(graph::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tiles_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, r::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_tiles(graph::HMGL, z::HCDT, r::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surfc_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surfc(graph::HMGL, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surfa_xy(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surfa(graph::HMGL, z::HCDT, c::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_stfa_xy(graph::HMGL, x::HCDT, y::HCDT, re::HCDT, im::HCDT, dn::Cint, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_stfa(graph::HMGL, re::HCDT, im::HCDT, dn::Cint, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_map_xy(graph::HMGL, x::HCDT, y::HCDT, a::HCDT, b::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_map(graph::HMGL, a::HCDT, b::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void

#vect.h
@getf lib mgl_traj_xy(gr::HMGL, x::HCDT, y::HCDT, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_traj_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_vect_xy(gr::HMGL, x::HCDT, y::HCDT, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_vect_2d(gr::HMGL, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_vect_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_vect_3d(gr::HMGL, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flow_xy(gr::HMGL, x::HCDT, y::HCDT, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flow_2d(gr::HMGL, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flow_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flow_3d(gr::HMGL, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flowp_xy(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, x::HCDT, y::HCDT, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flowp_2d(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flowp_xyz(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, x::HCDT, y::HCDT, z::HCDT, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_flowp_3d(gr::HMGL, x0::Cdouble, y0::Cdouble, z0::Cdouble, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_pipe_xy(gr::HMGL, x::HCDT, y::HCDT, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, r0::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_pipe_2d(gr::HMGL, ax::HCDT, ay::HCDT, sch::Ptr{Cchar}, r0::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_pipe_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, r0::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_pipe_3d(gr::HMGL, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, r0::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_grad_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, ph::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_grad_xy(gr::HMGL, x::HCDT, y::HCDT, ph::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_grad(gr::HMGL, ph::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_vect3_xyz(gr::HMGL, x::HCDT, y::HCDT, z::HCDT, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void
@getf lib mgl_vect3(gr::HMGL, ax::HCDT, ay::HCDT, az::HCDT, sch::Ptr{Cchar}, sVal::Cdouble, opt::Ptr{Cchar})::Void

#volume.h
@getf lib mgl_surf3_xyz_val(graph::HMGL, Val::Cdouble, x::HCDT, y::HCDT, z::HCDT, a::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3_val(graph::HMGL, Val::Cdouble, a::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3a_xyz_val(graph::HMGL, Val::Cdouble, x::HCDT, y::HCDT, z::HCDT, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3a_val(graph::HMGL, Val::Cdouble, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3a_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3a(graph::HMGL, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3c_xyz_val(graph::HMGL, Val::Cdouble, x::HCDT, y::HCDT, z::HCDT, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3c_val(graph::HMGL, Val::Cdouble, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3c_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_surf3c(graph::HMGL, a::HCDT, b::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cloud_xyz(graph::HMGL, x::HCDT, y::HCDT, z::HCDT, a::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_cloud(graph::HMGL, a::HCDT, stl::Ptr{Cchar}, opt::Ptr{Cchar})::Void
@getf lib mgl_beam_val(graph::HMGL, Val::Cdouble, tr::HCDT, g1::HCDT, g2::HCDT, a::HCDT, r::Cdouble, stl::Ptr{Cchar}, norm::Cint)::Void
@getf lib mgl_beam(graph::HMGL, tr::HCDT, g1::HCDT, g2::HCDT, a::HCDT, r::Cdouble, stl::Ptr{Cchar}, norm::Cint, num::Cint)::Void

#wnd.h
@getf lib mgl_draw_graph(gr::HMGL, p::Ptr{Void})::Cint
@getf lib mgl_draw_class(gr::HMGL, p::Ptr{Void})::Cint
@getf lib mgl_click_class(p::Ptr{Void})::Void
@getf lib mgl_reload_class(p::Ptr{Void})::Void
