using MathGL.Capi
mgl = MathGL.Capi

gr  = mgl.create_graph(1000, 1000)
mgl.title(gr, "sin C", "", -2)
dat = mgl.create_data()
mgl.data_link(dat, 0.8*sin(linspace(0, 2pi, 50)), 50, 1, 1)
mgl.box(gr)
mgl.plot(gr, dat, "", "")
mgl.write_frame(gr, "../graphs/sin_C.png", "")
