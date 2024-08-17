execute as @s run scoreboard players add @s KCS.Skill.Range 1
execute if score @s KCS.Skill.Range matches 5.. run particle enchanted_hit ~ ~ ~ 0.01 0.01 0.01 0.05 20
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7

execute as @a[limit=3,distance=..3,nbt=!{HurtTime:10s}] positioned ~ ~ ~ if entity @s[] run damage @s 16 stiff:normal_damage by @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1,sort=nearest]
execute unless score @s KCS.Skill.Range matches 13.. positioned ^ ^ ^.5 run function todh_b2:animator/attack/damage/line