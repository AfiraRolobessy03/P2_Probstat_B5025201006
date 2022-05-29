# 4a.
myFile  <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
dim(myFile)
head(myFile)
attach(myFile)

myFile$V1 <- as.factor(myFile$V1)
myFile$V1 = factor(myFile$V1,labels = c("Kucing Oren","Kucing Hitam","Kucing Putih","Kucing Oren"))

class(myFile$V1)

group1 <- subset(myFile, V1=="Kucing Oren")
group2 <- subset(myFile, V1=="Kucing Hitam")
group3 <- subset(myFile, V1=="Kucing Putih")

# 4b. 
bartlett.test(Length~V1, data=dataoneway)

# 4c.
qqnorm(group1$Length)
qqline(group1$Length)

# 4d. 
dari H0?

# 4e. 
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?
© 2022 GitHub, Inc.
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
