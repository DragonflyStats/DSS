library(MASS)       # load the MASS package 
tbl = table(survey$Smoke, survey$Exer) 
tbl                 # the contingency table 

chisq.test(tbl) 

 
