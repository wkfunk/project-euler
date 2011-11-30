##############################Problem 4:##############################
# Find the largest palindrome made from the product of two 3-digit numbers.
# Brute force: 999x999 matrix of products, apply function to determine whether they are palindromes
nah <- matrix(nrow=900, ncol=900)
for (ii in 100:999) {
  for (jj in 100:999) {
    nah[ii-99,jj-99] <- ii*jj
  }
}
isPalindrome <- function(num) {
  lengthz <- nchar(num)
  if (lengthz %% 2 == 0) {
    half <- lengthz/2
    half.plus <- half+1
  } else {
    half <- (lengthz-1)/2
    half.plus <- half+2
  }
  
  first <- substring(num,1,half)
  last <- paste(rev(substring(num,half.plus:lengthz,half.plus:lengthz)), collapse="")
  
  return(first == last)
}
digg <- apply(nah, c(1,2), isPalindrome)
max(max(nah[digg]))
# [1] 906609
# bonus points: what numbers produced this value?
nums = arrayInd(match(max(max(nah[digg])), nah), dim(nah)) + 99
# prod(nums)
# [1] 906609
