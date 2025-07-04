# Experiment 13: Create a list of random numbers in normal distribution and count occurrences
set.seed(123)
data <- rnorm(100, mean = 0, sd = 1)
rounded_data <- round(data, 1)
table(rounded_data)