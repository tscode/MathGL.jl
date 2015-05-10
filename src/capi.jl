# This is a collection of C functions provided by the
# plotting library MathGL
# 
#
# Constants and Types
#-------------------------------------------------------------------------#

# TODO: Julia bug segfaults when using find_library on libmgl!
const lib     = "libmgl" #find_library(["libmgl", "libmgl2"])
const libqt   = Libdl.find_library(["libmgl-qt"])
const libfltk = Libdl.find_library(["libmgl-fltk"])
const libglut = Libdl.find_library(["libmgl-glut"])

typealias HMGL Ptr{Void}
typealias HCDT Ptr{Void}
typealias HMDT Ptr{Void}
typealias HADT Ptr{Void}
typealias HMPR Ptr{Void}
typealias HMEX Ptr{Void}
typealias HMAX Ptr{Void}

typealias DrawCallback Ptr{Void}
typealias LoadCallback Ptr{Void}



typealias Float Float64
typealias Dual  Complex{Float}

include("constants.jl")


# Functions
#-------------------------------------------------------------------------#

# The "raw" access to the C interface provided by the mgl libs is handled
# by the getf macro, defined in getfunction.jl
include("getfunction.jl")
# The functions are called as they are in the C api, though this notation
# does not meet the usual julia styling conventions (the C interface is not
# intended to be exposed to users who do not explicitly want everything to
# be like in the C api).

include("functions.jl")
# For the functions requireing qt/glut/fltk no test were/are conducted
include("qtfunctions.jl")
include("glutfunctions.jl")
include("fltkfunctions.jl")
