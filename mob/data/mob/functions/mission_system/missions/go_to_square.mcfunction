execute at @s as @e[type=item_display,tag=direction_arrow] if score @s ID_system = @p ID_system rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~1 ~ facing entity @e[limit=1,tag=barracks_square] feet
execute as @e[type=item_display,tag=direction_arrow] at @s run tp @s ~ ~ ~ ~ 0
execute at @s if entity @e[tag=barracks_square,distance=..5] run tag @a remove go_to_square
execute at @s if entity @e[tag=barracks_square,distance=..5] run tag @a add meet_tutor
execute at @s if entity @e[tag=barracks_square,distance=..5] run tag @a add meet_tutor_2
execute as @e[type=interaction,tag=tutor] run scoreboard players set @s plot_type 0
advancement revoke @s only mob:mission_system/go_to_square