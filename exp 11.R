my_string <- "programming"
unique_chars <- unique(strsplit(my_string, "")[[1]])
cat("Unique characters in string:", unique_chars, "\n")
my_vector <- c(1, 2, 3, 2, 4, 5, 1, 6, 3, 7)
unique_numbers <- unique(my_vector)
cat("Unique numbers in vector:", unique_numbers, "\n")

