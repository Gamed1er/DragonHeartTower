
execute as @s store result score @s EXEF.effect.level run data get entity @s active_effects[{id:"minecraft:hero_of_the_village"}].amplifier
execute as @s store result storage exef:function Effect.level float 0.15 run scoreboard players remove @s EXEF.effect.level 99
execute as @s store result storage exef:function Effect.points int 80 run scoreboard players get @s EXEF.effect.level

execute as @s run function exef:effects/instant_mana/regen with storage exef:function Effect

advancement revoke @s only exef:effects/instant_mana/check