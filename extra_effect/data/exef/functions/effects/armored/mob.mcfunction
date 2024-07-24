

execute as @e[tag=ToDH.EXEF.effect.armored] as @s run function exef:effects/armored/check
execute as @e[tag=ToDH.EXEF.effect.armored] unless predicate exef:effect_watbreth as @s run function exef:effects/armored/clear

execute if entity @e[tag=ToDH.EXEF.effect.armored] run schedule function exef:effects/armored/mob 2t replace