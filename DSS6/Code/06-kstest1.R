# ecdf: Empirical CDF plot

group1 = c(8.2, 15.6, 9.9, 4.3, 14.6, 9.4, 6.6, 20.2, 13.7, 0.5)
group2 = c(18.0, -3.7, 12.9, -11.8, 4.6, 13.0, 2.7, 5.9, -4.7, 17.0)

plot(ecdf(group1), do.points = FALSE, verticals=T, xlim=c(-11.8, 20.2))
lines(ecdf(group2), lty=3, do.points = FALSE, verticals=T)

ks.test(group1, group2, alternative="two.sided")
