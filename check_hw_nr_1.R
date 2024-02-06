# first homework check
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
tax_rate <- 30


#Solution ---------------------------------------------------------------------

# store your results in the variables provided below------------------------------
# (1) profit for each month
profit_t <- round(revenue - expenses, 2)

# (2) profit after tax for each month
tax <- tax_rate/100
profit_after_tax_t <- round(profit_t *(1-tax),2)


# (3) profit margin for each month
profit_margin_t <- round(profit_after_tax_t/revenue,2) *100

# (4) 
good_months_t <- profit_after_tax_t >= mean(profit_after_tax_t)

# (5) 
bad_months_t <- profit_after_tax_t < mean(profit_after_tax_t)

# (6)
best_month_t <- profit_after_tax_t == max(profit_after_tax_t)

# (7)
worst_month_t <- profit_after_tax_t == min(profit_after_tax_t)



  isTRUE(all.equal(sum(profit_t - profit),0))
  isTRUE(all.equal(sum(profit_after_tax_t- profit_after_tax), 0))
  isTRUE(all.equal(sum(profit_margin_t- profit_margin), 0))
  good_months_t == good_months
  bad_months_t == bad_months
  best_month_t == best_month
  worst_month_t == worst_month

rm(list = c("profit", "profit_after_tax", "profit_margin", 
            "good_months", "bad_months", "best_month", "worst_month"))
