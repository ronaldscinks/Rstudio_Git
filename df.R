### --------------- DATA FRAMES

revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
profit <- revenue - expenses

# creating a data frame from vectors
fin.data<-data.frame(revenue, expenses, profit)

# we can make names for the columns when initializing a DF
data.frame("rev" = revenue, "exp" = expenses, "prof" = profit)

# creating a data frame from a matrix

fin.data<-rbind(revenue, expenses, profit)

fin.data <- as.data.frame(t(fin.data))
colnames(fin.data)


# 
p_revenue<-fin.data$revenue * 1.3
p_expenses <- fin.data$expenses *0.9
p_profit <- p_revenue - p_expenses

p_fin.data<-data.frame("revenue" = p_revenue, "expenses"p_expenses, p_profit)

#
data.frame(rbind(fin.data,p_fin.data))
