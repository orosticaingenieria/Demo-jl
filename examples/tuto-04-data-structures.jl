# Array Containers                  size
v = Vector{Int64}(undef, 5)         # 5
m = Matrix{Float64}(undef, 3, 4)    # 3, 4
a = Array{Real}(undef, 2, 2, 3)     # 2, 2, 3

# Tuple Containers -- immutable
t = ("hello", 3, 4.5)               # tuple
n = (a="world", b=5, c='a')         # named tuple

# Dictionary Containers -- mutable
d = Dict('a'=>3.4, "hello"=>t[2], 1=>n.a)

# Print arrays
print("v = "), display(v), println()
print("m = "), display(m), println()
print("a = "), display(a), println()
println()

# Print tuple
println("-------------------")
println("# TUPLE: unmutable")
print("t = "), display(t), println()
println("typeof(t) = ", typeof(t))
println("keys(t) = ", keys(t))
println("values(t) = ", values(t))
[println("k = ", k, ", t[k] = ", t[k]) for k in keys(t)]
println()

# Print named-tuple
println("-------------------")
println("# NAMED-TUPLE: unmutable")
print("n = "), display(n), println()
println("typeof(n) = ", typeof(n))
println("keys(n) = ", keys(n))
println("values(n) = ", values(n))
[println("k = ", k, ", n[k] = ", n[k]) for k in keys(n)]
println()

# Print dictionary
println("-------------------")
println("# DICTIONARY: mutable")
print("d = "), display(d), println()
println("typeof(d) = ", typeof(d))
println("keys(d) = ", keys(d))
println("values(d) = ", values(d))
[println("k = ", k, ", d[k] = ", d[k]) for k in keys(d)]
println()
