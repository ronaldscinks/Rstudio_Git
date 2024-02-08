# Plots

?islands     # built in vector of the areas in thousands of square miles 
# of the landmasses which exceed 10,000 square miles.

# the following subsets the islands vector to ten largest landmasses 
# decreasing order
largest_islands <- head(sort(islands, decreasing = TRUE), 10)


plot(largest_islands)

# main = " "  <- adds a title
plot(largest_islands, main = "Land area of continents and islands")

# until we put the closing parenthesis R is going to know that the
# function will continue, so we can put code in another row for readability)
# the ylab <- parameter can be used to override the y axis label
plot(largest_islands, main = "Land area of continents and islands",
     ylab = "Land area in  square miles")

# adds text labels to a plot
# pos = 1/2/3/4 <- position from the coordinates
# 1 - below; 2 - to the left; 3 - above; 4 - to the right
text(largest_islands, labels = names(largest_islands), pos = 3)

text(largest_islands[1], labels = names(largest_islands[1]), pos = 1)


# to change the shape and the color of the points use points() function
# where points(data, col = color, pch = shape)
# pch = 19 - solid circle; pch = 20 bullet; pch = 21 filled circle; 
# pch = 22 - filled square; pch = 23 - filled diamonds; pch = 24 - filled triangle point up etc....

points(largest_islands, pch = 15, col = "#2f4f4f" )




# plotting matrices
?matplot

# t(Salary) -> Data to be plotted
# type = “b” -> Both line and points/ the type of the representation
# pch -> kind of points used
# col -> colours used 
# lty - line type; lwd - line width
# xlab - x axis label; ylab - y axis label
matplot(t(Salary), type = "b", pch = c(1, 2, 6, 16, 20, 32),
        col = c("red", "blue", "green", "yellow", "orange", "pink", "black",
                "violet", "lightblue", "brown" ),
        lty = 1, lwd = 2,
        xlab = "Season", ylab = "Salary",
        xaxt = "n")
        
matplot(t(Salary), type = "b")

matplot(t(Salary), type = "b", pch = c(15, 16,17,18,24,25,1, 2, 0, 23))

matplot(t(Salary)[1:3,], type = "b", pch = c(15, 16,17,18,24,25,1, 2, 0, 23),
        col = c("red", "blue", "green", "yellow", "orange", "pink", "black",
                "violet", "lightblue", "brown" ), 
        lty = 1, lwd = 2,
        xlab = "Season", ylab = "Salary",
        xaxt = "n")
axis(1, )
# to set a legend use legend()
# first argument is the position (e.g. topleft, bottom right, center etc)
#inset- distance(s) from the margins as a fraction of the plot region

legend("topleft", inset = 0.01, legend = rownames(Salary), 
       col = c("red", "blue", "green", "yellow", 
               "orange", "pink", "black","violet", "lightblue", "brown"), 
        pch = c(15, 16,17,18,24,25,1, 2, 0, 23))
# to change axis parameters use axis() function
# first argument is position (1- below; 2- left; 3 - above; 4 - right)

axis(1, at = 1:length(colnames(Salary)), labels = colnames(Salary))
axis(2)
?legend

# How to show a matrix with the top 3 players in the last 5 seasons?
# 


matplot(t(Salary[1:3,6:10]), type = "b", pch = 21:23,
        col = c("red", "blue", "green"), 
        lty = 1, lwd = 2,
        xlab = "Season", ylab = "Salary",
        xaxt = "n")
axis(1, at = 1:5, labels = colnames(Salary)[6:10])
legend("topleft", inset = 0.01, legend = rownames(Salary)[1:3], 
       col = c("red", "blue", "green"), 
       pch = 21:23,
       lwd = 2)

mtext("NBA player salaries", 2, 0, col = "red" )
title(main = "NBA player statistics", 
      sub = "for seasons 2005-2014", 
      col.main = "green", col.sub ="red")
# TASK nr.1. try to to do just Kevin Durant and seasons 2006 - 2010.




