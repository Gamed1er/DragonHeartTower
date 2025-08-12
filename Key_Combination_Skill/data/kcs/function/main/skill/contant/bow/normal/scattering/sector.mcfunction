

execute as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 rotated ~ ~ run tp @s ^ ^ ^2.0 ~ ~

execute positioned ^ ^ ^.25 summon arrow run function kcs:main/skill/contant/bow/normal/scattering/arrow


execute positioned ^ ^-1 ^.5 run particle sweep_attack ~ ~1 ~ 0 0 0 0.05 1 force @s
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7
playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7

scoreboard players remove @s KCS.Players.Arrow_Points 1
scoreboard players add @s KCS.Skill.Angle 1
execute as @s unless score @s KCS.Skill.Angle matches 3.. rotated ~45 ~ positioned ^ ^ ^ run function kcs:main/skill/contant/bow/normal/scattering/sector