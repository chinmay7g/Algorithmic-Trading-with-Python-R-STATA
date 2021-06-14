#QuantMod exploration in R


#Installing Quantmod
if(!require("quantmod",quietly = TRUE))
  install.packages("quantmod",dependencies = TRUE, repos = "https://cloud.r-project.org")


#Writing this line means importing library
library('quantmod')

getSymbols("AAPL")

#plotting bar chart
barChart(AAPL)

#Subsetting the timeframe for last 28 days
barChart(AAPL, subset='last 28 days')

#to remove this AAPL stock
rm('AAPL')

getSymbols('JPM')
barChart(JPM, subset='last 20 days')

getSymbols("GOOG")
barChart(GOOG, subset="last 20 days")
barChart(GOOG)

# Adding sophisticated TA terms
getSymbols('MSFT')
chartSeries(MSFT)
addMACD()
add_BBands()
chartSeries(MSFT, subset='last 60 days')
addMACD()
addBBands()
