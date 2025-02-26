
scoreboard players reset @s ToDH.BattleTime.tick
execute store result score @s stiff.bodylimit.add run random value 160..320
function stiff:main/do/damage/toughness

advancement revoke @s only stiff:damage_check/normal