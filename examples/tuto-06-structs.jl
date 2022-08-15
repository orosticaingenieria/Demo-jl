###############################################################
### START IMMUTABLE STRUCT ####################################
###

# Immutable struct (also known as classes)
# Cannot alter field values after creating
struct Prism

    # Fields
    length::Real
    width::Real
    height::Real

    # Inner constructor -- 3 arguments
    function Prism(l::Real, w::Real, h::Real)
        if l < 0 || w < 0 || h < 0
            error("Can't have negative values for lengths.")
        elseif l < w
            error("Can't have shorter length than width.")
        else
            new(l, w, h)
        end
    end

    # Inner constructor -- no arguments
    function Prism()
        new(1, 1, 1)
    end

end

# passing structs to functions
function volume(p::Prism)
    return p.length * p.width * p.height
end

function surface_area(p::Prism)
    s1 = p.length * p.width
    s2 = p.length * p.height
    s3 = p.width * p.height
    return 2 * (s1 + s2 + s3)
end

###
### END IMMUTABLE STRUCT ######################################
###############################################################

###############################################################
### START MUTABLE STRUCT ######################################
###

# Mutable struct
# Can alter field values after creating
mutable struct Circle

    # Fields
    radius::Real

end

# Outter constructor -- no arguments
function Circle()
    Circle(1)
end

###
### END MUTABLE STRUCT ########################################
###############################################################

# Define the main() function
function main()

    # Use first Prism constructor
    p1 = Prism()
    print("p1 = "), display(p1), println()
    println("p1.length = ", p1.length, ", p1.width = ", p1.width, ", p1.height = ", p1.height)
    println("volume(p1) = ", volume(p1))
    println("surface_area(p1) = ", surface_area(p1))
    println()

    # Use second Prism constructor
    p2 = Prism(2, 1, 3)
    print("p2 = "), display(p2), println()
    println("p2.length = ", p2.length, ", p2.width = ", p2.width, ", p2.height = ", p2.height)
    println("volume(p2) = ", volume(p2))
    println("surface_area(p2) = ", surface_area(p2))
    println()

    # Constructing a Circles
    c1 = Circle()
    print("c1 = "), display(c1), println()
    println("c1.radius = ", c1.radius)
    println()
    c2 = Circle(5)
    print("c2 = "), display(c2), println()
    println("c2.radius = ", c2.radius)
    println()

end

# Call the main() function
main()
