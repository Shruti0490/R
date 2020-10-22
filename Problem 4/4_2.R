## Q 4.2

library(MASS)
data(package='MASS')
attach(UScereal)
summary(UScereal)
df <- UScereal


#  1. The relationship between manufacturer and shelf
#     both are CATEGORIES

barplot(table(df$shelf, df$mfr), 
        main="4.2 - Manufacturer & Shelf",
        xlab="Manufacturer",
        ylab="Shelf",
        col=rainbow(3),
        legend=T)
dev.off()



#  2. The relationship between fat and vitamins
#     fat is NUMERICAL, vitamins are CATEGORICAL

boxplot(fat ~ vitamins,
        main="4.2 - Vitamins & Fat",
        xlab="Vitamins",
        ylab="Fat")
dev.off()


#  3. the relationship between fat and shelf
#     fat is NUMERICAL, shelf if CATEGORICAL

boxplot(fat ~ shelf,
        main="4.2 - Shelf & Fat",
        xlab="Shelf",
        ylab="Fat")
dev.off()


#  4. the relationship between carbohydrates and sugars
#     both carbo and sugars are NUMERICAL, and possibly
#     with correlation?
#     plotting points and linear fit attempt to see
#     if there is a relation...

plot(carbo, sugars,
     main="4.2 - Carbo & Sugars",
     xlab="Carbo",
     ylab="Sugars")
lm <- lm(sugars ~ carbo)
abline(lm, col="red")
dev.off()


#  5. the relationship between fibre and manufacturer
#      mfr is CATEGORICAL, fibre is NUMERICAL

boxplot(fibre ~ mfr,
        main="4.2 - Mfr & Fibre",
        xlab="Mfr",
        ylab="Fibre")
dev.off()


#  6. the relationship between sodium and sugars
#     sodium and sugars are both NUMERICAL
#     plotting points and linear fit to see if there
#     is some relation

plot(sugars, sodium,
     main="4.2 - Sugars & Sodium",
     xlab="Sugars",
     ylab="Sodium")
lm <- lm(sodium ~ sugars)
abline(lm, col="red")
dev.off()


detach(UScereal)
