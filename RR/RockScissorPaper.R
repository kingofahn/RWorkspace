#rock 1 scissor 2 paper 3
user<-1
com<-sample(1:3,1,replace=TRUE)
result <- user-com
if(result== -1 || result== 2) print("Win")  else 
  if(result== 1 || result== -2) print ("Lose") else print("Draw")

# switch
com<-sample(1:3,1,replace=TRUE)
my<-1
cat('컴퓨터 :',com)
res<-toString(my-com)
cat('결과 :',res)
x <- switch(
  res,
  '-1'="WIN",
  '2'="WIN",
  '1'="LOSE",
  '-2'="LOSE",
  '0'="DRAW",
  "ERROR"
) 
print(x)

# switch
my<-1
print(switch(
  toString(my-sample(1:3,1,replace=TRUE)),
  '-1'="WIN",
  '2'="WIN",
  '1'="LOSE",
  '-2'="LOSE",
  '0'="DRAW"
))