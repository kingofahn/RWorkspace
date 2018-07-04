# 계산기
calculator<- function(input1,opcode,input2){
  return(c(input1,opcode,input2,'=',
           switch(opcode,
                  '+' = input1+input2,
                  '-' = input1-input2,
                  '*' = input1*input2,
                  '%%' = input1%%input2,
                  '%/%' = input1%/%input2,
                  '/' = input1/input2
           )
  )
  )
}
res=calculator(30,'+',50)
cat(res)