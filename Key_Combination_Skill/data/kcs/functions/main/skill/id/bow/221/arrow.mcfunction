

execute at @s if entity @e[tag=KCS.arrow.rain,sort=nearest,type=arrow] run data modify entity @s Owner set from entity @e[tag=KCS.arrow.rain,limit=1] Owner
execute at @s if entity @e[tag=KCS.arrow.rain,sort=nearest,type=!arrow] on attacker run data modify entity @e[type=arrow,limit=1,sort=nearest] Owner set from entity @s UUID


data modify entity @s Motion set value [0.0,-1.5,0.0]