# Experiment 32: airquality dataset analysis
data("airquality")
# i. Mean Temp without using mean()
mean_temp <- sum(airquality$Temp, na.rm = TRUE) / sum(!is.na(airquality$Temp))
print(mean_temp)

# ii. First 5 rows
print(head(airquality, 5))

# iii. All columns except Temp and Wind
print(airquality[, !(names(airquality) %in% c("Temp", "Wind"))])

# iv. Coldest day
coldest <- airquality[which.min(airquality$Temp), ]
print(coldest)

# v. Wind speed > 17
count_windy <- sum(airquality$Wind > 17, na.rm = TRUE)
print(count_windy)