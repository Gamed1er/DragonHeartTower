
scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 160..320
scoreboard players operation @s stiff.bodylimit -= @s stiff.bodylimit.add
execute as @s run function dodge:do/dodge with storage todh:dodge temp.Pos
advancement grant @s only dodge:clear
scoreboard players operation @s dodgeCD = @s dodgeCD.limit
scoreboard players remove @s dodgeCD 10


advancement revoke @s only stiff:damage_check/hard_isdodge
advancement revoke @s only stiff:damage_check/hard_tag_isdodge

