data("ChickWeight")
df <- ChickWeight
df$Diet <- as.factor(df$Diet)
model <- lm(weight ~ Time + Diet, data = df)
summary(model)
new_data <- data.frame(Time = 10, Diet = factor(1, levels = levels(df$Diet)))
predicted_weight <- predict(model, new_data)
print(paste("Predicted Weight:", round(predicted_weight, 2)))
actual_weight <- mean(df$weight[df$Time == 10 & df$Diet == 1], na.rm = TRUE)
error <- predicted_weight - actual_weight
print(paste("Prediction Error:", round(error, 2)))
