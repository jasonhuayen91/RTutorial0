#### R Code for Tutorial 2.2 and 2.2b
#### BarPlot, PieChart, BoxPlots

# This is to read in the data, adn save it as LungCapData
LungCapData <- read.table(file="~/Documents/RTutorials/Project1/LungCapData.txt", header = T, sep = "\t")

# Attach the data
attach(LungCapData)

table(Gender)
count <- table(Gender)
table(Gender)/725

percent <- table(Gender)/725

barplot(count)
barplot(percent,main="TITLE",xlab="Gender",ylab="%",las=1)
barplot(percent,main="TITLE",xlab="Gender",ylab="%",las=1, names.arg=c("Female","Male"))
barplot(percent,main="TITLE",xlab="%",ylab="Gender",las=1, names.arg=c("Female","Male"),horiz=TRUE)

pie(count)
pie(count,main="TITLE here")
box()

boxplot(LungCap)
quantile(LungCap, probs = c(0,0.25,0.5,0.75,1))

boxplot(LungCap,main="Boxplot",ylab="Lung Capacity", ylim=c(0,16),las = 1)
boxplot(LungCap ~ Gender)
boxplot(LungCap ~ Gender, main="Boxplot by Gender")
boxplot(LungCap[Gender == "female"], LungCap[Gender == "male"], main="Boxplot by Gender")

AgeGroups <- cut(Age, breaks = c(0,13,15,17,25), labels=c("<13","14/15","16/17","+18"))
Age[1:5]
AgeGroups[1:5]

boxplot(LungCap,ylab="LungCapacity",main="Boxplot of LungCap",las=1)
boxplot(LungCap~Smoke,ylab="LungCapacity",main="Boxplot of LungCap vs Smoke",las=1)
boxplot(LungCap[Age>=18] ~Smoke[Age >=18],ylab="LungCapacity",main="Boxplot of LungCap vs Smoke",las=1)
boxplot(LungCap~Smoke*AgeGroups,ylab="LungCapacity",main="Boxplot of LungCap vs Smoke",las=1)
boxplot(LungCap~Smoke*AgeGroups,ylab="LungCapacity",main="Boxplot of LungCap vs Smoke by AgeGroup",las=1)
boxplot(LungCap~Smoke*AgeGroups,ylab="LungCapacity",main="Boxplot of LungCap vs Smoke by AgeGroup",las=2)
boxplot(LungCap~Smoke*AgeGroups,ylab="LungCapacity",main="Boxplot of LungCap vs Smoke by AgeGroup",las=2,col=c(4,2))


