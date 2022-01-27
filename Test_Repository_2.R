summary(mtcars)
library(ggplot2)
head(mtcars)

a = ggplot(mtcars,aes(wt,mpg,color=gear))
a+geom_point()+facet_grid(~cyl)+theme_light()+ggtitle("mtcars Weight (units) as a Function of MPG")+ylab("MPG")+xlab("Weight (units)")

install.packages("pheatmap")
library(pheatmap)

b = as.matrix(mtcars)
pheatmap(b)

library(RColorBrewer)
mycol1 = brewer.pal(11,"RdYlBu")
pheatmap(b,col=mycol1)
dev.off()
help(package="pheatmap")

pheatmap(b,col=mycol1,treeheight_col=0,treeheight_row=0,
         cutree_rows=4,cutree_cols=2,main="Different Automobile Specs")
