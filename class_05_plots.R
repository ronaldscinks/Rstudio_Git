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
# adj = c(x,y)) <- position from the coordinates
# x/y = 0.5 (middle)
text(largest_islands[1:2], labels = names(largest_islands[1:2]), adj = c(-1,0.5))
text(largest_islands[3:9], labels = names(largest_islands[3:9]), adj = c(-0.2,0.4))
text(largest_islands[10], labels = names(largest_islands[10]), adj = c(-10.7,0.5))

points(largest_islands[1], type ="p", pch = 16, col = "darkred" )
points(largest_islands[9], type ="p", pch = 16, col = "black" )
?points

# the points are not working exactly as I would want to. 
# add something








