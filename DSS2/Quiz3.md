Week 3 Quiz Help

#### Question 1

Take a look at the 'iris' dataset that comes with R. The data can be loaded with the code:

library(datasets)
data(iris)
A description of the dataset can be found by running
?iris
There will be an object called 'iris' in your workspace. In this dataset, what is the mean of 'Sepal.Length' for the species virginica? (Please only enter the numeric result and nothing else.)

Answer for Question 1

#### Question 2
Continuing with the 'iris' dataset from the previous Question, what R code returns a vector of the means of the variables 'Sepal.Length', 'Sepal.Width', 'Petal.Length', and 'Petal.Width'?
colMeans(iris)
apply(iris, 2, mean)
apply(iris[, 1:4], 1, mean)
apply(iris[, 1:4], 2, mean)

#### Question 3

Load the 'mtcars' dataset in R with the following code
library(datasets)
data(mtcars)
There will be an object names 'mtcars' in your workspace. You can find some information about the dataset by running
?mtcars
How can one calculate the average miles per gallon (mpg) by number of cylinders in the car (cyl)?
sapply(split(mtcars$mpg, mtcars$cyl), mean)
split(mtcars, mtcars$cyl)
lapply(mtcars, mean)
tapply(mtcars$cyl, mtcars$mpg, mean)
#### Question 4
Continuing with the 'mtcars' dataset from the previous Question, what is the absolute difference between the average horsepower of 4-cylinder cars and the average horsepower of 8-cylinder cars?
Answer for Question 4

#### Question 5
If you run
debug(ls)
what happens when you next call the 'ls' function?
Execution of the 'ls' function will suspend at the 4th line of the function and you will be in the browser.
You will be prompted to specify at which line of the function you would like to suspend execution and enter the browser.
Execution of 'ls' will suspend at the beginning of the function and you will be in the browser.
The 'ls' function will execute as usual.
In accordance with the Coursera Honor Code, I (Kevin O'Brien) certify that the answers here are my own work.
       
