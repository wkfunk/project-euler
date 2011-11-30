##############################Problem 67:##############################
nah <- read.table("~/Desktop/euler solns/p67triangle.txt", fill=NA, col.names=c(1:100))
for (ii in 99:1) {
  for (jj in 1:ii) {
    nah[ii,jj] <- nah[ii,jj] + max(nah[ii+1,jj],nah[ii+1,jj+1])
  }
}
nah[1,1]
# [1] 7273
