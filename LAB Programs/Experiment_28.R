# Experiment 28: Factor from LETTERS
set.seed(42)
sample_letters <- sample(LETTERS, 10, replace = TRUE)
factor_letters <- factor(sample_letters)
print(levels(factor_letters)[1:5])