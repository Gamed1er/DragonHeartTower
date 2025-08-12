

scoreboard objectives add KCS.test dummy
scoreboard objectives add KCS.reg dummy

scoreboard objectives add KCS.Skill.ID dummy
scoreboard objectives add KCS.Skill.ID.Count dummy
scoreboard objectives add KCS.Skill.Hurt.Count dummy
scoreboard objectives add KCS.Skill.Range dummy
scoreboard objectives add KCS.Skill.Angle dummy
scoreboard objectives add KCS.Skill.Damage dummy


scoreboard objectives add KCS.Skill.arrow.Rain.Tick dummy
scoreboard objectives add KCS.Skill.arrow.Crit.Tick custom:play_time


scoreboard objectives add KCS.Players.Bow.shoot used:bow
scoreboard objectives add KCS.Players.arrow.count dummy
scoreboard objectives add KCS.Players.Arrow_Points dummy
scoreboard objectives add KCS.Players.Arrow_Points.Base dummy
scoreboard objectives add KCS.Players.Arrow_Points.Filling_Speed dummy
scoreboard objectives add KCS.Players.Arrow_Points.Filling_Speed.TickperSec dummy




kill @e[tag=KCS.marker.vector]
execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["KCS.marker.vector"]}


scoreboard objectives add Math dummy
scoreboard players set tick Math 20
scoreboard players set 5 Math 5
scoreboard players set 10 Math 10
scoreboard players set 100 Math 100