data merge storage todh:plot {character:"test",plot_progress:0, plot_delay:0, questions:0}
execute as @s run scoreboard players set @s plot_progress 10
execute as @s store result storage todh:plot plot_progress int 1 run scoreboard players get @s plot_progress
scoreboard players set @s character 0
scoreboard players set @s plot_type 10
execute as @s run function mob:plot_system/plot_reader with storage todh:plot

execute as @s run scoreboard players set @s plot_progress 4
execute as @s run scoreboard players set @s plot_type 0
execute as @s run function mob:plot_system/characters/test/main
