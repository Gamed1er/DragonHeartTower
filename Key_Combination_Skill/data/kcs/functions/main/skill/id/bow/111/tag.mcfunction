

execute as @e[type=arrow] at @s on origin if entity @s[tag=KCS.Players.arrow.piercing] as @e[type=arrow,sort=nearest,limit=1] run tag @s add KCS.arrow.piercing
execute as @e[tag=KCS.arrow.piercing] as @s run data modify entity @s PierceLevel set value 2

tag @s remove KCS.Players.arrow.piercing