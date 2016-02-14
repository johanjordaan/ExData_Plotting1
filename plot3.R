source("download.R") # <--- This downloads and loads the data

with(DT
   ,plot(DateTime
         ,Sub_metering_1
         ,col="black"
         ,ylab="Energy sub metering"
         ,xlab=""
         ,type="l"
        )
)

with(DT
   ,lines(DateTime
         ,Sub_metering_2
         ,col="red"
        )
)

with(DT
   ,lines(DateTime
         ,Sub_metering_3
         ,col="blue"
        )
)

legend("topright",col=c("black","red","blue"),legend=grep("Sub(.*)",value=TRUE,names(DT)),lty=1)

dev.copy(png,'plot3.png')
dev.off()
