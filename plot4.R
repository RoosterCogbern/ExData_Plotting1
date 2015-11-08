## Assumptions are that raw data has been cleaned, 
##  processed for specific rows in the dataset where 
##  the dates are 2007-02-01 and 2007-02-02. And that 
##  a sub folder, "/Data" is where both the input 
##  and output files will be stored.
data <- read.csv("./Data/my_data.csv")

par(mfcol = c(2,2))
par(cex=.64)
par(mar = c(4,4,2,2))

## First Graph
	with(data, plot(Date_Time, Global_active_power, 
	type = "l", 
	xlab = "", 
	ylab = "Global Active Power"))

## Second Graph
	with(data, plot(Date_Time,Sub_metering_1,
	## name the Y label to:	
	ylab = "Energy sub metering", 
	## use a linear type:
	type = "l",
	## make the X label 'empty':
	xlab = ""
	))

	with(data, lines(Date_Time, Sub_metering_2, col ="red"))
	with(data, lines(Date_Time, Sub_metering_3, col ="blue"))
	legend("topright", 
		lwd=1,
		col = c("black","red","blue"),
		legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
		cex = .95,
		bty = "n"
		)

## Third Graph
	with(data, plot(Date_Time, Voltage, 
	type = "l", 
	xlab = "datetime", 
	ylab = "Voltage"))
	
## Fourth Graph
	with(data, plot(Date_Time, Global_reactive_power, 
	type = "l", 
	xlab = "datetime"))
## Export file to png file 
dev.copy(png, file = "./Data/plot4.png")

## Close the device for PNG
dev.off()
