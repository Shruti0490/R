## Q 4.7
data(package="UsingR", babies)
attach(babies)

summary(babies)


cor(age, wt1, method="pearson")
# [1] 0.06273172
cor(age, wt1, method="spearman")
# [1] 0.1453316

lm.babies <- lm(wt1 ~ age)

plot(age, wt1,
     main="4.7 - Babies: Age vs Weight",
     xlab="Age",
     ylab="Weight")
abline(lm.babies, col="red")
dev.off()

par(mfcol=c(2,1))
plot(lm.babies, which=1)
plot(lm.babies, which=2)
dev.off()

summary(lm.babies)


cor(ht, wt1, method="pearson")
# [1] 0.6010033
cor(ht, wt1, method="spearman")
# [1] 0.5036179

lm.babies <- lm(wt1 ~ ht)

plot(ht, wt1,
     main="4.7 - Babies: Height vs Weight",
     xlab="Height",
     ylab="Weight")
abline(lm.babies, col="red")
dev.off()

par(mfcol=c(2,1))
plot(lm.babies, which=1)
plot(lm.babies, which=2)
dev.off()

summary(lm.babies)

detach(babies)
