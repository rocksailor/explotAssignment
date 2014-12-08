file<- "D:\\R\\prac\\plot\\household_power_consumption.txt"
plot<- read.csv(file, skip=66637,nrows=2880,header=TRUE,sep=";",col.names=c("Date","Time","GAP","GRP","V","GI","SM1","SM2","SM3"),na.strings="?")

e<-as.POSIXct(paste(a,c), format="%d/%m/%Y %H:%M:%S")
png("plot4.png", height=480, width=480)
par(mfrow=c(2,2))
plot(e,plot$GAP,pch=21,type="l",ylab="Global active power")
plot(e,plot$V,pch=21,type="l",xlab="datetime", ylab="")
plot(e,plot$GAP, pch=21,type="l",ylab="energy sub metering")
plot(e, plot$SM1, type = "l",col="black", xlab="datetime", ylab="")
points(e,plot$SM2, type="l", col="red")
points(e,plot$SM3, type = "l",col="blue")
dev.off()

plot.new()
