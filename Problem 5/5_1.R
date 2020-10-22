## Q 5.1
data(package="UsingR", emissions)
summary(emissions)

attach(emissions)
plot(GDP, CO2,
     main="5.1 - emissions, w/ outlier")

identify(locator(1), n=1)
#[1] 1
dev.off()

plot(GDP[-1], CO2[-1],
     main="5.1 - emissions w/out outlier")
dev.off()
detach(emissions)
