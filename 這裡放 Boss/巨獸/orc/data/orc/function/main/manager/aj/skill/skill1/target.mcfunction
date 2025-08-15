

# execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] at @s rotated as @s rotated ~ 0 positioned ^ ^-1 ^2 run function orc:main/manager/aj/skill/skill1/dig

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] store result storage kcs:function Skill.Pos.X float 0.1 run data get entity @s Rotation[0] 10

execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] rotated as @s rotated ~ -10 as @e[tag=KCS.marker.vector] positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0 ~ ~
execute as @e[tag=ToDH.Boss.1_Orc,tag=boss] at @s rotated as @s rotated ~ 0 positioned ^ ^3 ^3 summon snowball run function orc:main/manager/aj/skill/skill1/setup with storage kcs:function Skill.Pos