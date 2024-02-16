#------------> Functions


x<- c(0.234, 0.234653, 0.90112)
percent <- round(x * 100, 1)
result <- paste(percent, "%", sep = "")
print(result)

####
add.percent <- function(x){
  if (!is.numeric(x)) return(NULL)
  percent <- round(x * 100, 1)
  percent <- paste(percent, "%", sep = "")
  return(percent)
}

add.percent(x)

####---> the function will save the percent as an object, but without
# return will not show an output
add.percent <- function(x){
  if (!is.numeric(x)) return(NULL)
  percent <- round(x * 100, 1)
  paste(percent, "%", sep = "")
}

f <- add.percent(x)
f
print(add.percent(x))

### we can add default values, that can be changed
add.percent <- function(x, sign = "%", mult = 100){
  if (!is.numeric(x)) return(NULL)
  percent <- round(x * mult, 1)
  paste(percent, sign, sep = "")
}
percentages <- c(23.4, 23.4653, 90.112)
add.percent(y)


####### Example
my.plot <- function(mydata,players = 1:10, years = 1:10 ){
  
  matplot(t(mydata[players,years, drop = F]), type= "b", pch= 15:18, col=c(1:4,6) )
  legend("bottomright", inset=0.01, legend = Players[players], col = c(1:4,6), pch=15:18, horiz = F, ncol = round(length(players)/2,0), cex = 0.6)
}
### Task nr. 1 
## using the above my.plot function plot the following:
#(1) points per game (points/games)
#(2) accuracy (fieldgoals/fieldgoal attempts) for the top five players
#(3) minutes played for the top five players for the last 5 seasons (2009-2014)




### Task nr.2
# write a function that returns TRUE if it is an even number 
# if not not an even number it should return FALSE
# HINT - use the modulo operator: %%
# 1.2 add a parameter by which it would be possible to change the return value
# from TRUE/FALSE to "even"/"odd"



