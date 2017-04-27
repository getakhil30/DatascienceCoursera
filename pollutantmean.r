pollutantmean<- function (directory, pollutant, id=1:332)
  {
      
  allFiles <- list.files(path = directory, full.names = TRUE) ## reading all the csv files in the directory to a char vector allFiles
    
    
  for(i in id){                          ##For loop iterating through all the csv files
      if(pollutant=="nitrate"||pollutant=="Nitrate")
      {
        x<-read.csv(allFiles[i])         ##Reading the data from each csv file.
        print(paste("Nitrate Mean for ","monitor ",i," is ",mean(x$nitrate,na.rm = TRUE),sep="")) ##nitrate mean for all Monitors
      } 
      
      if(pollutant=="sulfate"||pollutant=="Sulfate")
      {
        x<-read.csv(allFiles[i])          ##Reading the data from each csv file.
        print(paste("Sulfate Mean for ","monitor ",i," is ",mean(x$sulfate,na.rm = TRUE),sep="")) ##sulfate mean for all Monitors
      }
   }
  }
