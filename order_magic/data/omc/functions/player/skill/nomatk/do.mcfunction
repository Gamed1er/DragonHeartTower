


execute positioned 0.0 0.0 0.0 rotated as @s as @e[tag=OMC.marker.vector] run tp @s ^ ^ ^20.0
execute store result storage omc:function Skill.vector.X float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[0] 100
execute store result storage omc:function Skill.vector.Y float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[1] 100
execute store result storage omc:function Skill.vector.Z float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[2] 100
scoreboard players set @s OMC.Player.Mana.Points.Cost 30
execute as @s run function omc:player/mana/points/reduction/oount
execute as @s if score @s OMC.Player.Mana.Points matches 1.. run function omc:player/skill/nomatk/summon with storage omc:function Skill.vector