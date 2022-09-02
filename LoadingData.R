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