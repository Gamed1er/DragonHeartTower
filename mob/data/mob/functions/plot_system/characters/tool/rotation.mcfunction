execute at @s as @e[tag=character,sort=nearest,limit=1,distance=..5] store result score @s rotation run data get entity @s Rotation[0]

execute at @s[predicate=mob:hold_detect/rotate_right] as @e[tag=character,sort=nearest,limit=1,distance=..5] run scoreboard players add @s rotation 1

execute at @s[predicate=mob:hold_detect/rotate_left] as @e[tag=character,sort=nearest,limit=1,distance=..5] run scoreboard players remove @s rotation 1

execute at @s as @e[tag=character,sort=nearest,limit=1,distance=..5] store result entity @s Rotation[0] float 1 run scoreboard players get @s rotation

execute at @s as @e[type=interaction,sort=nearest,limit=1,distance=..5] store result entity @s Rotation[0] float 1 run scoreboard players get @s rotation
