##############################Problem 1:##############################
# Add all the natural numbers below one thousand that are multiples of 3 or 5.
nah = 1:999
sum(nah[nah%%5==0 | nah%%3==0])
# [1] 233168
