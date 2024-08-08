


execute as @s at @s run function todh_b2:animator/ride
scoreboard players remove @s ToDH.Boss2.Skill.Timing 1
execute as @s if entity @s[nbt={HurtTime:10s}] run scoreboard players remove @s ToDH.Boss2.Skill.Timing 20
scoreboard players add boss.Skill3 ToDH.Boss2.Skill.Timing 1

execute as @s as @e[tag=ToDH.enemy.Boss2,tag=Display] run data modify entity @s Glowing set from entity @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1] Glowing


execute as @s[tag=!Animation.isSkill1,tag=!Animation.isAttack] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..64] if score boss.Skill3 ToDH.Boss2.Skill.Timing matches 300.. run return run function todh_b2:skill/skill3/start
execute as @s[tag=!Animation.isSkill1,tag=!Animation.isAttack] at @s if entity @a[gamemode=!creative,gamemode=!spectator,distance=..64] if score @s ToDH.Boss2.Skill.Timing matches ..0 run return run function todh_b2:skill/check
execute as @s[tag=!Animation.isAttack,tag=!Animation.isSkill1] at @s if entity @a[distance=..6,gamemode=!spectator] run return run function todh_b2:animator/attack/move

execute store result score @s Animation.Check.Motion run data get entity @s Motion[0] 100000
scoreboard players operation Animation.Score Animation.Check.Motion = @s Animation.Check.Motion
execute store result score @s Animation.Check.Motion run data get entity @s Motion[2] 100000
scoreboard players operation Animation.Score Animation.Check.Motion += @s Animation.Check.Motion
execute unless score @s[tag=!Animation.isWalk,tag=!Animation.isAttack] Animation.Check.Motion matches 0 run return run function todh_b2:animator/walk
execute if score @s[tag=Animation.isWalk] Animation.Check.Motion matches 0 run function todh_b2:animator/walk_clear



execute as @s if entity @s[tag=!Animation.isWalk,tag=!Animation.isIdol,tag=!Animation.isAttack] run function todh_b2:animator/idol

