complete<- function(directory="C:/Users/getak/Documents/specdata",id)
        {
        allfiles<-list.files(path = "C:/Users/getak/Documents/specdata")
        df<-data.frame(id=id,nobs=0:0)
        dfrow<-1
        for(j in id)
                { 
                dat<-read.csv(allfiles[j],header = TRUE)
                tnobs<-1:(dim(dat)[1] )   ##total number of observations in the current dataset to be stored in tnobs
                counter<-0
                for(i in tnobs)
                        {
                        if(!is.na(dat[i,"nitrate"])||!is.na(dat[i,"sulfate"]))
                                {
                                counter<-counter+1
                                }
                        }
                df[dfrow,]<-c(j,counter)
                dfrow<-dfrow+1
                }
        return(df)
        }