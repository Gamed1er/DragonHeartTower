
scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 40..80
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.bow.skill.normal.scattering.name","color":"aqua"}
title @s title [""]

execute unless score @s KCS.Players.Arrow_Points matches 3.. run return run function kcs:main/skill/id/bow/text/not_enough

execute at @s as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 rotated ~-75 ~ run tp @s ~ ~ ~ ~ ~
tag @s add KCS.Players.arrow.Owner
execute if score @s KCS.Players.Arrow_Points matches 3.. at @s anchored eyes positioned ^ ^ ^ rotated ~-45 ~ run function kcs:main/skill/contant/bow/normal/scattering/sector
tag @s remove KCS.Players.arrow.Owner