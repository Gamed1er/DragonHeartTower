

scoreboard players set OMC.Score.reg OMC.Player.Mana.Points.Cost.Reduction 1000
scoreboard players operation OMC.Score.reg OMC.Player.Mana.Points.Cost.Reduction -= @s OMC.Player.Mana.Points.Cost.Reduction
execute unless score OMC.Score.reg OMC.Player.Mana.Points.Cost.Reduction matches 300.. run scoreboard players set OMC.Score.reg OMC.Player.Mana.Points.Cost.Reduction 300
scoreboard players operation @s OMC.Player.Mana.Points.Cost *= OMC.Score.reg OMC.Player.Mana.Points.Cost.Reduction
scoreboard players operation @s OMC.Player.Mana.Points.Cost /= 1000 Math
execute unless score @s OMC.Player.Mana.Points.Cost matches 10.. run scoreboard players set @s OMC.Player.Mana.Points.Cost 10