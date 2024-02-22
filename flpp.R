library("psych")
library(corrr)
library(tidyverse)
library(corrtable)

original <- read.csv(file.choose())
View(original)




original$rand <- sample(1:10,nrow(original), TRUE)
table(original$rand)
filter <- original$rand > 2

x <- original[filter, 2:(ncol(original)-1)] 

correlation_matrix(x, digits = 2, use = lower, replace_diagonal = TRUE, )
save_correlation_matrix(df = x, 
                        filename = "simulation_correlations_3",
                        digits = 2,
                        use = "lower",
                        replace_diagonal = TRUE)

