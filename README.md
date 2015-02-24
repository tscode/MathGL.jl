<!--- This file is autogenerated to contain a toc -->

## Contents

- [Requirements ](#requirements)
- [Usage and Examples ](#usage-and-examples)
    - [The C Interface ](#the-c-interface)
    - [The Higher Level Julian Interface ](#the-higher-level-julian-interface)
    - [Abusing The Matrix Syntax: Imitating Mgl Scripts in Julia ](#abusing-the-matrix-syntax-imitating-mgl-scripts-in-julia)
- [TODO](#todo)

<!-- end toc -->

# MathGL.jl
**This repository probably won't work yet**

MathGL.jl shall provide a wrapper for the scientific visualization library
[MathGL](http://mathgl.sourceforge.net) written in C++.
It relies on the C interface of MathGL, wrapping it with julia to
a (hopefully) convenient degree.

MathGL.jl is currently under construction, still lacks most of the
functions provided by MathGL and is probably not portable (only linux
tested).

### Requirements 
Besides the code of this repository, you will need a working and up-to-date
version of libmgl in a folder that julia can find via find\_library. For
additional functions (which are *not* supported yet), like qt, glut, etc.
the corresponding libraries (e.g. libmgl-qt5) must also be installed
properly.


### Usage and Examples 
#### The C Interface 
The C functions provided by MathGL are callable via the Capi submodule of
MathGL. The Capi-module is more or less complete (some functions may be
missing, but most functionality is certainly implemented); however,
it is not comfortable to use. Documentation regarding the Capi (function
names and their description) may be found in the 
[MathGL documentation](http://mathgl.sourceforge.net/doc_en/Main.html).

Examples: 
```julia
using MathGL.Capi
mgl = MathGL.Capi

gr = mgl.create_graph(800, 800)
mgl.box(gr)
mgl.plot(gr, sin(linspace(0, 2pi, 50)))
mgl.write_frame(gr, "test.png", "")
```
TODO

#### The Higher Level Julian Interface 
The type structure was (quite loosely) modeled after the C++ class
structure, the most important type (currently) being the `Graph`.  The
function names (e.g. text, surf, plot, xtics, ...) were -- whenever
possible -- chosen to be the corresponding commands of the mgl scripting
language (see mathgl documentation for the details). This was done for
several reasons:
    
    * The names of the mgl commands are very julian (e.g. few underscores,
      heavily overloaded)
    * The C interface is tedious, the C++ interface does not really
      fit well
    * An abuse of julia's matrix construction syntax makes it possible to
      write mgl script code directly in julia (with some slight
      alterations, see below).

There are, however, important functions that are not covered by the
scripting language (which is designed to handle one graph only).
Some of these deviations of function names can be found in the file
changes.md.

#### Abusing The Matrix Syntax: Imitating Mgl Scripts in Julia 
To make it short: The following two code samples are perfectly equivalent
??? ???

### TODO

Still too much missing to bother enumerating it here...

