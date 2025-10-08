
m1 <- matrix(1:20, nrow = 5, ncol = 4, byrow = TRUE)
cat("5 x 4 Matrix (filled by rows):\n")
print(m1)
m2 <- matrix(1:9, nrow = 3, ncol = 3, byrow = TRUE,
             dimnames = list(
               c("Row1", "Row2", "Row3"),
               c("Col1", "Col2", "Col3")
             ))
cat("\n3 x 3 Matrix with labels (filled by rows):\n")
print(m2)
m3 <- matrix(1:4, nrow = 2, ncol = 2, byrow = FALSE,
             dimnames = list(
               c("R1", "R2"),
               c("C1", "C2")
             ))
cat("\n2 x 2 Matrix with labels (filled by columns):\n")
print(m3)
