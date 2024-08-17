execute at @s as @a[distance=..4] run damage @s 6 generic by @e[type=zombie,distance=..0.1,limit=1] from @e[type=zombie,distance=..0.1,limit=1]
execute as @a[distance=..4] run function main:stun_effect/trigger_stun
execute as @s run function main:stun_effect/trigger_stun
particle campfire_cosy_smoke ~ ~ ~ 0.0 0.0 0.0 0.5 20 force
playsound block.anvil.place block @a ~ ~ ~
scoreboard players add @s Heavy_Sword_Warrior_Timer 100