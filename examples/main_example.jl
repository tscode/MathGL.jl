using MathGL

# Create the graph, using a sufficient resolution for 4x2 pictures here
gr = MathGL.Graph(2400, 1200)

# Standard sine and cosine plots with grid ect.
@mglplot gr [
    # Give position of the next plot: In a grid of 4x2 plots take the first (top left)
    subplot 4 2 1
    # The title for this subplot
    title "Sine and cosine plot"
    # The xticks, given as array of values and array of corresponding strings
    xtick [-2pi, -pi, 0, pi, 2pi] ["-2\\pi", "-\\pi", "0", "\\pi", "2\\pi"]
    # Set the ranges for x and y respectively. Each range is -1 to 1 by default
    xrange -2pi 2pi; yrange -1 1
    # Plot the axis (meaning: plot tics and tic labels) and the grid with style "h=" 
    # 'h' is a lighter gray, '=' is a type of dashed line
    axis; grid stl="h="
    # Labels for the x and y axis
    xlabel "x"; ylabel "y"
    # The x-values (as array, not as linspace!) that shall be used for plotting
    x = Array(linspace(-2pi,2pi,100))
    # The values for the two curves
    y1 = 0.5sin(x); y2 = 0.5cos(x)
    # Plot with style options "B" (dark Blue) and "G" (dark green)
    plot x y1 stl="B"
    plot x y2 stl="G"
    # Reset the tics
    xtick
]

# Some log-log plot 
@mglplot gr [
    # Same as before
    subplot 4 2 2
    title "Log-log plot"
    # This time: set x and y range in one command, ranges, instead of
    # xrange and yrange
    ranges 1e-2 1e2 7e-1 1e1
    # Set logscale axis by defining the coordinate transformations for the
    # x respectively y values. So we have  φ: xrange x yrange --> ℝ²,
    # φ(x,y) = (lg(x), lg(y)) as transformation applied before plotting
    coords X="lg(x)" Y="lg(y)"
    # Plot the ticks and tick labels, plot the grid for minor ticks
    # (subgrid) and the ordinary grid
    axis; subgrid; grid 
    # Once again the labels. MathGL supports some light form of support for
    # latex-like commands
    xlabel "x"; ylabel "y = \\sqrt{1+x^2}"
    # Generate the data and plot
    x = 1logspace(-2, 2, 200)
    plot x sqrt(1+x)
]

# Using cylindrical coordinates
@mglplot gr [
    subplot 4 2 3
    title "Cylindrical plot"
    # This range will be fed to the transformation of cylindrical coordinates
    # The xrange has the role of the angle / times 2pi, so it is between 0 and 1
    # The yrange has the role of the radius, it is also between 0 and 1
    # The zrange stays the same, so it stays from -1 to 1
    ranges 0 1 0 1 -1 1
    coords X="y*sin(2*pi*x)" Y="y*cos(2*pi*x)"
    # Rotate the picture. 50 degrees away from top view, -60 degrees around
    # z axis
    rotate 50 -60
    # Plot 6 circles
    x = Array(linspace(0,1,50))
    o = ones(50)
    # The numbers in the style string determine the width of the line to be
    # drawn
    plot x 0.80o 0.7o  stl="b9"
    plot x 0.65o 0.3o  stl="B7"
    plot x 0.50o 0.0o  stl="r5"
    plot x 0.30o -0.3o stl="G3"
    plot x 0.10o -0.7o stl="g1"
    # Set the origin to a margin value so that it does not disturb drawing the grid
    origin -1 1 -1
    # Plot a grid with light grey color ('h') and undashed lines ('-')
    grid stl="h-"
    # reset coordinates
    coords
]

