

$execute at @s as @e[tag=enemy,distance=..4] as @s run damage @s $(DMG) indirect_magic by @p[tag=OMC.attacker.detect]
execute at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 1 10