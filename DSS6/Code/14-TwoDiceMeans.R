Dice = 1:6
Means1 = numeric() # Initialize An Empty Vector
Means2 = numeric() # Initialize An Empty Vector
M=10000 # Number of Iterations
for (i in 1:M)
{
Means1=c(Means1, mean(sample(Dice,100,replace=TRUE)))
Means2=c(Means2, mean(sample(Dice,100,replace=TRUE)))
}

plot(Means1, Means2 , pch = ".")
abline(h=3.5,col="red")
abline(v=3.5,col="red")

## Fences

F1 = mean(Means1 -1.96*sd(Means1))
F2 = mean(Means1 +1.96*sd(Means1))
Fa = mean(Means2 -1.96*sd(Means2))
Fb = mean(Means2 +1.96*sd(Means2))

abline(h=Fa,col="green",lty=2)
abline(h=Fb,col="green",lty=2)
abline(v=F1,col="green",lty=2)
abline(v=F2,col="green",lty=2)

## How many between all Fences?

length(which(Means1 < F2 & Means1 > F1))
length(which(Means2 < Fb & Means2 > Fa))

length( which(Means1 < F2 & Means1 > F1 & Means2 < Fb & Means2 > Fa) )




