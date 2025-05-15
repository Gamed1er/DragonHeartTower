

effect clear @s darkness
attribute @s attack_speed modifier remove todh:stiff.debuff
attribute @s attack_damage modifier remove todh:stiff.debuff
attribute @s movement_speed modifier remove todh:stiff.debuff
attribute @s jump_strength modifier remove todh:stiff.debuff

execute if entity @s[type=!player,tag=enemy] run data modify entity @s NoAI set value 0b

tag @s remove Stiff.ing

advancement revoke @s only stiff:value/over