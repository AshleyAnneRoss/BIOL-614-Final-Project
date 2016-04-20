setwd("/Users/ashleyanneross/Documents/Masters/Courses/BIOL 614/Project/Mammalian gut microbiome/Feb. 26 Axiome files/")

library(ape)
library(RColorBrewer)

tree <-read.tree("Feb18_Newick_Tree_Complete.tre")
plot(tree)

otutable <- read.table ("Apr.14.OTU.Table.txt", header=T)
otutable2 <- otutable[, tree$tip.label]
matrix2 <- as.matrix(otutable2)
scale<-colorRampPalette(colors=c("white","blue"))(10)
heatmap(matrix2, Colv = NA, col = scale, margins = c(9,10), cexRow = 0.1, cexCol = 0.8, xlab = "Mammals", ylab = "Bacteria")