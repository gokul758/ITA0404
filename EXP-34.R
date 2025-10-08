data("airquality")
colSums(is.na(airquality))
total_rows <- nrow(airquality)
for (col in names(airquality)) {
  na_count <- sum(is.na(airquality[[col]]))
  if (na_count > 0) {
    if (na_count / total_rows < 0.1) {
      airquality <- airquality[!is.na(airquality[[col]]), ]
    } else {
      airquality[[col]][is.na(airquality[[col]])] <- mean(airquality[[col]], na.rm = TRUE)
    }
  }
}
model <- lm(Ozone ~ Solar.R, data = airquality)
summary(model)
plot(airquality$Solar.R, airquality$Ozone,
     main = "Scatter Plot of Ozone vs Solar.R",
     xlab = "Solar Radiation",
     ylab = "Ozone",
     pch = 19, col = "blue")
abline(model, col = "red", lwd = 2)
