## Q 5.2
data(package="UsingR", chips)
summary(chips)
boxplot(chips, main="5.2 - chips")
dev.off()

library(UsingR)
simple.densityplot(chips)
dev.off()
#  slight variations on mean, but they all seem to be similar