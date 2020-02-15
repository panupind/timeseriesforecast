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

