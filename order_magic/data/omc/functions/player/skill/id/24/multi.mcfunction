

$execute at @s as @e[tag=enemy,distance=..7] as @s unless data entity @s {Fire:-1s} as @s store result entity @s Fire int $(DMG) run data get entity @s Fire
execute at @s as @e[tag=enemy,distance=..7] as @s unless data entity @s {Fire:-1s} as @s at @s run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.0 96
scoreboard players remove @s OMC.Player.Mana.Points 100