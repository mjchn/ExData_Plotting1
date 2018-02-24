# Exploratory_Data_Analysis
Course Project 1: Base Plotting System

The purpose of this project is to extract the data from the [UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/index.php) and create exploratory graphs to examine how household energy usage varies over a 2-day period in February, 2007.

Click [here](https://github.com/mjchn/ExData_Plotting1) to see the forked repository from RDPeng and to view more details regarding the Course Project.

## List of Files


| R SCRIPT  | OUTPUT | DESCRIPTION | 
| ------------- | ------------- | ------------- |
| [Plot1.R](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot1.R)  |  [Plot1.png](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot1.png)  | Histogram of Global Active Power (in kilowatt)  |
| [Plot2.R](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot2.R)  |  [Plot2.png](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot2.png)  | Line graph of Global Active Power (in kilowatt)  |
| [Plot3.R](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot3.R)  |  [Plot3.png](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot3.png)  |  Line graph of Energy Submetering 1,2,3 (in watt-hour of active energy)  |
| [Plot4.R](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot4.R)  |  [Plot4.png](https://github.com/mjchn/Exploratory_Data_Analysis/blob/master/Plot4.png)  | Line graphs of Global Active Power, Voltage, Energy Submetering 1,2,3 and Global Reactive Power over a 2-day period in February 2007  |  

Download and execute each of the source files by typing:
```
source("Plot1.R")
```
```
source("Plot2.R")
```
```
source("Plot3.R")
```
```
source("Plot4.R")
```

Each R script does the following things:

1. Download, unzip and load the file.
2. Extract the data from the dates 2007-02-01 and 2007-02-02. Convert the Date/Time variables to Date/Time classes in R.
3. Plot the data.
4. Save the plot as PNG file.

