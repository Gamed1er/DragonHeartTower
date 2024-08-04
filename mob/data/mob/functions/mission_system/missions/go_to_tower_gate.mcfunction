execute at @s as @e[type=item_display,tag=direction_arrow] if score @s ID_system = @p ID_system rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~1 ~ facing entity @e[limit=1,tag=tower_gate] feet
execute as @e[type=item_display,tag=direction_arrow] at @s run tp @s ~ ~ ~ ~ 0
execute at @s if entity @e[tag=tower_gate,distance=..2] run tag @a remove go_to_tower_gate
execute at @s if entity @e[tag=tower_gate,distance=..2] run tag @a add check_dark_dust
execute at @s if entity @e[tag=tower_gate,distance=..2] run scoreboard players set @e[tag=homunculus] plot_type 0
advancement revoke @s only mob:mission_system/go_to_tower_gate
