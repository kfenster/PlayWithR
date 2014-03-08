# "contingency table" of student data. Counts for the 4 buckets
tbl = table(Default[c("default","student")])

# % default : very small
rowSums(tbl) / sum(tbl)

# but are students more likely to default?
# p(student | default = YES) vs p(~student | default = YES)
(tbl / colSums(tbl))["Yes",  , drop=FALSE]

# plotting a multivariate normal distribution
library(MASS)
library(rgl)
data = mvrnorm(10000, rep(0,3), diag(c(1,2,1)))
plot3d(data[,1], data[,2], data[,3], aspect="iso")
