# Experiment 18: Create an array with 3x3x2 from two vectors
vec1 <- c(1, 2, 3)
vec2 <- c(4, 5, 6)
arr <- array(c(vec1, vec2), dim = c(3, 3, 2))
print(arr)