# TASK nr.2 use the expenses and revenue
# try to recreate the image on ortus (see chart to recreate on ORTUS)
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
profit <- revenue - expenses
fin_data <- rbind(revenue, expenses, profit)
colnames(fin_data) <- month.name
matplot(t(fin_data), type = "b", lty = "solid", pch = c(15,17,19), 
        xaxt = "n", yaxt = "n", 
        col = c("darkorange", "darkviolet","darkgreen"),
        xlab = "", ylab = ""
)
legend("bottomleft", inset = 0.01, legend=rownames(fin_data), 
       col = c("darkorange", "darkviolet","darkgreen"), pch = c(15,17,19),
       lwd = 2)
axis(1, at = 1:length(colnames(fin_data)), labels = colnames(fin_data), col.axis = "darkorange")
axis(2, at = seq(round(min(fin_data)/1000,0)*1000,round(max(fin_data)/1000,0)*1000,2000), 
     labels = seq(round(min(fin_data)/1000,0),round(max(fin_data)/1000,0),2), 
     col.axis = "darkorange")
mtext("Euros (thousands)", side=2, line=3, col="navy")
mtext("Months", side = 1, line = 3, col = "navy")
title(main = "Revenue, Expenses and Profit across The Year", col.main = "darkorange" )

