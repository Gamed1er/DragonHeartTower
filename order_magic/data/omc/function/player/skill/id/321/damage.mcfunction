
$execute at @s as @e[distance=..10,tag=enemy] as @s run damage @s $(DMG) explosion by @p[tag=OMC.attacker.detect]
execute at @s as @e[distance=..10,tag=enemy] as @s run effect give @s slowness 1 4
execute at @s run particle white_smoke ~ ~ ~ 2 0.5 2 0.2 10240
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 0.8 0.5
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 1 0.5
execute at @s run playsound minecraft:entity.generic.extinguish_fire ambient @a[distance=..12] ~ ~ ~ 2 1.5 0.5


scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost