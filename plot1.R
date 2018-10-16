### Have total emissions from PM2.5 decreased in the United States from 1999 to 2008? Using the base plotting system, make a plot showing the total PM2.5 emission from all sources for each of the years 1999, 2002, 2005, and 2008.

## Load files
NEI <- readRDS("summarySCC_PM25.rds")

## Caculate All Resource group by years
result1 <- tapply(NEI$Emissions, NEI$year, sum)

## Set png
png(filename = "plot1.png")

## Draw plot
barplot(result1/10^6, xlab = "Year", ylab = "PM2.5 Emissions(10^6 Tons)", main = "Total PM2.5 Emissions From All US Sources")

## Save file
dev.off()