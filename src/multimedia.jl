
import Base: show

function show(io::IO, gr::Graph)
    print(io, "MathGL Graph of size $(width(gr))x$(height(gr))")
end

function image_string(gr::Graph, format)
    name = tempname()"_." * string(format)
    write(gr, name)
    tmpfile = open(name, "r")
    str = readbytes(tmpfile)
    close(file)
    str
end

function show(io::IO, ::MIME"image/png", gr::Graph)
    write(io, image_string(gr, :png))
end

function show(io::IO, ::MIME"image/svg+xml", gr::Graph)
    write(io, image_string(gr, :svg))
end

function show(io::IO, ::MIME"text/jpeg", gr::Graph)
    write(io, image_string(gr, :jpg))
end


