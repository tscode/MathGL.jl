using MathGL
mgl = MathGL

gr  = mgl.Graph(1000, 600)
#=mgl.data_link(dat, 0.8*sin(linspace(-4pi, 4pi, 200)), 50, 1, 1)=#
mgl.xlabel(gr, "x")
mgl.ylabel(gr, "y")
mgl.box(gr)
mgl.axis(gr, "xyz")
mgl.grid(gr, "xyz", stl="G|")
mgl.plot(gr, 0.8*sin(linspace(-4pi, 4pi, 200)))
mgl.writeframe(gr, "../graphs/sin_julia.svg")
