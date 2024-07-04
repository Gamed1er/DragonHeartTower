
execute at @e[tag=ToDH.dodge.M] run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.001 100

execute if entity @e[tag=ToDH.dodge.M] run schedule function dodge:do/subparticle 1t append