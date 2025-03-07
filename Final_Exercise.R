data(airquality)
head(airquality)
summary(airquality)
str(airquality)

#airquality dataset was chosen so that I could also perform some data cleaning


#Part3
#We need to find the possible data errors in the dataset and try to either 
#replace them or omit them.

install.packages("ggplot2","tidyverse","dplyr")
library(ggplot2,tidyverse ,dplyr)


is.na(airquality)
clean_data<- na.omit(airquality)

summary(clean_data)

#Part4: Graphs

data(clean_data)
library(ggplot2)
ggplot(clean_data, aes(x=Ozone,y=Temperature))+geom_point()

ggplot(clean_data, aes(x=Ozone,y=Wind))+geom_point()
