
$execute positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0 run tp @e[limit=1,tag=ToDH.dodge.vector.marker] ^ ^ ^$(Speed) ~ ~

execute store result score @s Pos.X run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[0] 1000
execute store result score @s Pos.Y run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[1] 1000
execute store result score @s Pos.Z run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[2] 1000
# execute if score @s Pos.X matches 0 run scoreboard players set @s Pos.X 1
# execute if score @s Pos.Y matches 0 run scoreboard players set @s Pos.Y 1
# execute if score @s Pos.Z matches 0 run scoreboard players set @s Pos.Z 1

execute store result storage todh:dodge temp.Pos.X double 0.001 run scoreboard players get @s Pos.X
execute store result storage todh:dodge temp.Pos.Y double 0.001 run scoreboard players get @s Pos.Y
execute store result storage todh:dodge temp.Pos.Z double 0.001 run scoreboard players get @s Pos.Z

execute store result storage todh:dodge temp.ParticlePos.X double 1 run scoreboard players get @s Pos.X
execute store result storage todh:dodge temp.ParticlePos.Y double 1 run scoreboard players get @s Pos.Y
execute store result storage todh:dodge temp.ParticlePos.Z double 1 run scoreboard players get @s Pos.Z

execute store result score $x player_motion.api.launch run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[0] 10000
execute store result score $y player_motion.api.launch run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[1] 10000
execute store result score $z player_motion.api.launch run data get entity @e[limit=1,tag=ToDH.dodge.vector.marker] Pos[2] 10000

execute as @s run function player_motion:api/launch_xyz

tag @s add dodge
playsound minecraft:block.azalea.break ambient @a[distance=..12] ~ ~ ~ 5 0.1
playsound minecraft:ui.stonecutter.take_result ambient @a[distance=..12] ~ ~ ~ 0.5 0.75
execute at @s positioned ~ ~.5 ~ run function dodge:do/particle with storage todh:dodge temp.ParticlePos
function dodge:do/subparticle
scoreboard players reset @s dodgeTick
advancement revoke @s only dodge:clear
effect give @s resistance 1 4 true
attribute @s knockback_resistance modifier add dodge:buff 0.8 add_value

execute as @s run scoreboard players reset @s dodgeCD


# execute at @s as @s run function dodge:do/traget with storage todh:dodge temp.Pos
