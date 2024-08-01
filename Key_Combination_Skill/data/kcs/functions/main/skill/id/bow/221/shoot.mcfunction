

execute at @s as @e[type=arrow,sort=nearest,nbt={inGround:0b},limit=1] at @s on origin if entity @s[tag=KCS.Players.arrow.rain] as @e[type=arrow,sort=nearest,limit=1] run function kcs:main/skill/id/bow/221/tag
function kcs:main/skill/id/bow/221/in_g_check 

clear @s arrow 5
tag @s remove KCS.Players.arrow.rain
