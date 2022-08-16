# Use the Demo package
using Demo

# Rename some Demo exported modules
const pm = PrismMod
const cm = CircleMod

# Print a greet message
Demo.greet()
println()

# Construct Prisms
p1 = pm.Prism()
print("p1 = "), display(p1), println()
println("p1.length = ", p1.length, ", p1.width = ", p1.width, ", p1.height = ", p1.height)
println("pm.volume(p1) = ", pm.volume(p1))
println("pm.surface_area(p1) = ", pm.surface_area(p1))
println()
p2 = pm.Prism(2, 1, 3)
print("p2 = "), display(p2), println()
println("p2.length = ", p2.length, ", p2.width = ", p2.width, ", p2.height = ", p2.height)
println("pm.volume(p2) = ", pm.volume(p2))
println("pm.surface_area(p2) = ", pm.surface_area(p2))
println()

# Construct Circles
c1 = cm.Circle()
print("c1 = "), display(c1), println()
println("c1.radius = ", c1.radius)
println()
c2 = cm.Circle(5)
print("c2 = "), display(c2), println()
println("c2.radius = ", c2.radius)
println()
