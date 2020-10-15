8 + 4
8 - 4
8 / 4
8 * 4
a <- 8 + 4
b <- 8 - 4
a * b 
b / a 
a / b

v1 <- c(3,4,5,6,7)
v2 <- c (23, 14, 18, 16 , 21)
v3 <- c(v1, v2)

df1 <- as.data.frame(v3)

library("foreign")
getwd()


install.packages("haven")
library("haven")

df2 <- read_dta(file.choose())

df4 <- read_dta("dadosClev.dta")

View(df4)

#get the name of all variables
names(df4)

#analyzes the data type of the  first 10 variables
str(df4, list.len= 10)

# What is the class of the variable b14 (household income)
class(df4$b14)

summary(df4$b14)
#response 
#Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
# 1.000   1.000   3.000   3.153   5.000   6.000      44 

mean(df4$b14, na.rm= TRUE)
#3.152542

View(df4$b14)

hist(df4$b14)

dataHI <- table(df4$b14)
barplot(dataHI)


