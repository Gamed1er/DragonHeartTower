execute at @s as @e[type=item_display,tag=direction_arrow] if score @s ID_system = @p ID_system rotated ~ 0 positioned ^ ^ ^1 run tp @s ~ ~1 ~ facing entity @e[limit=1,tag=wooden_stakes_sword_pos] feet
execute as @e[type=item_display,tag=direction_arrow] at @s run tp @s ~ ~ ~ ~ 0
execute at @s if entity @e[tag=wooden_stakes_sword_pos,distance=..15] if entity @s[tag=break_wooden_stake_sword_trigger] run kill @e[tag=direction_arrow]
execute at @s if entity @e[tag=wooden_stakes_sword_pos,distance=..15] run tag @a remove break_wooden_stake_sword_trigger
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_sword_trigger] run tag @a remove break_wooden_stake_sword
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_sword_trigger] run tag @a add meet_spacy
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_sword_trigger] run tag @a add meet_spacy_2
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_sword_trigger] as @a at @s run function mob:mission_system/summon_direction_arrow
execute if score mob_amount floor_controller matches 0 unless entity @s[tag=break_wooden_stake_sword_trigger] run scoreboard players set @e[tag=spacy] plot_type 0 
advancement revoke @s only mob:mission_system/break_wooden_stake_sword
#say hi