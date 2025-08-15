kill @e[tag=ToDH.Boss.1_Orc,tag=boss]
execute as @n[tag=aj.orc.root] run function animated_java:orc/remove/this
schedule clear orc:main/tick/schedule