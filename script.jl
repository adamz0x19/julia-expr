import Pkg
Pkg.add("Lindenmayer")

using Lindenmayer
Sierpinski = LSystem(Dict("G" => "F+G+F", "F" => "G-F-G"), "F")

drawLSystem(Sierpinski,
    forward = 6,
    startingorientation = 0,
    turn = 40,
    iterations = 8,
    filename = "Sierpinsky2.png")