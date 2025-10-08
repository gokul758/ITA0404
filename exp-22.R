
arr1 <- matrix(1:6, nrow = 2, byrow = TRUE)   # 2x3
arr2 <- matrix(7:12, nrow = 2, byrow = TRUE)  # 2x3
arr3 <- matrix(13:18, nrow = 2, byrow = TRUE) # 2x3

cat("First Array:\n"); print(arr1)
cat("Second Array:\n"); print(arr2)
cat("Third Array:\n"); print(arr3)
combined <- rbind(arr1, arr2, arr3)

cat("\nCombined Array (row-wise):\n")
print(combined)
