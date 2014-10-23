#Jared Shaw
#Programming Assignment 1
#R Class
#Pollutantmean

setwd("~/R")
#unzip("rprog-data-specdata.zip")

pollutantmean <- function(directory,pollutant="sulfate",id=1:332){
    ##list out file names with subfolders included from full.names=TRUE
    pollute.dtlist <- list.files(directory,full.names=TRUE)
    
    #another way to create directory:
    #dir = paste(directory,"/",id,".csv",sep="")
    #pollute.dt <- read.csv(dir)
    
    ##Create an empty data.frame
    pollute.dt <- data.frame()
    ##Loop uses id to specified by user or uses default to concat all files
    for(i in id){
        pollute.dt <- rbind(pollute.dt,read.csv(pollute.dtlist[i]))
    }
    
    #another way to subset: first gives error, need %in% to get around it
    #sub_pollute.dt <- pollute.dt[which(pollute.dt[ ,"ID"]==id),]
    #sub_pollute.dt <- subset(pollute.dt, ID %in% id)
    mean(pollute.dt[,pollutant],na.rm=TRUE)
}

#pollutantmean("specdata","nitrate",23)

