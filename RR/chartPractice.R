# SQL30 바차트 : 구단승리순으로 순위매기기
query = "SELECT A.WINNER,
COUNT(A.WINNER) WIN_COUNT
FROM(SELECT
K.SCHE_DATE 경기날짜,
CASE
WHEN K.HOME_SCORE > K.AWAY_SCORE THEN HT.TEAM_NAME
WHEN K.AWAY_SCORE > K.HOME_SCORE THEN AT.TEAM_NAME
ELSE '무승부'
END WINNER
FROM SCHEDULE K
JOIN TEAM HT
ON K.HOMETEAM_ID LIKE HT.TEAM_ID
JOIN TEAM AT
ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
WHERE
K.GUBUN LIKE 'Y'
AND K.SCHE_DATE LIKE '2012%'
)A
WHERE A.WINNER NOT LIKE '무승부'
GROUP BY A.WINNER
ORDER BY WIN_COUNT DESC"
rs <- dbGetQuery(conn, query)
barplot(rs[,2],names.arg=rs[,1], main = "승리수")


# SQL29 파이차트 : 좌석수가 많은 대로 스타디움 순서 매기기 
query ="SELECT ROWNUM NO, A.STADIUM, A.SEAT_COUNT
        FROM (  SELECT S.STADIUM_NAME STADIUM, S.SEAT_COUNT SEAT_COUNT
              FROM STADIUM S
              ORDER BY S.SEAT_COUNT DESC) A"
rs <- dbGetQuery(conn, query)
pie(rs$SEAT_COUNT,
    radius = 1,
    labels=substr(rs$STADIUM,1,2)
    )


# SQL20 산포도 : 월별 경기수 


# SQL27 팀별 골키퍼의 평균키로 라인차트 (인덱스값을 팀이름으로 치환가능한지 찾아볼것)
query="select
      rownum No, b.*
      from (select
      (select t2.team_name
      from team t2
      where t2.team_id like t.team_id) TEAM_NAME,
      avg(p.height) HEIGHT
      from player p
      join team t
      on t.team_id like p.team_id
      where p.position like 'GK'
      group by t.team_id
      order by HEIGHT desc) B"
rs <- dbGetQuery(conn, query)
plot(rs$HEIGHT,
     ylim = c(170,190),
     type = "o",
     main = "팀별 골키퍼 평균키", #제목
     xlab = "TEAM NAME",  #X축명
     ylab = "HEIGHT",     #Y축명
     col="blue", #색
     xaxt='n', #x에 자동으로 붙은 값 없애기
     #yaxt='n'  #y에 자동으로 붙은 값 없애기
     #axes=FALSE #도표의 축을 없애고 생기게
     )
axis(1, at=1:11, lab=rs$TEAM_NAME) #xaxt로 없앤 x축에 TEAM_NAME으로 다시 지정


# SQL28 점수차별로 분류한 경기수. 1점차경기 3경기,...6점차경기 1경기, 이렇게 해서 히스토그램



# ※ 주식차트는 나중에 별도로 처리.할테니 하지 말것

