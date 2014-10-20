# Grubb's Test - R commands and output:

## Input data from the Tietjen and Moore paper.

y = c(199.31,199.53,200.19,200.82,201.92,201.95,202.18,245.57)

## Generate normal probability plot.

qqnorm(y,main="Normal Probability Plot of Mass Spectrometer Measurements")

## Attach "outliers" library and perform Grubbs test for one outlier.
## cran.r-project.org/web/packages/outliers/outliers.pdf
## by L Komsta 

library(outliers)
grubbs.test(y,type=10)


>         Grubbs test for one outlier
>
> data:  y 
> G = 2.4688, U = 0.0049, p-value = 1.501e-07
> alternative hypothesis: highest value 245.57 is an outlier
