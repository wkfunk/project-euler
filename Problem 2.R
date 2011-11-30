##############################Problem 2:##############################
# Problem 2: By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
makeFib <- function(min=0, max){
  init <- c(0,1)
  add = TRUE;
  while (add) {
    next.num <- sum(init[(length(init)-1):length(init)])
    if (next.num < max) {
      init <- append(init , next.num)
      }
    else {
      add <- FALSE
      }
  }
  return (init)
}
# # # # # # Here's something curious I found:
# # # # # init <- c(1,2,3,4,5)
# # # # # # What I wanted to do was take the last two numbers of the vector
# # # # # # Ended up doing this
# # # # # init[(length(init)-1):length(init)]
# # # # # # [1] 4 5  #sweet, that worked
# # # # # # Here's what I initially typed
# # # # # init[length(init)-1:length(init)]
# # # # # # [1] 4 3 2 1  #wtf?! it reversed the vector and then... omitted the first element?
nah = makeFib(0,4000000)
sum(nah[nah%%2==0])
# [1] 4613732
