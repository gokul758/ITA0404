set.seed(123)   # for reproducibility
sample_letters <- sample(LETTERS, 15, replace = TRUE)
letter_factor <- factor(sample_letters)
print("Factor created from sample:")
print(letter_factor)
levels_all <- levels(letter_factor)
print("All levels in the factor:")
print(levels_all)
five_levels <- levels_all[1:5]
print("First 5 levels of the factor:")
print(five_levels)
