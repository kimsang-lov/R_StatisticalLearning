A <- matrix(1:16, 4, 4)
A
A[2, 3]

A[c(1, 3), c(2, 4)]

A[1:3, 2:4]

A[1:2, ]

A[, 1:2]

# R treats a single row or column of a matrix as a vector
A[1, ]

# The use of a negative sign "-" in the index tells R to keep all rows or columns
# except those indicated in the index
A[-c(1, 3), ]
A[-c(1, 3), -c(1, 3, 4)]

# The dim() function outputs the number of rows followed by the number of columns of matrix
dim(A)