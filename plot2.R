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

## This plot shows the data in Global_active_power over time 
## in seconds

with(data, plot(Date_Time, Global_active_power, 
	## use a linear type:
	type = "l", 
	## make the X label 'empty':
	xlab = "", 
	## and name the Y label to:	
	ylab = "Global Active Power (kilowatts)"))

## Export file to png file 
dev.copy(png, file = "./Data/plot2.png")

## Close the device for PNG
dev.off()
