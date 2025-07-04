
str <- "statistics"
unique_chars <- unique(strsplit(str, "")[[1]])
cat("Unique characters in string:", unique_chars, "\n")

vec <- c(1,2,2,3,4,4,5)
unique_nums <- unique(vec)
cat("Unique numbers in vector:", unique_nums, "\n")
