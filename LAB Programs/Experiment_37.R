# Experiment 37: Multi regression on ChickWeight
data("ChickWeight")
model <- lm(weight ~ Time + Diet, data = ChickWeight)
print(summary(model))

# Predict for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = factor(1, levels = levels(ChickWeight$Diet)))
pred <- predict(model, newdata = new_data)
print(pred)

# Calculate error (using RMSE on full dataset)
pred_all <- predict(model, newdata = ChickWeight)
rmse <- sqrt(mean((pred_all - ChickWeight$weight)^2))
print(rmse)