

scoreboard objectives add KCS.test dummy

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




kill @e[tag=KCS.marker.vector]
execute positioned 0.0 0.0 0.0 run summon marker ~ ~ ~ {Tags:["KCS.marker.vector"]}