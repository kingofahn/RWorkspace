# BMI
height = sample(100:200,1,replace=TRUE)
weight = sample(50:100,1,replace=TRUE)
bmi = weight/(((height)^2)/10000)
height
weight
bmi
if (bmi>=35) print("3단계 비만") else
  if (bmi>=30) print("2단계 비만") else
    if (bmi>=25) print("1단계 비만") else
      if (bmi>=23) print("비만 전단계") else
        if (bmi>=18.5)print("정상") else  print("저체중")