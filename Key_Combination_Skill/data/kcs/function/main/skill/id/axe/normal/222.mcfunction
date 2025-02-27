

scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 80..160
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.axe.skill.normal.222.name","color":"aqua"}
title @s title [""]

tag @s add KCS.attacker.detect
execute at @s positioned ~ ~1 ~ rotated ~-90 0 run function kcs:main/skill/id/axe/normal/222/sector
tag @s remove KCS.attacker.detect