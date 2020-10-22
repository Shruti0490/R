## Q 4.5
data(package='UsingR', 'florida')
attach(florida)

names(florida)

summary(florida)



#  1. use the simple.lm function in the UsingR package to plot
#     and locate those 2 outliers...
library(UsingR)
simple.lm(BUSH,BUCHANAN)

BUSH[13]
# [1] 289456

BUCHANAN[13]
# [1] 561

BUSH[50]
# [1] 152846

BUCHANAN[50]
# [1] 3407

florida[13,]

florida[50,]

df <- florida[(County!='DADE' & County!='PALM BEACH'),]
simple.lm(df$BUSH, df$BUCHANAN, pred=BUSH[50])


plot(BUSH, BUCHANAN,
     main="4.5 - Florida: Bush vs Buchanan",
     xlab="Bush",
     ylab="Buchanan")
abline(lm(BUCHANAN ~ BUSH), 
       col="red", 
       lty=1)
abline(lm(df$BUCHANAN ~ df$BUSH), 
       col="darkblue", 
       lty=2)
legend("topright", 
       c("w/ outliers", "w/o outliers"), 
       text.col=c('red', 'darkblue'), 
       col=c("red", "darkblue"), 
       lty=1:2,
       inset=0.05, 
       cex=0.8)
dev.off()


detach(florida)
