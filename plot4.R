source("download.R")    # <--- This downloads and loads the data

par(mfrow=c(2,2))

with(DT,plot(DateTime,Global_active_power,ylab="Global Active Power",xlab="",type="l"))

with(DT,plot(DateTime,Voltage,,xlab="datetime",type="l"))

with(DT,plot(DateTime,Sub_metering_1,col="black",ylab="Energy sub metering",xlab="",type="l"))
with(DT,lines(DateTime,Sub_metering_2,col="red"))
with(DT,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",col=c("black","red","blue"),legend=grep("Sub(.*)",value=TRUE,names(DT)),lty=1,bty = "n")

with(DT,plot(DateTime,Global_reactive_power,xlab="datetime",type="l"))



dev.copy(png,'plot4.png')
dev.off()
