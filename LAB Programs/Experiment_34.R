# Experiment 34: Missing values + Linear Regression
data("airquality")
for (col in names(airquality)) {
  missing_ratio <- sum(is.na(airquality[[col]])) / nrow(airquality)
  if (missing_ratio < 0.1) {
    airquality <- airquality[!is.na(airquality[[col]]), ]
  } else {
    airquality[[col]][is.na(airquality[[col]])] <- mean(airquality[[col]], na.rm = TRUE)
  }
}

# Linear regression (least squares)
model <- lm(Ozone ~ Solar.R, data = airquality)
print(summary(model))

# Scatter plot with regression line
plot(airquality$Solar.R, airquality$Ozone, main="Ozone vs Solar.R", xlab="Solar Radiation", ylab="Ozone")
abline(model, col = "red")