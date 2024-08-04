
execute as @s at @s store result storage todh:dodge temp.Pos.X double 0.001 run scoreboard players get @s Pos.X
execute as @s at @s store result storage todh:dodge temp.Pos.Y double 0.001 run scoreboard players get @s Pos.Y
execute as @s at @s store result storage todh:dodge temp.Pos.Z double 0.001 run scoreboard players get @s Pos.Z
execute as @s at @s store result storage todh:dodge temp.Pos.Speed double 0.00175 run scoreboard players get @s dodge.Speed

execute as @s[tag=!dodge,tag=!Stiff.ing,nbt={OnGround:1b},gamemode=!creative,gamemode=!spectator] if score @s sneakTick matches ..3 if score @s dodgeCD >= @s dodgeCD.limit run function dodge:do/dodge with storage todh:dodge temp.Pos

scoreboard players reset @s sneakTick
advancement revoke @s only dodge:shift_check
advancement revoke @s only dodge:shift_pos