# A plot marking the area between the y values and the x-axis
@mglplot gr [
    subplot 4 2 4
    title "Area plot"
    # Set ticks and ranges like before
    xtick [-2pi, -pi, 0, pi, 2pi] ["-2\\pi", "-\\pi", "0", "\\pi", "2\\pi"]
    xrange -2pi 2pi; yrange -1 1; zrange 0 0
    # As an alternative: set the origin to the top of the drawing. This
    # affects the axis command and the xlabel / ylabel commands so that the
    # ticks ect. for the x-axis are now drawn above the graph
    origin -2pi 1
    box; axis
    xlabel "x"; ylabel "y"
    # Set the origin back to 0. This is important for the area-plot, since
    # the area marked is the area between the x-axis defined by the origin
    origin 0 0
    # Prepare data
    x = Array(linspace(-2pi,2pi,100))
    y1 = 0.5sin(x)+0.4sin(3x); y2 = 0.8cos(x); y3 = -0.3cos(x)
    # Do the plots. g,G: light,dark green; k: black; y: yellow, c: cyan, b:
    # blue, #: special style for the area drawing: draw lines instead of
    # filling the full area
    area x y1 stl="gG#"
    plot x y1 stl="k"
    area x y2 stl="yr#"
    plot x y2 stl="k"
    area x y3 stl="cb#"
    plot x y3 stl="k"
    # reset the xticks
    xtick
]

# A default chart plot (as implemented in MathGL)
@mglplot gr [
    subplot 4 2 5
    title "Chart plot"
    # Use light-effects. One can also set up different light sources of different color and type
    light true
    rotate 50 60
    # Prepare data by constructing a random 7x2 matrix. So we compare
    # 2 datasets with 7 values each
    data = rand(7,2)+0.1
    # Here '#' means that the edges shall be plotted as lines (black by default)
    chart data stl="#"
]

# A ring like chart plot
@mglplot gr [
    subplot 4 2 6
    title "Ring chart plot"
    light true
    # Will again use something like cylinder coordinates, but won't let the radius go to 0,
    # so y ∈ [-1, 1] with r = y+2
    xrange 0 1
    coords X="(y+2)/3*cos(2*pi*x)" Y="(y+2)/3*sin(2*pi*x)"
    rotate 50 100
    # Prepare data by constructing a random 7x2 matrix. So we compare
    # 2 datasets with 7 values each
    data = rand(7,2)+0.1
    # The last values will be made invisible (by the space ' ' in the style string), 
    # define some fixed values for it so that one can see the rings internals
    data[7,:] = [0.25,0.5]
    # "bgrcmy ": use colors blue,green,red,cyan,mangenta,yellow,invisible
    # in this order for the 7 values supplied. '#': plot the edges as black lines
    chart data stl="bgrcmy #"
    # Reset the coordinate system
    coords
]

# Prepare some data that will be used in the next two plots
v = Array(linspace(-1,1,9))
x = Array(0:49)/49
y = Array(0:39)/39
a = 0.6sin(2pi*x).*sin(3pi*y') + 0.4cos(3pi*x.*y')
b = 0.6cos(2pi*x).*cos(3pi*y') + 0.4cos(3pi*x.*y')

# A surface plot with density plot at the bottom
@mglplot gr [
    subplot 4 2 7
    title "Surface plot"
    ranges -1 1 -1 1 -1 1
    light true
    rotate 50 60
    # Plots a bounding box around the 3d figure to be plotted
    box
    # Surface plot with "wire"-option '#' and optional parameter meshnum=12
    surf a stl="#" opt="meshnum 12"
    # density plot with "wire"-option '#' and optional parameter meshnum=12
    # and alpha=0.75 (meaning transparency). (The density plot can of course
    # also be given at other positions than at the bottom).
    dens a stl="#" opt="meshnum 12; alpha 0.75"
]

# Create a very nice contour plot using 3 different ways of drawing contours
@mglplot gr [
    subplot 4 2 8
    title "Contour plot"
    light true
    rotate 50 60
    box
    # This is responsible for the vertical areas
    contv a
    # This is responsible for the horizontal areas
    contf a
    # This is responsible for drawing black lines at the meeting edges
    # between vertical + horizontal areas
    cont  a stl="k"
]

MathGL.write(gr, "../graphs/main_example.png")
