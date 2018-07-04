#rock 1 scissor 2 paper 3
rps <- function(player){
  return(switch(
    toString(player-sample(1:3,1,replace=TRUE)),
    '-1'="WIN",
    '2'="WIN",
    '1'="LOSE",
    '-2'="LOSE",
    '0'="DRAW",
    "Wrong input"
  ))
}
rps(2)
