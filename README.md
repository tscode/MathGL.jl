MathGL.jl
---------

MathGL.jl shall provide a wrapper for the scientific visualization library
[MathGL](http://mathgl.sourceforge.net) written in c++.
To do so it relies on the C interface of MathGL, wrapping it with julia to
a (hopefully) convenient degree.

MathGL.jl is currently under construction, still lacks most (if not all) of
the functions provided by MathGL and is certainly not portable (only linux
support right now).

### Requirements

You will need a working and up-to-date version of libmgl.so in a folder
that julia can find via find\_library. For additional functions, like qt
support etc. (not supported right now) the corresponding libraries (e.g.
libmgl-qt5.so) must also be installed properly.
