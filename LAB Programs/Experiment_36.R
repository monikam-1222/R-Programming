# Experiment 36: Visuals from ChickWeight
data("ChickWeight")
# a. Boxplot
boxplot(weight ~ Diet, data = ChickWeight, main = "Boxplot of Weight by Diet")

# b. Histogram for Diet 1
hist(ChickWeight$weight[ChickWeight$Diet == 1], main = "Histogram of Weight (Diet 1)", xlab = "Weight")

# c. Scatter plot for Weight vs Time grouped by Diet
library(ggplot2)
ggplot(ChickWeight, aes(x = Time, y = weight, color = as.factor(Diet))) + geom_point() + geom_smooth(method = "lm")