 Light<-matrix(scan(system.file("extdata", "Lightly", package="Icens"), quiet=TRUE),nc=5,byr=TRUE)
 Heavy<-matrix(scan(system.file("extdata", "Heavy", package="Icens"), quiet=TRUE),nc=5,byr=TRUE)
 hiv<-rbind(Light,Heavy)
 trt <- c(rep(1,nrow(Light)),rep(2,nrow(Heavy)))
 trt <-as.factor(trt)
 levels(trt) <- c("Light", "Heavy")
 hiv <- data.frame(yL=hiv[,1], yR=hiv[,2], zL=hiv[,3], zR=hiv[,4], 
    Age=hiv[,5], Trt = trt)
 rm(Light, Heavy, trt)
