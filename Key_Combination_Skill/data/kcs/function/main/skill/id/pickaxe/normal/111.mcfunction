scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 80..160
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.pickaxe.skill.normal.111.name","color":"aqua"}
title @s title [""]

tag @s add KCS.attacker.detect
execute at @s positioned ~ ~0.25 ~ rotated ~ -120 positioned ^ ^ ^ run function kcs:main/skill/id/pickaxe/normal/111/sector
tag @s remove KCS.attacker.detect