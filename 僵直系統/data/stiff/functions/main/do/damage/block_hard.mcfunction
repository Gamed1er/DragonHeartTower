
scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 500..750
function stiff:main/do/damage/toughness

advancement revoke @s only stiff:damage_check/hard_isblock
advancement revoke @s only stiff:damage_check/hard_tag_isblock
advancement revoke @s only stiff:damage_check/hard_isdodge
advancement revoke @s only stiff:damage_check/hard_tag_isdodge