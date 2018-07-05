## dplyr
# filter() 행추출
# select() 열추출
# arrange() 정렬
# mutate() 변수추가
# summarise() 통계치산출
# group_by() 집단별로 나누기
# left_join() 데이터합치기(열)
# bind_rows() 데이터합치기(행)
# View() 뷰어창에서 데이터 확인!! 주의 V가 대문자
## 문자가 들어있는 파일을 불러올때는 stringAsFactors = F
## 를 넣어줄것. 지정하지 않으면 문자요소는 factor 로
## 전환 됨. 숫자는 전환 되지 않음
# df_exam <- subset(df_exam,select = -newsum)
# df_exam <- subset(df_exam,select = -id)

install.packages("dplyr")
library(dplyr)
library(ggplot2)
is.data.frame(df_exam)
path <- getwd() # wordking directory
path
setwd("csv_exam") # 폴더를 미리 만들고 설정한다.
df_exam <-read.csv("csv_exam.csv")     ## 문자가 있는 파일을 불러올때는 stringAsFactors =F 입력해주야한다.

View(df_exam)
df_exam <- rename(df_exam, userid = id)

df_exam <- subset(df_exam,select = -total_AVG)

df_exam$sum<-apply(df_exam[,2:4],1,sum) # 합계 계산
df_exam$average<-apply(df_exam[,2:4],1,mean) # 평균 계산
df_exam$grade <- ifelse(df_exam$average>=90,"A",
                        ifelse(df_exam$average>=80,"B", 
                          ifelse(
                              df_exam$average>=70,"C",
                                ifelse(
                                    df_exam$average>=60,"D","F"))))
arrange(df_exam,desc(df_exam$average)) # 평균으로 높은순으로(DESC)로 정렬
arrange(df_exam,df_exam$grade) # grade로 ABCD순으로 정렬
hist(df_exam$average)
table(df_exam$grade)
qplot(df_exam$grade)
summary(df_exam)
write.csv(midwest, file = "update_exam.csv")