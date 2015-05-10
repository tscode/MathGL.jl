#glut.h
@getf mgl_create_graph_glut(draw::DrawCallback, title::Ptr{Cchar}, par::Ptr{Void}, load::LoadCallback)::HMGL
@getf mgl_glut_toggle_alpha(gr::HMGL)::Void
@getf mgl_glut_toggle_light(gr::HMGL)::Void
@getf mgl_glut_toggle_no(gr::HMGL)::Void
@getf mgl_glut_update(gr::HMGL)::Void
@getf mgl_glut_reload(gr::HMGL)::Void
@getf mgl_glut_next_frame(gr::HMGL)::Void
@getf mgl_glut_prev_frame(gr::HMGL)::Void
@getf mgl_glut_animation(gr::HMGL)::Void

