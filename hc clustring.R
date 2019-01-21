data=("USArrests")
View (USArrests)
ds=scale(USArrests)


mean(ds[,1])
sd(ds[,1])


dsdist=dist(ds)
library(ggplot2)
library(factoextra)
fviz_dist(dsdist)


hclust(dsdist)
plot(hclust(dsdist))
hdist=hclust(dsdist)



clustergrp=cutree(hdist,k=4)
clustergrp
table(clustergrp)



fviz_dend(hdist,k=4)
fviz_dend(hdist,k=4,rect=TRUE)

hcsingle=hclust(dsdist,method = 'single')
hccomp=hclust(dsdist,method = 'complete')
hcavg=hclust(dsdist,method = 'average')
fviz_dend(hcsingle)
fviz_dend(hccomp)
fviz_dend(hcavg)




library(cluster)
library(dendextend)
d1=as.dendrogram(hcsingle)
d2=as.dendrogram(hccomp)
d3=as.dendrogram(hcavg)
tanglegram(d1,d2)
tanglegram(d1,d3)
tanglegram(d3,d2)


cor.dendlist(dendlist(d1,d2,d3))



