
values <- 1:24
arr <- array(values,
             dim = c(3, 4, 2),
             dimnames = list(
               Row = c("Row1", "Row2", "Row3"),
               Column = c("Col1", "Col2", "Col3", "Col4"),
               Matrix = c("Matrix1", "Matrix2")
             ))
print(arr)
