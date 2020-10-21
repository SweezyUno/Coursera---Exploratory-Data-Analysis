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

#Scatter plot
library(datasets)
with(airquality, plot(Wind, Ozone))
title(main = "Ozone and Wind in New York City") ## Adds a title
with(subset(airquality, Month == 5), points(Wind, Ozone, col = "blue")) ## Color a subset blue
with(subset(airquality, Month != 5), points(Wind, Ozone, col = "red")) ## Color the others red to make it easy to see
legend("topright", pch = 1, col = c("blue", "red"), legend = c("May", "Other Months")) ## add a legend
model <- lm(Ozone ~ Wind, airquality) ## plot the regression line based on this object
abline(model, lwd= 2) ##add it to the plot and make the line thicker than average


## Multiple Base Plots -
par(mfrow = c(1,2) , mar = c(4,4,2,1), oma = c(0,0,2,0)) ## each call plot() will build making outer margin big enough to insert title at end
with(airquality, {
  plot(Wind, Ozone, main = "Ozone and Wind")
  plot(Solar.R, Ozone, main = "Ozone and Solar Radiation")
  mtext("Ozone and Weather in New York City", outer = TRUE) ## placing text over the top
})

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

#Boxplot
library(datasets)
airquality <- transform(airquality, Month = factor(Month))
boxplot(Ozone ~ Month, airquality, xlab= "Month", ylab = "Ozone (ppb)")

