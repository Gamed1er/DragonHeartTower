

execute as @s unless score @s KCS.Players.Arrow_Points >= @s KCS.Players.Arrow_Points.Base run function kcs:main/players/bow/reload/pertick


advancement revoke @s only kcs:players/bow/take_bow/reload/check