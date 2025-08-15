

execute as @s run tag @s remove ToDH.Boss.Action.walking
execute as @s run tag @s remove ToDH.Boss.Action.spring

execute as @s[tag=!ToDH.Boss.Action.spring] at @s as @n[tag=aj.orc.root] run function animated_java:orc/animations/pause_all