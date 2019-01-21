data=("USArrests")
View (USArrests)
ds=scale(USArrests)
dst=dist(ds)
kmeans(ds,4)


k=c(2,3,4,5,6,8,9,10,15)
result=rep(0,length(k))
for ( l in 1: length(k))
{
  kresult=kmeans(ds,k[l])
  result[l]=kresult$tot.withinss/kresult$betweenss
}
plot(k,result,,lty=2,type='l',ylab = 'WSS/BSS')



res=matrix(rep(0,400),nrow=100)
for (i in 1:100) {
  kres=kmeans(ds,4)
  res[i,]=kres$size
}
res





