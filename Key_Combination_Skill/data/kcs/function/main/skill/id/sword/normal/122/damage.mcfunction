

$execute as @s run damage @s $(DMG) stiff:normal_damage by @p[tag=KCS.attacker.detect]
execute at @s run particle sweep_attack ~ ~1 ~ 0.2 0.4 0.2 0.2 4
effect give @s slowness 3 2 true
