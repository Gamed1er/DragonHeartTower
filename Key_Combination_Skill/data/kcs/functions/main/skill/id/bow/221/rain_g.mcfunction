


$execute as @s at @s positioned ~$(X) ~9 ~$(Z) summon arrow run function kcs:main/skill/id/bow/221/arrow



execute as @s if score @s KCS.Skill.arrow.Rain.Tick matches ..0 run return run tag @s remove KCS.arrow.rain
execute as @s run scoreboard players remove @s KCS.Skill.arrow.Rain.Tick 1

