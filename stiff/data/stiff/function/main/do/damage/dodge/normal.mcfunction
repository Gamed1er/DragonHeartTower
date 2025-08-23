
scoreboard players reset @s ToDH.BattleTime.tick
execute as @s at @s store result storage todh:dodge temp.Pos.Speed double 0.0005 run scoreboard players get @s dodge.Speed
execute as @s run function dodge:do/dodge with storage todh:dodge temp.Pos
# advancement grant @s only dodge:clear
scoreboard players operation @s dodgeCD = @s dodgeCD.limit
scoreboard players remove @s dodgeCD 10

advancement revoke @s only stiff:damage_check/normal_dodge

