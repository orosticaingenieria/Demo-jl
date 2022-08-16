module Demo

include("Prism.jl")
include("Circle.jl")

using .PrismMod
using .CircleMod

greet() = print("Hello World!")

export PrismMod
export CircleMod

end # module
