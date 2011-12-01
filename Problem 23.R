#Problem 23:
#Find the sum of all the positive integers which cannot be written as the sum of two abundant numbers.

#know that all numbers greater than 28123 can be written as the sum of two abundant numbers, so only need to check up to that (NB INCLUSIVE)


#From problem 21...
sumProperDivisors <- function( input ) {
  nah <- 1:ceiling(input/2)
  return(sum(nah[which((input/nah) %% 1 == 0)]))
}

abundantNums <- function(highest) {
  abuns <- c()
  for (ii in 1:highest) {
    sumz <- sumProperDivisors(ii)
    if (sumz > ii) {
      abuns <- append(abuns, ii)
    }
  }
  return(abuns)
}

abuns <- abundantNums(28124)

sumTwoAbun <- rep(FALSE, 28123)

digg <- 1:28123

for (ii in 1:length(abuns)) {
  sumTwoAbun[(digg-abuns[ii]) %in% abuns] <- TRUE
}

#> sum(digg[!sumTwoAbun])
#[1] 4179871
