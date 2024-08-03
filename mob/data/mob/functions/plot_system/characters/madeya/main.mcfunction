data merge storage todh:plot {character:"madeya",plot_progress:0, plot_delay:0, questions:0}
execute unless score @s plot_progress matches 1..9999 run scoreboard players set @s plot_progress 1
execute store result storage todh:plot plot_progress int 1 run scoreboard players get @s plot_progress
execute if score @s plot_type matches 10 run return fail
execute if score @s plot_type matches 9 run return fail

execute if score @s plot_progress matches 1 run scoreboard players set @s character 0
execute if score @s plot_progress matches 1 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 2 run scoreboard players set @s character 0
execute if score @s plot_progress matches 2 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 3 run scoreboard players set @s character 1
execute if score @s plot_progress matches 3 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 4 run scoreboard players set @s character 0
execute if score @s plot_progress matches 4 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 4 run function mob:give_basic_magic_book
execute if score @s plot_progress matches 4 run tag @a add break_wooden_stake_wand
execute if score @s plot_progress matches 4 run tag @a add break_wooden_stake_wand_trigger
execute if score @s plot_progress matches 4 run tag @a remove meet_madeya
execute if score @s plot_progress matches 4 run tag @a remove meet_madeya_1
execute if score @s plot_progress matches 4 as @e[tag=wooden_stakes_wand_pos,limit=1] at @s run function mob:mission_system/missions/wooden_stakes/summon_wooden_stakes_wand

execute if score @s plot_progress matches 5 run scoreboard players set @s character 0
execute if score @s plot_progress matches 5 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 6 run scoreboard players set @s character 1
execute if score @s plot_progress matches 6 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 7 run scoreboard players set @s character 0
execute if score @s plot_progress matches 7 run scoreboard players set @s plot_type 1
execute if score @s plot_progress matches 7 run data modify storage todh:plot questions set value 2

execute if score @s plot_progress matches 8 run scoreboard players set @s character 0
execute if score @s plot_progress matches 8 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 8 run tag @a add break_magic_doll_wand
execute if score @s plot_progress matches 8 run tag @a add break_magic_doll_wand_trigger
execute if score @s plot_progress matches 8 run tag @a remove meet_madeya
execute if score @s plot_progress matches 8 run tag @a remove meet_madeya_2
execute if score @s plot_progress matches 8 run function mob:mission_system/missions/magic_doll/summon_magic_doll

execute if score @s plot_progress matches 9 run scoreboard players set @s character 0
execute if score @s plot_progress matches 9 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 9 run tag @a add break_magic_doll_wand
execute if score @s plot_progress matches 9 run tag @a add break_magic_doll_wand_trigger
execute if score @s plot_progress matches 9 run tag @a remove meet_madeya
execute if score @s plot_progress matches 9 run tag @a remove meet_madeya_2
execute if score @s plot_progress matches 9 run function mob:mission_system/missions/magic_doll/summon_magic_doll

execute if score @s plot_progress matches 12 run scoreboard players set @s character 0
execute if score @s plot_progress matches 12 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 13 run scoreboard players set @s character 0
execute if score @s plot_progress matches 13 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 14 run scoreboard players set @s character 0
execute if score @s plot_progress matches 14 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 15 run scoreboard players set @s character 1
execute if score @s plot_progress matches 15 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 16 run scoreboard players set @s character 0
execute if score @s plot_progress matches 16 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 16 run tag @a add break_heavy_magic_doll_wand
execute if score @s plot_progress matches 16 run tag @a add break_heavy_magic_doll_wand_trigger
execute if score @s plot_progress matches 16 run tag @a remove meet_madeya
execute if score @s plot_progress matches 16 run tag @a remove meet_madeya_3
execute if score @s plot_progress matches 16 run function mob:mission_system/missions/magic_doll/summon_heavy_magic_doll

execute if score @s plot_progress matches 17 run scoreboard players set @s character 0
execute if score @s plot_progress matches 17 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 18 run scoreboard players set @s character 0
execute if score @s plot_progress matches 18 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 19 run scoreboard players set @s character 0
execute if score @s plot_progress matches 19 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 20 run scoreboard players set @s character 0
execute if score @s plot_progress matches 20 run scoreboard players set @s plot_type 1
execute if score @s plot_progress matches 20 run data modify storage todh:plot questions set value 2

execute if score @s plot_progress matches 21 run scoreboard players set @s character 1
execute if score @s plot_progress matches 21 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 21 run tag @a remove meet_madeya
execute if score @s plot_progress matches 21 run tag @a remove meet_madeya_4
execute if score @s plot_progress matches 21 run tag @a add meet_tutor
execute if score @s plot_progress matches 21 run tag @a add meet_tutor_3
execute if score @s plot_progress matches 21 run scoreboard players set @e[tag=tutor] plot_type 0

execute if score @s plot_progress matches 22 run scoreboard players set @s character 1
execute if score @s plot_progress matches 22 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 22 run tag @a remove meet_madeya
execute if score @s plot_progress matches 22 run tag @a remove meet_madeya_4
execute if score @s plot_progress matches 22 run tag @a add meet_opera

execute if score @s plot_type matches 0 run data modify storage todh:plot plot_delay set value 40

execute if score @s plot_type matches 1 run data modify storage todh:plot plot_delay set value 40

execute if score @s plot_type matches 2 run data modify storage todh:plot plot_delay set value 0
execute if score @s plot_type matches 2 run scoreboard players add @s plot_progress 1
execute if score @s plot_type matches 2 run data remove entity @s interaction
execute if score @s plot_type matches 2 run data modify storage todh:plot plot_delay set value 40

execute if score @s plot_type matches 4 run data modify storage todh:plot plot_delay set value 0
execute if score @s plot_type matches 4 run data remove entity @s interaction
execute if score @s plot_type matches 4 run scoreboard players set @s plot_progress 1
execute as @s run function mob:plot_system/plot_reader with storage todh:plot
#tellraw @p "1"