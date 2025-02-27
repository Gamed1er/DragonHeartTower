

scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 60..100
function stiff:main/do/damage/toughness

# execute as @s if data entity @s Inventory[{Slot:-106b}].tag{Tags:["ToDH.Weapons.Boss2"]} run return run function kcs:main/skill/id/sword/normal/iron_blooded/122/do

title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.sword.skill.normal.122.name","color":"aqua"}
title @s title [""]


tag @s add KCS.attacker.detect
execute at @s positioned ~ ~ ~ rotated ~ 0 positioned ^ ^ ^ run function kcs:main/skill/id/sword/normal/122/line
tag @s remove KCS.attacker.detect