
execute as @a[tag=dodge] at @s run particle minecraft:campfire_cosy_smoke ~ ~0.125 ~ 0.1 0.1 0.1 0.001 100



execute if entity @a[tag=dodge] run schedule function dodge:do/subparticle 1t append