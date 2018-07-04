m1 <- matrix(c(1:25), nrow = 5, byrow = TRUE)
print(m1)
m2 <- matrix(c(1:25), nrow = 5, byrow = FALSE)
print(m2)
m3 <- matrix(c(25:1), nrow = 5, byrow = TRUE)
print(m3)
m4 <- matrix(c(25:1), nrow = 5, byrow = FALSE)
print(m4)


mtxSelect<-function(input){
  return(switch(toString(input),
                '1'= triangle(),
                '2'= rieul(),
                '3'=diamond()
  ))
}

triangle<-function(){
  return(
    rbind(matrix(c(1,0,0,0,0), nrow = 1, byrow = TRUE),
          matrix(c(2:3,0,0,0), nrow = 1, byrow = TRUE),
          matrix(c(4:6,0,0), nrow = 1, byrow = TRUE),
          matrix(c(7:10,0), nrow = 1, byrow = TRUE),
          matrix(c(11:15), nrow = 1, byrow = TRUE)))
}

rieul<-function(){
  return(
    rbind(matrix(c(1:5), nrow = 1, byrow = TRUE),
          matrix(c(10:6), nrow = 1, byrow = TRUE),
          matrix(c(11:15), nrow = 1, byrow = TRUE),
          matrix(c(16:20), nrow = 1, byrow = TRUE),
          matrix(c(21:25), nrow = 1, byrow = TRUE)))
}

diamond<-function(){
  return(
    rbind(matrix(c(0,0,1,0,0), nrow = 1, byrow = TRUE),
          matrix(c(0,2:4,0), nrow = 1, byrow = TRUE),
          matrix(c(5:9), nrow = 1, byrow = TRUE),
          matrix(c(0,10:12,0), nrow = 1, byrow = TRUE),
          matrix(c(0,0,13,0,0), nrow = 1, byrow = TRUE)))
}


mtxSelect(1)