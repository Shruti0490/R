## Q 4.6
data(package="UsingR", emissions)
attach(emissions)

summary(emissions)


plot(perCapita, CO2,
     main="4.6 - Emissions: Per-Capita vs CO2",
     xlab="perCapita",
     ylab="CO2")
abline(lm(CO2 ~ perCapita), 
       col="red", 
       lty=1)



#  1. Guess which country is the sole outlier?
identify(perCapita, CO2, n=1)
#[1] 1

emissions[1,]


abline(lm(emissions[-1]$CO2 ~ emissions[-1]$perCapita),
       col="darkblue", 
       lty=2)
legend("topleft", 
       c("w/ outlier", "w/o outlier"), 
       text.col=c('red', 'darkblue'), 
       col=c("red", "darkblue"), 
       lty=1:2,
       inset=0.05, 
       cex=0.8)
dev.off()

detach(emissions)
