

scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 160..200
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.bow.skill.normal.112.name","color":"aqua"}
title @s title [""]

scoreboard players reset @s KCS.Players.Bow.shoot
tag @s add KCS.Players.arrow.sniper
advancement revoke @s only kcs:players/bow/sniper_tag