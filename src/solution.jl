module Solution

using .Main: @showp, @showc, near_eq

using Serialization
using LinearAlgebra

function say_howdy(target::String)
    println("Howdy, $(target)!")
end

function make_line(x, a, b)
    return a * x .+ b
end

function make_parabola(x, a, b, c)
    return  a * x.^2 + b * x .+ c
end

function main()
    mkpath("data")

    say_howdy("World")
    
    x = range(0.0, 5.0, 100)
    serialize("data/line.dat", (x=x, y=make_line(x, 0.5, 0.5)))
    serialize("data/parabola.dat", (x=x, y=make_parabola(x, 0.5, 0.5, 0.5)))

    return nothing
end

end
nothing  # Prevent output of module if sourced without a semicolon
