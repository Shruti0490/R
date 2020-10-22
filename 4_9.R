## Q 4.9
attach(mtcars)
summary(mtcars)

#  1. names?
names(mtcars)
# [1] "mpg"  "cyl"  "disp" "hp"   "drat" "wt"   "qsec" "vs"   "am"   "gear"
# [11] "carb"

#  2. max mpg?
max(mtcars$mpg)
# [1] 33.9

#  3. and which car is it?
mtcars[mpg==max(mpg),]
#                 mpg cyl disp hp drat    wt qsec vs am gear carb
# Toyota Corolla 33.9   4 71.1 65 4.22 1.835 19.9  1  1    4    1

#  4. list first 5 cars 
mtcars[1:5,]

#  5. Valiant's hp?
mtcars['Valiant',]$hp
# [1] 105

#  6. Merc 450LC?
mtcars['Merc 450SLC',]
#              mpg cyl  disp  hp drat   wt qsec vs am gear carb
# Merc 450SLC 15.2   8 275.8 180 3.07 3.78   18  0  0    3    3

#  7. cyl vs mpg?

plot(cyl, mpg,
     main="4.9 - Cars: cyl vs mpg",
     xlab="Cylinders",
     ylab="MPG")
abline(lm(mpg ~ cyl), col="red")
dev.off()

detach(mtcars)
