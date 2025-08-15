

execute as @s at @s rotated as @s rotated ~ 0 as @n[tag=aj.orc.root] run tp @s ~ ~ ~ ~ ~
execute as @s at @s run ride @n[tag=aj.orc.root] mount @s
execute as @s[tag=!ToDH.Boss.Action.spring] at @s as @n[tag=aj.orc.root] run function animated_java:orc/animations/animation.model.spring/play


execute as @s run tag @s add ToDH.Boss.Action.spring