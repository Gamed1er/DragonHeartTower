

$execute as @s run damage @s $(DMG) stiff:normal_damage by @p[tag=KCS.attacker.detect]
execute at @s run particle crit ~ ~1 ~ 0.1 0.4 0.1 0.2 64
execute at @s run particle sweep_attack ~ ~ ~ 0.01 0.01 0.01 0.05 4
effect give @s water_breathing 3 103 true
execute as @s run function exef:effects/armored/check
scoreboard players add KCS.Score.reg KCS.Skill.Hurt.Count 1