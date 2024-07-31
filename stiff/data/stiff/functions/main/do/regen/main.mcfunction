execute if score @s stiff.bodylimit > @s stiff.bodylimit.Max run scoreboard players operation @s stiff.bodylimit = @s stiff.bodylimit.Max

function stiff:main/do/regen/stat

scoreboard players operation @s stiff.bodylimit -= @s stiff.bodylimit.regen

execute if score @s stiff.bodylimit matches ..0 run scoreboard players set @s stiff.bodylimit 0

function stiff:main/do/bar/view
advancement revoke @s only stiff:value/regen