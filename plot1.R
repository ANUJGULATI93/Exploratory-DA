my_data<-read.delim("household_power_consumption.txt",sep = ";")
my_df<-my_data[my_data$Date %in% c("1/2/2007","2/2/2007"),]
gap<-as.numeric(my_df$Global_active_power)
png("plot1.png",width=480,height = 480)
hist(gap,col = "red",main = "Global Active Power",xlab = "Global Active Power(kilowatts)")
dev.off()
