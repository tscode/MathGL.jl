
# The mglplot macro which can be used similar to the mgl scripting language
macro mglplot(graph, commands)
    # Check if the format provided is right
    if typeof(graph)    != Symbol || 
       typeof(commands) != Expr
        Base.error("Arguments have wrong type. Need (Symbol, Expr),"  *
              "given was ($(typeof(graph)), $(typeof(commands)))")
    end
    if commands.head != :vcat
        Base.error("Can't understand the sequence of mgl commands. " *
                   "Expected symbol ':vcat'.")
    end
    # Initialize empty quote block that is to be filled with mgl calls
    block = Expr(:block)
    # Go through every line (= row) in the given block
    # Change the function name from 'name' to 'MathGL.name'
    # And append the row to the block to be executed
    for row in commands.args
        if typeof(row) == Symbol
            fname = Expr(:., :MathGL, Expr(:quote, :($(row))))
            push!(block.args, Expr(:call, fname, graph))
        elseif typeof(row) != Expr # Do nothing now, maybe TODO
        elseif row.head != :row # Just do what is given as statement, if it is no row
            push!(block.args, row)
        else
            # Replace ":(=)" symbols with ":kw" symbols so that they can be put in a function
            args = [ typeof(arg)    != Expr ? 
                     arg : arg.head != :(=) ? 
                     arg : Expr(:kw, arg.args...)    
                     for arg in row.args          ]

            fname = Expr(:., :MathGL, Expr( :quote, :($(args[1]))))
            push!(block.args, Expr(:call, fname, graph, args[2:end]...))
        end
    end
    return esc(block)
end

export @mglplot
