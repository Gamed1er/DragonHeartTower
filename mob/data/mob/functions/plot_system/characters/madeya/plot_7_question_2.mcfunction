execute as @s run scoreboard players set @s plot_progress 11
execute as @s store result storage todh:plot plot_progress int 1 run scoreboard players get @s plot_progress
scoreboard players set @s character 1
scoreboard players set @s plot_type 9
execute as @s run function mob:plot_system/plot_reader with storage todh:plot

execute as @s run scoreboard players set @s plot_progress 9
execute as @s run scoreboard players set @s plot_type 2
execute as @s run function mob:plot_system/characters/madeya/main
