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

#Plot the data (Plot 1)
with(powerdata,hist(Global_active_power, col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power"))

#Save as PNG file
if(!file.exists("./Module 4 Project 1/Plots")) 
{dir.create("./Module 4 Project 1/Plots")}

dev.copy(png, file="./Module 4 Project 1/Plots/Plot1.png", height=480, width=480)
dev.off()