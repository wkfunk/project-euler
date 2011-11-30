##############################Problem 14:##############################
# Find the longest sequence using a starting number under one million.  
collatzLength <- function( num ) {
  long <- 1
  while (num != 1) {
    if (num %% 2 == 0) {
      num <- num/2
    } else {
      num <- (3*num) + 1
    }
  long <- long + 1
  }
  return(long)
}
maxCollatzLength <- function( upper ) {
  nah = vector(length=upper-1)
  for (ii in 1:length(nah)) {
    nah[ii] <- collatzLength(ii)
  }
  return(which(nah==max(nah)))
}
maxCollatzLength(1000000)
# [1] 837799
