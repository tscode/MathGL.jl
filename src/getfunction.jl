# getfunction.jl
#
# Makro to ease access to C functions; mainly adopted from the GetC-Package
# for Julia. What is desired is e.g. the following:
#
# INPUT:  
# void mgl_surf(HMGL gr, HCDT z, char *sch, char *opt);
# mgl_surf(gr::HMGL, z::HCDT, sch::Ptr{Cchar}, opt::Ptr{Cchar})::Void
#
# OUTPUT: 
# function mgl_surf(gr, z, sch, opt)
#     ccall(("libmgl", :mgl_surf), Void, (HMGL, HCDT, Ptr{Cchar}, Ptr{Cchar}), gr, z, sch, opt)
# end

macro getf(lib, fun)
    # Name of the function
    cname     = string(fun.args[1].args[1])                # :mgl_surf
    jname     = symbol(replace(string(cname), "mgl_", "")) # :surf
    arguments = fun.args[1].args[2:end]                    # [:(gr::HMGL), :(z::HCDT), ...]

    # Get info out of arguments of 'fun'
    inputC   = [ arg.args[2] for arg in arguments ]   # [ :HMGL, :HCDT, ...]
    varnames = [ arg.args[1] for arg in arguments ]   # [ :gr, :z, :sch, :opt ]
    rettype  = fun.args[2]                            # :Void

    # Construct the result.
    csym = Expr(:quote, cname)
    body = Expr(:ccall, :($csym, $lib), rettype, Expr(:tuple, inputC...), 
                varnames...)
    ret = Expr(:function, Expr(:call, jname, varnames...), body)
    return esc(ret)
end
