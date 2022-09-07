library(ISLR)
college <- College
head(college)


row.names <- rownames(college)
# View(college)
# row.names

summary(college)

attach(college)
pairs(college[, 1:10])

mean(Apps)
median(Apps)
sd(Apps)

boxplot(Outstate~Private, data = college)

Elite <- rep("No", nrow(college))

Elite[Top10perc > 50] <- "Yes"
Elite <- as.factor(Elite)

college <- data.frame(college, Elite)

summary(Elite)

boxplot(Outstate~Elite)

# Divide print window into four regions
par(mfrow = c(2, 2))

hist(Apps, xlim = c(0, 25000), xlab = "Applications", breaks = 20)
hist(Enroll)
hist(Top10perc, breaks = 25, xlab = "Pct. new students from top 10% of H.S. class")
hist(Outstate, xlab="Out-of-state tuition", ylab="Amount", main = "Outstate")


auto <- read.table("/Users/mac/Documents/R_statisticalLearning/Auto.data", header = T,
                   na.strings = "?", stringsAsFactors = T)

sum(is.na(auto))
colSums(is.na(auto))
rowSums(is.na(auto))

# Remove rows with missing value
auto <- na.omit(auto)

mean(auto$displacement)
sd(auto$displacement)

# Quantitative: mpg, displacement, horsepower, weight, accelaration, cylinder, year
# Qualitative: origin, name

range(auto$mpg)
range(auto$cylinders)
range(auto$displacement)
range(auto$horsepower)
range(auto$weight)
range(auto$acceleration)
range(auto$year)

mean(auto$mpg)
summary(auto[, 1:7])
sd(auto$mpg)
sd(auto$year)

# Remove the 10th through 85th observations
sub_auto <- auto[-seq(10, 85), ]

summary(sub_auto)
mean(sub_auto$displacement)
sd(sub_auto$displacement)

pairs(auto[, 1:7])

cor(Auto[, 1:7])


library(ISLR2)
dim(Boston)
?Boston

pairs(~crim + nox + dis + tax + medv, data = Boston)

cor(Boston[-1], Boston$crim)

range(Boston$crim)
mean(Boston$crim)
sd(Boston$crim)

# Suburbs with crime rate higher than 2 s.d from the mean(higher than 95% of suburbs).
High.Crime <- Boston[which(Boston$crim > mean(Boston$crim) + 2*sd(Boston$crim)), ]

range(Boston$tax) # 187, 711
mean(Boston$tax) # 408.2372
sd(Boston$tax) # 168.5371

High.Tax <- Boston[which(Boston$tax > mean(Boston$tax) + 2 * sd(Boston$tax)), ]
High.Tax

range(Boston$ptratio)
median(Boston$ptratio)

High.PT <- Boston[which(Boston$ptratio > mean(Boston$ptratio) + 2 * sd(Boston$ptratio)), ]

sum(Boston$chas==1)

which(Boston$medv == min(Boston$medv))

Boston[399, ]

range(Boston$lstat)
range(Boston$ptratio)

sum(Boston$rm > 8)