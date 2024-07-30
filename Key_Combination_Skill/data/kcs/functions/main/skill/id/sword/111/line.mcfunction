
execute as @s run scoreboard players add @s KCS.Skill.Range 1
particle enchanted_hit ~ ~ ~ 0.01 0.01 0.01 0.05 4
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 1 .5 0.7
playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 1 1.2 0.7
playsound entity.arrow.hit record @a[distance=..16] ~ ~ ~ 1 1.5 0.7
execute store result storage kcs:function Battle.DMG float 0.8 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 400
execute as @e[tag=enemy,nbt=!{HurtTime:10s},dx=0,limit=3] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run function kcs:main/skill/id/sword/111/damage with storage kcs:function Battle
scoreboard players operation @s KCS.Skill.Hurt.Count += KCS.Score.reg KCS.Skill.Hurt.Count
scoreboard players reset KCS.Score.reg KCS.Skill.Hurt.Count

execute if score @s KCS.Skill.Hurt.Count matches 3.. run return fail
execute unless score @s KCS.Skill.Range matches 27.. positioned ^ ^ ^.25 run function kcs:main/skill/id/sword/111/line