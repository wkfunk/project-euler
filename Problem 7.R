##############################Problem 7:##############################
# Find the 10001st prime.
findPrimeNumbers <- function (num) {
  primeNums <- c(2,3,4,7)
  init <- 11
  while (length(primeNums) < num) {
    max <- sqrt(init)
    digg <- seq(3,max,2)
    if (all((init/digg)%%1 != 0)) {
      primeNums = append(primeNums, init)
    }
    init <- init + 2
  }
  return(primeNums)
}
nah = findPrimeNumbers(10001)
nah[10001]
# [1] 104743
