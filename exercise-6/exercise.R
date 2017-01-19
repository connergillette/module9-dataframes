# Exercise 6: Husky Football 2015 Season
# Read in the Husky Football 2015 game data into a variable called `husky.games.2015`
husky.games.2015 <- read.csv('data/huskies_2015.csv', stringsAsFactors = FALSE)

# Create a vector of the teams that the Huskies played against during that season
opponents <- husky.games.2015$opponent

# Create a vector of the their final scores for the games
# Call this variable `husky.scores`
husky.scores <- husky.games.2015$uw_score


# Create 2 variables called `rushing.yards` and `passing.yards` to represent the yards the Huskies rushed and passed
rushing.yards <- husky.games.2015$rushing_yards
passing.yards <- husky.games.2015$passing_yards

# Create a variable called `combined.yards` that is the total yardage of the Huskies for each game
combined.yards <- rushing.yards + passing.yards
husky.games.2015['combined_yards'] <- combined.yards

print(husky.games.2015)

# What is the score of the game where the Huskies had the most combined yards?
max_yards <- husky.games.2015[husky.games.2015$combined_yards == max(husky.games.2015$combined_yards), ]
print(paste(max_yards$uw_score, '-', max_yards$opponent_score))

# Define a function `MostYardsScore` that takes in an argument `games` (a data frame) and
# returns a descriptive sentence about the game that was played that had the most yards scored in it.
MostYardsScore <- function(games){
  max_yards <- games[games$combined_yards == max(games$combined_yards), ]
  description <- paste('UW scored', max_yards$uw_score, 'points and', max_yards$opponent, 'scored', max_yards$opponent_score, 'points.')
  if(max_yards$uw_win == TRUE){
    description <- paste(description, 'UW won.')
  }else{
    description <- paste(description, 'UW lost.')
  }
            
  
  return(description)
}

print(MostYardsScore(husky.games.2015))

# What was the highest yardage game so far this season?
# Hint: Read in the dataset titled `huskies_2016.csv` and save it as a variable
husky.games.2016 <- read.csv('data/huskies_2016.csv', stringsAsFactors = FALSE)

rushing.yards.2016 <- husky.games.2016$rushing_yards
passing.yards.2016 <- husky.games.2016$passing_yards

combined.yards.2016 <- rushing.yards.2016 + passing.yards.2016
husky.games.2016['combined_yards.2016'] <- combined.yards.2016

print(husky.games.2016[husky.games.2016$combined_yards.2016 == max(husky.games.2016$combined_yards.2016), ])