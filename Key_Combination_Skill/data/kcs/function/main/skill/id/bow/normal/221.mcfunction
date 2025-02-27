

scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 160..200
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.bow.skill.normal.221.name","color":"aqua"}
title @s title [""]
execute store result score @s KCS.Players.arrow.count run clear @s minecraft:arrow 0
execute unless score @s KCS.Players.arrow.count matches 5.. run function kcs:main/skill/id/bow/text/not_enough
scoreboard players reset @s KCS.Players.Bow.shoot

execute if score @s KCS.Players.arrow.count matches 5.. run tag @s add KCS.Players.arrow.rain
advancement revoke @s only kcs:players/bow/rain_tag
advancement revoke @s only kcs:players/bow/rain_hit