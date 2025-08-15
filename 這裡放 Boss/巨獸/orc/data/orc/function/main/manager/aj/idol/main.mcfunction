execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] if data entity @s {NoAI:1b} run data modify entity @s NoAI set value 0b

execute as @s run function orc:main/manager/aj/tag_clear

execute as @s at @s rotated as @s rotated ~ 0 as @n[tag=aj.orc.root] run tp @s ~ ~ ~ ~ ~
execute as @s at @s run ride @n[tag=aj.orc.root] mount @s
execute as @s at @s as @n[tag=aj.orc.root] run function animated_java:orc/animations/animation.model.idol/play

