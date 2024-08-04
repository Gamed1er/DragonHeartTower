execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^2 ^ ^-1 run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^2 ^ ^-1 run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set from entity @e[tag=wooden_stakes_bow_pos,limit=1] Rotation[0]

execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^-2 ^ ^-1 run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^-2 ^ ^-1 run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set from entity @e[tag=wooden_stakes_bow_pos,limit=1] Rotation[0]

execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^ ^ ^ run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^ ^ ^ run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set from entity @e[tag=wooden_stakes_bow_pos,limit=1] Rotation[0]

execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^4 ^ ^ run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^4 ^ ^ run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set from entity @e[tag=wooden_stakes_bow_pos,limit=1] Rotation[0]

execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^-4 ^ ^ run function mob:summon_mob/summon_wooden_stake
execute as @e[tag=wooden_stakes_bow_pos] at @s positioned ^-4 ^ ^ run data modify entity @e[tag=wooden_stake,limit=1,sort=nearest] Rotation[0] set from entity @e[tag=wooden_stakes_bow_pos,limit=1] Rotation[0]
