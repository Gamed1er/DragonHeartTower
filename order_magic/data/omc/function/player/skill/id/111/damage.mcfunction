

$execute at @s as @e[tag=enemy,distance=..12] as @s run damage @s $(DMG) indirect_magic by @p[tag=OMC.attacker.detect]

particle minecraft:flash ~ ~1 ~ 0.1 0.1 0.1 10 128
particle minecraft:flash ~ ~1 ~ 0.5 0.5 0.5 10 128
particle minecraft:flash ~ ~1 ~ 0.8 0.8 0.8 10 128

scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost 