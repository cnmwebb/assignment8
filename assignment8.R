#install plyr
install.packages("plyr")
library(plyr)

#import dataset and set as a value
x=read.table(file.choose("Dataset"),header=TRUE, sep=(","))

#sort by Sex and find Grade.Average for each sex
y=ddply(x, "Sex", transform, Grade.Average=mean(Grade))

#print the sorted averages to a file
write.table(y, "Sorted_Average",sep = ",")

#filter data that includes the letter iI
newx=subset(x,grepl("[iI]",x$Name))

#print newx to a file
write.table(newx,"DataSubset",sep=",")

#create dataframe for further manipulation
as.data.frame(newx)