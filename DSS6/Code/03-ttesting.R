## The t.test( ) function produces a variety of t-tests. 
## Unlike most statistical packages, the default assumes unequal variance and applies the Welsh df modification.

# independent 2-group t-test
 t.test(y~x)      # where y is numeric and x is a binary factor 

# independent 2-group t-test
 t.test(y1,y2)      # where y1 and y2 are numeric 

# paired t-test
 t.test(y1,y2,paired=TRUE)    # where y1 & y2 are numeric 

# one sample t-test
 t.test(y,mu=3)     # Ho: mu=3 
