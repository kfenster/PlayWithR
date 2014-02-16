# create a simple series of just numbers
simpleSeries <- seq(1,500,3)
simpleTimeSeries <- ts(simpleSeries,start=c(1970,1), frequency=12)
simpleTimeSeries1980 <- ts(simpleSeries,start=c(1980,1), frequency=12)