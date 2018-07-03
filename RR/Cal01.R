# 계산기
input1 = 10
input2 = 3
opcode = '%%'
res <- switch(opcode,
              '+' = input1+input2,
              '-' = input1-input2,
              '*' = input1*input2,
              '%%' = input1%%input2,
              '%/%' = input1%/%input2,
              '/' = input1/input2
)
cat(input1,opcode,input2,'=',res)