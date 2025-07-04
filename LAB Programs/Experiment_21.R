# Experiment 21: Create array with two 3x3 matrices and extract specific elements
vec1 <- 1:18
arr <- array(vec1, dim = c(3, 3, 2))
print("Second row of second matrix:")
print(arr[2, , 2])
print("Element in 3rd row, 3rd column of 1st matrix:")
print(arr[3, 3, 1])