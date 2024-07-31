

execute as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 rotated ~ ~ run tp @s ^ ^ ^1.25 ~ ~
execute positioned ^ ^ ^.25 summon arrow run function kcs:main/skill/id/bow/222/arrow


execute positioned ^ ^-1 ^.5 run particle sweep_attack ~ ~1 ~ 0 0 0 0.05 1 force @s
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7
playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7

clear @s arrow 1
scoreboard players add @s KCS.Skill.Angle 1
execute unless score @s KCS.Skill.Angle matches 7.. rotated ~20 ~ positioned ^ ^ ^ run function kcs:main/skill/id/bow/222/sector