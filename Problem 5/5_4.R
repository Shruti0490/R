## Q 5.4
library(MASS)
data(package="UsingR", kid.weights)
summary(kid.weights)

attach(kid.weights)
age.yr = cut(age, seq(0,144,by=12), labels=0:11)

boxplot(weight ~ age.yr, main="5.4 - age vs. weights")
dev.off()
detach(kid.weights)
#  a clear upward trend in weight, with the range increasing as 
#  the child gets older