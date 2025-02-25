

$execute as @s run damage @s $(DMG) stiff:normal_damage by @p[tag=KCS.attacker.detect]
execute at @s run particle crit ~ ~1 ~ 0.1 0.4 0.1 0.2 64
execute at @s run tp @s ~ ~5 ~
data modify entity @s Motion set value [0.0d,-0.75d,0.0d]
data modify entity @s FallDistance set value 16.0f