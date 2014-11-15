using MathGL.Shortnames

x = 0.5*sin([0:0.12:pi])
y = 0.5*cos([0:0.18:pi])

z = x .+ y'

gr = Graph(500, 500)
light(gr, true)
rotate(gr, 60, 30)
box(gr)
surf(gr, z, sch="#")

writeframe(gr, "test.svg")

