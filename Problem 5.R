##############################Problem 5:##############################
# What is the smallest number divisible by each of the numbers 1 to 20?
# lolbruteforce
divs = 1:20
num <- 20
while (! all(((num/divs) %% 1) == 0)){
  num <- num + 20
}
num
# [1] 232792560 
