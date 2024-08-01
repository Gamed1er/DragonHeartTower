execute at @s as @e[type=arrow,sort=nearest,limit=1] at @s on origin if entity @s[type=player,tag=KCS.Players.arrow.sniper] as @e[type=arrow,limit=1,sort=nearest] run function kcs:main/skill/id/bow/112/tag
tag @s remove KCS.Players.arrow.sniper
