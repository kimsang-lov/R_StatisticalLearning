# c() For concatenate
x <- c(1, 4, 2, 5)
x
y <- c(1, 4, 3)
z <- c(1, 6, 3)
z + y
length(y)
ls()
# rm() is used to delete objects, such as data and functions
rm(x)
ls()
# delete all objects at once
rm(list = ls())
ls()

?matrix
x <- matrix(data = c(1, 2, 3, 4), nrow = 2, ncol = 2)
x
# we could just as well omit typing data=, nrow=, and ncol=
x <- matrix(c(1, 2, 3, 4), 2, 2)
x

y <- matrix(c(1, 2, 3, 4), 2, 2, byrow=TRUE)
y

sqrt(y)
sqrt(x)
x ^ 2

# rnorm() function generates a vector of random normal variables
?rnorm
x <- rnorm(50)
y <- x + rnorm(50, mean = 50, sd = .1)
cor(x, y)
# By default, rnorm() creates standard normal random variables
# with a mean of 0 and standard deviation of 1

set.seed(3)
y <- rnorm(100)
mean(y)
var(y)
# Applying sqrt() to the output of var() will give the standard deviation
# or we can simply use the sd() function
sqrt(var(y))
sd(y)
