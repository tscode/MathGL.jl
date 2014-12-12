# Graph types
#------------#
abstract AbstractGraph

type Graph <: AbstractGraph
    # Pointer to the c++ mglGraph class
    ptr::Ptr{Void}
    # Graph constructors
    function Graph(width::Integer=600, height::Integer=400; kind::Integer=0)
        if kind == 0
            graph = new(mgl.create_graph(width, height))
        else
            error("OpenGl Backend not yet supported")
            return Ptr{Void}(0)
        #=elseif kind == 1 #Have to investigate the OpenGL mode=#
            #=return new(mgl.create_graph_gl(width, height))=#
        end
        finalizer(graph, x -> mgl.delete_graph(x.ptr))
        return graph
    end
end

# There are other types of graphs (qt, wx, glut, ...) which are not supported right now
# (maybe via using the Capi)


import Base: show
function show(io::IO, gr::AbstractGraph)
    print(io, "Graph of size $(width(gr))x$(height(gr))")
end


# Mgl Data types -- won't be very usefull when using julia
#---------------------------------------------------------#
abstract AbstractData

# The standard mglData class for real floating point numbers
type Data <: AbstractData
    # Pointer to the c++ mglData class
    ptr::Ptr{Void}
    # Data constructor
    function Data()
        data = new(mgl.create_data())
        finalizer(data, x -> mgl.delete_data(x.ptr))
        return data
    end
end

# Create Mgl data class with link to a julia array
function Data(values::Array{mgl.Float})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values)). The MathGl data class only supports up to 3 dimensions."
    data = Data()
    mgl.data_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end

# Link or Relink Mgl data class to a julia array
function Data(data::Data, values::Array{mgl.Float})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values)). The MathGl data class only supports up to 3 dimensions."
    mgl.data_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end


# The standard mglData class for complex floating point numbers
type DataC <: AbstractData
    # Pointer to the c++ mglDataC class
    ptr::Ptr{Void}
    # DataC constructor
    function DataC()
        data = new(mgl.create_datac())
        finalizer(data, x -> mgl.delete_datac(x.ptr))
        return data
    end
end


# Create Mgl dataC class with link to a julia array
function Data(values::Array{mgl.Dual})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values)). The MathGl data class only supports up to 3 dimensions."
    data = DataC()
    mgl.datac_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end

# Link or relink Mgl dataC class to a julia array
function Data(data::Data, values::Array{mgl.Dual})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values)). The MathGl data class only supports up to 3 dimensions."
    mgl.datac_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end


# Other Mgl types (no support planned right now)
#-----------------------------------------------#
#=
type Parse
    ptr::Ptr{Void}
end

type Expr
    ptr::Ptr{Void}
end

type ExprC
    ptr::Ptr{Void}
end
=#

