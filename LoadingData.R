# to import data, we can use "read.table()" function
# and "write.table()", to export data

# option "header = T" tells R that the first line of the files contains the variable names
# using "na.strings" tells R that any time it sees a particular character it should be treaed
# as a missing element
# "stringAsFactor = T" argument tells R that any variable containing character strings should be
# interpreted as a qualitative variable
Auto <- read.table("/Users/mac/Documents/R_statisticalLearning/Auto.data", header = T,
                   na.strings = "?", stringsAsFactors = T)
View(Auto)
head(Auto)

dim(Auto)
Auto[1:4, ]

# use "na.omit()" function to remove rows with missing data
Auto <- na.omit(Auto)
dim(Auto)

# To refer to a variable, we must type the data set and teh variable name joined with a $ symbol
plot(Auto$cylinders, Auto$mpg)

# Alternatively, we can use the "attach()" function to tell R to make the variables in this data
# frame available by name
attach(Auto)
plot(cylinders, mpg)

# Use "as.factor()" function to convert quantitative variables into qualitative variables
cylinders <- as.factor(cylinders)

plot(cylinders, mpg, col = "red")
plot(cylinders, mpg, col = "yellow", varwidth = T)
plot(cylinders, mpg, col = "yellow", varwidth = T, horizontal = T)
plot(cylinders, mpg, col = "yellow", varwidth = T, xlab = "cylinder", ylab = "MPG")

hist(mpg, col = "yellow", breaks = 15)

# "pairs()" function creates a scatterplot matrix (i.e. a scatterplot for every pair of variables)
pairs(Auto)
pairs(~ mpg + displacement + horsepower + weight + acceleration, data = Auto)

# "identify()" provides a useful interactive method for identifying the value of a particular
# variavle for points on a plot
plot(horsepower, mpg)
identify(horsepower, mpg, name)

# "summary()" function produces a numerical summary of each variable in a particular dataset
summary(Auto)
