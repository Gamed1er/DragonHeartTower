
$execute at @s as @e[distance=..6,tag=enemy] as @s run damage @s $(DMG) explosion by @p[tag=OMC.attacker.detect]

execute at @s run particle white_smoke ~ ~ ~ 0.75 0.25 0.75 0.2 2560

scoreboard players remove @s OMC.Player.Mana.Points 90