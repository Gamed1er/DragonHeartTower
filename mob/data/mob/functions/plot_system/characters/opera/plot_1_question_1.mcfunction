execute as @s run scoreboard players set @s plot_progress 10
execute as @s store result storage todh:plot plot_progress int 1 run scoreboard players get @s plot_progress
scoreboard players set @s character 1
scoreboard players set @s plot_type 9
execute as @s run function mob:plot_system/plot_reader with storage todh:plot
execute as @s run data remove entity @s interaction
execute as @s run scoreboard players set @s plot_progress 1
scoreboard players set @s plot_type 0
clear @a[gamemode=!creative]
tag @a remove meet_opera
tag @a add sword
execute as @a run function mob:give_empire_armor
tag @a remove meet_tokesor
tag @a remove meet_madeya
tag @a add meet_spacy
tag @a remove meet_tokesor_1
tag @a remove meet_madeya_1
tag @a add meet_spacy_1