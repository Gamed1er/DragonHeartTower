
$execute at @s as @e[distance=..6,tag=enemy] as @s run damage @s $(DMG) on_fire by @p[tag=OMC.attacker.detect]
execute at @s as @e[distance=..6,tag=enemy] as @s run effect give @s slowness 5 1
execute at @s as @e[distance=..6,tag=enemy] as @s unless data entity @s {Fire:-1} store result entity @s Fire int 0.5 run data get entity @s Fire
execute at @s run particle white_smoke ~ ~ ~ 2 0.5 2 0.01 4096
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 0.5 0.5
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 0.6 0.5
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 0.8 0.5


scoreboard players remove @s OMC.Player.Mana.Points 110