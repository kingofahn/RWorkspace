grade <- function(name,kor,eng,math){
  return(list(name=name,rsum=sum(c(kor,eng,math)),
              rmean=mean(c(kor,eng,math)),rgrade=
                switch(toString(mean(c(kor,eng,math))%/%10),
                       '10' = 'A',
                       '9' = 'A',
                       '8' = 'B',
                       '7' = 'C',
                       '6' = 'D',
                       '5' = 'E',
                       'f'
                ))) 
}

class(park$name)
class(park$sum)
class(park$mean)
class(park$grade)



park <- grade("박지성",90,90,90)
ho <- grade("호날두",100,95,90)
ri <- grade("메시",50,50,50)
son <- grade("손흥민",85,85,90)
an <- grade("안정환",70,80,80)


grade.data <- data.frame(
  name=c(park$name,ho$name,ri$name,son$name,an$name),
  sum=c(park$rsum,ho$rsum,ri$rsum,son$rsum,an$rsum),
  avg=c(park$rmean,ho$rmean,ri$rmean,son$rmean,an$rmean),
  grade=c(park$rgrade,ho$rgrade,ri$rgrade,son$rgrade,an$rgrade),
  stringsAsFactors = FALSE
)
print(grade.data)







# 파이차트
x <- c(park$rmean,ho$rmean,ri$rmean,son$rmean,an$rmean)
labels <- c(park$name,ho$name,ri$name,son$name,an$name)
pie(x,labels)

# 바차트
barplot(c(park$rmean,ho$rmean,ri$rmean,son$rmean,an$rmean))
barplot(labels)

# 히스토그램
hist(c(park$rmean,ho$rmean,ri$rmean,son$rmean,an$rmean),xlab = "평균",col = "yellow",border = "blue")


## 라인차트
plot(c(park$rmean,ho$rmean,ri$rmean,son$rmean,an$rmean),type = "o")

# 산포도
input <- mtcars[,c('wt','mpg')]
print(input)
plot(x = input$wt,y = input$mpg,
     xlab = "Weight",
     ylab = "Milage",
     xlim = c(2.5,5),
     ylim = c(15,30),		 
     main = "Weight vs Milage"
)

# 주식차트
input <- mtcars[,c('mpg','cyl')]
print(head(input))
boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", main = "Mileage Data")