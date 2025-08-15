


execute as @s run tag @s add ToDH.Boss.1_Orc.Skill.projectile

execute as @s at @s run summon block_display ~ ~ ~ {block_state:{Name:"stone"},transformation:{scale:[4.0,4.0,4.0],translation:[-2.0,-2.0,-2.0],left_rotation:[0.0,0.0,0.0,1.0],right_rotation:[0.0,0.0,0.0,1.0]},Tags:[ToDH.Boss.1_Orc.Skill.projectile.display]}

execute as @s run ride @n[tag=ToDH.Boss.1_Orc.Skill.projectile.display] mount @s

# $execute as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 rotated ~$(X) 0 run tp @s ^ ^ ^1.0 ~ ~

execute as @s at @s store result entity @s Motion[0] double 0.0001 run data get entity @n[tag=KCS.marker.vector] Pos[0] 10000
execute as @s at @s store result entity @s Motion[1] double 0.0001 run data get entity @n[tag=KCS.marker.vector] Pos[1] 10000
execute as @s at @s store result entity @s Motion[2] double 0.0001 run data get entity @n[tag=KCS.marker.vector] Pos[2] 10000


function orc:main/manager/aj/skill/skill1/projectile/tick