##############################Problem 12:##############################
# What is the value of the first triangle number to have over five hundred divisors?
makeTriangleNumbers <- function(num) {
  triangles <- c()
  init <- 1
  sumz <- 0
  while (length(triangles) < num) {
    sumz <- sumz + init
    triangles <- append(triangles, sumz)
    init <- init + 1
  }
  return(triangles)
}
werrd <- function(num) {  
  init <- 1
  sumz <- 0
  divs <- 1
  maxz <- 0
  while ( prod(table(findPrimeFactors(sumz))+1) <= num ) {
    sumz <- sumz + init
    init <- init + 1
  }
  return(sumz)
}
werrd(500)
# [1] 76576500
