


execute store result storage kcs:function Bow.reload.add int 0.005 run scoreboard players operation @s KCS.Players.Arrow_Points.Filling_Speed.TickperSec += @s KCS.Players.Arrow_Points.Filling_Speed
execute store result storage kcs:function Bow.reload.remove int 200 run data get storage kcs:function Bow.reload.add 1
execute if score @s KCS.Players.Arrow_Points.Filling_Speed.TickperSec matches 200.. run function kcs:main/players/bow/reload/count with storage kcs:function Bow.reload








