

execute as @s run function orc:main/manager/aj/tag_clear

execute as @s at @s rotated as @s rotated ~ 0 as @n[tag=aj.orc.root] run tp @s ~ ~ ~ ~ ~
execute as @s at @s run ride @n[tag=aj.orc.root] mount @s
execute as @s at @s as @n[tag=aj.orc.root] run function animated_java:orc/animations/animation.model.skill1/play


execute as @s run tag @s add ToDH.Boss.Action.InAction
schedule function orc:main/manager/aj/skill/skill1/schedule 50t
execute as @s run scoreboard players reset @s ToDH.Boss.1_Orc.Action.Tick
function orc:main/manager/aj/skill/skill1/tick