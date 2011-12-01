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
  return(sum(nah[which((input/nah) %% 1 == 0)]))
}

#####################################
#new method
#1. enumerate prime factors
#2. generate all possible subsets of prod(primeFactors)

#e.g. prime factors of 220  -> 2,2,5,11
#then, the possible subsets of these are:
#11, 5, (5*11), 2, (2*11), (2*5), (2*5*11), etc.

#this function was sourced from problem 3 original solution, and can be used to find the prime factors of a number.
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

#this function returns the sum of the divisors below input
sumFactors  <- function(input) {
  x <- findPrimeFactors(input)
  #x <- sort(x)
  counts  <- as.vector(table(x) + 1)
  uniq <- unique(x)

  y <- rep(1,prod(counts))
  meep <- 0:(prod(counts)-1)

  perSets <- c()
  for(jj in 1:length(uniq)) {
    perSets  <- append(perSets, max(1,prod(counts[(jj+1):length(counts)]), na.rm=TRUE))
  }    

  for (ii in 1:length(y)){
    for (jj in 1:length(uniq)) {
      y[ii] <- y[ii]*((uniq[jj])**floor(meep[ii]/perSets[jj]))
      meep[ii] <- meep[ii]%%perSets[jj]
    }
  }
  return(sum(y[-length(y)]))
}

#wow, this function is actually pretty terrible...
y <- 2:10000;
system.time( for (ii in 1:length(y)) { y[ii] <- sumFactors(y[ii])})
   #user  system elapsed 
 #13.267   0.003  13.269 

#original function was not as bad
y <- 2:10000;
system.time( for (ii in 1:length(y)) { y[ii] <- sumProperDivisors(y[ii])})
   #user  system elapsed 
  #1.110   0.003   1.112


#now, simply compute the sum of divisors for all numbers <= 10000
sumAmicNums  <- function(highest) {
  digg  <- 1:highest
  for (ii in 1:length(digg)) {
    digg[ii] <- sumProperDivisors(digg[ii])
  }
  
  amics <- c()

  for (ii in 1:length(digg)) {
    if (!is.na(digg[digg[ii]]) & ii != digg[ii] &  ii == digg[digg[ii]]) {
     amics <- append(amics, digg[ii])
    } 
  }
  
  return(sum(amics))
}

sumAmicNums(10000)
#[1] 31626
