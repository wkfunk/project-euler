##############################Problem 3:##############################
# Find the largest prime factor of a composite number.
# What is the largest prime factor of the number 600851475143 ?
findPrimeFactors <- function(num) {
  primeFac <- c()
  while (num>1){
    if (num%%2 ==0) {
      primeFac <- append(primeFac, 2)
      num <- num/2
    }
    else {
      seed <- 3
      while (num%%seed != 0) {
        seed <- seed+2
      }
      primeFac <- append(primeFac, seed)
      num <- num/seed
    }
  }
  return(primeFac)
}
max(findPrimeFactors(600851475143))
# [1] 6857
