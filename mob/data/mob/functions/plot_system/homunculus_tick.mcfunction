
execute unless score @s plot_timer matches 0..80 run scoreboard players set @s plot_timer 0
execute if score @s plot_timer matches 1.. run scoreboard players remove @s plot_timer 1
execute unless score @s plot_timer matches 0 run return fail

execute if entity @s if score @s plot_timer matches 0 run function mob:plot_system/characters/homunculus/main
