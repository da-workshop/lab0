# https://github.com/nikolaypavlov/da-workshops-0/blob/gh-pages/index.md
x <- c(1,2,3,4,5,6)     # Vector
y <- x^2                # Square the elements of x
print(y)                # print (vector) y

mean(y)                 # Calculate average (arithmetic mean) of (vector)

help(plot)              # Documentation
plot(x,y, type="l")     # plot x, y

head(iris)              # return the first part of the Iris data frame

var <- iris$Species     # assign Species column to var
print(iris[1,2])        # print the element of 1 row and 2 column

library(openintro)
columns <- c('spam', 'num_char', 'line_breaks', 'format', 'number')
head(email50[, columns], n=3)

temperature <- c(36.6, 37.23, -12.3124)

dice <- c(1,2,3,4,5,6)

colors <- as.factor(c("red", "red", "blue", "gray", "yellow", "gray","blue"))
levels(colors)

# Exercise: email50
names(email50)
head(email50)
tail(email50)
str(email50)

plot(county$poverty, county$fed_spend, pch=16, cex=0.7, ylim=c(0,35), xlab="Poverty Rate (Percent)", ylab="Federal Spending Per Capita")
plot(homeownership ~ multiunit, data=county, pch=16, cex=0.7, ylim=c(0,90), xlab="Percent of Units in Multi−Unit Structures", ylab="Percent of Homeownership")
