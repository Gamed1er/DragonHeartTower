
execute store result score @s stiff.bodylimit.add run random value 160..320
function stiff:main/do/damage/toughness

execute if score @s stiff.bodylimit >= @s stiff.bodylimit.Max run function stiff:main/do/over/enemy/tag

