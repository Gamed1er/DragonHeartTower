execute as @a[distance = ..5] run damage @s 5 explosion by @e[tag = soul_locker, limit = 1]
particle explosion ~ ~ ~ 0.6 0.2 0.6 1 50 force @a
playsound entity.generic.explode block @a ~ ~ ~ 100 0.8 0.8

kill @s