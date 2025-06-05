SELECT matchid,player FROM goal
WHERE teamid='GER'


SELECT id,stadium,team1,team2
FROM game
where id='1012'


SELECT player,teamid,stadium,mdate
FROM game JOIN goal ON (id=matchid)
where teamid='Ger'


SELECT team1,team2,player
FROM game JOIN goal ON (id=matchid)
where player like 'marios%'


SELECT player, temid, coach, gtime
FROM goal join eteam on teamid=id
WHERE gtime<=10
