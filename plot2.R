plot2 <- function() {
    data <- read.csv("household_power_consumption.txt",sep=";",na.strings="?",dec=".")
    data12 <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")
    lct <- Sys.getlocale("LC_TIME"); Sys.setlocale("LC_TIME", "C")
    dtchar <- paste(as.Date(data12$Date, format="%e/%m/%Y"), data12$Time)
    dateTime <- as.vector(strptime(dtchar,format="%Y-%m-%d %T"))
    actpower <- as.double(data12$Global_active_power)
    png("plot2.png",width=480,height=480)
    plot(dateTime, actpower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
    dev.off()
    Sys.setlocale("LC_TIME", lct)
}