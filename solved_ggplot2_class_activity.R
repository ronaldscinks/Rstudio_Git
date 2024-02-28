#install ggplot2 only if you have not installed it before
install.packages("ggplot2")

#load the package every time when you start a new session
library(ggplot2)

# load the movies data set into R studio

movies <- read.csv("Movie-Ratings.csv")


# change the column names to shorter 

names(movies)[c(3:6)] <- c("rotten_tomatos", "ratings", "budget", "year")

#change the necessary variables to factors
movies$Genre <- as.factor(movies$Genre)
movies$year <- as.factor(movies$year)

summary(movies)

# 1. make a boxplot for budget by movie genre
ggplot(data = movies, aes(budget, 
                          reorder(Genre, budget, decreasing = T)))+
  geom_boxplot(outlier.alpha = 0.2, aes(fill = Genre)) +
  xlab('Budget')+
  ylab("Genre")+
  labs(title = "Budget by movie Genre")+
  theme_classic() +
  theme(legend.position = "none")

# 2. create a scatterplot for ciritics ratings(rotten tomatos) and
# Viewer ratings faceted by year
ggplot(movies, aes(ratings, rotten_tomatos)) + 
  geom_smooth(se = FALSE, color = "darkred")+
  geom_point(aes(color = year)) +
  ylab("Critics ratings") +
  xlab("Viewer ratings")+
  facet_wrap(vars(year))+
  theme(legend.position = "none")

# 3. create a bar chart for each year with counts of movies in each genre

ggplot(movies, aes(x = year, fill = Genre))+
  geom_bar(stat = "count", position = "dodge")+
  ylab("Number of movies")+
  xlab("Year")+
  labs(title = "The number of movies by Genre across years")

# 4. create a scatter plot with ratings and budget,
# across different genres and budget

ggplot(movies, aes(x = budget,  
                   y = ratings, 
                   color = Genre))+
  geom_point(aes(size = budget)) + 
  theme_classic()

# 5. first create a new data frame that has avarage 
# ratings for different years and genres.
# then plot it with a line plot so that each genre has its own line
# the y axis displays rating and x axis the year

yearly_ratings <- aggregate(movies$ratings, by = list(movies$Genre, movies$year), FUN = mean)
names(yearly_ratings) <- c("genre", "year", "rating")

ggplot(yearly_ratings, 
       aes(year,rating, 
           group = genre, 
           color = genre))+
  geom_point() + geom_line(linewidth = 1)





