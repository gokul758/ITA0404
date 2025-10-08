data("airquality")
df <- airquality
na_count <- colSums(is.na(df))
print(na_count)
for (col in names(df)) {
  na_ratio <- sum(is.na(df[[col]])) / nrow(df)
  if (na_ratio < 0.1) {
    df <- df[!is.na(df[[col]]), ]  # drop missing values if <10%
  } else {
    df[[col]][is.na(df[[col]])] <- mean(df[[col]], na.rm = TRUE)  # replace with mean
  }
}
model <- lm(Ozone ~ Solar.R, data = df)
summary(model)
plot(df$Solar.R, df$Ozone,
     main = "Ozone vs Solar.R with Regression Line",
     xlab = "Solar Radiation",
     ylab = "Ozone",
     pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
