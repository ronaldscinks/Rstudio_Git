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
my.plot <-function(data2){
  data <- t(data2)
  columns = ncol(data)
  if (is.null(nrow(data))){
    rows <- 1
    data_names <- names(data)
  } else {
      rows <- nrow(data)
      data_names <- colnames(data)
    }

  colors = c("red", "blue", "green", "yellow", 
               "orange", "pink", "black","violet", "lightblue", "brown")
  shapes = c(15, 16,17,18,24,25,1, 2, 0, 23)
  
  matplot(data, type = "b", pch = shapes,
        col = colors, 
        lty = 1, lwd = 2,
        xlab = "Season",ylab = deparse(substitute(data2)),
        xaxt = "n")
axis(1, at = 1:rows, labels = rownames(data))
legend("topleft", inset = 0.01, legend = data_names, 
       col = colors, 
       pch = shapes,
       lwd = 2)

title(main = "NBA player statistics", 
      col.main = "green")
}   

my.plot(Salary)

### Task nr.1 
# write a function that returns TRUE if it is an even number 
# if not not an even number it should return FALSE
# HINT - use the modulo operator: %%
# 1.2 add a parameter by which it would be possible to change the return value
# from TRUE/FALSE to "even"/"odd"

check.even <- function(x, output = 1){
  if (output == 1){
  x%%2 == 0
  } else if (output == 2) {
    if (x%%2 == 0){
      "even"
    } else {
      "odd"
    }
  } else{
    "output = 1 returns TRUE/FALSE; output = 2 returns even/odd"
  }
}


