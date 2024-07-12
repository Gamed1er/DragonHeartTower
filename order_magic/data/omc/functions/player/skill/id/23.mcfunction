

title @s times 0t 6t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"蒸氣爆破","bold":true,"italic":true,"underlined":true,"color":"white"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]
execute at @s as @s unless score @s OMC.Player.Mana.Points matches 90.. run function omc:player/skill/list/text/not_enough

tag @s add OMC.attacker.detect
function omc:player/mana/damage/count
execute store result storage omc:function Battle.DMG float 0.12 run scoreboard players get @p[tag=OMC.attacker.detect] OMC.Player.Mana.Damage
execute at @s as @s if score @s OMC.Player.Mana.Points matches 90.. run function omc:player/skill/id/23/damage with storage omc:function Battle
tag @s remove OMC.attacker.detect
