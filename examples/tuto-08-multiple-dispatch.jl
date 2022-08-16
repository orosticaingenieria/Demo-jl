######################################################
### START SHAPE STRUCT AND SUB-STRUCTS ###############
###

abstract type Shape end

struct Circle <: Shape
    r::Real
end

struct Rectangle <: Shape
    l::Real
    w::Real
end

struct Square <: Shape
    l::Real
end

area(a::Circle) = π*a.r^2
area(a::Rectangle) = a.l * a.w
area(a::Square) = a.l^2

###
### END SHAPE STRUCT AND SUB-STRUCTS #################
######################################################

# Define the main() function
function main()

    # First example:
    c = 1 + 2im
    r = 5
    println("c = ", c, " | typeof(c) = ", typeof(c))
    println("r = ", r, " | typeof(r) = ", typeof(r))
    println("c + c = ", c + c)
    println("c + r = ", c + r)
    println()
    #@which c + r
    #@which c + c

    # Second example
    c = Circle(3)
    r = Rectangle(4, 5)
    s = Square(5)
    println("c = ", c, " | typeof(c) = ", typeof(c))
    println("r = ", r, " | typeof(r) = ", typeof(r))
    println("s = ", s, " | typeof(s) = ", typeof(s))
    println("area(c) = ", area(c))
    println("area(c) = ", area(r))
    println("area(c) = ", area(s))
    println()

end

# Call the main() function
main()
