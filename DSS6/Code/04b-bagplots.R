# The bagplot(x, y) function in the aplpack package provides a bivariate version of the univariate boxplot. 
# The bag contains 50% of all points. 
# The bivariate median is approximated. 
# The fence separates points in the fence from points outside. 
# Outliers are displayed. 
 
############################################### 

 library(aplpack)
 attach(mtcars)
 bagplot(wt,mpg, xlab="Car Weight", ylab="Miles Per Gallon",   main="Bagplot Example") 
