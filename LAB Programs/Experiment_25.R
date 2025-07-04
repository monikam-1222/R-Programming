# Experiment 25: Data Frame Operations
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

# a. Extract 3rd and 5th rows, 1st and 3rd columns
print(exam_data[c(3, 5), c(1, 3)])

# b. Add country column
exam_data$country <- c("USA","USA","USA","USA","UK","USA","USA","India","USA","USA")
print(exam_data)

# c. Add new rows
new_exam_data <- data.frame(name = c('Robert', 'Sophia'), score = c(10.5, 9), attempts = c(1, 3), qualify = c('yes', 'no'))
exam_data <- rbind(exam_data, new_exam_data)
print(exam_data)

# d. Sort by name and score
sorted_df <- exam_data[order(exam_data$name, exam_data$score),]
print(sorted_df)

# e. Save and display
write.csv(exam_data, "exam_data.csv", row.names = FALSE)
read_data <- read.csv("exam_data.csv")
print(read_data)