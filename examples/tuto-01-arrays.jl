# Define an empty Array
arr = []
println("arr = ", arr, " | typeof(arr) = ", typeof(arr), " | size(arr) = ", size(arr))
print("arr = "), display(arr), println()

# Push values in-place
push!(arr, 6)
println("push!(arr, 6) => arr = ", arr)
print("arr = "), display(arr), println()
push!(arr, 5, 4)
println("push!(arr, 5, 4) => arr = ", arr)
print("arr = "), display(arr), println()
append!(arr, [3, 2, 1])
println("append!(arr, [3, 2, 1]) => arr = ", arr)
print("arr = "), display(arr), println()
println()

# Accesing elements of an array by index
for i in eachindex(arr)
    arr[i] *= i
    println("i = ", i, ", arr[i] = ", arr[i])
end
println("arr = ", arr)
print("arr = "), display(arr), println()
println()

# Defining undefined arrays
arr1 = Array{Float64}(undef, 1)
arr2 = Array{Int}(undef, 1)
arr3 = Array{Real}(undef, 2, 3)         # 2D
arr4 = Array{Number}(undef, 5, 6, 7)    # 3D
println("arr1 = ", arr1, " | typeof(arr1) = ", typeof(arr1), " | size(arr1) = ", size(arr1))
println("arr2 = ", arr2, " | typeof(arr2) = ", typeof(arr2), " | size(arr2) = ", size(arr2))
println("arr3 = ", arr3, " | typeof(arr3) = ", typeof(arr3), " | size(arr3) = ", size(arr3))
println("arr4 = ", arr4, " | typeof(arr4) = ", typeof(arr4), " | size(arr4) = ", size(arr4))
print("arr1 = "), display(arr1), println()
print("arr2 = "), display(arr2), println()
print("arr3 = "), display(arr3), println()
print("arr4 = "), display(arr4), println()
println()

# Zero and One arrays
z = zeros(4)
o = ones(5, 4)
println("z = ", z, " | typeof(z) = ", typeof(z), " | size(z) = ", size(z))
println("o = ", o, " | typeof(o) = ", typeof(o), " | size(o) = ", size(o))
print("z = "), display(z), println()
print("o = "), display(o), println()
println()

# Range sets
r = range(1, 10, length=5)    # step range
u = 1:.05:2                    # unit range
println("r = ", r, " | typeof(r) = ", typeof(r), " | size(r) = ", size(r))
[println("i = ", i, ", r[i] = ", r[i]) for i in eachindex(r)]
print("r = "), display(r), println()
println("u = ", u, " | typeof(u) = ", typeof(u), " | size(u) = ", size(u))
[println("i = ", i, ", u[i] = ", u[i]) for i in eachindex(u)]
print("u = "), display(u), println()
println()

# List comprehension
l1 = [i for i in 1:10]
l2 = [2*i for i in 1:10]
println("l1 = ", l1, " | typeof(l1) = ", typeof(l1), " | size(l1) = ", size(l1))
println("l2 = ", l2, " | typeof(l2) = ", typeof(l2), " | size(l2) = ", size(l2))
print("l1 = "), display(l1), println()
print("l2 = "), display(l2), println()
println()
