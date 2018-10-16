### How have emissions from motor vehicle sources changed from 1999???2008 in Baltimore City?

## Load files
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Set png
png(filename = "plot5.png")

## Subset coal combustion related NEI data
NEI_motorvehicle<- NEI[which(NEI$SCC %in% SCC[grep("motor",SCC$SCC.Level.Three,ignore.case = TRUE),"SCC"] & NEI$fips=="24510"),]

## use "motor vehicle" get 2 rows of data, use "vehicle" get 667 rows of data, use "motor" get 88 rows of data. after exam subseted datas, I decided to use the motor as the paramter.
g<-ggplot(NEI_motorvehicle,aes(year,Emissions))
g + geom_line(stat = "summary",fun.y="sum") + labs(y="Emissions from motor vehicle for Baltimore City",x = "Year (1999 - 2008)")

## Save file
dev.off()