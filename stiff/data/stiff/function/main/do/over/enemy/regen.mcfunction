


execute as @s if score @s stiff.bodylimit > @s stiff.bodylimit.Max run scoreboard players operation @s stiff.bodylimit = @s stiff.bodylimit.Max

scoreboard players remove @s stiff.bodylimit 10
scoreboard players operation @s stiff.bodylimit -= @s stiff.resilience

data modify entity @s NoAI set value 1b

execute if score @s stiff.bodylimit matches ..0 run function stiff:main/do/over/clear
execute if score @s stiff.bodylimit matches ..0 run scoreboard players set @s stiff.bodylimit 0
execute if score @s stiff.bodylimit matches 1.. run schedule function stiff:main/do/over/enemy/tag 1t replace