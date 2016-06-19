Week 1 Quiz
================================


Correct
------------------------------------------------------------------
1. 
The R language is a dialect of which of the following programming languages?

S
Correct Response 
R is a dialect of the S language which was developed at Bell Labs.

Lisp

Scheme

Fortran

Correct
------------------------------------------------------------------
2. 
The definition of free software consists of four freedoms (freedoms 0 through 3). Which of the following is NOT one of the freedoms that are part of the definition? Select all that apply.

The freedom to run the program, for any purpose.
Correct Response 
This is freedom 0.

The freedom to prevent users from using the software for undesirable purposes.
Correct Response 
This is not part of the free software definition. Freedom 0 requires that the users of free software be free to use the software for any purpose.

The freedom to redistribute copies so you can help your neighbor.
Correct Response 
This is freedom 2.

The freedom to sell the software for any price.
Correct Response 
This is not part of the free software definition. The free software definition does not mention anything about selling software (although it does not disallow it).

The freedom to study how the program works, and adapt it to your needs.
Correct Response 
This is freedom 1.

The freedom to restrict access to the source code for the software.
Correct Response 
This is not part of the free software definition. Freedoms 1 and 3 require access to the source code.

The freedom to improve the program, and release your improvements to the public, so that the whole community benefits.
Correct Response 
This is freedom 3.

Correct
------------------------------------------------------------------
3. 
In R the following are all atomic data types EXCEPT: (Select all that apply)

numeric
Correct Response 

data frame
Correct Response 
'data frame' is not an atomic data type in R.

matrix
Correct Response 
'matrix' is not an atomic data type in R.

logical
Correct Response 

character
Correct Response 

array
Correct Response 
'array' is not an atomic data type in R.

list
Correct Response 
'list' is not an atomic data type in R.

integer
Correct Response 

complex
Correct Response 

table
Correct Response 
'table' is not an atomic data type in R.

Correct
------------------------------------------------------------------
#### Question 4. 
If I execute the expression x <- 4L in R, what is the class of the object `x' as determined by the `class()' function?

integer
Correct Response 
The 'L' suffix creates an integer vector as opposed to a numeric vector.

numeric

logical

complex

character

matrix

Correct
------------------------------------------------------------------
#### Question 5. 
What is the class of the object defined by x <- c(4, TRUE)?

matrix

character

logical

list

numeric
Correct Response 
The numeric class is the "lowest common denominator" here and so all elements will be coerced into that class.

integer

Correct
------------------------------------------------------------------
#### Question  6. 
If I have two vectors x <- c(1,3, 5) and y <- c(3, 2, 10), what is produced by the expression cbind(x, y)?

a matrix with 2 columns and 3 rows
Correct Response 
The 'cbind' function treats vectors as if they were columns of a matrix. It then takes those vectors and binds them together column-wise to create a matrix.

a vector of length 2

a vector of length 3

a 2 by 3 matrix

a 2 by 2 matrix

a 3 by 3 matrix

Correct
------------------------------------------------------------------
#### Question 7. 
A key property of vectors in R is that

elements of a vector can only be character or numeric

elements of a vector can be of different classes

elements of a vector all must be of the same class
Correct Response 

the length of a vector must be less than 32,768

a vector cannot have have attributes like dimensions

-----------------------------------------------------------------
#### Question 8. 
Suppose I have a list defined as x <- list(2, "a", "b", TRUE). What does x[[1]] give me? Select all that apply.

a numeric vector containing the element 2.[CORRECT]
Incorrect Response 

a numeric vector of length 1.[CORRECT]
Incorrect Response 

a character vector containing the element "2".[INCORRECT]
Incorrect Response 

a list containing the number 2.
Correct Response 

a list containing the letter "a".
Correct Response 

Correct
------------------------------------------------------------------
#### Question  9. 
Suppose I have a vector x <- 1:4 and a vector y <- 2. What is produced by the expression x + y?

a numeric vector with elements 3, 4, 5, 6.
Correct Response 

an integer vector with elements 3, 2, 3, 6.

a numeric vector with elements 3, 2, 3, 4.

a numeric vector with elements 1, 2, 3, 6.

a numeric vector with elements 3, 2, 3, 6.

an integer vector with elements 3, 2, 3, 4.

Correct
------------------------------------------------------------------
#### Question 10. 
Suppose I have a vector x <- c(3, 5, 1, 10, 12, 6) and I want to set all elements of this vector that are less than 6 to be equal to zero. What R code achieves this? Select all that apply.

