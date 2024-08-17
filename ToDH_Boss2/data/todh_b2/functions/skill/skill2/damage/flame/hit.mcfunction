execute at @s if block ~ ~-0.1 ~ air run tp @s ~ ~-0.1 ~

execute at @s positioned ~ ~ ~ as @a[distance=..7.5,nbt={OnGround:1b}] run damage @s 1 on_fire by @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1]


execute at @s positioned ~ ~ ~ run function todh_b2:skill/skill2/damage/flame/particle/start
execute at @s positioned ~ ~ ~ run playsound minecraft:entity.generic.extinguish_fire record @a[distance=..16] ~ ~ ~ 1 2 0.5
scoreboard players remove @s ToDH.Boss2.Skill.Duration 1
execute as @s unless score @s ToDH.Boss2.Skill.Duration matches 1.. run kill @s