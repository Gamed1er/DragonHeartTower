

$execute as @s store result storage omc:function Battle.DMG float $(DMG) run execute as @s store result score @s OMC.Check.Fire.Tick run data get entity @s Fire

execute as @s if score @s OMC.Check.Fire.Tick matches 1.. as @s run function omc:player/skill/id/256/damage with storage omc:function Battle