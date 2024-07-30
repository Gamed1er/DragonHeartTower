

$execute as @s run damage @s $(DMG) stiff:normal_damage by @p[tag=KCS.attacker.detect]
execute at @s run particle enchanted_hit ~ ~1 ~ 0.1 0.4 0.1 0.2 64
scoreboard players add KCS.Score.reg KCS.Skill.Hurt.Count 1
effect give @s water_breathing 5 101 true
execute as @s run function exef:effects/armored/check