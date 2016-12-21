# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)

marbles<-c('green', 'blue', 'yellow', 'red', 'orange', 'purple')

# Use the `sample` function to select a single marble

sample(marbles,1)


# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)

MarbleGame <- function (x){
  marbles<-c('green', 'blue', 'yellow', 'red', 'orange', 'purple')
  y<-sample(marbles,1)
  
  if(y == x){
    print("Congratulations! You guessed the correct color!")
    p<-T
  }
  else{
    print("Nope! Try again!")
    p<-F
  }
  return(p)
}

# Play the marble game!


# Bonus: Play the marble game until you win, keeping track of how many tries you take

not.won<-T
count<-0
while(not.won){
  
  p<-MarbleGame("green")
  count <- count+1
  if(p){
    not.won <- F
  }
}
count


## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability

when.won<-seq(1,1000)

for(i in 1:1000){
not.won<-T
count<-0
  while(not.won){
  
    p<-MarbleGame("green")
    count <- count+1
    if(p){
      not.won <- F
    }
  }
when.won[i] <- count
}

mean(when.won)
