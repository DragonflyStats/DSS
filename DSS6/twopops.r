set.seed(2345)
p=runif(1)  

rbinom(60000,1,p) ->  Pop.M
rbinom(60000,1,p) ->  Pop.F

table(Pop.M)
table(Pop.F)


Samp1.M = sample(Pop.M,200)
Samp1.F = sample(Pop.F,200)

table(Samp1.M)
table(Samp1.F)


Samp2.M = sample(Pop.M,200)
Samp2.F = sample(Pop.F,200)

table(Samp2.M)
table(Samp2.F)
