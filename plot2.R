file<- "D:\\R\\prac\\plot\\household_power_consumption.txt"
plot<- read.csv(file, skip=66637,nrows=2880,header=TRUE,sep=";",col.names=c("Date","Time","GAP","GRP","V","GI","SM1","SM2","SM3"),na.strings="?")

e<-as.POSIXct(paste(a,c), format="%d/%m/%Y %H:%M:%S")
png(filename="plot2.png",width=480,height=480)
plot(e,plot$GAP,pch=21,type="l",ylab="Global active power(Kilowatts)",xlab="")
dev.off()

