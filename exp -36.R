data("ChickWeight")
df <- ChickWeight
boxplot(weight ~ Diet, data = df,
        main = "Boxplot of Weight by Diet",
        xlab = "Diet",
        ylab = "Weight",
        col = "lightblue")
hist(df$weight[df$Diet == 1],
     main = "Histogram of Weight for Diet 1",
     xlab = "Weight",
     col = "lightgreen",
     breaks = 10)
library(ggplot2)
ggplot(df, aes(x = Time, y = weight, color = as.factor(Diet))) +
  geom_point() +
  labs(title = "Scatter Plot of Weight vs Time by Diet",
       x = "Time",
       y = "Weight",
       color = "Diet") +
  theme_minimal()
