## Q 4.8
attach(women)
summary(women)

plot(height, weight,
     main="4.8 - Women: Height vs Weight",
     xlab="Height",
     ylab="Weight")
abline(lm(weight ~ height), col="red")
dev.off()

detach(women)
