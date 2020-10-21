## Week 1

## Things to have handy
## pch: the ploting symbol - default is open circle
## lty: the line type (default is solid)
## lwd: the line width
## col: plotting color
## xlab: x axis label
## ylab: y axis label

## par() is used to specify global parameters
## las: the orientation of the axis
## bg: background color
## mar: margin size
## oma: the outer margin size
## mfrow: number of plots per row, column (plots are filled row-wise)
## mfcol: number of plots per row, column (plots are filled column-wise)


## Latice plot example -
library(lattice, lib.loc = "C:/Program Files/R/R-4.0.3/library")
state <- data.frame(state.x77, region = state.region)
xyplot(state$Life.Exp ~ Income | region, data = state, layout = c(4,1), ylab = "Life.Exp")

#ggplot example -
library(ggplot2)
data("mpg")
qplot(mpg$displ, hwy, data = mpg)

#histogram
library(datasets)
hist(airquality$Ozone)

#Scatter plot
library(datasets)
with(airquality, plot(Wind, Ozone))

#Boxplot
library(datasets)
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab= "Month", ylab = "Ozone (ppb)")

