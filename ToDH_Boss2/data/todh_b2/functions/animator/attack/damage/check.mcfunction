
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] run scoreboard players reset @s KCS.Skill.Angle
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s positioned ~ ~2.5 ~ positioned ^ ^ ^ rotated ~60 0 run function todh_b2:animator/attack/damage/sector
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s as @a[nbt={HurtTime:10s}] on attacker if entity @s[tag=ToDH.enemy.Boss2] as @e[tag=ToDH.enemy.Boss2,tag=boss] run scoreboard players remove @s ToDH.Boss2.Skill.Timing 80
execute as @e[tag=ToDH.enemy.Boss2,tag=boss] at @s as @a[nbt={HurtTime:10s}] on attacker if entity @s[tag=ToDH.enemy.Boss2] as @e[tag=ToDH.enemy.Boss2,tag=boss] run scoreboard players reset boss.Skill3 ToDH.Boss2.Skill.Timing