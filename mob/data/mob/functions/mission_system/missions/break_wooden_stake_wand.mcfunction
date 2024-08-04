execute at @s as @e[type=item_display,tag=direction_arrow] if score @s ID_system = @p ID_system rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~1 ~ facing entity @e[limit=1,tag=wooden_stakes_wand_pos] feet
execute as @e[type=item_display,tag=direction_arrow] at @s run tp @s ~ ~ ~ ~ 0
execute at @s if entity @e[tag=wooden_stakes_wand_pos,distance=..15] if entity @s[tag=break_wooden_stake_wand_trigger] run kill @e[tag=direction_arrow]
execute at @s if entity @e[tag=wooden_stakes_wand_pos,distance=..15] run tag @a remove break_wooden_stake_wand_trigger
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_wand_trigger] run tag @a remove break_wooden_stake_wand
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_wand_trigger] run tag @a add meet_madeya
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_wand_trigger] run tag @a add meet_madeya_2
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_wand_trigger] as @a at @s run function mob:mission_system/summon_direction_arrow
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_wand_trigger] run scoreboard players set @e[tag=madeya] plot_type 0 
advancement revoke @s only mob:mission_system/break_wooden_stake_wand
#say hi