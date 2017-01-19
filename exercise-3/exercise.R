# Load R's "USPersonalExpenditure" dataset using the "data()" function
# This will produce a data frame called `USPersonalExpenditure`
data("USPersonalExpenditure")


# The variable USPersonalExpenditure is now accessible to you. Unfortunately,
# it's not a data frame (it's actually what is called a matrix)
# Test this using the `is.data.frame()` function
print(is.data.frame(USPersonalExpenditure))

# Luckily, you can simply pass the USPersonalExpenditure variable as an argument
# to the `data.frame()` function to convert it a data farm. Do this, storing the
# result in a new variable
expend <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
print(colnames(expend))

# Why are they so strange? Think about whether you could use a number like 1940
# with dollar notation!

# What are the row names of your dataframe?
print(rownames(expend))

# Create a column "category" that is equal to your rownames
expend$category <- c(rownames(expend))
#View(expend)

# How much money was spent on personal care in 1940?
print(expend$X1940[expend$category == 'Personal Care'])

# How much money was spent on Food and Tobacco in 1960?
print(expend$X1960[expend$category == 'Food and Tobacco'])


# What was the highest expenditure category in 1960?
# Hint: use the `max()` function to find the largest, then compare that to the column
print(expend$X1960[expend$X1960 == max(expend$X1960)])


# Define a function `DetectHighest` that takes in a year as a parameter, and
# returns the highest spending category of that year
DetectHighest <- function(year){
  return(expend$category[expend[year]== max(expend[year])])
}

# Using your function, determine the highest spending category of each year

print(DetectHighest('X1945'))


