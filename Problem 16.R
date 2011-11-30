##############################Problem 16:##############################
# What is the sum of the digits of the number 2^1000?
digg <-sprintf("%.0f", 2**1000)
sum(as.numeric(substring(digg, 1:nchar(digg), 1:nchar(digg))))
# [1] 1366
