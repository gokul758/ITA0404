data("airquality")
is_df <- is.data.frame(airquality)
cat("Is 'airquality' a data frame? :", is_df, "\n\n")
ordered_df <- airquality[order(airquality[,1], airquality[,2]), ]
modified_df <- subset(ordered_df, select = -c(Solar.R, Wind))
print(modified_df)
