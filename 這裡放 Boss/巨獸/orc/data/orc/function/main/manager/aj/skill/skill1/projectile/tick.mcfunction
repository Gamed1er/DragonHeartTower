




execute as @e[tag=ToDH.Boss.1_Orc.Skill.projectile] at @s if entity @e[tag=!boss,distance=..4] as @e[tag=!boss,distance=..4] run damage @s 1 stiff:normal_damage by @n[tag=boss]

execute if entity @e[tag=ToDH.Boss.1_Orc.Skill.projectile] run schedule function orc:main/manager/aj/skill/skill1/projectile/tick 1t

execute as @e[tag=ToDH.Boss.1_Orc.Skill.projectile.display] at @s unless entity @e[tag=ToDH.Boss.1_Orc.Skill.projectile,distance=..2] run function orc:main/manager/aj/skill/skill1/projectile/bomb