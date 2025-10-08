
sieve_of_eratosthenes <- function(n) {
if (n < 2) {
 return(integer(0))
}
is_prime <- rep(TRUE, n)
is_prime[1] <- FALSE

for (i in 2:floor(sqrt(n))) {
 if (is_prime[i]) {
   is_prime[seq(i^2, n, by = i)] <- FALSE
 }
}

which(is_prime)
}
n <- as.integer(readline(prompt = "Enter the upper limit to find prime numbers: "))
if (is.na(n) || n < 2) {
cat("Please enter a valid number greater than or equal to 2.\n")
} else {
prime_numbers <- sieve_of_eratosthenes(n)
cat("Prime numbers up to", n, "are:\n")
print(prime_numbers)
}


