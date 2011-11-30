##############################Problem 20:##############################
# Find the sum of the digits in the number 100!
digg <- sprintf("%.0f", factorial(100))
sum(as.numeric(substring(digg, 1:nchar(digg), 1:nchar(digg))))
# [1] 762
