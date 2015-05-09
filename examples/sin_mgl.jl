using MathGL
mgl = MathGL

gr = mgl.Graph(800, 500)
@mglplot gr [
    xlabel "x"
    ylabel "y"
    box
    axis
    grid
    plot 0.8*sin(linspace(-4pi, 4pi, 200))
    writeframe "../graphs/sin_mgl.png"
]
