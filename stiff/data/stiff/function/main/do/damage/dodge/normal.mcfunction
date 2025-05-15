
scoreboard players reset @s ToDH.BattleTime.tick
execute as @s run function dodge:do/dodge with storage todh:dodge temp.Pos
advancement grant @s only dodge:clear

advancement revoke @s only stiff:damage_check/normal_dodge

