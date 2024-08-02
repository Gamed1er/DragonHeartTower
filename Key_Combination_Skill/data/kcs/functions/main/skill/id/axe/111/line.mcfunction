
execute as @s run scoreboard players add @s KCS.Skill.Range 1

playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 1 0.5 0.7
playsound entity.arrow.hit record @a[distance=..16] ~ ~ ~ 1 2 0.7
playsound block.anvil.place record @a[distance=..16] ~ ~ ~ 1 2 0.7
execute store result storage kcs:function Battle.DMG float 0.10 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 100
execute if score @s KCS.Skill.Range matches 12.. as @e[tag=enemy,limit=8,distance=..0.9] positioned ~ ~ ~ if entity @s[] run function kcs:main/skill/id/axe/111/damage with storage kcs:function Battle
execute store result storage kcs:function Battle.DMG float 0.05 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 50
execute if score @s KCS.Skill.Range matches 5..11 as @e[tag=enemy,limit=8,distance=..0.9] positioned ~ ~ ~ if entity @s[] run function kcs:main/skill/id/axe/111/damage with storage kcs:function Battle
scoreboard players operation @s KCS.Skill.Hurt.Count += KCS.Score.reg KCS.Skill.Hurt.Count
scoreboard players reset KCS.Score.reg KCS.Skill.Hurt.Count


execute if score @s KCS.Skill.Range matches 5.. run particle crit ~ ~ ~ 0.01 0.01 0.01 0.05 1
execute if score @s KCS.Skill.Range matches 12.. run particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.05 1
execute if score @s KCS.Skill.Hurt.Count matches 8.. run return fail
execute unless score @s KCS.Skill.Range matches 15.. positioned ^ ^ ^.25 run function kcs:main/skill/id/axe/111/line