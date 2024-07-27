
scoreboard players operation OMC.Score.reg OMC.Player.Mana.Points.Regen = @s OMC.Player.Mana.Points.Regen
scoreboard players set OMC.Score.reg OMC.Player.Mana.Points.Regen.Boost 1000
scoreboard players operation OMC.Score.reg OMC.Player.Mana.Points.Regen.Boost += @s OMC.Player.Mana.Points.Regen.Boost
execute as @s if predicate omc:todh_kit_2 run scoreboard players add OMC.Score.reg OMC.Player.Mana.Points.Regen.Boost 200
scoreboard players operation OMC.Score.reg OMC.Player.Mana.Points.Regen *= OMC.Score.reg OMC.Player.Mana.Points.Regen.Boost
scoreboard players operation OMC.Score.reg OMC.Player.Mana.Points.Regen /= 1000 Math

execute store result storage omc:function Mana.Regen.add int 0.05 run scoreboard players operation @s OMC.Player.Mana.Points.Regen.TickperSec += OMC.Score.reg OMC.Player.Mana.Points.Regen
execute store result storage omc:function Mana.Regen.remove int 20 run data get storage omc:function Mana.Regen.add 1
execute if score @s OMC.Player.Mana.Points.Regen.TickperSec matches 20.. run function omc:player/mana/points/regen/count with storage omc:function Mana.Regen


function omc:player/mana/points/text

advancement revoke @s only omc:player/mana/points/regen