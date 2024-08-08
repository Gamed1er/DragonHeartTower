

data modify entity @s NoAI set value 0b

scoreboard players set @s[tag=!Animation.isSkill3] ToDH.Boss2.Skill.Timing 600
tag @s remove Animation.isSkill1
tag @s remove Animation.isSkill2
tag @s remove Animation.isSkill3
tag @s remove Animation.isSkill4

schedule function todh_b2:animator/tick 1t
execute as @e[tag=ToDH.enemy.Boss2,tag=Display] run data modify entity @s Glowing set value 0b
execute as @s at @s run data modify entity @s AngryAt set from entity @p UUID