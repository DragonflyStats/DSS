----------------------------------------------------------------------
### question 7. 
What aspect of the R runtime does the profiler keep track of when an R expression is evaluated?

* the working directory

* the package search list

* the global environment

* ***the function call stack*** [Correct Response] 

----------------------------------------------------------------------
### question 8. 
Consider the following R code
<pre><code>
library(datasets)
Rprof()
fit <- lm(y ~ x1 + x2)
Rprof(NULL)
</code></pre>
(Assume that y, x1, and x2 are present in the workspace.) Without running the code, what percentage of the run time is spent in the 'lm' function, based on the 'by.total' method of normalization shown in 'summaryRprof()'?

* 100%

* It is not possible to tell [Incorrect Response ]

* 50%

* 23%


----------------------------------------------------------------------
### question 9. 
When using 'system.time()', what is the user time?

* ***It is the time spent by the CPU evaluating an expression*** [Correct Response] 

* It is the "wall-clock" time it takes to evaluate an expression

* It is a measure of network latency

* It is the time spent by the CPU waiting for other tasks to finish


----------------------------------------------------------------------
### 10. 
If a computer has more than one available processor and R is able to take advantage of that, then which of the following is true when using 'system.time()'?

* ***elapsed time may be smaller than user time*** [Correct Response]

* user time is always smaller than elapsed time

* elapsed time is 0

* user time is 0
