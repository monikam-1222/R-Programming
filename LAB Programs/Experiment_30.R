# Experiment 30: Logistic regression on iris dataset
set.seed(100)
index <- sample(1:nrow(iris), 0.8 * nrow(iris))
train <- iris[index, ]
test <- iris[-index, ]
model <- glm(Species ~ Petal.Width + Petal.Length, data = train, family = "binomial")
predicted <- predict(model, newdata = test, type = "response")
print(predicted)
# Convert to factor for confusion matrix (only for 2 class)
test$pred <- ifelse(predicted > 0.5, levels(iris$Species)[2], levels(iris$Species)[1])
table(Predicted = test$pred, Actual = test$Species)