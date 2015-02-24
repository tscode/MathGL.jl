using MathGL.Capi
mgl = MathGL.Capi

gr = mgl.create_graph(800, 800)
mgl.box(gr)
mgl.plot(gr, sin(linspace(0, 2pi, 50)))
mgl.write_frame(gr, "../graphs/sin_C.png", "")
