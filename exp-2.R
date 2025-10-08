x <- 42
y <- c(1, 2, 3, 4, 5)
z <- data.frame(Name = c("A", "B"), Age = c(25, 30))
cat("Objects in memory:\n")
print(ls())
cat("\nDetails of objects:\n")
print(ls.str())
cat("\nMemory size of each object (in bytes):\n")
for (obj in ls()) {
  cat(obj, ":", object.size(get(obj)), "bytes\n")
}