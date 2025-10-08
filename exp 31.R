x <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_val <- mean(x)
median_val <- median(x)
getmode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
mode_val <- getmode(x)
sorted_vals <- sort(unique(x))
second_highest <- sorted_vals[length(sorted_vals)-1]
third_lowest <- sorted_vals[3]
cat("Mean:", mean_val, "\nMedian:", median_val, "\nMode:", mode_val,
    "\n2nd Highest:", second_highest, "\n3rd Lowest:", third_lowest, "\n")
