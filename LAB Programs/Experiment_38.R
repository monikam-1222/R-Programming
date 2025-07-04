# Experiment 38: Titanic dataset visuals
library(datasets)
library(ggplot2)
data("Titanic")
titanic_df <- as.data.frame(Titanic)

# a. Bar chart of Survived vs Class
ggplot(titanic_df, aes(x = Class, y = Freq, fill = Survived)) + geom_bar(stat = "identity", position = "dodge")

# b. Bar chart by Gender
ggplot(titanic_df, aes(x = Class, y = Freq, fill = Sex)) + geom_bar(stat = "identity", position = "dodge") + facet_wrap(~Survived)

# c. Histogram of Age - using synthetic data for age (Titanic doesn't have exact ages in base R)