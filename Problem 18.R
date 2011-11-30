##############################Problem 18:##############################
# nah <- "75
# 95 64
# 17 47 82
# 18 35 87 10
# 20 04 82 47 65
# 19 01 23 75 03 34
# 88 02 77 73 07 63 67
# 99 65 04 28 06 16 70 92
# 41 41 26 56 83 40 80 70 33
# 41 48 72 33 47 32 37 16 94 29
# 53 71 44 65 25 43 91 52 97 51 14
# 70 11 33 28 77 73 17 78 39 68 17 57
# 91 71 52 38 17 14 91 43 58 50 27 29 48
# 63 66 04 68 89 53 67 30 73 16 69 87 40 31
# 04 62 98 27 23 09 70 98 73 93 38 53 60 04 23"
meep <- strsplit(nah, "\n", fixed=TRUE)
slick <- strsplit(unlist(meep), " ", fixed=TRUE)
digg <- matrix(nrow=15, ncol=15)
for (ii in 1:15) {
  meep <- as.numeric(unlist(slick[ii]))
  digg[ii,1:length(meep)] <- meep
}
# ###ugly brute force method#####
# r <- array(dim = c(2,2,2,2,2,2,2,2,2,2,2,2,2,2))
# for (ii in 1:2) {
# for (jj in 1:2) {
# for (kk in 1:2) {
# for (ll in 1:2) {
# for (mm in 1:2) {
# for (nn in 1:2) {
# for (oo in 1:2) {
# for (pp in 1:2) {
# for (qq in 1:2) {
# for (rr in 1:2) {
# for (ss in 1:2) {
# for (tt in 1:2) {
# for (uu in 1:2) {
# for (vv in 1:2) {
  # sumz <- digg[1,1]
  
  # x.pos <- c(ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv) - 1
  # for (xx in 1:length(x.pos)) {
    # x.pos[xx] <- sum(x.pos[(xx-1):xx])
  # }
  # x.pos <- x.pos + 1
  
  # for (ww in 2:15) {
    # sumz <- sumz + digg[ww,x.pos[(ww-1)]]
  # }
  # r[ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv] <- sumz
# }}}}}}}}}}}}}}
# # > max(r)
# # [1] 1074
# # > which(r==1074)
# # [1] 12180
# # > arrayInd(12180, dim(r))
     # # [,1] [,2] [,3] [,4] [,5] [,6] [,7] [,8] [,9] [,10] [,11] [,12] [,13] [,14]
# # [1,]    2    2    1    1    2    1    1    2    2     2     2     2     1     2
# # soln: 75, 64, 82,87,82,75, 73,28,83,32,91,78,58,73,93
# less brute-force method:
for (ii in 14:1) {
  for (jj in 1:ii) {
    digg[ii,jj] <- digg[ii,jj] + max(digg[ii+1,jj],digg[ii+1,jj+1])
  }
}
digg[1,1]
# [1] 1074
