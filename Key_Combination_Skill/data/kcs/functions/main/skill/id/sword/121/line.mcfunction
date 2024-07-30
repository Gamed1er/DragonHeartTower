


execute positioned ~ ~ ~ run tp @s ~ ~ ~
particle enchanted_hit ~ ~1.25 ~ 0.01 0.25 0.01 0.05 64
playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 0.7 1 0.5
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 1 1 0.7
execute store result storage kcs:function Battle.DMG float 0.15 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 100
execute as @e[tag=enemy,dx=0,distance=..3] positioned ~-.99 ~-.99 ~-.99 if entity @s[distance=..3] run function kcs:main/skill/id/sword/121/damage with storage kcs:function Battle


execute as @s run scoreboard players add @s KCS.Skill.Range 1
execute unless block ^ ^ ^.25 air positioned over motion_blocking run tp @s ~ ~ ~
execute anchored eyes unless block ^ ^ ^.25 air run return fail
execute unless score @s KCS.Skill.Range matches 13.. positioned ^ ^ ^.5 run function kcs:main/skill/id/sword/121/line