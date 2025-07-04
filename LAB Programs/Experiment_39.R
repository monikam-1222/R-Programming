# Experiment 39: USArrests dataset analysis
data("USArrests")
print(str(USArrests))
print(summary(USArrests))
print(which.max(USArrests$Rape))
print(rownames(USArrests)[which.max(USArrests$Rape)])
print(rownames(USArrests)[which.max(USArrests$Murder)])
print(rownames(USArrests)[which.min(USArrests$Murder)])
print(cor(USArrests))
print(rownames(USArrests[USArrests$Assault > median(USArrests$Assault), ]))
quantile_val <- quantile(USArrests$Murder, 0.25)
print(rownames(USArrests[USArrests$Murder < quantile_val, ]))

# Plots
hist(USArrests$Murder, main="Histogram of Murder Arrests")
plot(USArrests$UrbanPop, USArrests$Murder, col = heat.colors(50)[rank(USArrests$Assault)], pch = 19)
barplot(USArrests$Murder, names.arg = rownames(USArrests), las = 2, main = "Murder Rate by State")