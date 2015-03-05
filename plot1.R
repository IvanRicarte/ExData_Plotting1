plot1 <- function() {
    data <- read.csv("household_power_consumption.txt",sep=";",na.strings="?",dec=".")
    data12 <- subset(data,Date=="1/2/2007" | Date=="2/2/2007")
    actpower <- as.double(data12$Global_active_power)
    png("plot1.png",width=480,height=480)
    hist(actpower,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
    dev.off()
}