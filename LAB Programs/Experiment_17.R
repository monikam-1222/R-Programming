# Experiment 17: Create an array with dimension names
values <- 1:12
dimens <- c(2, 3, 2)
arr <- array(values, dim = dimens,
             dimnames = list(c("A1", "A2"), c("B1", "B2", "B3"), c("C1", "C2")))
print(arr)