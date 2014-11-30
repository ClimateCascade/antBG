###Generate a network of ant co-occurrences for the Harvard Forest Ant snap to grid.
###Started 23Aug2013
###Uses HF data file hf147-13-antData_use4R_snappedToClim.csv

###Make sure to set home directory to hf_ant_coo
x <- read.csv('./data/hf147-13-antData_use4R_snappedToClim.csv')

###Generate the ant species list
spp.l <- names(table(x[,1]))

###Initiate the network matrix
ant.m <- matrix(0,nrow=length(spp.l),ncol=length(spp.l))
colnames(ant.m) <- rownames(ant.m) <- spp.l

###Link the lat-lon values for sites
latlon <- paste(x[,2],x[,3])

###Build the ant co-occurrence network
for (i in 1:length(latlon)){
  for (j in 1:length(latlon)){
    if (latlon[i]==latlon[j]){
      ant.m[rownames(ant.m)==x[i,1],colnames(ant.m)==x[j,1]] <- ant.m[rownames(ant.m)==x[i,1],colnames(ant.m)==x[j,1]] + 1
      ant.m[rownames(ant.m)==x[j,1],colnames(ant.m)==x[i,1]] <- ant.m[rownames(ant.m)==x[j,1],colnames(ant.m)==x[i,1]] + 1
    }else{}
    print(paste(i,j,sep='_'))
  }
}

###Write ant.m to file
write.csv(ant.m,file='./results/ant_conet.csv')
