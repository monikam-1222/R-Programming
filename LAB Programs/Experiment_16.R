# Experiment 16: Create matrices with labels and fill methods
m1 <- matrix(1:20, nrow = 5, ncol = 4)
print("5x4 matrix:")
print(m1)

m2 <- matrix(1:9, nrow = 3, byrow = TRUE)
rownames(m2) <- c("R1", "R2", "R3")
colnames(m2) <- c("C1", "C2", "C3")
print("3x3 matrix by row:")
print(m2)

m3 <- matrix(1:4, nrow = 2, byrow = FALSE)
rownames(m3) <- c("Row1", "Row2")
colnames(m3) <- c("Col1", "Col2")
print("2x2 matrix by column:")
print(m3)