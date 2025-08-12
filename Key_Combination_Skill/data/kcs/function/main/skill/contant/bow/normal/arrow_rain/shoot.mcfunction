

execute at @s as @e[type=arrow,sort=nearest,nbt={inGround:0b},limit=1] at @s on origin if entity @s[tag=KCS.Players.arrow.rain] as @e[type=arrow,sort=nearest,limit=1] run function kcs:main/skill/contant/bow/normal/arrow_rain/tag
function kcs:main/skill/contant/bow/normal/arrow_rain/in_g_check

scoreboard players remove @s KCS.Players.Arrow_Points 5
tag @s remove KCS.Players.arrow.rain
