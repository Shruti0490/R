## Q 5.6
data(package='UsingR', babies)
summary(babies)

attach(babies)
pairs(babies)
dev.off()

#  ... now, looking at this pair-wise comparison, 
#      which seem to have a linear relation?

plot(parity, age, 
     main="5.6 - babies: Linear Relations?")
abline(lm(age ~ parity), col='red')
dev.off()

plot(age, dage, 
     main="5.6 - babies: Linear Relations?")
abline(lm(dage ~ age), col='red')
dev.off()

plot(wt ~ gestation, 
     main="5.6 - babies: gestation vs weight")
rect(par("usr")[1],par("usr")[3],par("usr")[2],par("usr")[4],col = "gray")
tmp = levels(factor(smoke))
points(wt ~ gestation, 
       pch=smoke, 
       col=heat.colors(n=length(tmp)))
legend(locator(1), 
       title="Factor: smoke",
       cex=0.8,
       legend=tmp, 
       pch=smoke, 
       col=heat.colors(n=length(tmp)),
       horiz=T)

dev.off()
