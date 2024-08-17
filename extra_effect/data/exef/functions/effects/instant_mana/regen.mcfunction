

$execute as @s store result storage exef:function Effect.points int $(level) run scoreboard players get @s OMC.Player.Mana.Points.Max
execute as @s store result score EXEF.Score.reg OMC.Player.Mana.Points run data get storage exef:function Effect.points
$scoreboard players add EXEF.Score.reg OMC.Player.Mana.Points $(points)
scoreboard players operation @s OMC.Player.Mana.Points += EXEF.Score.reg OMC.Player.Mana.Points