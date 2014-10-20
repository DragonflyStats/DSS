## Set sample size.
n=1000

## Generate normal random numbers and perform
## Kolmogorov-Smirnov test.
y1 = rnorm(n, mean = 0, sd = 1)
ks.test(y1,"pnorm")

# >         One-sample Kolmogorov-Smirnov test
# >
# > data:  y1 
# > D = 0.0344, p-value = 0.1874
# > alternative hypothesis: two-sided 


## Generate double exponential random numbers and 
## perform Kolmogorov-Smirnov test.
y2 = ifelse(runif(n) # > 0.5, 1, -1) * rexp(n) 
ks.test(y2,"pnorm")

# >         One-sample Kolmogorov-Smirnov test
# >
# > data:  y2 
# > D = 0.0533, p-value = 0.006883
# > alternative hypothesis: two-sided 


## Generate t (3 degrees of freedom) random 
## numbers and perform Kolmogorov-Smirnov test.
y3 = rt(n, 3)
ks.test(y3,"pnorm")

# >         One-sample Kolmogorov-Smirnov test
# >
# > data:  y3 
# > D = 0.0571, p-value = 0.002961
# > alternative hypothesis: two-sided 


## Generate lognormal random numbers and perform
## Kolmogorov-Smirnov test.
y4 = rlnorm(n, meanlog = 0, sdlog = 1)
ks.test(y4,"pnorm")

# >         One-sample Kolmogorov-Smirnov test
# >
# > data:  y4 
# > D = 0.5442, p-value < 2.2e-16
# > alternative hypothesis: two-sided 




