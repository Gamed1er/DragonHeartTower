

tag @s add KCS.Players.standby
execute as @s at @s anchored eyes positioned ^ ^-.75 ^.75 run summon interaction ~ ~ ~ {Tags:["KCS.Skill.interation.key"],width:2.5f,height:2f}
function kcs:main/players/standby/schedule/tag
scoreboard players reset @s KCS.Skill.Hurt.Count
scoreboard players reset @s KCS.Skill.ID
scoreboard players reset @s KCS.Skill.ID.Count
scoreboard players reset @s KCS.Skill.Range
scoreboard players reset @s KCS.Skill.Angle
execute as @s store result score @s KCS.Skill.Damage run attribute @s minecraft:generic.attack_damage get 100

advancement revoke @s only kcs:players/standby_leave