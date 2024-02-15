### --------------- DATA FRAMES

revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
profit <- revenue - expenses

# creating a data frame from vectors
fin.data<-data.frame(revenue, expenses, profit)
fin.data
# we can make names for the columns when initializing a DF
data.frame("rev" = revenue, "exp" = expenses, "prof" = profit)

# creating a data frame from a matrix

fin.data<-rbind(revenue, expenses, profit)

fin.data <- as.data.frame(t(fin.data))
colnames(fin.data)


# merging data.frames (adding new data values)
# they need to have the same variable/column names
p_revenue<-fin.data$revenue * 1.3
p_expenses <- fin.data$expenses *0.9
p_profit <- p_revenue - p_expenses

# setting up a df of predicted financial data and changing their column names
# to match the names of the current fin.data 
p_fin.data<-data.frame("revenue" = p_revenue, "expenses" = p_expenses, "profit" =  p_profit)


fin.data <- data.frame(rbind(fin.data,p_fin.data))

# you can add new columns as well
# we just act as if they are already there
# here we add the corresponding months and years
# notice that the added vectors recycle

fin.data$month <- month.name
fin.data$year <- c(rep(2023,12), rep(2024,12))

# you can change values as well in

fin.data$year <- c(rep(2022,12), rep(2023,12))

# filter data
# notice that when accessing a single column it is treated as a vector
fin.data$year[fin.data$year==2022] <- 2021

fin.data[fin.data$profit > mean(fin.data$profit),]


#### task nr. 1
### using the basketball data
## construct a data frame where row has data for a single player
# the first column stores players names (So that each row corresponds to a single player), 
# the columns after that store mean values 
# of the following stats across all the seasons: 
# (for column names use the values within parenthesis e.g. FGA)
# - FieldGoalAttempts (FGA)
# - FieldGoals (FG)
# - Games (games)
# - MinutesPlayed (minutes)
# - Salary (salary)

