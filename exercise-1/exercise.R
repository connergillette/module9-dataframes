# Exercise 1: Creating data frames

# Create a vector of the number of points the Seahawks scored in each game this
# season (google "Seahawks" for the info!)
seahawks.points.for <- c(20, 31, 31, 26, 5, 40, 10, 24, 31, 25, 26, 20) 

# Create a vector of the number of points the Seahwaks have allowed to be scored
# against them in each game this season
seahawks.points.against <- c(25, 25, 24, 15, 5, 7, 38, 3, 34, 23, 6, 36)

# Combine your two vectors into a dataframe
seahawks.points <- data.frame(seahawks.points.for, seahawks.points.against)


# Create a new column "diff" that is the difference in points.
# Hint: recall the syntax for assigning new elements (which in this case will be
# a vector) to a list!
seahawks.points['diff'] <- seahawks.points.for - seahawks.points.against


# Create a new column "won" which is TRUE if the Seahawks won
seahawks.points['won'] <- seahawks.points$seahawks.points.for > seahawks.points$seahawks.points.against


# Create a vector of the opponent names corresponding to the games played
opponent.names <- c('saints', 'bills', 'patriots', 'eagles', 'buccaneers', 'panthers', 'packers', 'rams', 'cardinals', '49ers', 'lions', 'falcons')

# Assign your dataframe rownames of their opponents
seahawks.points['opponent'] <- opponent.names

# View your data frame to see how it has changed!
print(seahawks.points)