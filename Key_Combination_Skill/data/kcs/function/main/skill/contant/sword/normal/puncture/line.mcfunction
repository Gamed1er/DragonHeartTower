
execute as @s run scoreboard players add @s KCS.Skill.Range 1
particle crit ~ ~ ~ 0.01 0.01 0.01 0.05 4

playsound minecraft:item.trident.throw master @p ~ ~ ~ 0.8 1.3
playsound minecraft:block.anvil.hit master @p ~ ~ ~ 0.5 1.1

execute store result storage kcs:function Battle.DMG float 0.8 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 400
execute as @e[tag=enemy,nbt=!{HurtTime:10s},dx=0,limit=3] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function kcs:main/skill/contant/sword/normal/puncture/damage with storage kcs:function Battle
scoreboard players operation @s KCS.Skill.Hurt.Count += KCS.Score.reg KCS.Skill.Hurt.Count
scoreboard players reset KCS.Score.reg KCS.Skill.Hurt.Count


execute unless block ^ ^ ^1 air run return fail
execute if score @s KCS.Skill.Hurt.Count matches 3.. run return fail
execute unless score @s KCS.Skill.Range matches 31.. positioned ^ ^ ^.25 run function kcs:main/skill/contant/sword/normal/puncture/line