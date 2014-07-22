library(rsdmx)
library(data.table)


# "http://stats.oecd.org/restsdmx/sdmx.ashx/GetData/MIG/TOT../OECD?startTime=2000&endTime=2011"
root        <- "http://stats.oecd.org/restsdmx/sdmx.ashx"
resource    <- "GetData"
flowRef     <- "MIG"
key         <- "TOT.."
time.filter <- "OECD?startTime=2000&endTime=2011"
query <- paste(root,resource,flowRef,key,time.filter, sep="/")

# OR specifiy a filepath and set isURL=F

#file  <- ""

sdmx <- readSDMX(query)
#sdmx <- readSDMX("http://stats.oecd.org/restsdmx/sdmx.ashx/GetData/MIG/TOT../OECD?startTime=2000&endTime=2011")
stats <- data.table(as.data.frame(sdmx))
stats