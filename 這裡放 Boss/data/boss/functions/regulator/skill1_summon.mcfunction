summon skeleton ~ ~ ~ {CustomNameVisible:1b,NoAI:1b,Health:20f,Tags:["enemy","regulator_soul","boss_partner","soul_setting"],CustomName:'{"text":"soul","color":"black"}',ArmorItems:[{id:"minecraft:dirt",Count:1b},{id:"minecraft:dirt",Count:1b},{id:"minecraft:dirt",Count:1b},{id:"minecraft:dirt",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:-1},{id:"minecraft:glowing",amplifier:1b,duration:-1}],Attributes:[{Name:generic.max_health,Base:20}]}

scoreboard players set temp Regulator 0
execute as @e[tag = enemy] run scoreboard players add temp Regulator 1

execute if score temp Regulator matches ..7 run summon skeleton ~ ~ ~ {Tags:["enemy", "boss_partner"]}
execute if score temp Regulator matches ..7 run summon skeleton ~ ~ ~ {Tags:["enemy", "boss_partner"]}
execute if score temp Regulator matches ..7 run summon skeleton ~ ~ ~ {Tags:["enemy", "boss_partner"]}

