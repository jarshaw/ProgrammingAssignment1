
#Jared Shaw
#Programming Assignment 1
#R Class
#corr.R

#setwd("~/R")
#unzip("rprog-data-specdata.zip")

##dflist <- list.files(directory,full.names=TRUE)



corr <- function(directory,threshold = 0){

    pollute2sum.df <- with(pollute2.df,table(ID))
    ptrans.df <- as.data.frame(t(pollute2sum.df))
    psub.df <- subset(ptrans.df, Freq >= threshold)
    parent2.df <- merge(pollute2.df,psub.df,by="ID")
    
    id.length2 = nrow(psub.df)
    idlist = unique(parent2.df$ID)
    cr6 = c()
    for(i in 1:id.length2){
        prnt2_sub.df <- subset(parent2.df,ID==idlist[i])
        newcorr <- cor(x=prnt2_sub.df$nitrate,y=prnt2_sub.df$sulfate)
        cr6 <- append(cr6,newcorr)
    }
    if(is.na(cr6[1])){cr6=c()} else {cr6 <- as.numeric(cr6)}
    
}

#head(cr)
#cr<-corr("specdata",400)