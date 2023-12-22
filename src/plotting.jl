module Plotting

using .Main: @showp, @showc, near_eq

using Serialization
using Plots

function main()
    mkpath("plots")
    default_fig_width, default_fig_height = (600, 400)
    figsize = (default_fig_width - 100, default_fig_height)

    line = deserialize("data/line.dat")
    p = plot(
        line.x,
        line.y,
        label=nothing,
        xlabel="x",
        ylabel="y",
        title="A Line (woohoo!)",
        dpi=300,
        linewidth=2,
        size=figsize
    )
    savefig("plots/line.pdf")

    parabola = deserialize("data/parabola.dat")
    p = plot(
        parabola.x,
        parabola.y,
        label=nothing,
        xlabel="x",
        ylabel="y",
        title="A Parabola (woohoo!)",
        dpi=300,
        linewidth=2,
        size=figsize
    )
    savefig("plots/parabola.pdf")

    return nothing
end

end
nothing  # Prevent output of module if sourced without a semicolon
