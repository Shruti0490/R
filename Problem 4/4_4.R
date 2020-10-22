## Q 4.4
data(package='UsingR', homedata)
attach(homedata)

summary(homedata)



#  1. plot indicates a strong correlation 
#     linear model fits well
#     there are some outliers, but neglible
#     outliers may be luxury homes in trending 
#     neighborhoods?

plot(y1970, y2000,
     main="4.4 - Home Prices: 1970 & 2000",
     xlab="1970",
     ylab="2000")
lm.c <- lm(y2000 ~ y1970)
abline(lm.c, col="red")
dev.off()

summary(lm.c)



#  2. predict price home selling for 75000 in 1970
b <- coef(lm.c)[[1]]
b
m <- coef(lm.c)[[2]]
m
predicted.price <- 75000*m + b
predicted.price
#[1] 290343.2

detach(homedata)
