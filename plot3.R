## Assumptions are that raw data has been cleaned, 
##  processed for specific rows in the dataset where 
##  the dates are 2007-02-01 and 2007-02-02. And that 
##  a sub folder, "/Data" is where both the input 
##  and output files will be stored.
data <- read.csv("./Data/my_data.csv")

## Resets the layout to a 1x1 field and adjusts the 
## text size by 0.8 size
par(mfcol = c(1,1))
par(cex=.8)

## Start the plot with the Date_Time element
## against the first y variable "Sub_metering_1"
with(data, plot(Date_Time,Sub_metering_1,
	## name the Y label to:	
	ylab = "Energy sub metering", 
	## use a linear type:
	type = "l",
	## make the X label 'empty':
	xlab = ""
	))

## Add the second y variable "Sub_metering_2"
## insure you also reference the "Date_Time" 
## (Took me forever to figure out why it wasn't
##  showing up )
with(data, lines(Date_Time, Sub_metering_2, col ="red"))

## Finally, add the third y variable, "Sub_metering_3"
with(data, lines(Date_Time, Sub_metering_3, col ="blue"))

## Add the legend in the topright, refernce the lines
## as black, red, and blue, and label the legend text
legend("topright", 
	lwd=1,
	col = c("black","red","blue"),
	legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
	)

## Export file to png file 
dev.copy(png, file = "./Data/plot3.png")

## Close the device for PNG
dev.off()	
