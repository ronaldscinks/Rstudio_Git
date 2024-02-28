#ggplot2

#install only if you have not installed it before
install.packages("ggplot2")

#load the package everytime when you start a new session
library(ggplot2)

# load the movies data set into R studio

movies <- read.csv("Movie-Ratings.csv")


# change the column names to shorter 

names(movies)[c(3:6)] <- c("rotten_tomatos", "ratings", "budget", "year")

#change the necessary variables to factors
movies$Genre <- as.factor(movies$Genre)
movies$year <- as.factor(movies$year)

summary(movies)

# What will we use?
ggplot(data = movies, aes(budget, Genre, fill = Genre))+
  geom_boxplot()

ggplot(movies, aes(ratings, rotten_tomatos)) + 
  geom_point(aes(size = budget))



# What will we use?# What will we use?
ggplot(data = mov, aes(x = , y = ))

# Adding Geometry -------------------------------------
# What will we use?
ggplot(data = , aes(x = , y = )) + geom_----()


?geom_abline()

# Improving our plot ----------------------------------
# Adding Color:
ggplot(data = , aes(x = , y = , color = )) + geom_----()


# Sizing:
ggplot(data = , aes(x = , y = , color = , size = )) + geom_----()

# This will be the CEO chart (to be improved)!


