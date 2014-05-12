# a working directory is set and data are loaded into "data" dataframe
setwd("C:/Users/Lubomír Štěpánek/Documents/Data Science Specialization/Exploratory Data Analysis/Week 1")

data<-read.table("household_power_consumption.txt",header=TRUE,sep=";")

str(data)

# new data called "data2" are extracted from the original set "data" and indicator variable of time of the two days (from 1 to length of data2) is added
data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
data2<-data[which(data$Date=="1/2/2007"|data$Date=="2/2/2007"),]
data2<-cbind(data2,c(1:dim(data2)[1]))

# the plot is created
png("plot3.png",units="px",width=480,height=480)
plot(data2[,10],data2$Sub_metering_1,type="s",xaxt="n",xlab="",ylab="energy sub metering")
points(data2$Sub_metering_2~data2[,10],col="red",type="s")
points(data2$Sub_metering_3~data2[,10],col="blue",type="s")
axis(1,at=c(1,1440,2880),labels=c("Thu","Fri","Sat"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),fill=c("black","red","blue"))
dev.off()
