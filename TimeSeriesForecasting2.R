library(readr)
GDPIndia <- read_csv("D:/Prasanna/Personal/Learning/Other Univ Reads/GL/Course Material/TimeSeries Forecasting/Datasets/GDPIndia.csv")
View(GDPIndia)

GDPIndia

GDPIndia.ts = ts(GDPIndia[,2], end = 2017)


GDPIndia.ts
plot(GDPIndia.ts)

library(forecast)
ses(GDPIndia.ts)

# we can see forecast for all years is same. Where as in execel , it will use forecase 
#computed for each year to get forecast for next year

plot(ses(GDPIndia.ts))

holt(GDPIndia.ts)
plot(holt(GDPIndia.ts))
summary(holt(GDPIndia.ts))


library(readr)
TractorSales <- read_csv("D:/Prasanna/Personal/Learning/Other Univ Reads/GL/Course Material/TimeSeries Forecasting/Datasets/TractorSales.csv")
View(TractorSales)

TractorSales.ts = ts(TractorSales [,2], start =  c(2003,1) , frequency =  12 )
TractorSales.ts
plot(TractorSales.ts)


ses(TractorSales.ts)
plot(ses(TractorSales.ts))


holt(TractorSales.ts)
plot(holt(TractorSales.ts))


hw(TractorSales.ts)
plot(hw(TractorSales.ts))
summary(hw(TractorSales.ts))


# sigma = Error varience

# modification  by using seasonal is muliplicative 
plot(hw(TractorSales.ts , seasonal = "m"))

summary(hw(TractorSales.ts , seasonal = "m"))


auto.arima(TractorSales.ts)
auto.arima(GDPIndia.ts)
