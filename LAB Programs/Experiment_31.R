# Experiment 31: Mean, median, mode and order statistics
v <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean(v)
median(v)
mode_val <- as.numeric(names(sort(table(v), decreasing = TRUE)[1]))
print(paste("Mode:", mode_val))
print(paste("2nd Highest:", sort(v, decreasing = TRUE)[2]))
print(paste("3rd Lowest:", sort(v)[3]))