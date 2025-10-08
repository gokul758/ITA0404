data("USArrests")
USArrests$State <- rownames(USArrests)
str(USArrests)            
summary(USArrests)       
cat("Max Rape:", USArrests$State[which.max(USArrests$Rape)], "\n")
cat("Max Murder:", USArrests$State[which.max(USArrests$Murder)], "\n")
cat("Min Murder:", USArrests$State[which.min(USArrests$Murder)], "\n")
cor(USArrests[,1:4])    
cat("High Assault States:", USArrests$State[USArrests$Assault > median(USArrests$Assault)], "\n")
cat("Bottom 25% Murder States:", USArrests$State[USArrests$Murder <= quantile(USArrests$Murder, 0.25)], "\n")
library(ggplot2)
ggplot(USArrests, aes(Murder)) +
  geom_histogram(aes(y=..density..), binwidth=1, fill="lightblue", color="black") +
  geom_density(color="red") +
  ggtitle("Murder Arrests Distribution")
ggplot(USArrests, aes(UrbanPop, Murder, color=Assault)) +
  geom_point(size=3) +
  scale_color_gradient(low="blue", high="red") +
  ggtitle("Murder vs UrbanPop (Color by Assault)")
ggplot(USArrests, aes(x=reorder(State, -Murder), y=Murder)) +
  geom_bar(stat="identity", fill="orange") +
  theme(axis.text.x=element_text(angle=90, hjust=1)) +
  ggtitle("Murder Rate by State")
