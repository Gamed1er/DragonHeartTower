

scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 200..240
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"穿甲箭","bold":true,"italic":true,"underlined":true,"color":"aqua"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

scoreboard players reset @s KCS.Players.Bow.shoot
tag @s add KCS.Players.arrow.piercing
advancement revoke @s only kcs:players/bow/piercing_tag
advancement revoke @s only kcs:players/bow/piercing_hit