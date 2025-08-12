
scoreboard players set @s OMC.Player.Mana.Points.Cost 65
execute as @s run function omc:player/mana/points/reduction/oount

title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.omc.skill.wet.name","color":"blue"}
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points >= @s OMC.Player.Mana.Points.Cost run return run function omc:player/skill/list/text/not_enough


execute at @s as @s as @e[tag=enemy,distance=..8] as @s run effect give @s slowness 15 0 false
execute at @s as @s as @e[tag=enemy,distance=..8] as @s run function stiff:main/do/damage/enemy/normal/stiff
execute at @s as @s as @e[tag=enemy,distance=..8] at @s run particle minecraft:dripping_water ~ ~1 ~ 0.2 0.5 0.2 10 512
execute at @s as @s run scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost
execute as @s at @s run particle minecraft:falling_water ~ ~ ~ 2.7 0 2.7 0.1 2560

execute as @s anchored eyes positioned ^ ^ ^1.5 rotated as @s run function omc:player/skill/display/water_magic_circle_1
execute as @s anchored eyes positioned ^ ^ ^1.5 rotated as @s run function omc:player/skill/display/water_magic_circle_1
execute as @s anchored eyes positioned ^ ^ ^1.5 rotated as @s run function omc:player/skill/display/water_magic_circle_1
