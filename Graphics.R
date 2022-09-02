?plot()
set.seed(3)
x <- rnorm(100)
y <- rnorm(100)
plot(x, y)
plot(x, y, xlab = "This is the x-axis", ylab = "This is the y-axis", main = "Plot of X vs Y")

# The function seq() is used to create a sequence of numbers
x <- seq(1, 10)
x
x <- 1:10
x
x <- seq(-pi, pi, length = 10)
x

# The contour() function produces a contour plot in order to represent three-dimensional data
?contour()
# A vector of the X values (the first dimensiono)
# A vector of the Y values (the second dimension)
# A matrix whose elements correspond to the Z values (the third dimensional)

y <- x
f <- outer(x, y, function (x, y) cos(y) / (1 + x^2))
contour(x, y, f)
contour(x, y, f, nlevels = 45, add = T)
fa <- (f - t(f)) / 2
contour(x, y, fa, nlevels = 15)

image(x, y, fa)
persp(x, y, fa)
persp(x, y, fa, theta = 30, phi = 20)