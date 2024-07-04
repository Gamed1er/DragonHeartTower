
$execute positioned $(X) $(Y) $(Z) facing entity @s feet positioned 0.0 0.0 0.0 run tp @e[limit=1,tag=ToDH.dodge.vector.marker] ^ ^ ^$(Speed) ~ ~


execute store result score @s Pos.X run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[0] 1000
execute store result score @s Pos.Y run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[1] 1000
execute store result score @s Pos.Z run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[2] 1000
execute if score @s Pos.X matches 0 run scoreboard players set @s Pos.X 1
execute if score @s Pos.Y matches 0 run scoreboard players set @s Pos.Y 1
execute if score @s Pos.Z matches 0 run scoreboard players set @s Pos.Z 1

execute store result storage todh:dodge temp.Pos.X double 0.001 run scoreboard players get @s Pos.X
execute store result storage todh:dodge temp.Pos.Y double 0.001 run scoreboard players get @s Pos.Y
execute store result storage todh:dodge temp.Pos.Z double 0.001 run scoreboard players get @s Pos.Z

execute store result storage todh:dodge temp.ParticlePos.X double 1 run scoreboard players get @s Pos.X
execute store result storage todh:dodge temp.ParticlePos.Y double 1 run scoreboard players get @s Pos.Y
execute store result storage todh:dodge temp.ParticlePos.Z double 1 run scoreboard players get @s Pos.Z

execute at @s as @s run function dodge:do/traget with storage todh:dodge temp.Pos
