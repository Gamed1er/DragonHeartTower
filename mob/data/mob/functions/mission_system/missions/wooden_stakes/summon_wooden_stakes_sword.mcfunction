execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~3 ~ ~3 run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~3 ~ ~3 run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set value -45f

execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~-3 ~ ~3 run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~-3 ~ ~3 run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set value 45f

execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~3 ~ ~-3 run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~3 ~ ~-3 run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set value -135f

execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~-3 ~ ~-3 run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_sword_pos] at @s positioned ~-3 ~ ~-3 run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set value 135f
