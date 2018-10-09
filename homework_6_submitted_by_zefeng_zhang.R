
# Homework 6 – Submitted by Zefeng Zhang (Ben) on Oct, 2018

#Load and Merge datasets
#1)	Read in the census dataset
readStates<-function(states)
{
states<-states[-1,]
num.row<-nrow(states)
states<-states[-num.row,]
states<-states[,-1:-4]
colnames(states)<-c("stateName", "population","popOver18","percentOver18")
  return(states)
    
}
cleanCensus<-readStates(raw_data)
str(cleanCensus)

#2)	Copy the USArrests dataset into a local variable (similar to HW 2)
arrests<-USArrests
str(arrests)

#3)	Create a merged dataframe -- with the attributes from both dataframes
#get the state names from the USArests dataframe with the rownames） 
#Hint: use the merge command 
#rbind second data change from row to coloum 
arrests$stateName <- row.names(arrests)
totalData<-merge (cleanCensus,arrests, by=c("stateName"))

#Step B: Explore the Data – Understanding distributions
#4) Create a histogram using GGPLOT for the population
# and different histogram for the murder rate

library(ggplot2)
ggplot(totalData, aes（x=population) +
geom_histogram()   

ggplot (totalData, aes(x=murder) +
geom_histogram()

#5) Create a boxplot for the population
#and a different boxplot for the murder rate
ggplot(totalData, aes(x=factor(0),population))+
geom_boxplot()
ggplot(totalData,aes((x=factor(0), murder)+
geom_boxplot

#6)	Explain which visualization (boxplot or histogram) is more helpful 
The boxplot shows the spread of all the data, the median and outliers, which is more helpful than histogram.

#Step C: Which State had the Most Murders – bar charts
#7)	Calculate the number of murders per state

#8)	Generate a bar chart, with the number of murders per state
#Hint: use the geom_col function

#9)	Generate a bar chart, with the number of murders per state. Rotate text (on the X axis), so we can see x labels, also add a title named “Total Murders”.

# 10) Generate a new bar chart, the same as in the previous step, but also sort the x-axis by the murder rate

# 11)	 Generate a third bar chart, the same as the previous step, but also showing percentOver18 as the color of the bar




