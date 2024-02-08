#------------> Functions


y<- c(0.234, 2.34653, 0.90112)
percent <- round(x * 100, 1)
result <- paste(percent, "%", sep = "")
print(result)

add.percent <- function(x){
  percent <- round(x * 100, 1)
  result <- paste(percent, "%", sep = "")
  return(result)
}
add.percent(x)
