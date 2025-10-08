
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

cat("Original Data Frame:\n")
print(exam_data)
cat("\n(a) Extract 3rd and 5th rows with 1st and 3rd columns:\n")
subset_a <- exam_data[c(3,5), c(1,3)]
print(subset_a)
Country <- c("USA","USA","USA","USA","UK","USA","USA","India","USA","USA")
exam_data$country <- Country
cat("\n(b) Data Frame after adding 'country' column:\n")
print(exam_data)
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no'),
  country = c('USA', 'USA')  
)
exam_data <- rbind(exam_data, new_exam_data)
cat("\n(c) Data Frame after adding new rows:\n")
print(exam_data)
exam_data_sorted <- exam_data[order(exam_data$name, exam_data$score), ]
cat("\n(d) Data Frame sorted by 'name' and 'score':\n")
print(exam_data_sorted)
write.csv(exam_data, "exam_data.csv", row.names = FALSE)
cat("\n(e) Contents of saved file 'exam_data.csv':\n")
file_content <- read.csv("exam_data.csv")
print(file_content)
