data("airquality")
head(airquality)
str(airquality)
summary(airquality)
names(airquality)
dim(airquality)
colSums(is.na(airquality))
plot(airquality$Ozone, airquality$Temp,
     main="Ozone vs Temperature",
     xlab="Ozone (ppb)", ylab="Temperature (F)",
     col="blue", pch=19)

boxplot(airquality$Wind,
        main="Wind Speed Distribution",
        col="lightgreen")
