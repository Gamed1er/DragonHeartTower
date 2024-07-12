
execute positioned 0.0 0.0 0.0 rotated as @s as @e[tag=OMC.marker.vector] run tp @s ^ ^ ^1
execute store result storage omc:function Skill.vector.X float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[0] 100
execute store result storage omc:function Skill.vector.Y float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[1] 100
execute store result storage omc:function Skill.vector.Z float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[2] 100
function omc:player/mana/damage/count
execute store result storage omc:function Skill.vector.DMG float 0.025 run scoreboard players get @s OMC.Player.Mana.Damage

title @s times 0t 6t 1t
title @s subtitle ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"},{"text":"炎爆彈","bold":true,"italic":true,"underlined":true,"color":"gold"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"dark_purple"}]
title @s title [""]

execute at @s as @s unless score @s OMC.Player.Mana.Points matches 120.. run function omc:player/skill/list/text/not_enough


execute at @s as @s if score @s OMC.Player.Mana.Points matches 120.. run function omc:player/skill/id/22/summon with storage omc:function Skill.vector