

$execute at @s as @e[tag=enemy,distance=..4] as @s run damage @s $(DMG) indirect_magic by @p[tag=OMC.attacker.detect]
execute at @s run particle explosion ~ ~ ~ 0.1 0.1 0.1 1 10
execute at @s run playsound entity.generic.explode ambient @a[distance=..16] ~ ~ ~ 0.7 1 0.5
execute at @s run playsound entity.generic.explode ambient @a[distance=..16] ~ ~ ~ 0.7 0.9 0.5
execute at @s run playsound entity.generic.explode ambient @a[distance=..16] ~ ~ ~ 0.7 1.2 0.5