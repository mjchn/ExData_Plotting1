rm(list = ls())

#Create a directory
if(!file.exists("./Module 4 Project 1"))
{dir.create("./Module 4 Project 1")}

#Download and unzip the file
file <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if(!file.exists("./Module 4 Project 1/household_power_consumption.zip"))
{download.file(file, destfile = "./Module 4 Project 1/household_power_consumption.zip")
  unzip("./Module 4 Project 1/household_power_consumption.zip", exdir = "./Module 4 Project 1")}

#Read the file
coln <- c(Global_active_power="numeric",Global_reactive_power="numeric", Voltage="numeric",Global_intensity="numeric",Sub_metering_1="numeric",Sub_metering_2="numeric",Sub_metering_3="numeric")
masterdata <- read.table("./Module 4 Project 1/household_power_consumption.txt", header=TRUE, sep=";",dec=".", stringsAsFactors=FALSE, na.strings = "?",colClasses=coln)

powerdata <- masterdata[masterdata$Date %in% c("1/2/2007","2/2/2007") ,]

#Change the Data and Time Format
powerdata$Date <- as.Date(powerdata$Date, format = '%d/%m/%Y')
powerdata$DateTime <- as.POSIXct(paste(powerdata$Date, powerdata$Time))

#Delete the rows with NA values
powerdata <-na.omit(powerdata)


#Plot the data and save as PNG (Plot 4)
if(!file.exists("./Module 4 Project 1/Plots")) 
{dir.create("./Module 4 Project 1/Plots")}

png("./Module 4 Project 1/Plots/Plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 

##1st plot
with(powerdata,plot(Global_active_power~DateTime, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l'))
##2nd plot
with(powerdata,plot(Voltage~DateTime, xlab = 'datetime', ylab = 'Voltage', type = 'l'))
##3rd plot
with(powerdata,plot(Sub_metering_1~DateTime, xlab = '', ylab = 'Energy sub metering', type = 'l'))
##Annotate on the 3rd plot
with(powerdata,lines(Sub_metering_2~DateTime,col="red"))
with(powerdata,lines(Sub_metering_3~DateTime,col="blue"))
legend("topright", lty=1, lwd=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex=0.70,bty="n")
##4th plot
with(powerdata,plot(Global_reactive_power~DateTime, xlab = 'datetime', ylab = 'Global_reactive_power', type = 'l'))


dev.off()