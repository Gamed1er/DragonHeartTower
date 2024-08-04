
effect clear @s slowness
effect clear @s weakness
effect clear @s mining_fatigue
effect clear @s jump_boost

execute if entity @s[type=!player,tag=enemy] run data modify entity @s NoAI set value 0b

tag @s remove Stiff.ing

advancement revoke @s only stiff:value/over