

execute as @s run scoreboard players add @s KCS.Skill.Range 1
execute if score @s KCS.Skill.Range matches 5.. run particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.05 1
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7
execute store result storage kcs:function Battle.DMG float 0.4 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 200
execute as @e[tag=enemy,nbt=!{HurtTime:10s},dx=0,limit=3] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function kcs:main/skill/id/sword/222/damage with storage kcs:function Battle

execute unless score @s KCS.Skill.Range matches 7.. positioned ^ ^ ^.5 run function kcs:main/skill/id/sword/222/line