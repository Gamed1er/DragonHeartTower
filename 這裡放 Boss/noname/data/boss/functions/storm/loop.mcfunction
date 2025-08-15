## System
    execute store result bossbar storm value run data get entity @e[tag = storm, limit = 1] Health
    execute store result score Health storm run data get entity @e[tag = storm, limit = 1] Health
    
## 技能
    # CD
    scoreboard players remove FaintTime storm 1
    execute if score SkillCoolDown storm matches ..0 run scoreboard players remove SkillCoolDown storm 1
    execute if score FaintTime storm matches ..0 if score SkillCoolDown storm matches 1.. run scoreboard players remove SkillCoolDown storm 1
    
    # Faint
    effect give @e[tag = storm] resistance infinite 3 false
    execute as @e[tag = storm, nbt = {active_effects :[{id : "minecraft:levitation"}]}] run scoreboard players set FaintTime storm 60
    execute if score FaintTime storm matches 1.. run data modify entity @e[tag = storm, limit = 1] NoAI set value true
    execute if score FaintTime storm matches 1.. as @e[tag = storm] at @s run tp @s ~ ~ ~ ~30 0
    execute if score FaintTime storm matches 1.. as @e[tag = storm] at @s run effect clear @e[tag = storm] resistance
    execute unless score FaintTime storm matches ..0 run data modify entity @e[tag = storm, limit = 1] NoAI set value false

    # 對於制空的玩家造成傷害
    execute as @e[type = player,  nbt={active_effects:[{id:"minecraft:levitation"}]}] run damage @s 3 minecraft:fall by @e[tag = storm, limit=1]

    # 若 CD 歸零，施放技能
    execute if score SkillCoolDown storm matches 0 store result score SkillChooser storm run random value 0..10
    execute if score SkillCoolDown storm matches 1.. run scoreboard players set SkillChooser storm -1
    execute if score SkillChooser storm matches 0..4 run function boss:storm/skill1
    execute if score SkillChooser storm matches 5..10 run function boss:storm/skill2


## 遞迴
    execute as @e[tag = storm] run schedule function boss:storm/loop1 1t
    execute unless entity @e[tag = storm] run function boss:storm/end