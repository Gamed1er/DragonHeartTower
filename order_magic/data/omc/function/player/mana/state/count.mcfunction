


function omc:player/mana/state/max/count
function omc:player/mana/state/strength/count

scoreboard players reset @s OMC.Player.Mana.Points.Regen


scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Regen = @s OMC.Player.Mana.Points.Regen.Base

scoreboard players set OMC.State.reg OMC.Player.Mana.Points.Regen.Boost 1000
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Regen.Boost += @s OMC.Player.Mana.Points.Regen.Boost
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Regen *= OMC.State.reg OMC.Player.Mana.Points.Regen.Boost
scoreboard players operation OMC.State.reg OMC.Player.Mana.Points.Regen /= 1000 Math
scoreboard players operation @s OMC.Player.Mana.Points.Regen = OMC.State.reg OMC.Player.Mana.Points.Regen


advancement revoke @s only omc:player/state/putdown_stalf