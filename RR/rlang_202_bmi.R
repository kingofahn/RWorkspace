# BMI
calBmi<-function(height,weight){
  bmi = weight/(((height)^2)/10000)
  return(c("키 : ",height,"\n무게 : ",weight,"\nBMI : ",
           if (bmi>=35) print("3단계 비만") else
             if (bmi>=30) print("2단계 비만") else
               if (bmi>=25) print("1단계 비만") else
                 if (bmi>=23) print("비만 전단계") else
                   if (bmi>=18.5)print("정상") else  print("저체중")))
}

res<-calBmi(180,70)
