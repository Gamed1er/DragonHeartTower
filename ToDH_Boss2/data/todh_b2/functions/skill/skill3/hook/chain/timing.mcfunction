
execute as @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=!display,tag=!pos] at @s unless entity @e[distance=..4,tag=ToDH.enemy.Boss2,tag=Chain,tag=display] run function todh_b2:skill/skill3/hook/chain/summon

execute as @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=!display,tag=!pos] if entity @s[nbt={inGround:1b}] as @s run return run function todh_b2:skill/skill3/hook/in_g

execute unless entity @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=!display,tag=!pos] at @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=pos] as @a[nbt={HurtTime:9s}] at @s on attacker if entity @s[tag=ToDH.enemy.Boss2,tag=boss] as @p run return run function todh_b2:skill/skill3/hook/hit

execute unless entity @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=!display,tag=!pos] at @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=pos] as @a unless entity @s[nbt={HurtTime:9s}] as @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=pos] run return run function todh_b2:skill/skill3/hook/in_g
execute unless entity @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=!display,tag=!pos] at @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=pos] as @a[nbt={HurtTime:9s}] at @s on attacker unless entity @s[tag=ToDH.enemy.Boss2,tag=boss] as @e[tag=ToDH.enemy.Boss2,tag=Hook,tag=pos] run return run function todh_b2:skill/skill3/hook/in_g

execute if entity @e[tag=ToDH.enemy.Boss2,tag=Hook] run schedule function todh_b2:skill/skill3/hook/chain/timing 1t