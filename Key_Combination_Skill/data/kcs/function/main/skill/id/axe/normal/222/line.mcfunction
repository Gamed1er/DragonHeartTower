

execute as @s run scoreboard players add @s KCS.Skill.Range 1
execute if score @s KCS.Skill.Range matches 6.. run particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.05 1
execute if score @s KCS.Skill.Range matches 1.. run particle crit ~ ~ ~ 0.01 0.01 0.01 0.05 1
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7
execute store result storage kcs:function Battle.DMG float 0.2 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 100
execute if score @s KCS.Skill.Range matches 1..6 as @e[tag=enemy,nbt=!{HurtTime:10s},limit=1,distance=..1.2] positioned ~ ~ ~ if entity @s[] run function kcs:main/skill/id/axe/normal/222/damage with storage kcs:function Battle
execute store result storage kcs:function Battle.DMG float 0.55 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 400
execute if score @s KCS.Skill.Range matches 6.. as @e[tag=enemy,nbt=!{HurtTime:10s},limit=1,distance=..1.2] positioned ~ ~ ~ if entity @s[] run function kcs:main/skill/id/axe/normal/222/damage with storage kcs:function Battle

execute unless score @s KCS.Skill.Range matches 9.. positioned ^ ^ ^.5 run function kcs:main/skill/id/axe/normal/222/line