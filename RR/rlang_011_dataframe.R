# 국영수 합계, 평균, 학점 구하기
grade <- function(name,kor,eng,math){
  return(list(name=name,sum=sum(c(kor,eng,math)),
             mean=mean(c(kor,eng,math)),grade=
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

park<-grade('박지성',70,70,70)

class(park$name)
class(park$sum)
class(park$mean)
class(park$grade)
