
scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 240..280
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"散射","bold":true,"italic":true,"underlined":true,"color":"aqua"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]
execute store result score @s KCS.Players.arrow.count run clear @s minecraft:arrow 0
execute unless score @s KCS.Players.arrow.count matches 3.. run function kcs:main/skill/id/bow/text/not_enough

execute at @s as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 rotated ~-75 ~ run tp @s ~ ~ ~ ~ ~
tag @s add KCS.Players.arrow.Owner
execute if score @s KCS.Players.arrow.count matches 3.. at @s anchored eyes positioned ^ ^ ^ rotated ~-60 ~ run function kcs:main/skill/id/bow/222/sector
tag @s remove KCS.Players.arrow.Owner