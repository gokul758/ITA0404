
vec <- c(10, 20, 30, 40, 50)

mat <- matrix(1:9, nrow = 3, byrow = TRUE)
fun <- function(x) {
  return(x^2)
}

my_list <- list(Vector = vec, Matrix = mat, Function = fun)
print(my_list)
