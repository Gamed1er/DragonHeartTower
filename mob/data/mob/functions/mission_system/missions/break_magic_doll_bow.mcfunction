execute at @s as @e[type=item_display,tag=direction_arrow] if score @s ID_system = @p ID_system rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~1 ~ facing entity @e[limit=1,tag=magic_doll_bow_pos] feet
execute as @e[type=item_display,tag=direction_arrow] at @s run tp @s ~ ~ ~ ~ 0
execute at @s if entity @e[tag=magic_doll_bow_pos,distance=..15] if entity @s[tag=break_magic_doll_bow_trigger] run kill @e[tag=direction_arrow]
execute at @s if entity @e[tag=magic_doll_bow_pos,distance=..15] run tag @a remove break_magic_doll_bow_trigger
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_magic_doll_bow_trigger] run tag @a remove break_magic_doll_bow
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_magic_doll_bow_trigger] run tag @a add meet_tokesor
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_magic_doll_bow_trigger] run tag @a add meet_tokesor_3
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_magic_doll_bow_trigger] as @a at @s run function mob:mission_system/summon_direction_arrow
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_magic_doll_bow_trigger] run scoreboard players set @e[tag=tokesor] plot_type 0 
advancement revoke @s only mob:mission_system/break_magic_doll_bow
#say hi