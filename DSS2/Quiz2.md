---------------------------------------------------------
### Question 1
Suppose I define the following function in R
<pre><code>

cube <- function(x, n) {
        x^3
}
</code></pre>

What is the result of running `cube(3)` in R after defining this function?

* ***The number 27 is returned***
* A warning is given with no value returned.
* An error is returned because 'n' is not specified in the call to 'cube'
* The users is prompted to specify the value of 'n'.

---------------------------------------------------------

### Question 2

The following code will produce a warning in R.
<pre><code>
x <- 1:10
if(x > 5) {
        x <- 0
}
</code></pre>

Why?
* ***'x' is a vector of length 10 and 'if' can only test a single logical statement.***
* The expression uses curly braces.
* There are no elements in 'x' that are greater than 5
* You cannot set 'x' to be 0 because 'x' is a vector and 0 is a scalar.
* The syntax of this R expression is incorrect.

---------------------------------------------------------

### Question 3
Consider the following function
<pre><code>
f <- function(x) {
        g <- function(y) {
                y + z
        }
        z <- 4
        x + g(x)
}
</code></pre>
If I then run in R
<pre><code>
z <- 10
f(3)
</code></pre>
What value is returned?

* 7
* 4
* ***10***
* 16
 
---------------------------------------------------------

### Question 4

Consider the following expression:
<pre><code>
x <- 5
y <- if(x < 3) {
        NA
} else {
        10
}
</code></pre>

What is the value of 'y' after evaluating this expression?

* 10
* 5
* 3
* NA

---------------------------------------------------------

### Question 5

Consider the following R function

<pre><code>
h <- function(x, y = NULL, d = 3L) {
        z <- cbind(x, d)
        if(!is.null(y))
                z <- z + y
        else
                z <- z + f
        g <- x + y / z
        if(d == 3L)
                return(g)
        g <- g + 10
        g
}
</code></pre>
Which symbol in the above function is a free variable?

* ***f***
* z
* d
* L
* g

---------------------------------------------------------

### Question 6
What is an environment in R?

* a list whose elements are all functions
* ***a collection of symbol/value pairs***
* a special type of function
* an R package that only contains data

---------------------------------------------------------

### Question 7
The R language uses what type of scoping rule for resolving free variables?

* compilation scoping
* ***lexical scoping***
* dynamic scoping
* global scoping


---------------------------------------------------------

### Question 8. 
How are free variables in R functions resolved?

* The values of free variables are searched for in the working directory [Incorrect Response ]

* The values of free variables are searched for in the global environment [Incorrect Response ]

* The values of free variables are searched for in the environment in which the function was called [Incorrect Response ]

* The values of free variables are searched for in the environment in which the function was defined


---------------------------------------------------------
### Question 9. 
What is one of the consequences of the scoping rules used in R?

* R objects cannot be larger than 100 MB

* ***All objects must be stored in memory*** [Correct Response ]

* All objects can be stored on the disk

* Functions cannot be nested



---------------------------------------------------------
### Question 10. 
In R, what is the parent frame?

* It is the environment in which a function was defined [Incorrect Response ]

* It is the package search list

* ***It is the environment in which a function was called***

* It is always the global environment [Incorrect Response ]


#### How are free variables in R functions resolved?

The parent frame of a function evaluation is the environment in which the function was called. It is not necessarily numbered one less than the frame number of the current evaluation, nor is it the environment within which the function was defined.
