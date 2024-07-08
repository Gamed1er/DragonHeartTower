
$execute at @s as @e[distance=..6,tag=enemy] as @s run damage @s $(DMG) explosion by @p[tag=OMC.attacker.detect]

execute at @s run particle white_smoke ~ ~1 ~ 0.75 0.25 0.75 0.2 4096
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 0.8 0.5
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 1 0.5
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 1.5 0.5

scoreboard players remove @s OMC.Player.Mana.Points 90