execute at @s as @e[type=item_display,tag=direction_arrow] if score @s ID_system = @p ID_system rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~1 ~ facing entity @e[limit=1,tag=foot_of_tower] feet
execute as @e[type=item_display,tag=direction_arrow] at @s run tp @s ~ ~ ~ ~ 0
execute at @s if entity @e[tag=foot_of_tower,distance=..5] run tag @a remove go_to_foot_of_tower
execute at @s if entity @e[tag=foot_of_tower,distance=..5] run tag @a add go_to_tower_gate
execute at @s if entity @e[tag=foot_of_tower,distance=..5] run scoreboard players set @e[tag=homunculus] plot_progress 1
execute at @s if entity @e[tag=foot_of_tower,distance=..5] run scoreboard players set @e[tag=homunculus] plot_type 0
advancement revoke @s only mob:mission_system/go_to_foot_of_tower