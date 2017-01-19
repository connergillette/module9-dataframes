# Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee 100)
# Hint: use the `paste()` function to produce the list
employees <- paste('Employee', 1:100)

# Create a vector of 100 random salaries for the year 2014
# Use the `runif()` function to pick a random number between 40000 and 50000
salaries.old <- runif(100, 40000, 50000)

# Create a vector of 100 salaries in 2015 that have increased from 2014 by some amount
# Hint: use `runif()` to add a random number to 2014's salaries. Starting from a
# _negative_ number so that salaries may decrease!
salaries.new <- salaries.old + runif(100, -5000, 10000)

# Create a data.frame 'salaries' by combining the 3 vectors you just made
# Remember to set `stringsAsFactors=FALSE`!
salaries <- data.frame(employees, salaries.old, salaries.new, stringsAsFactors = FALSE)

# Create a column 'raise' that stores the size of the raise between 2014 and 2015
salaries['raise'] <- salaries$salaries.new - salaries$salaries.old

# Create a column 'got.raise' that is TRUE if the person got a raise
salaries['got.raise'] <- salaries$raise > 0


### Retrieve values from your data frame to answer the following questions
### Note that you should get the value as specific as possible (e.g., a single
### cell rather than the whole row!)


# What was the 2015 salary of employee 57
print(salaries[57, 'salaries.new'])

# How many employees got a raise?
got.raise.count <- salaries['got.raise']
got.raise.count <- length(got.raise.count[got.raise.count == TRUE])

print(got.raise.count)

# What was the value of the highest raise?
print(max(salaries['raise']))


# What was the "name" of the employee who received the highest raise?
print(salaries[salaries$raise == max(salaries$raise), 'employees'])
#                         ^^ row selector               ^^ column selector

# What was the largest decrease in salaries between the two years?
print(min(salaries['raise']))

# What was the name of the employee who recieved largest decrease in salary?
print(salaries[salaries$raise == min(salaries$raise), 'employees'])

# What was the average salary increase?
print(mean(salaries$raise[salaries$raise > 0]))

### Bonus ###

# Write a .csv file of your salaries to your working directory
write.csv(salaries, 'data/salaries.csv')

# For people who did not get a raise, how much money did they lose?


# Is that what you expected them to lose based on how you generated their salaries?
