execute at @s on origin run scoreboard players operation @e[sort=nearest,limit=1] mob_varient = @s mob_varient
execute as @s if score @s mob_varient = anger_eerie_skeleton mob_varient run data merge entity @s {damage:1,PierceLevel:3}
execute as @s if score @s mob_varient = anger_dark_skeleton mob_varient run data merge entity @s {damage:3,PierceLevel:3}
execute as @s if score @s mob_varient = grudgeful_evil_skeleton mob_varient run data merge entity @s {damage:5,PierceLevel:3}
#execute at @s on origin if entity @s[tag=anger_eerie_skeleton] run data merge entity @e[sort=nearest,limit=1] {damage:1,PierceLevel:3}
#execute at @s on origin if entity @s[tag=anger_dark_skeleton] run data merge entity @e[sort=nearest,limit=1] {damage:3,PierceLevel:3}
#execute at @s on origin if entity @s[tag=grudgeful_evil_skeleton] run data merge entity @e[sort=nearest,limit=1] {damage:5,PierceLevel:3}
