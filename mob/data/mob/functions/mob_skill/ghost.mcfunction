execute as @s at @s unless entity @a[distance=..12] run scoreboard players remove @s ghost_dead_time 1
execute as @s at @s unless block ~ ~ ~ air run scoreboard players remove @s ghost_dead_time 1

execute as @s at @s if entity @a[distance=..12] if block ~ ~ ~ air run scoreboard players set @s ghost_dead_time 1
execute if score @s ghost_dead_time matches ..-120 run kill @s