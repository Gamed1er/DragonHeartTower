

$scoreboard players add @s KCS.Players.Arrow_Points $(add)
$scoreboard players remove @s KCS.Players.Arrow_Points.Filling_Speed.TickperSec $(remove)

execute as @s at @s positioned ^1 ^0.5 ^-.25 run function kcs:main/players/bow/reload/sound
