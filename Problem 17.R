##############################Problem 17:##############################
# How many letters would be needed to write all the numbers in words from 1 to 1000?  
"#########1-10##########
# one: 3
# two: 3
# three: 5
# four: 4
# five: 4
# six: 3
# seven: 5
# eight: 5
# nine: 4
# ten: 3
###sum: 39
one.to.ten <- 39
one.to.nine <- 36
########11-19######
# eleven
# twelve
# thirteen
# fourteen
# fifteen
# sixteen
# seventeen
# eighteen
# nineteen
# # > sum(nchar(unlist(strsplit(nah, "\n",fixed=TRUE))))
###sum: 67
eleven.to.nineteen <- 67
########20-99########
# twenty  6 -> (6 x 10) + 36 = 96
  # twenty one
  # twenty two
  # ...
  # twenty nine
# thirty  6 -> (6 x 10) + 36 = 96
# forty  5 -> (5 x 10) + 36 = 86
# fifty  5
# sixty  5      ...
# seventy  7
# eighty  6
# ninety  6
# sum(nchar(unlist(strsplit(nah, "\n",fixed=TRUE))))
# [1] 46
twenty.to.ninety.nine <- (46*10) + (36*8)
###sum: 748
########100,200,...,900#######
one hundred
two hundred
three hundred
...
nine hundred
hundreds <- one.to.nine + (7*9)
###sum: 99
######101-199, 201-299, ... ########
one [hundred and] one
one hundred and two
...
# the [hundred and]'s contribute (10)*(99*9)
# the one's, two's, etc. contribute 36*99
# the one, two, three, ..., ten, eleven, ... twenty one, ... ninety nine
  # contribute (39+67+748)*9
  
hundreds.digit <- one.to.nine*99
hundred.ands <- 10*99*9
tens.ones.digit <- (one.to.ten + eleven.to.nineteen + twenty.to.ninety.nine)*9
other.hundreds <- hundreds.digit + hundred.ands + tens.ones.digit
###sum: 20160
#######1000#######
one thousand
###sum: 8
thousand <- 8
one.to.ten + eleven.to.nineteen + twenty.to.ninety.nine + hundreds + other.hundreds + thousand
# [1] 21121"
