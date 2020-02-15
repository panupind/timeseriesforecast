Sys.unsetenv("http-proxy")
Sys.unsetenv("https-proxy")

Sys.setenv(http_proxy = "")
Sys.getenv("http_proxy")

Sys.setenv(https_proxy = "")
Sys.getenv("https_proxy")


Sys.setenv()

library(readr)
Train50 <- read_csv("D:/Prasanna/Personal/Learning/Other Univ Reads/GL/Course Material/TimeSeries Forecasting/Datasets/Train_50.csv")
View(Train50)


dim(Train50)
names(Train50)

Train50[1,]

Store1044= Train50[Train50$Store==1044,]
dim(Store1044)
Store1044[1,]
Store1044[882,]

# Turn around the dataset of each store , to reverse the data in ascending order of timeseries

Store1044 = Store1044[c(882:1),]
Store1044[1,]
Store1044[882,]
nrow(Store1044$`Day Of Week`)

# week1 starting on second day of the week , not on 1st day of week. 29th week is ending on Day 1 of the week.
Store1044.ts = ts(Store1044[,4],start = c(1,2), frequency = 7)
Store1044.ts
plot(Store1044.ts)
