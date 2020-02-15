# Sys.unsetenv("http-proxy")
# Sys.unsetenv("https-proxy")
# 
# 
# Sys.setenv(http_proxy = "http://www-proxy.us.oracle.com:80")
# Sys.setenv(https_proxy = "https://www-proxy.us.oracle.com:80")
# Sys.getenv("http_proxy")
# Sys.getenv("https_proxy")



library(readr)
GDPIndia <- read_csv("D:/Prasanna/Personal/Learning/Other Univ Reads/GL/Course Material/TimeSeries Forecasting/Datasets/GDPIndia.csv")
View(GDPIndia)
dim(GDPIndia)
GDPIndia[1,]
GDPIndia.ts = ts(GDPIndia[,2],start = 1960)
GDPIndia.ts
plot(GDPIndia.ts)
GDPIndia.ts = ts(GDPIndia[,2],start = GDPIndia[1,1])




GDPUS <- read_csv("D:/Prasanna/Personal/Learning/Other Univ Reads/GL/Course Material/TimeSeries Forecasting/Datasets/GDPUS.csv")
dim(GDPUS)
GDPUS[1,]
GDPUS.ts = ts(GDPUS[,2], start = 1929)
plot(GDPUS.ts)


Petrol= GDPIndia <- read_csv("D:/Prasanna/Personal/Learning/Other Univ Reads/GL/Course Material/TimeSeries Forecasting/Datasets/Petrol.csv")
dim(Petrol)
names(Petrol)
Petrol[1,]
Petrol.ts=ts(Petrol[,3], start=c(2001,1),frequency = 4)
Petrol.ts
plot(Petrol.ts)




TractorSales = read.csv("D:/Prasanna/Personal/Learning/Other Univ Reads/GL/Course Material/TimeSeries Forecasting/Datasets/TractorSales.csv")
TractorSales
dim(TractorSales)
TractorSales[1,]
TractorSales.ts = ts(TractorSales[,2], start=c(2003,1), frequency = 12)
TractorSales.ts
dim(TractorSales.ts)
plot(TractorSales.ts)



# install.packages("forecast")
 library(forecast)


monthplot(TractorSales.ts)
seasonplot(TractorSales.ts)

library(ggplot2)

ggseasonplot(TractorSales.ts)

decompose(TractorSales.ts)

plot(decompose(TractorSales.ts))

par(mfrow=c(1,1))

# forecasting

hw(TractorSales.ts)

plot(hw(TractorSales.ts))

hw(GDPIndia.ts)


holt(GDPIndia.ts)

plot(holt(GDPIndia.ts))


install.packages("Rcmdr")
library(Rcmdr)
