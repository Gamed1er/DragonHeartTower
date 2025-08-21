


execute positioned ~ ~ ~ run tp @s ~ ~ ~
particle enchanted_hit ~ ~1.25 ~ 0.01 0.25 0.01 0.05 64
particle sweep_attack ~ ~1 ~ 0 0 0 0.05 1
playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 0.7 1 0.5
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 1 1 0.7
execute store result storage kcs:function Battle.DMG float 0.2 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 150
execute as @e[tag=enemy,distance=..0.9] positioned ~ ~ ~ if entity @s[] run function kcs:main/skill/contant/sword/normal/charge/damage with storage kcs:function Battle


execute as @s run scoreboard players add @s KCS.Skill.Range 1


execute unless score @s KCS.Skill.Range matches 10.. positioned ^ ^ ^1 unless block ~ ~ ~ air unless block ~ ~1 ~ air run return fail
execute unless score @s KCS.Skill.Range matches 10.. positioned ^ ^ ^.25 unless block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air positioned ~ ~1 ~ run return run function kcs:main/skill/contant/sword/normal/charge/line
execute unless score @s KCS.Skill.Range matches 10.. positioned ^ ^ ^.25 if block ~ ~ ~ air if block ~ ~1 ~ air run function kcs:main/skill/contant/sword/normal/charge/line
