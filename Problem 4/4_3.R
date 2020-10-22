## Q 4.3
data(package='MASS', mammals)
attach(mammals)
summary(mammals)


#  1. compare Pearson and Spearman correlation
#     ... yes, they appear to be similar...
cor(body, brain, method='pearson')
# [1] 0.9341638

cor(body, brain, method='spearman')
# [1] 0.9534986



#  2. plot 

plot(body, brain,
     main="4.3. - Body & Brain",
     xlab="body",
     ylab="brain")
lm.a <- lm(brain ~ body)
abline(lm.a, col="red")
dev.off()

summary(lm.a)



#  3. plot with logarithms of variables

plot(log1p(body), log1p(brain),
     main="4.3 - Body & Brain, log values",
     xlab="log1p(body)",
     ylab="log1p(brain)")
lm.b <- lm(log1p(brain) ~ log1p(body))
abline(lm.b, col="red")
dev.off()

summary(lm.b)

detach(mammals)
