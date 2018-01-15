#how to visualize a table
#Source: http://www.r-graph-gallery.com/123-circular-plot-circlize-package-2/

#install.packages("circlize")
#Create data
name=c(3,10,10,3,6,7,8,3,6,1,2,2,6,10,2,3,3,10,4,5,9,10)
feature=paste("feature ", c(1,1,2,2,2,2,2,3,3,3,3,3,3,3,4,4,4,4,5,5,5,5) , sep="")
my_df <- data.frame(name,feature)
my_table <- with(my_df, table(name, feature))

# Charge the circlize library
library(circlize)
# Make the circular plot of table
chordDiagram(as.data.frame(my_table), transparency = 0.5)
