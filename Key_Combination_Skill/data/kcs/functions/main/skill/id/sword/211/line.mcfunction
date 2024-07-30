
execute as @s run scoreboard players add @s KCS.Skill.Range 1

playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 1 2 0.7
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 1 0.8 0.7
execute store result storage kcs:function Battle.DMG float 0.35 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 300
execute as @e[tag=enemy,nbt=!{HurtTime:10s},limit=3,distance=..0.9] positioned ~ ~ ~ if entity @s[] run function kcs:main/skill/id/sword/211/damage with storage kcs:function Battle
scoreboard players operation @s KCS.Skill.Hurt.Count += KCS.Score.reg KCS.Skill.Hurt.Count
scoreboard players reset KCS.Score.reg KCS.Skill.Hurt.Count


execute if score @s KCS.Skill.Range matches 10.. run particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.05 1
execute if score @s KCS.Skill.Hurt.Count matches 3.. run return fail
execute unless score @s KCS.Skill.Range matches 15.. positioned ^ ^ ^.25 run function kcs:main/skill/id/sword/211/line