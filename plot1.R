setwd("C:/Users/school/Dropbox/Cousera/Exploratory Data Analysis/project1")
x<-"exdata-data-household_power_consumption/household_power_consumption.txt"
install.packages("lubridate")
library(lubridate)
file<-read.table(x,header = T, sep = ";")
clean<-file == "?"
file[clean]<-NA
data<-subset(file,Date == "1/2/2007")
data1<-subset(file,Date == "2/2/2007")
info<-rbind(data,data1)
final<-as.numeric(as.character(info$Global_active_power))
png(file = "plot1.png", width = 480, height = 480)
hist(final, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()
