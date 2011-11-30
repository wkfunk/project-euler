##############################Problem 10:##############################
# Find the sum of all the primes below two million.
primeNumbersBelow <- function (upper) {
  primeNums <- c(2,3,5,7)
  init <- 11
  while (init < upper) {
    max <- sqrt(init)
    digg <- seq(3,max,2)
    if (all((init/digg)%%1 != 0)) {
      primeNums = append(primeNums, init)
    }
    init <- init + 2
  }
  return(primeNums)
}
sumPrimeNumbersBelow <- function (upper) {
  sumz <- 17
  init <- 11
  while (init < upper) {
    max <- sqrt(init)
    digg <- seq(3,max,2)
    if (all((init/digg)%%1 != 0)) {
      sumz <- sumz + init
    }
    init <- init + 2
  }
  return(sumz)
}
sumPrimeNumbersBelow(2000000)
# [1] 142913828922
