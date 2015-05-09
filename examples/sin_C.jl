using MathGL.Capi
mgl = MathGL.Capi

gr = mgl.create_graph(800, 500)
dat = mgl.create_data()
mgl.data_link(dat, 0.8*sin(linspace(-4pi, 4pi, 200)), 200, 1, 1)
mgl.label(gr, 'x', "x", 0, "")
mgl.label(gr, 'y', "y", 0, "")
mgl.box(gr)
mgl.axis(gr, "xyz", "", "")
mgl.axis_grid(gr, "xyz", "H|", "")
#=mgl.set_origin(gr, 0., 0., 0.)=#
mgl.plot(gr, dat, "", "")
mgl.write_frame(gr, "../graphs/sin_C.png", "")
