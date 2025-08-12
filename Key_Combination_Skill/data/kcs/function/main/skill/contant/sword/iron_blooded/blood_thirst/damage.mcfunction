

$execute as @s run damage @s $(DMG) stiff:normal_damage by @p[tag=KCS.attacker.detect]
execute at @s run particle enchanted_hit ~ ~1 ~ 0.1 0.4 0.1 0.2 64

execute as @s store result score r1 KCS.reg run attribute @s minecraft:max_health get 100
execute as @s store result score r2 KCS.reg run data get entity @s Health 100
execute store result storage kcs:function Battle.DMG float 0.001 run scoreboard players operation r1 KCS.reg -= r2 KCS.reg
execute as @s run function kcs:main/skill/contant/sword/iron_blooded/blood_thirst/bleed with storage kcs:function Battle