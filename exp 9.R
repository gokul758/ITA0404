find_factors <- function(n) {
  factors <- c()  
  for (i in 1:n) {
    if (n %% i == 0) {   
      factors <- c(factors, i)
    }
  }
  return(factors)
}
num <- 36
cat("Factors of", num, "are:", find_factors(num), "\n")
