# The MathGL module meant to bring the mathgl plotting library to julia
module MathGL

module Capi
#providing access to the c api
include("capi.jl")
end #module Capi

# Simulating the mathgl c++ api
# Make the C functions with name mgl_fname accessible by mgl.fname
using MathGL.Capi
mgl = MathGL.Capi

# Abstractly wrap the mathgl classes in julia types
# Up to now only the graph class and the data classes (rudimentary, only
# linked arrays in data) are supported
include("types.jl")

# Funktions to set options, defaults, ect.
include("setup.jl")

# Plotting function
# Auxilliary plotting functions, e.g. bounding box, legends, colorbars, ...
include("misc.jl")
# Primitives (Marks, lines, errorboxes, circles...)
include("primitives.jl")
# Text & text-positioning (along directions, curves...)
include("text.jl")
# Plot 1d data
include("1dplot.jl")
# Plot 2d data
include("2dplot.jl")
# Plot 3d data
include("3dplot.jl")
# Plotting functions that are in the "dual plot" section of the mathgl manual
include("dualplot.jl")
# Plot vector fields, flows, ect., "vector fields" section in the mathgl manual
include("vectorplot.jl")
# Special plots, contained in section "other plotting" in the mathgl manual
include("specialplot.jl")


# Macros to simulate the mgl scripting language / maybe more in the future
include("macroplot.jl")


# A module for fast and dirty usage of MathGL
module Shortnames
include("shortnames.jl")
end #module Shortnames

end #module MathGL
