### Have total emissions from PM2.5 decreased in the Baltimore City, Maryland (\color{red}{\verb|fips == "24510"|}fips=="24510") from 1999 to 2008? Use the base plotting system to make a plot answering this question.

## Load files
NEI <- readRDS("summarySCC_PM25.rds")
NEISubset <- NEI[NEI$fips == "24510",]

## Caculate All Resource group by years
result2 <- tapply(NEISubset$Emissions, NEISubset$year, sum)

## Set png
png(filename = "plot2.png")

## Draw plot
barplot(result2, xlab = "Year", ylab = "PM2.5 Emissions(Tons)", main = "Total PM2.5 Emissions From All Baltmore City Source")

## Save file
dev.off()