##############################Problem 21:##############################
# Evaluate the sum of all the amicable numbers under 10000.
sumz <- 220
findPrimeFactors(sumz)
# For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110
# > findPrimeFactors(sumz)
# [1]  2  2  5 11
# using this as an input should result in the output of c(1,2,4,5,10,11,20,22,44,55,110)
# # findProperDivisors <- function( primeFactors ) {
  # for (ii in 1:length(primeFactors)) {
    # if (!(primeFactors[ii] %in% divisors[1]) {
      # divisors[1] = append()
      # temp <- nah[-ii]
    # }
  # }
# }
sumProperDivisors <- function( input ) {
  nah <- 1:ceiling(input/2)
  sum(nah[which((input/nah) %% 1 == 0)])
}
slick <- array(,c(10,3))
slick[ ,1] <- 1:dim(slick)[1]
for (ii in 1:dim(slick)[1]) {
  slick[ii,2] <- sumProperDivisors(digg[ii])
  }
  
h = hash(digg, slick)
for (ii in 1:dim(slick)[1]) {
  slick[ii,3] <- slick[ii,2] ==
  }
