corr<-function(directory="C:/Users/getak/Documents/specdata",threshold){
      fileList<-list.files(path = directory)
      compCases<-complete(id=1:332)
      counter<-0
      correlation<-0
      vecCor<-0
      for(i in 1:332){
              if (compCases[i,2]>threshold){
                      dfComp<-na.omit(read.csv(fileList[i]))
                      correlation<-cor(dfComp$nitrate,dfComp$sulfate)
                      counter<-counter+1
              }
              vecCor[counter]<-correlation
      }
      return(vecCor)
}