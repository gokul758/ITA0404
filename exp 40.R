df <- data.frame(
  Month = 1:12,
  Spends = c(1000, 4000, 5000, 4500, 3000, 4000, 9000, 11000, 15000, 12000, 7000, 3000),
  Sales = c(9914, 40487, 54324, 50044, 34719, 42551, 94871, 118914, 158484, 131348, 78504, 36284)
)

print(df)
model <- lm(Sales ~ Spends, data = df)
summary(model)
new_data <- data.frame(Spends = 13500)
predicted_sales <- predict(model, new_data)
cat("Predicted Sales for Spend = 13500 :", predicted_sales, "\n")
plot(df$Spends, df$Sales,
     main = "Sales vs Spends with Regression Line",
     xlab = "Spends",
     ylab = "Sales",
     pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
