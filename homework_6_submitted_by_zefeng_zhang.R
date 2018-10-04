
readStates<-function(states)
{states<-states[-1,]
num.row<-norw(states)
states<-states[-num.row,]
states<-states[,-1:-4]
colnames(states)<-c("stateName", "population","popOver18","percentOver18")
  return(dfStates)}
