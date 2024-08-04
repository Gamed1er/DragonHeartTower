execute as @s at @s positioned ~ ~ ~ if entity @s[tag=!Stiff.ing] run function stiff:main/do/over/sound
tag @s add Stiff.ing

execute as @e[tag=Stiff.ing] run function stiff:main/do/over/enemy/regen

