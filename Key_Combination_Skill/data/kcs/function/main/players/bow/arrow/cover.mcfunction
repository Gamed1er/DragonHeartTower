



execute as @s store result score @s KCS.Players.arrow.count run clear @s arrow 0
execute as @s if score @s KCS.Players.arrow.count matches 1.. run scoreboard players operation @s KCS.Players.Arrow_Points += @s KCS.Players.arrow.count
execute as @s if score @s KCS.Players.arrow.count matches 1.. run clear @s arrow

advancement revoke @s only kcs:players/bow/take_bow/in_standby