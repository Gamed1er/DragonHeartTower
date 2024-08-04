



scoreboard players operation @s stiff.bodylimit.regen = @s stiff.resilience
scoreboard players operation @s stiff.bodylimit.regen /= tick Math

execute if score @s ToDH.BattleTime.tick matches 100.. run scoreboard players operation @s stiff.bodylimit.regen *= 10 Math
execute if score @s ToDH.BattleTime.tick matches 100 run function stiff:main/do/regen/sound

execute if score @s stiff.bodylimit.regen matches ..0 run scoreboard players set @s stiff.bodylimit.regen 1