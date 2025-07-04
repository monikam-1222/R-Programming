# Experiment 22: Combine three arrays row-wise
a1 <- matrix(1:9, nrow = 3, byrow = TRUE)
a2 <- matrix(10:18, nrow = 3, byrow = TRUE)
a3 <- matrix(19:27, nrow = 3, byrow = TRUE)
result <- rbind(a1[1, ], a2[1, ], a3[1, ])
print(result)