
execute as @s run scoreboard players add @s KCS.Skill.Range 1
particle enchanted_hit ~ ~ ~ 0.01 0.025 0.01 0.05 8
# particle dust 1 0 0 0.25 ^ ^ ^-.5 0 0.3 0 1 8
# particle dust 1 0 0 1.25 ^ ^ ^-.5 0 0 0 1 2
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 1 .5 0.7
playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 1 1.2 0.7
playsound entity.arrow.hit record @a[distance=..16] ~ ~ ~ 1 1.5 0.7
execute store result storage kcs:function Battle.DMG float 0.7 run scoreboard players get @s KCS.Skill.Damage
execute store result score KCS.Score.reg KCS.Skill.Damage run data get storage kcs:function Battle.DMG 1
execute store result storage kcs:function Battle.DMG float 0.01 run scoreboard players add KCS.Score.reg KCS.Skill.Damage 450
execute as @e[tag=enemy,nbt=!{HurtTime:10s},dx=0,limit=1] positioned ~-.99 ~-.99 ~-.99 if entity @s[dx=0] run return run function kcs:main/skill/id/sword/iron_blooded/111/damage with storage kcs:function Battle


execute unless score @s KCS.Skill.Range matches 27.. positioned ^ ^ ^.25 run function kcs:main/skill/id/sword/iron_blooded/111/line