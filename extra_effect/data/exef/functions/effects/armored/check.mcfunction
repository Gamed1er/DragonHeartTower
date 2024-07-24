
tag @s add ToDH.EXEF.effect.armored
execute as @s store result score @s EXEF.effect.level run data get entity @s active_effects[{id:"minecraft:water_breathing"}].amplifier
scoreboard players remove @s EXEF.effect.level 100
execute as @s store result storage exef:function Effect.level float 0.1 run scoreboard players add @s EXEF.effect.level 1
execute as @s run function exef:effects/armored/effect with storage exef:function Effect

advancement revoke @s only exef:effects/armored/check

execute if entity @s[type=!player] run schedule function exef:effects/armored/mob 2t