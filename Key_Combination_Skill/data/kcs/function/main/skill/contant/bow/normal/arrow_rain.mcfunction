

scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 40..80
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.bow.skill.normal.arrow_rain.name","color":"aqua"}
title @s title [""]
execute unless score @s KCS.Players.Arrow_Points matches 5.. run return run function kcs:main/skill/id/bow/text/not_enough
scoreboard players reset @s KCS.Players.Bow.shoot

execute if score @s KCS.Players.Arrow_Points matches 5.. run tag @s add KCS.Players.arrow.rain
advancement revoke @s only kcs:players/bow/rain_tag
advancement revoke @s only kcs:players/bow/rain_hit