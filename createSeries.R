require(xts)

tsWithMean <- function(tsMean=0,tsLen=100, tsMin=-20, startDate='2000-01-01') {
  return(xts(runif(tsLen,tsMin,-tsMin)+tsMean,as.Date(startDate)+1:tsLen))
}

addTrend <- function(timeSeries, addFactor=1) {
  return (cumsum(rep(addFactor,length(timeSeries)))+timeSeries)
}

multTrend <- function(timeSeries, multFactor=0.05) {
  return (cumprod(rep((1+multFactor),length(timeSeries)))+timeSeries)
}
  

data(sample_matrix)
class(sample_matrix)

# create a simple series of just numbers
simpleSeries <- seq(1,500,3)
simpleTimeSeries <- ts(simpleSeries,start=c(1970,1), frequency=12)
simpleTimeSeries1980 <- ts(simpleSeries,start=c(1980,1), frequency=12)
xtsSampleHourly <- xts(seq(100,5000,10)+runif(491,-20,20), Sys.Date()+1:491+runif(491,-20,20)/10)
dailySample <- to.daily(xtsSampleHourly)
dailySampleUni <- dailySample[,4]

intercept <- 134.056
trend_slope <- 1.07345
seasonal

require(forecast)

