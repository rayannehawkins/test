## Sample R Code for Git & GitHub Training
# Urban Institute
# 8/30/2016

## Load libraries
library(dplyr)
library(ggplot2)
library(GGally)

## Load sample data
data(iris)
head(iris)

## Perform aggregation of data
out <- iris %>%
	group_by(Species) %>%
	summarise(
		count = n(),
		avg_Petal.Width = mean(Sepal.Width))

## Write output data to file
write.csv(out, "output.csv", row.names=FALSE)

## Create a Scatterplot Matrix
plot <- ggpairs(iris[,1:4], aes(color=Species))

## Write Plot to PDF File
pdf("plot.pdf", useDingbats=FALSE)
plot
dev.off()