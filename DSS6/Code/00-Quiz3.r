## Quiz 3.
# Prob 1.

x.bar <- 1100
s <- 30
n <- 9
alpha <- 0.05
t.s <- qt(1 - alpha / 2, n - 1) # 2.306004
round(x.bar + c(-1, 1) * t.s * (s / sqrt(n)) )

# 1077 1123

###########################################
# Prob 2.
x.bar <- -2
n <- 9
alpha <- 0.05

t.s <- qt(1 - alpha / 2, n - 1) 
# 2.306004

s <- -x.bar*sqrt(n) / t.s
s # 2.601903

###########################################
# Prob 3.
# Independent tests: not related participants
# Paired tests: related participants, same group uses 2 different tests
# A paired interval.

###########################################
# Prob 4.
n.x <- 10
n.y <- 10
x.bar <- 5 # old.system
y.bar <- 3 # new.system
var.x <- 0.6
var.y <- 0.68
alpha <- 0.05
sp.2 <- ((n.x - 1)*var.x + (n.y - 1)*var.y) / (n.x + n.y - 2)
sp <- sqrt(sp.2)
t.s <- qt(1 - (alpha/2), n.x + n.y - 2)
round((y.bar - x.bar) + c(-1, 1) * t.s * sp * (sqrt(1/n.x + 1/n.y)), 2)

# -2.75 -1.25

###########################################
# Prob 5.
# 90% confidence interval gives a lower t-value then 95% confidence interval. 
# Therefore The interval will be narrower.

###########################################
# Prob 6.
n.x <- 100
n.y <- 100
x.bar <- 6
y.bar <- 4
s.x <- 2
s.y <- 0.5
alpha <- 0.05
sp.2 <- ((n.x - 1)*s.x^2 + (n.y - 1)*s.y^2) / (n.x + n.y - 2)
sp <- sqrt(sp.2)
t.s <- qt(1 - (alpha/2), n.x + n.y - 2)
round((x.bar - y.bar) + c(-1, 1) * t.s * sp * (sqrt(1/n.x + 1/n.y)), 2)

# 1.59 2.41 
# Therefore The new system appears to be effective. 

###########################################
# Prob 7.
n.x <- 9
n.y <- 9
x.bar <- -3
y.bar <- 1
s.x <- 1.5
s.y <- 1.8
alpha <- 0.1
sp.2 <- ((n.x - 1)*s.x^2 + (n.y - 1)*s.y^2) / (n.x + n.y - 2)
sp <- sqrt(sp.2)
t.s <- qt(1 - (alpha/2), n.x + n.y - 2)
round((x.bar - y.bar) + c(-1, 1) * t.s * sp * (sqrt(1/n.x + 1/n.y)), 3)
# -5.364 -2.636

###########################################
# Prob 8.
# Discrete distribution with an unknown parameter: MLE gives 
# the value of the parameter that makes the observed data most probable given
# the model.

###########################################
# Prob 9.
# Bayesian inference: posterior is direct propotion to likelihood*prior
