
num <- as.numeric(readline("Enter a number: "))
factors <- function(n) {
  return(which(n %% 1:n == 0))
}
cat("Factors of", num, ":", factors(num), "\n")
