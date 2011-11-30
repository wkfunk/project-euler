##############################Problem 9:##############################
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.
nah <- array(dim=c(1000,1000))
digg <- array(FALSE, dim=c(1000,1000))
for (ii in 1:1000) {
  for (jj in 1:1000) {
    # nah[ii,jj] <- sqrt(ii**2 + jj**2)
    digg[ii,jj] <- (ii + jj + nah[ii,jj] == 1000)
  }
}
prod(arrayInd(which(digg), dim(digg))[1:2], nah[which(digg)][1])
# [1] 31875000
