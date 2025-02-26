execute as @s at @s positioned ~ ~ ~ if entity @s[tag=!Stiff.ing] run function stiff:main/do/over/sound
tag @s add Stiff.ing

execute as @a[tag=Stiff.ing] run function stiff:main/do/over/regen

advancement revoke @s only stiff:value/clear