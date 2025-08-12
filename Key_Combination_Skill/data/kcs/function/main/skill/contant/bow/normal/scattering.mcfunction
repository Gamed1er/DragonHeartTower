
scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 20..40
function stiff:main/do/damage/toughness


title @s times 0t 10t 1t
title @s subtitle {"translate":"text.todh.kcs.bow.skill.normal.scattering.name","color":"aqua"}
title @s title [""]

execute unless score @s KCS.Players.Arrow_Points matches 3.. run return run function kcs:main/skill/id/bow/text/not_enough

execute at @s as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 rotated ~-75 ~ run tp @s ~ ~ ~ ~ ~
tag @s add KCS.Players.arrow.Owner
execute store result storage kcs:function Skill.Pos.X float 0.1 run random value -225..225
execute store result storage kcs:function Skill.Pos.Y float 0.1 run random value -225..225
execute if score @s KCS.Players.Arrow_Points matches 3.. at @s anchored eyes positioned ^ ^ ^ rotated ~ ~ run function kcs:main/skill/contant/bow/normal/scattering/sector with storage kcs:function Skill.Pos
tag @s remove KCS.Players.arrow.Owner