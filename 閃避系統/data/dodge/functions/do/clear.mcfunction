


execute at @s at @e[limit=1,sort=nearest,tag=ToDH.dodge.M] positioned ^ ^ ^ run tp @s ~ ~ ~
execute at @s at @e[limit=1,sort=nearest,tag=ToDH.dodge.M] positioned ^ ^ ^.5 unless block ~ ~ ~ air positioned ^ ^ ^-1. run tp @s ~ ~ ~
execute at @s at @e[limit=1,sort=nearest,tag=ToDH.dodge.M] positioned ^1 ^ ^.5 unless block ~ ~ ~ air positioned ^-1 ^ ^-1. run tp @s ~ ~ ~
execute at @s at @e[limit=1,sort=nearest,tag=ToDH.dodge.M] positioned ^-1 ^ ^.5 unless block ~ ~ ~ air positioned ^1 ^ ^-1. run tp @s ~ ~ ~
execute as @s at @s as @e[limit=1,sort=nearest,tag=ToDH.dodge.M] run function dodge:do/kill
execute as @s run scoreboard players reset @s dodgeCD
execute as @s run tag @s remove dodge
advancement revoke @s only dodge:ready
execute if data entity @s active_effects[{id:"minecraft:resistance",amplifier:2b,show_particles:0b}] run effect clear @s resistance