# Experiment 24: 5x3 array of even integers > 50
even_seq <- seq(52, by = 2, length.out = 15)
arr <- array(even_seq, dim = c(5, 3))
print(arr)