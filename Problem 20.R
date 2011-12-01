##############################Problem 20:##############################
# Find the sum of the digits in the number 100!
#digg <- sprintf("%.0f", factorial(100))
#sum(as.numeric(substring(digg, 1:nchar(digg), 1:nchar(digg))))
## [1] 762

sumDigitsofNFactorial  <- function(n) {
  digits <- c(4,2);
  
  for (multiplier in 5:n) {
    digits <- multiplier*digits;
    if (any(digits>9)) {
      for (ii in 1:(length(digits)-1)) {
        new <- digits[ii]%%10
        digits[ii+1] <- digits[ii+1] + ((digits[ii]-new)/10)
        digits[ii] <- new
      }
      ii  <- (ii + 1)
      while (digits[ii] > 9) {
        new  <- digits[ii]%%10
        digits  <- append(digits,((digits[ii]-new)/10))
        digits[ii]  <- new
        ii  <-  (ii + 1)
      }
    }
  }
  return (sum(digits));
}


#> system.time(sumDigitsofNFactorial(100))
 #user  system elapsed 
#0.052   0.000   0.052 
#> sumDigitsofNFactorial(100)
#[1] 648
  
