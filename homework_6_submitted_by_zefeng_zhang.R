
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

#2)	Copy the USArrests dataset into a local variable (similar to HW 2)
arrests<-USArrests


#3)	Create a merged dataframe -- with the attributes from both dataframes
#get the state names from the USArests dataframe with the rownames） 
#Hint: use the merge command 
#rbind second data change from row to coloum 
arrests$stateName <- row.names(arrests)
totalData<-merge (cleanCensus,arrests, by=c("stateName"))

#Step B: Explore the Data – Understanding distributions
#Create a histogram using GGPLOT for the population
# and different histogram for the murder rate

library(ggplot2)
ggplot(totalData, aes（x=population) +
geom_histogram()
ggplot (totalData, aes(x=murder) +

