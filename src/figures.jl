module Figures

using .Main: @showp, @showc, near_eq

using Serialization
using Plots

function main()
    mkpath("figures")
    default_fig_width, default_fig_height = (600, 400)
    figsize = (default_fig_width - 100, default_fig_height)

    line = deserialize("data/line.dat")
    p = plot(
        line.x,
        line.y,
        label=nothing,
        xlabel="x",
        ylabel="y",
        title="A Line (yay!)",
        dpi=300,
        linewidth=2,
        size=figsize
    )
    savefig("figures/line.pdf")

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
    savefig("figures/parabola.pdf")

    return nothing
end

end
nothing  # Prevent output of module if sourced without a semicolon
