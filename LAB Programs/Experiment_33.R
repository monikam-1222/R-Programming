# Experiment 33: Summary and melt/cast airquality
library(reshape2)
data("airquality")

# i. Summary statistics
print(summary(airquality))

# ii. Melt airquality
melted1 <- melt(airquality)
print(melted1)

# iii. Melt with ID variables
melted2 <- melt(airquality, id.vars = c("Month", "Day"))
print(melted2)

# iv. Cast by Month and Day
casted1 <- dcast(melted2, Month + Day ~ variable)
print(casted1)

# v. Average per month
casted2 <- dcast(melted2, Month ~ variable, mean, na.rm = TRUE)
print(casted2)