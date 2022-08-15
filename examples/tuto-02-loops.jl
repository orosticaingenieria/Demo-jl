# Defining a range to work with
r = 1:5

# List of comprehension
l1 = [i % 2 for i in r]
l2 = [i for i in r]
l3 = [i * 2 for i in r]
l4 = ["hello ", "how ", "are ", "you?"]
print("r = "), display(r), println()
print("l1 = "), display(l1), println()
print("l2 = "), display(l2), println()
print("l3 = "), display(l3), println()
print("l4 = "), display(l4), println()
println()


# Editing elements of an array
for i in r
    l2[i] += i
    println("i = ", i, ", l2[i] = ", l2[i])
end
print("l2 = "), display(l2), println()
println()


# Accesing elements of string array
for word in l4
    println("word = ", word)
end
for i in eachindex(l4)
    println("i = ", i, ", l4[i] = ", l4[i])
end
print("l4 = "), display(l4), println()
println()

# Nested loops
z = zeros(3, 4)
for i in axes(z, 1)
    for j in axes(z, 2)
        z[i, j] += i + j
        println("i = ", i, ", j = ", j, ", z[i, j] = ", z[i, j])
    end
end
print("z = "), display(z), println()
println()

# While loop
global i = 0
while i < 5
    println(i)
    i += 1          # incorrect
    global i += 1   # correct
end
