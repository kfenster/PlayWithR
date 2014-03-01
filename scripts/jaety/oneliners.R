# "contingency table" of student data. Counts for the 4 buckets
tbl = table(Default[c("default","student")])

# % default : very small
rowSums(tbl) / sum(tbl)

# but are students more likely to default?
# p(student | default = YES) vs p(~student | default = YES)
(tbl / colSums(tbl))["Yes",  , drop=FALSE]
