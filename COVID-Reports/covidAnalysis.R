
# Clear the working space 
rm(list = ls())

library(readr)
# get the data
covidZip <- read_csv("Downloads/R-Projects/COVID-Reports/COVID-19_cases_by_zip_code_of_residence.csv")
count <- 1
percentLs <- ls()
while(count <58) {
  temp <- as.double((covidZip[count,2] / covidZip[count,3])*100) #cases/population
  percentLs[[count]] <- temp; percentLs
  count <- count + 1 #increment count
}
# percentage of people infected for each zip codes saved to percentLs
# add a new col to covidZip for percent:
covidZip$PercentOfInfected = percentLs  
head(covidZip)

