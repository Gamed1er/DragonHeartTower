## System
    execute if entity @e[tag = regulator_mount] store result bossbar regulator value run data get entity @e[tag = regulator_mount, limit = 1] Health
    execute store result score Health Regulator run data get entity @e[tag = regulator, limit = 1] Health

## 

## 技能
    # CD
    scoreboard players remove SkillCoolDown Regulator 1
    # 若 CD 歸零，施放技能
    execute if score SkillCoolDown Regulator matches 0 store result score SkillChooser Regulator run random value 0..10
    execute if score SkillCoolDown Regulator matches 1.. run scoreboard players set SkillChooser Regulator -1
    execute if score SkillChooser Regulator matches 0..5 run function boss:regulator/skill1
    execute if score SkillChooser Regulator matches 5..10 run function boss:regulator/skill2


## 遞迴
    execute as @e[tag = regulator] run schedule function boss:regulator/loop1 1t
    execute unless entity @e[tag = regulator] if entity @e[tag = regulator_mount] run schedule function boss:regulator/loop1 1t
    execute unless entity @e[tag = regulator] if entity @e[tag = regulator] run function boss:regulator/end