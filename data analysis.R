m<-c(1,2,3,4,5)
m
#no of elements in the array
length(m)
n<-3:5
n
sq<-seq(1,5)
sq<-seq(1,5,length.out=5)
sq
numv<-c(11.11,22.22,33.33,44.44)
numv
class(numv)
intj<-c(1L,4L,2L,3L)
intj
class(intj)
intv<-c(6,3,5)
intv<-as.integer(intv)
class(intv)
a1<-c(1,7,6,5,3)
a1[c(TRUE,TRUE,FALSE,FALSE,TRUE)]

##Date-8th May

mat<-matrix(c(2:17),nrow=4,byrow=FALSE)
print(mat)
mat<-matrix(c(2:15),nrow=4,byrow=FALSE)
print(mat)
row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3","c4")
matt<-matrix(c(2:17),nrow=4,byrow=TRUE,dimnames =list(row_name,col_name))
matt

##Date-9th May
row_name<-c("r1","r2","r3","r4")
col_name<-c("c1","c2","c3","c4")
matt<-matrix(c(2:17),nrow=4,byrow=TRUE,dimnames =list(row_name,col_name))
matt
matt[3,3]
matt[2,]
matt[,4]

## transpose of matrix
t(matt)

## addition of matrix
q<-matrix(c(3:6),nrow=2)
q
w<-matrix(c(4:7),nrow=2)
w
sum(q+w)

## Employee data 
emp.data<-data.frame(
  emp_id=c(1:4),
  emp_name=c("Lily","Silly","Rolly","Polly"),
  sal=c(12,13,14,15),
  start_year=c("2020-01_01","2020_02_02","2020_03_03","2020_03_03"),
  stringsAsFactors=FALSE
)
print(emp.data)

## Date-10th May
str(emp.data)
f1<-data.frame(emp.data$emp_name,emp.data$sal)
f1
f2<-emp.data[2,]
f2
f3<-emp.data[,2]
f3
f4<-emp.data[2,3]
f4
f5<-emp.data[2:3]
f5
f6<-emp.data[1:2,2:3]
f6
f7<-emp.data[1:3,1:4]
f7
f8<-emp.data[c(2,3),c(2,3)]
f8
f9<-emp.data[c(1,4),c(1,2,4)]
f9
emp.data<-emp.data[-2,]
emp.data

##Date-11th May
x<-list(5,"Sama",19,"2020_04_04")
rbind(emp.data,x)
y<-c("Nagpur","Mumbai","Delhi","Kolkata")
cbind(emp.data,Address=y)
emp<-emp.data[-2]
emp.data
emp.data$start_year<-NULL
emp.data

##Date-19th June
names(mtcars)
View(mtcars)
boxplot(mtcars$hp)

boxplot(mtcars$hp,
        main="mtcars DATA FRAME",
        xlab="X",
        ylab="Y",
        col="orange",
        border="brown",
        horizontal=TRUE,
        notch=TRUE
)
boxplot(iris)

## Student data 
stu.data<-data.frame(
  stu_rollno=c(1:5),
  stu_name=c("Lily","Silly","Rolly","Polly","Dolly"),
  marks=c(60,30,40,90,80),
  status<-function(marks){
    if(marks>=40){
      return("Pass")
    }else{
      return("Fail")
    }
  }
  stringsAsFactors=FALSE
)
print(stu.data)

## 26/06/2023
aggregate(PRICE ~ PROPERTYCITY,propertydata,mean)
aggregate(PRICE ~ PROPERTYCITY + PROPERTYZIP,propertydata,mean)

library(dplyr)

#group_by and pipe operator

propertydata%>%
  select(PROPERTYCITY,PRICE)%>%
  group_by(PROPERTYCITY)%>%
  summarize(mean(PRICE,na.rm =TRUE))

propertydata%>%
  select(PROPERTYCITY,PRICE,PROPERTYZIP)%>%
  group_by(PROPERTYCITY,PROPERTYZIP)%>%
  summarize(mean(PRICE,na.rm =TRUE))

## 28/06/2023

##Question 6 of previos year paper
##(a) Considering mtcars dataset with columns : model, mpg, cyl, disp, hp, drat,

###(iii) Display the records on the basis of ascending order of mpg.

##QVRU/RS-22 / 1230 4 Contd.

##(iv) Count the number of records based on different categories of
##cylinders.
##(v) Use the pipe (%>%) operator to concatenate multiple functions
##and display mean of mpg only for 4 and 8 cylinders.
##To perform the tasks on the mtcars dataset, you can use the dplyr package in R. Here's the code for each task:

##(i) Display the columns from mpg to hp:
##library(dplyr)
##data(mtcars)
##select(mtcars, mpg:hp)
##(ii) Display the records from mtcars where cylinder = 6:
##filter(mtcars, cyl == 6)
##(iii) Display the records based on the ascending order of mpg:
##arrange(mtcars, mpg)
##(iv) Count the number of records based on different categories of cylinders:
##count(mtcars, cyl)
##(v) Use the pipe (%>%) operator to concatenate multiple functions and display the mean of mpg only for 4 and 8 cylinders:
##mtcars %>%
##filter(cyl %in% c(4, 8)) %>%
##summarise(mean_mpg = mean(mpg))

## 03/07/2023
# get a vector of n numbers from 0 to 100
sample(1:100, 100, replace=FALSE)
runif(100,min=0, max=101)

set.seed(123)
runif(10)
sample(1:100, 100, replace=TRUE)
runif(100,min=0, max=101)

## get a vector of n numbers from 0 to 100
sample(1:100, 100, replace=TRUE)
sample(1:100, 100, replace=FALSE)
as.integer(runif(100,min=0,max=101))
floor(runif(100,min=0,max=101))

library(dplyr)



df<-dplyr::sample_n(mtcars,10,replace=TRUE)
print(df)

mat<-matrix(rnorm(25),nrow=5)
print(mat)
