# stmt를 합치면 function이 된다.
# 4가지가 반드시 있어야 function이 된다. Syntax 
# Function Name, Arguments, Function Body, Return Value

grade <- function(name,kor,eng,math){
  return()
}

# 국영수 합계, 평균, 학점 구하기
name <- 'HJ';
eng <- 55
kor <- 100
res <- c(kor,eng,math)


math <- 73

cat("*****************************\n",
    "Name", "Total", "Avg","Grade","\n",
    name,sum(res),mean(res),
    switch(toString(mean(res)%/%10),
                   '10' = 'A',
                   '9' = 'A',
                   '8' = 'B',
                   '7' = 'C',
                   '6' = 'D',
                   '5' = 'E',
                   'f'),"\n",
    "*****************************"
    )
