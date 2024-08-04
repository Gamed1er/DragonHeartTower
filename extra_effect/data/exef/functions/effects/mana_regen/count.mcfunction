
execute store result score EXEF.Score.reg EXEF.effect.level run data get entity @s active_effects[{id:"minecraft:hero_of_the_village"}].amplifier
execute store result storage exef:function Effect.level int 1000 run scoreboard players add EXEF.Score.reg EXEF.effect.level 1

execute as @s run function exef:effects/mana_regen/add with storage exef:function Effect