file<- "D:\\R\\prac\\plot\\household_power_consumption.txt"
plot<- read.csv(file, skip=66637,nrows=2880,header=TRUE,sep=";",col.names=c("Date","Time","GAP","GRP","V","GI","SM1","SM2","SM3"),na.strings="?")

png(filename="plot1.png", width=480, height=480)
a<-hist(plot$GAP,col = "red", border = NULL, main = "Global Active Power", xlab="Global active power(Kilowatts)")
dev.off()
head(plot)
