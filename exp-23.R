
values <- 1:24  # 3 rows * 4 columns * 2 tables = 24 elements
arr <- array(values, dim = c(3, 4, 2),
             dimnames = list(
               Row = c("R1", "R2", "R3"),
               Column = c("C1", "C2", "C3", "C4"),
               Table = c("T1", "T2")
             ))
cat("3 x 4 x 2 Array:\n")
print(arr)
