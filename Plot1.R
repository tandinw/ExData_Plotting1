Data<- read.table("C:/Users/tandi/OneDrive/Desktop/Coursera/EDA CP WK1/household_power_consumption.txt", header = T,sep = ";", na.strings = "?")
Data
Data$Date <- as.Date(Data$Date, format = "%d/%m/%Y")
Data <- subset(Data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
Data$datetime <- strptime(paste(Data$Date, Data$Time), "%Y-%m-%d %H:%M:%S")

hist(Data$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
