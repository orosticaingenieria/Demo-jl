# Define some variables
x = 4
y = 3.5
a = "hello"
b = 'w'
t = true

# Check their types
println("x = ", x, " | typeof(x): ", typeof(x))
println("y = ", y, " | typeof(y): ", typeof(y))
println("a = ", a, " | typeof(a): ", typeof(a))
println("b = ", b, " | typeof(b): ", typeof(b))
println("t = ", t, " | typeof(t): ", typeof(t))
println()

# Concatenate strings
a = "hello"
b = "world!"
println(a * ' ' * b)
println()

# If statement
if (x > 0) && (y > 0)
    println("x and y are positive")
elseif (x < 0) && (y < 0)
    println("x and y are negative")
elseif (x > 0) || (y > 0)
    println("x or y are positive")
else
    println("x or y are 0")
end

# Ternary operator
x > 0 ? println("x is positive") : println("x is not positive")

# Define a function
function mysum(x, y)
    return x + y
end

# Use the function
println("mysum(x, y) = ", mysum(x, y))
println()

# Vector (alias for Array{T, 1})
x = [1; 2; 3; 4; 5; 6]
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))

# Vector transpose - Matrix (alias for Array{T, 2})
x = [1 2 3 4 5 6]
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))

# Matrix (alias for Array{T, 2})
x = [1 2;
     3 4;
     5 6]
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))

# 3D Array
x = [1 3 5
     2 4 6;;;
     7 9 11
     8 10 12]
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))
println()

# Matrix operations
α = 5
x = [1 2; 3 4; 5 6]
y = [5 6; 7 8; 9 0]
println("α = ", α, " | typeof(α) = ", typeof(α), " | size(x) = ", size(α))
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))
println("y = ", y, " | typeof(y) = ", typeof(y), " | size(y) = ", size(y))
println("x + y = ", x + y)
println("α .+ x = ", α .+ x)
println()

# UnitRange vs Array
N = 10
x = 1:N
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))
x = [i for i in 1:N]
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))
println()

# For loop
for i in 1:N
    x[i] *= 2
    println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))
end
println()

# Plot using Plots package
using Plots
N = 10
x = [i for i in 1:N]
y = [i^2 for i in 1:N]
println("x = ", x, " | typeof(x) = ", typeof(x), " | size(x) = ", size(x))
println("y = ", y, " | typeof(y) = ", typeof(y), " | size(y) = ", size(y))
plt = plot(x, y, title="title", xaxis="x", yaxis="y", legend=:topleft)
display(plt)

# Prevent terminating this script process until user presses the "enter" key
readline()
