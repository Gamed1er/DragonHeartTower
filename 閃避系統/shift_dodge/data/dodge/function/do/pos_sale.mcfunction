
execute as @s at @s store result score @s Pos.X run data get entity @s Motion[0] 10000
execute as @s at @s store result score @s Pos.Y run data get entity @s Motion[1] 1000
execute as @s at @s store result score @s Pos.Z run data get entity @s Motion[2] 10000

advancement revoke @s only dodge:shift_pos