execute positioned 0.0 0.0 0.0 rotated as @s as @e[tag=OMC.marker.vector] run tp @s ^ ^ ^6.5
execute store result storage omc:function Skill.vector.X float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[0] 100
execute store result storage omc:function Skill.vector.Y float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[1] 100
execute store result storage omc:function Skill.vector.Z float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[2] 100

execute at @s as @s if score @s OMC.Player.Mana.Points matches 80.. run function omc:player/skill/id/11/summon with storage omc:function Skill.vector