
tag @e remove KCS.arrow.rain

execute at @s as @e[type=arrow,sort=nearest,nbt={inGround:0b}] at @s on origin if entity @s[tag=KCS.Players.arrow.rain] as @e[type=arrow,sort=nearest,limit=1] run tag @s add KCS.arrow.rain
execute as @e[tag=KCS.arrow.rain] as @s run scoreboard players set @s KCS.Skill.arrow.Rain.Tick 20
execute as @e[tag=KCS.arrow.rain] as @s run data modify entity @s Glowing set value 1b 
function kcs:main/skill/id/bow/221/in_g_check 

clear @s arrow 5
tag @s remove KCS.Players.arrow.rain
