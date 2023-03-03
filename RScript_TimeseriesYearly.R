install.packages("tframe");
install.packages("tfplot");
library("tframe");
library("tfplot");

setwd("/Users/brandonpetersen/Library/CloudStorage/OneDrive-SNHU/Current_Classes/DAT375_Data_Analysis_Techniques/Module_Seven") 

crimestormdataQ <- read.csv("crimeStormQ.csv")
print(crimestormdataQ)

crimenostormdataQ <- read.csv("crimenostormQ.csv")
print(crimenostormdataQ)


z<-ts(cumsum(crimestormdataQ$Loss)/1000,start=c(2017,1), frequency=12)
x<-ts(cumsum(crimenostormdataQ$Loss)/1000,start=c(2017,1), frequency=12)

tfplot(z,x,
       ylab="Victim Loss in K$",
       xlab="By Month by Year",
       title="Victim Loss From Crimes for Jan 2017 - Dec 2019",
       subtitle = "Cumulative Loss in Thousands of Dollars",
       legend=c("Crimes During Storms (black)", "Crimes When No Storms (red)"),
       source="Source: DAT Data")