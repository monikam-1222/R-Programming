# Experiment 35: ChickWeight dataset analysis
data("ChickWeight")

# i. Order and extract last 6
ordered_data <- ChickWeight[order(ChickWeight$Diet, ChickWeight$weight), ]
print(tail(ordered_data, 6))

# ii. Melt and cast
library(reshape2)
melted <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))

# b. Mean by Diet
mean_cast <- dcast(melted, Diet ~ variable, mean)
print(mean_cast)

# c. Mode by Diet (mode as most frequent value)
get_mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
mode_weight <- aggregate(weight ~ Diet, data = ChickWeight, FUN = get_mode)
print(mode_weight)