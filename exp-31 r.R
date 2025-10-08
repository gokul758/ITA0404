x <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)
mean_val <- mean(x)
median_val <- median(x)
mode_val <- as.numeric(names(sort(-table(x)))[1])   
cat("Mean:", mean_val, "\n")
cat("Median:", median_val, "\n")
cat("Mode:", mode_val, "\n")
sorted_vals <- sort(unique(x))   
second_highest <- sorted_vals[length(sorted_vals)-1]
third_lowest <- sorted_vals[3]
cat("2nd Highest:", second_highest, "\n")
cat("3rd Lowest:", third_lowest, "\n")
