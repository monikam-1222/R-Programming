# Experiment 26: airquality - check and manipulate
data("airquality")
print(is.data.frame(airquality))
ordered_df <- airquality[order(airquality[, 1], airquality[, 2]), ]
modified_df <- ordered_df[, !(names(ordered_df) %in% c("Solar.R", "Wind"))]
print(modified_df)