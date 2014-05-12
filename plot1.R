setwd("C:/Users/Lubomír Štěpánek/Documents/Data Science Specialization/Exploratory Data Analysis/Week 1")

data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

str(data)

data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
data2<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
data2<-cbind(data2,c(1:dim(data2)[1]))

png("plot1.png",units="px",width=480,height=480)
hist(data2$Global_active_power,col="red",main="Global active power",xlab="Global active power (kilowatts)")
dev.off()
