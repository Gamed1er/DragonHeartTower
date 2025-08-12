

execute as @s run scoreboard players add @s KCS.Skill.Range 1
execute if score @s KCS.Skill.Range matches ..5 run particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.05 1
execute if score @s KCS.Skill.Range matches 5.. run particle enchanted_hit ~ ~ ~ 0.01 0.01 0.01 0.05 4
# execute if score @s KCS.Skill.Range matches 5.. run particle dust 1 0 0 1.5 ^ ^ ^ 0 0 0 1 8
execute store result storage kcs:function Battle.DMG float 0.4 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 200
execute as @e[tag=enemy,nbt=!{HurtTime:10s},limit=3,distance=..1.5] positioned ~ ~ ~ if entity @s[] run function kcs:main/skill/id/sword/iron_blooded/211/damage with storage kcs:function Battle

execute unless score @s KCS.Skill.Range matches 10.. positioned ^ ^ ^.5 run function kcs:main/skill/id/sword/iron_blooded/211/line