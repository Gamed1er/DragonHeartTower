

execute as @s at @s anchored eyes positioned ^ ^ ^.75 as @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{Tags:["OMC.trigger"]}}}] run data modify entity @s PickupDelay set value 0

execute positioned 0.0 0.0 0.0 rotated as @s as @e[tag=OMC.marker.vector] run tp @s ^ ^ ^10.0
execute store result storage omc:function Skill.vector.X float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[0] 100
execute store result storage omc:function Skill.vector.Y float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[1] 100
execute store result storage omc:function Skill.vector.Z float 0.001 run data get entity @e[tag=OMC.marker.vector,limit=1] Pos[2] 100
scoreboard players set @s OMC.Player.Mana.Points.Cost 30
execute as @s if score @s OMC.Player.Mana.Points matches 1.. run function omc:player/skill/nomatk/summon with storage omc:function Skill.vector