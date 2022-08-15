# Import Plots package and use the gr() fast backend
using Plots
gr()

# Define input and polinomial outputs
m = 1
b = 0
x = 0:0.005:1
f = m * x .+ b  # linear
g = x .^ 2      # quadratic
h = x .^ 3      # cubic
println("typeof(x) = ", typeof(x), " | size(x) = ", size(x))
println("typeof(f) = ", typeof(f), " | size(f) = ", size(f))
println("typeof(g) = ", typeof(g), " | size(g) = ", size(g))
println("typeof(h) = ", typeof(h), " | size(h) = ", size(h))

# Define the plt object and place legend on top left corner
plt = plot(legend=:topleft)

# Plot the vectors
plot!(x, f, label="linear")
plot!(x, g, label="quadratic")
plot!(x, h, label="cubic", dpi=300)

# Adding axis and title labels
title!("polynomials")
xaxis!("x [-]")
yaxis!("f(x) [-]")

# Save the figure
savefig("tuto-03-plots.png")

# Display and prevent termination until user presses the "enter" key
display(plt)
readline()
