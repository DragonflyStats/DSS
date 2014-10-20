binom.test(x = 3, n = 4, p=.5, alternative="greater")

# Binomial test
 
 # http://www.instantr.com/2012/11/06/performing-a-binomial-test/
 
# A binomial test compares the number of successes observed in a given number of trials with a hypothesised probability of success.
# The test has the null hypothesis that the real probability of success is equal to some value denoted p, and the alternative
# hypothesis that it is not equal to p. 
# The test can also be performed with a one-sided alternative hypothesis that the real probability of success 
# is either greater than p or that it is less than p.

help(binom.test)


## Conover (1971), p. 97f.
## Under (the assumption of) simple Mendelian inheritance, a cross
##  between plants of two particular genotypes produces progeny 1/4 of
##  which are "dwarf" and 3/4 of which are "giant", respectively.
##  In an experiment to determine if this assumption is reasonable, a
##  cross results in progeny having 243 dwarf and 682 giant plants.
##  If "giant" is taken as success, the null hypothesis is that p =
##  3/4 and the alternative that p != 3/4.
binom.test(c(682, 243), p = 3/4)
binom.test(682, 682 + 243, p = 3/4)   # The same.
## => Data are in agreement with the null hypothesis.