x[x == 0] <- 6
Correct Response 
This sets all the elements that are equal to 0 to be 6.

x[x <= 5] <- 0
Correct Response 
You can create a logical vector with the expression x <= 5 and then use the [ operator to subset the original vector x.

x[x >= 6] <- 0
Correct Response 
This sets all the elements greater than or equal to 6 to be zero.

x[x > 0] <- 6
Correct Response 
This sets all the elements greater than 0 to be equal to 6.

x[x < 6] == 0
Correct Response 
This takes the elements of x that are less than 6 and tests whether they are equal to 0 or not.

x[x > 6] <- 0
Correct Response 
This sets all the elements *greater* than 6 to be zero.

x[x == 6] <- 0
Correct Response 
This sets all the elements that are equal to 6 to be 0.

x[x == 0] < 6
Correct Response 
This takes the elements of x that are equal to 0 and tests whether they are less than 6 or not.

x[x < 6] <- 0
Correct Response 
You can create a logical vector with the expression x < 6 and then use the [ operator to subset the original vector x.

x[x != 6] <- 0
Correct Response 
This sets all the elements not equal 6 to be zero.

x[x %in% 1:5] <- 0
Correct Response 
You can create a logical vector with the expression x %in% 1:5 and then use the [ operator to subset the original vector x.

Correct
------------------------------------------------------------------
#### Question  11. 
Use the Week 1 Quiz Data Set to answer questions 11-20.

In the dataset provided for this Quiz, what are the column names of the dataset?

Month, Day, Temp, Wind

Ozone, Solar.R, Wind, Temp, Month, Day
Correct Response 
You can get the column names of a data frame with the `names()' function.

Ozone, Solar.R, Wind

1, 2, 3, 4, 5, 6

Correct
------------------------------------------------------------------
12. 
Extract the first 2 rows of the data frame and print them to the console. What does the output look like?



1
2
3
  Ozone Solar.R Wind Temp Month Day
1     9      24 10.9   71     9  14
2    18     131  8.0   76     9  29



1
2
3
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2
Correct Response 
You can extract the first two rows using the [ operator and an integer sequence to index the rows.



1
2
3
  Ozone Solar.R Wind Temp Month Day
1     7      NA  6.9   74     5  11
2    35     274 10.3   82     7  17



1
2
3
  Ozone Solar.R Wind Temp Month Day
1    18     224 13.8   67     9  17
2    NA     258  9.7   81     7  22

Correct
------------------------------------------------------------------
13. 
How many observations (i.e. rows) are in this data frame?

160

45

153
Correct Response 
You can use the `nrows()' function to compute the number of rows in a data frame.

129

Correct
------------------------------------------------------------------
14. 
Extract the last 2 rows of the data frame and print them to the console. What does the output look like?



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    31     244 10.9   78     8  19
153    29     127  9.7   82     6   7



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    34     307 12.0   66     5  17
153    13      27 10.3   76     9  18



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30
Correct Response 
The `tail()' function is an easy way to extract the last few elements of an R object.



1
2
3
    Ozone Solar.R Wind Temp Month Day
152    11      44  9.7   62     5  20
153   108     223  8.0   85     7  25

Correct
------------------------------------------------------------------
15. 
What is the value of Ozone in the 47th row?

63

34

18

21
Correct Response 
The single bracket [ operator can be used to extract individual rows of a data frame.

Correct
------------------------------------------------------------------
16. 
How many missing values are in the Ozone column of this data frame?

43

78

37
Correct Response 
The `is.na' function can be used to test for missing values.

9

Correct
------------------------------------------------------------------
17. 
What is the mean of the Ozone column in this dataset? Exclude missing values (coded as NA) from this calculation.

42.1
Correct Response 
The `mean' function can be used to calculate the mean.

18.0

53.2

31.5

Correct
------------------------------------------------------------------
18. 
Extract the subset of rows of the data frame where Ozone values are above 31 and Temp values are above 90. What is the mean of Solar.R in this subset?

212.8
Correct Response 
You need to construct a logical vector in R to match the question's requirements. Then use that logical vector to subset the data frame.

185.9

205.0

334.0

Correct
------------------------------------------------------------------
19. 
What is the mean of "Temp" when "Month" is equal to 6?

79.1
Correct Response 

85.6

90.2

75.3

Correct
------------------------------------------------------------------
#### 20. 
What was the maximum ozone value in the month of May (i.e. Month is equal to 5)?

115
Correct Response 

18

97

100


