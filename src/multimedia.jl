
import Base: show

function show(io::IO, gr::Graph)
    print(io, "MathGL Graph of size $(width(gr))x$(height(gr))")
end

function image_string(gr::Graph, format)
    name = tempname()"_."string(format)
    write(gr, name)
    tmpfile = open(name, "r")
    str = read(tmpfile)
    close(tmpfile)
    str
end

function show(io::IO, ::MIME"image/png", gr::Graph)
    Base.write(io, image_string(gr, :png))
end

function show(io::IO, ::MIME"image/svg+xml", gr::Graph)
    Base.write(io, image_string(gr, :svg))
end

function show(io::IO, ::MIME"image/jpeg", gr::Graph)
    Base.write(io, image_string(gr, :jpg))
end

function show(io::IO, ::MIME"image/gif", gr::Graph)
    Base.write(io, image_string(gr, :gif))
end

function show(io::IO, ::MIME"image/bmp", gr::Graph)
    Base.write(io, image_string(gr, :bmp))
end

function show(io::IO, ::MIME"application/postscript", gr::Graph)
    Base.write(io, image_string(gr, :eps))
end
