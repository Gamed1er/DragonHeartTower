execute store result storage kcs:function Skill.Pos.X float 0.1 run random value -20..20
execute store result storage kcs:function Skill.Pos.Z float 0.1 run random value -20..20

execute as @e[type=minecraft:arrow,tag=KCS.arrow.rain,nbt={inGround:1b}] run function kcs:main/skill/id/bow/221/rain_g with storage kcs:function Skill.Pos
execute as @e[type=!arrow,tag=KCS.arrow.rain] run function kcs:main/skill/id/bow/221/rain_g with storage kcs:function Skill.Pos

schedule function kcs:main/skill/id/bow/221/clear 10t replace
execute if entity @e[tag=KCS.arrow.rain] run schedule function kcs:main/skill/id/bow/221/in_g_check 4t replace