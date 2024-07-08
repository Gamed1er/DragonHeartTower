
scoreboard players operation @s OMC.Player.Mana.Points.Max.display = @s OMC.Player.Mana.Points.Max
scoreboard players operation @s OMC.Player.Mana.Points.Max.display /= 10 Math

scoreboard players operation @s OMC.Player.Mana.Points.display = @s OMC.Player.Mana.Points
scoreboard players operation @s OMC.Player.Mana.Points.display.d = @s OMC.Player.Mana.Points
scoreboard players operation @s OMC.Player.Mana.Points.display /= 10 Math
scoreboard players operation @s OMC.Player.Mana.Points.display.d %= 10 Math



title @s actionbar ["",{"text":"[","bold":true,"italic":true,"strikethrough":true,"color":"blue"},{"score":{"name":"@s","objective":"OMC.Player.Mana.Points.Max.display"},"color":"dark_purple"},{"text":"/","bold":true,"italic":true,"strikethrough":true,"color":"blue"},{"score":{"name":"@s","objective":"OMC.Player.Mana.Points.display"},"color":"dark_purple"},{"text":".","bold":true,"color":"light_purple"},{"score":{"name":"@s","objective":"OMC.Player.Mana.Points.display.d"},"color":"dark_purple"},{"text":"]","bold":true,"italic":true,"strikethrough":true,"color":"blue"}]