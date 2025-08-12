
execute as @e[tag=enemy,distance=..8] store result score @s OMC.Check.Fire.Tick run data get entity @s Fire
execute as @e[tag=enemy,distance=..8] as @s if score @s OMC.Check.Fire.Tick matches 1.. run tag @s add OMC.Fire.detect
execute as @e[tag=enemy,tag=OMC.Fire.detect] at @s as @e[distance=..4,tag=enemy,nbt=!{Tags:["OMC.Fire.detect"]}] as @s store result entity @s Fire int 1 run data get entity @e[tag=enemy,tag=OMC.Fire.detect,limit=1,sort=nearest] Fire
execute as @e[tag=enemy,tag=OMC.Fire.detect] as @s at @s run particle flame ~ ~1 ~ 0.2 0.5 0.2 0.05 96
scoreboard players operation @s OMC.Player.Mana.Points -= @s OMC.Player.Mana.Points.Cost 