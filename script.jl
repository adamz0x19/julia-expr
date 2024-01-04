import Pkg; Pkg.add(url="https://github.com/jofrevalles/JuliaFractals.jl.git"); Pkg.add("CairoMakie")

using JuliaFractals
using CairoMakie
CairoMakie.activate!(type = "png")

w = h = 1000
style = :smooth
max_it = 100
c = -0.8 + 0.156im

julia_fractal = julia(c, max_it)
img = generate_image(julia_fractal, style, w, h, (-2.0, 2.0), (-2.0, 2.0), max_it)

cmap = :algae
f = visualize(img, :makie; cmap=cmap)