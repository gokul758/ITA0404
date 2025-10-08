
vec1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vec2 <- c(10, 20, 30, 40, 50, 60, 70, 80, 90)
arr <- array(c(vec1, vec2), dim = c(3, 3, 2))

cat("Array of two 3x3 matrices:\n")
print(arr)

cat("\nSecond row of the second matrix:\n")
print(arr[2, , 2])
cat("\nElement at 3rd row, 3rd column of the first matrix:\n")
print(arr[3, 3, 1])