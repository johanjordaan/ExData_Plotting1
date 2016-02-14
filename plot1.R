source("download.R")  # <--- This downloads and loads the data

with(DT
   ,hist(Global_active_power
         ,col="red"
         ,main="Global Active Power"
         ,xlab="Global Active Power (kilowatts)"
        )
)

dev.copy(png,'plot1.png')
dev.off()
