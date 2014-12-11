# The MathGL module meant to bring the mathgl plotting library to julia
module MathGL

module Capi
#providing access to the c api
include("capi.jl")
end #module MathGL.C

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


# Plotting functionse
# Auxilliary plotting functions, e.g. bounding box, legends, colorbars, ...
include("misc.jl")
include("primitives.jl")
#include("1d.jl")
include("2d.jl")
#include("3d.jl")

module Shortnames
include("shortnames.jl")
end #module Shortnames

end #module MathGL
