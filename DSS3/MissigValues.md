
## Missing Values
- The value `NA` is used to represent missing values for input in R.
- An NA can be assigned to a variable directly
to create a missing value, but to test for missing values, the function is.na must be used.
R propogates missing values throughout computations, so often computations performed on data containing
missing values will result in more missing values. 
- Some of the basic statistical functions (like `mean,
min, max`, etc.) have an argument called `na.rm`, which, if set to `TRUE`, will remove the `NA`s from your data
before calculations are performed. 


- In addition, the statistical modeling functions (like `aov`, `glm`, `loess`,
etc.) provide an argument called `na.action`. 
- This argument can be set to a function which will be called to
operate on the data before it is processed. 

## Missing Values 
- One very useful choice for the `na.action` argument is `na.omit`.
- This function (which can be called idependently of the statistical modelling functions) will remove all the
rows of a data frame or matrix which contain any missing values.
