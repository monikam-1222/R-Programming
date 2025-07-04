
sieve_primes <- function(n) {
  if (n < 2) return(integer(0))
  sieve <- rep(TRUE, n)
  sieve[1] <- FALSE
  for (i in 2:sqrt(n)) {
    if (sieve[i]) sieve[seq(i^2, n, i)] <- FALSE
  }
  which(sieve)
}
n <- as.numeric(readline("Enter a number: "))
cat("Prime numbers up to", n, ":", sieve_primes(n), "\n")
