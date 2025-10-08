data("Titanic")
titanic_df <- as.data.frame(Titanic)
library(ggplot2)

ggplot(titanic_df, aes(x=Class, y=Freq, fill=Survived)) +
  geom_bar(stat="identity", position="dodge") +
  ggtitle("Survival Count by Passenger Class") +
  ylab("Number of Passengers") +
  xlab("Passenger Class")
ggplot(titanic_df, aes(x=Class, y=Freq, fill=Survived)) +
  geom_bar(stat="identity", position="dodge") +
  facet_wrap(~Sex) +
  ggtitle("Survival Count by Class and Gender") +
  ylab("Number of Passengers") +
  xlab("Passenger Class") 
ggplot(titanic_df, aes(x=Age, weight=Freq, fill=Survived)) +
  geom_histogram(stat="count", position="dodge") +
  ggtitle("Distribution of Age") +
  xlab("Age") +
  ylab("Number of Passengers")

