
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
arrests
