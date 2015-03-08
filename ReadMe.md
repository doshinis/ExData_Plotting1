---
title: "ReadMe"
author: "ND"
date: "Sunday, March 08, 2015"
output: html_document
---

This file describes the various files as part of Exploratory Data Analysis Course Project 1.

This assignment uses data from the UC Irvine Machine Learning Repository, a popular repository for machine learning datasets. In particular, we will be using the "Individual household electric power consumption Data Set" which I have made available on the course web site:

Dataset: Electric power consumption [20Mb]

Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

Descriptions of the 9 variables in the dataset:

Date: Date in format dd/mm/yyyy
Time: time in format hh:mm:ss
Global_active_power: household global minute-averaged active power (in kilowatt)
Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
Voltage: minute-averaged voltage (in volt)
Global_intensity: household global minute-averaged current intensity (in ampere)
Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

####NOTE:
Each plot(n).R file uses the dataset (household_power_consumption.txt). The scripts assume tha avialabiliy of dataset txt file in the from "current directory" same as script file.

####Description of Files and Output:
plot1.R - Plots a histogram for Global Active Power (kilowatts) aginst default as Frequency and produces plot1.png as output.

plot2.R - Plots a basic graph for dates raning 2007-02-01 and 2007-02-02 aginst Global Active Power (kilowatts). Uses chart type = "l"." The dates data is created by extracting Date and Time columns and constructing single date-time object. Produces plot2.png as output.

plot3.R - Plots a basic graph for dates raning 2007-02-01 and 2007-02-02 aginst sub-metering data 1, 2, and 3. Achieved by annotating lines on base plot. The dates data is created by extracting Date and Time columns and constructing single date-time object. Produces plot3.png as output.

plot4.R - Plots four graphs in a single view for various combinations by using layout of 2 rows and 2 columns. Achieved by annotating lines on base plot. The dates data is created by extracting Date and Time columns and constructing single date-time object. Produces plot4.png as output.
