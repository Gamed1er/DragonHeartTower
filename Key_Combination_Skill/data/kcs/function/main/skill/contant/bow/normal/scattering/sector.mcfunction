

$execute as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 rotated ~$(X) ~$(Y) run tp @s ^ ^ ^2.0 ~ ~

execute positioned ^ ^ ^.25 summon arrow run function kcs:main/skill/contant/bow/normal/scattering/arrow


execute positioned ^ ^-1 ^.5 run particle sweep_attack ~ ~1 ~ 0 0 0 0.05 1 force @s
playsound entity.player.attack.sweep record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7
playsound entity.arrow.shoot record @a[distance=..16] ~ ~ ~ 0.7 0.7 0.7

scoreboard players remove @s KCS.Players.Arrow_Points 1
scoreboard players add @s KCS.Skill.Angle 1
execute store result storage kcs:function Skill.Pos.X float 0.1 run random value -30..30
execute store result storage kcs:function Skill.Pos.Y float 0.1 run random value -30..30
execute as @s unless score @s KCS.Skill.Angle matches 3.. rotated ~ ~ positioned ^ ^ ^ run function kcs:main/skill/contant/bow/normal/scattering/sector with storage kcs:function Skill.Pos