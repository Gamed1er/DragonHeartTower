

title @s times 0t 10t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"擴散","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]
execute at @s as @s unless score @s OMC.Player.Mana.Points matches 120.. run function omc:player/skill/list/text/not_enough

tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute at @s as @s if score @s OMC.Player.Mana.Points matches 120.. run function omc:player/skill/id/26/fire

tag @s remove OMC.attacker.detect