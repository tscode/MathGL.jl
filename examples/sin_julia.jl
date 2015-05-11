using MathGL
mgl = MathGL

gr = mgl.Graph(800, 500)
mgl.xlabel(gr, "x")
mgl.ylabel(gr, "y")
mgl.box(gr)
mgl.axis(gr)
mgl.grid(gr)
mgl.plot(gr, 0.8*sin(linspace(-4pi, 4pi, 200)))
mgl.write(gr, "../graphs/sin_julia.png")
