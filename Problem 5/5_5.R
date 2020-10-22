## Q 5.5
data(package='UsingR', carbon)
summary(carbon)

attach(carbon)

boxplot(Monoxide ~ Site, main="5.5 - Monoxide by Site")
dev.off()
detach(carbon)
#  Site 2 seems to have clearly higher levels than the
#  other 2, which are both at the same level
