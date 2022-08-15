
#############################################################
# Define a function
function helloworld()
    println("Hello World!")
end

# Call the function
helloworld()

#############################################################
# Define const PIE -- immutable
const PIE = 3.14

# Define the circumference function
function circum_a(r::Real)
    return 2 * PIE * r
end

# Define assignment form function
circum_b(r::Real) = 2 * π * r

# Define function with keyword and default argument
function volum(m::Real, h::Real; g::Real=10)
    return m * g * h
end

# Define function with varargs -- "variable number arguments"
function add(x::Real, y...)
    return x + sum(y)
end

# Define the main function
function main()

    # Set a radius
    r = 5

    # Compare circum_x() functions
    println("circum_a(r) = ", circum_a(r))
    println("circum_b(r) = ", circum_b(r))

    # Call the volum() function
    println("volum(10, 10, g=1000) = ", volum(10, 10, g=1000))

    # Call the add() function
    println("add(4, 5) = ", add(4, 5))
    println("add(5, 5, 5, 5) = ", add(5, 5, 5, 5))

    # Test anonymous function
    println("map(x -> 2 * π * x, [1, 5, 10]) = ", map(x -> 2 * π * x, [1, 5, 10]))

end

# Call the main function
main()
