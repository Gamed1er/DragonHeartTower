


execute as @s if score @s stiff.bodylimit > @s stiff.bodylimit.Max run scoreboard players operation @s stiff.bodylimit = @s stiff.bodylimit.Max

scoreboard players remove @s stiff.bodylimit 10
scoreboard players operation @s stiff.bodylimit -= @s stiff.resilience
effect give @s slowness 1 5 true
effect give @s weakness 1 2 true
effect give @s mining_fatigue 1 4 true
effect give @s jump_boost 1 252 true

execute if score @s stiff.bodylimit matches ..0 run scoreboard players set @s stiff.bodylimit 0
execute if score @s stiff.bodylimit matches 1.. run schedule function stiff:main/do/over/tag 1t append