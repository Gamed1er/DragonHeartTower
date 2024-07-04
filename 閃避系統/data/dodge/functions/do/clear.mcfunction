

execute as @s at @s run kill @e[limit=1,sort=nearest,tag=ToDH.dodge.M]
execute at @s run tp @s ~ ~ ~
execute as @s run scoreboard players reset @s dodgeCD
execute as @s run tag @s remove dodge
advancement revoke @s only dodge:ready
execute if data entity @s active_effects[{id:"minecraft:resistance",amplifier:2b,show_particles:0b}] run effect clear @s resistance