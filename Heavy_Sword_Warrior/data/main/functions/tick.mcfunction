function main:stun_effect/stun_tick
execute if entity @e[type=zombie,tag=Heavy_Sword_Warrior,limit=1] run function main:random_pack/random_tick
execute as @e[type=zombie,tag=Heavy_Sword_Warrior,tag=spawning] at @s run function main:spawning
execute as @e[type=zombie,tag=Heavy_Sword_Warrior] at @s run function main:heavy_sword_warrior_main