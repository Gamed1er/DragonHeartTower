
execute as @s run attribute @s max_health base set 200
execute as @s run attribute @s scale base set 2.5
execute as @s run attribute @s armor base set 10
execute as @s run attribute @s armor_toughness base set 5

execute as @s run data modify entity @s IsImmuneToZombification set value 1b
execute as @s run data modify entity @s Health set value 200

execute as @s run effect give @s regeneration infinite 0 true
execute as @s run effect give @s invisibility infinite 0 true

execute as @s run scoreboard players set @s ToDH.Boss.1_Orc.Skill.CD 100
execute as @s run scoreboard players set @s ToDH.Boss.1_Orc.Spawn.subordinate.CD 0

execute as @s run tag @s add enemy
execute as @s run tag @s add boss
execute as @s run tag @s add ToDH.Boss.1_Orc

execute as @s at @s run function animated_java:orc/summon {args:0}
execute as @s run ride @n[tag=aj.orc.root] mount @s
execute as @s at @s as @n[tag=aj.orc.root] run function animated_java:orc/animations/animation.model.idol/play