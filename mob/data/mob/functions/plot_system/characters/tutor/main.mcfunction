data merge storage todh:plot {character:"tutor",plot_progress:0, plot_delay:0, questions:0}
execute unless score @s plot_progress matches 1..9999 run scoreboard players set @s plot_progress 1
execute store result storage todh:plot plot_progress int 1 run scoreboard players get @s plot_progress
execute if score @s plot_type matches 10 run return fail
execute if score @s plot_type matches 9 run return fail

execute if score @s plot_progress matches 1 run scoreboard players set @s character 0
execute if score @s plot_progress matches 1 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 1 run tag @a add go_to_square
execute if score @s plot_progress matches 1 run tag @s add kill_character
execute if score @s plot_progress matches 1 run tag @a remove meet_tutor
execute if score @s plot_progress matches 1 run tag @a remove meet_tutor_1

execute if score @s plot_progress matches 2 run scoreboard players set @s character 0
execute if score @s plot_progress matches 2 run scoreboard players set @s plot_type 0
execute if score @s plot_progress matches 2 run tag @a add meet_opera
execute if score @s plot_progress matches 2 run tag @s add kill_character
execute if score @s plot_progress matches 2 run tag @a remove meet_tutor
execute if score @s plot_progress matches 2 run tag @a remove meet_tutor_2 

execute if score @s plot_progress matches 3 run scoreboard players set @s character 0
execute if score @s plot_progress matches 3 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 4 run scoreboard players set @s character 0
execute if score @s plot_progress matches 4 run scoreboard players set @s plot_type 2

execute if score @s plot_progress matches 5 run scoreboard players set @s character 0
execute if score @s plot_progress matches 5 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 6 run scoreboard players set @s character 0
execute if score @s plot_progress matches 6 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 7 run scoreboard players set @s character 0
execute if score @s plot_progress matches 7 run scoreboard players set @s plot_type 0

execute if score @s plot_progress matches 8 run scoreboard players set @s character 0
execute if score @s plot_progress matches 8 run scoreboard players set @s plot_type 2
execute if score @s plot_progress matches 8 run tag @a add go_to_foot_of_tower
execute if score @s plot_progress matches 8 run tag @a remove meet_tutor
execute if score @s plot_progress matches 8 run tag @a remove meet_tutor_3

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