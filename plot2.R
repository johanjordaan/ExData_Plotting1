source("download.R")  # <--- This downloads and loads the data


with(DT
   ,plot(DateTime
         ,Global_active_power
         ,ylab="Global Active Power (kilowatts)"
         ,xlab=""
         ,type="l"
        )
)


dev.copy(png,'plot2.png')
dev.off()
