setwd("C:/Users/school/Dropbox/Cousera/Exploratory Data Analysis/project1")
x<-"exdata-data-household_power_consumption/household_power_consumption.txt"
install.packages("lubridate")
library(lubridate)
file<-read.table(x,header = T, sep = ";")[,1:3]
data<-subset(file,Date == "1/2/2007")
data1<-subset(file,Date == "2/2/2007")
info<-rbind(data,data1)
date<-as.Date(info$Date, format = "%d/%m/%Y")
active<-as.numeric(as.character(info$Global_active_power))
datetime<-ymd_hms(paste(date,info$Time, sep = "_"))
png(file = "plot2.png", width = 480, height = 480)
plot(datetime,active,ylab = "Global Active Power (Kilowatts)",xlab = "", type = "l", pch = ".")
dev.off()