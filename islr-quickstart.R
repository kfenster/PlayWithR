# ISLR Getting Started

# load the ISLR datasets
if (!require(ISLR)) {
  install.packages("ISLR")  
  require(ISLR)
}

cat("The list of datasets in the ISLR package\n")
print(ls("package:ISLR"))

# and open the same in the help window
cat("This list also been opened in the Help browser\n")
help(package = ISLR)