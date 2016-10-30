

#
# Graph type as wrapper around the c++ mglGraph class
# There are other types of graphs (qt, wx, glut, ...) which are not
# supported right now
#

type Graph
    # Pointer to the c++ mglGraph class
    ptr::Ptr{Void}

    function Graph(width::Integer=600, height::Integer=400)
        graph = new(cmgl.create_graph(width, height))
        finalizer(graph, x -> cmgl.delete_graph(x.ptr))
        return graph
    end
end


#
# Data type as wrapper around the standard mglData class for real floating
# point numbers
#

type Data
    # Pointer to the c++ mglData class
    ptr::Ptr{Void}

    function Data()
        data = new(cmgl.create_data())
        finalizer(data, x -> cmgl.delete_data(x.ptr))
        return data
    end
end

# Create Mgl data class with link to a julia array
function Data(values::Array{cmgl.Float})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values))." +
                               "The MathGl data class only supports up to 3 dimensions."
    data = Data()
    cmgl.data_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end

# Link or Relink Mgl data class to a julia array
function Data(data::Data, values::Array{cmgl.Float})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values))." + 
                               "The MathGl data class only supports up to 3 dimensions."
    cmgl.data_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end




#
# DataC type as wrapper around the standard mglData class for complex floating
# point numbers
#

type DataC 
    # Pointer to the c++ mglDataC class
    ptr::Ptr{Void}

    function DataC()
        data = new(cmgl.create_datac())
        finalizer(data, x -> cmgl.delete_datac(x.ptr))
        return data
    end
end


# Create Mgl dataC class with link to a julia array
function DataC(values::Array{cmgl.Dual})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values))." + 
                               "The MathGl data class only supports up to 3 dimensions."
    data = DataC()
    cmgl.datac_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end

# Link or relink Mgl dataC class to a julia array
function DataC(data::DataC, values::Array{cmgl.Dual})
    @assert ndims(values) <= 3 "Dimension of the input array is $(ndims(values))." + 
                               "The MathGl data class only supports up to 3 dimensions."
    cmgl.datac_link(data.ptr, values, size(values, 1), size(values, 2), size(values, 3))
    return data
end

