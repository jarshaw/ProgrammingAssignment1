#Jared Shaw
#Programming Assignment 1
#R Class
#complete.R



complete <- function(directory,id=1:332){
    ##list out file names with subfolders included from full.names=TRUE
    
    ##summarize table with number of observations by ID
    pollute2sum.df <- with(pollute2.df,table(ID))
    
    ##transpose table
    pollute2tran.df <- as.data.frame(t(pollute2sum.df))
    keep <- c("ID","Freq")
    pollute2tran.df <- pollute2tran.df[keep]
    #colnames(pollute2tran.df)[1] <- "id"
    #colnames(pollute2tran.df)[2] <- "nobs"
    #dt6 <- pollute2tran.df[order(id),]
    id <- pollute2tran.df[,"ID"]
    nobs <- pollute2tran.df[,"Freq"]
    dt7 = data.frame(id,nobs)
    dt7 <- na.omit(dt7)
    
    dt7
    #pollute2tran.df
}

#complete("specdata",23)
#str(pollute2.dt)
