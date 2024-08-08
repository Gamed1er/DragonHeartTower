
tag @a remove boss.Skill.detect


execute as @s at @s run particle explosion_emitter ~ ~ ~ 0.2 0.2 0.2 1 2
execute as @s at @s run playsound block.anvil.place record @a[distance=..16] ~ ~ ~ 16 0.6

execute at @s as @a[distance=..4] run damage @s 4 stiff:normal_damage by @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1]

execute at @s as @a[nbt={HurtTime:10s}] at @s on attacker if entity @s[tag=ToDH.enemy.Boss2,tag=boss] as @p run function todh_b2:skill/skill3/hook/hit