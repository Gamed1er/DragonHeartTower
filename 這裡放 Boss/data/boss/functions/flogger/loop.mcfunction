## System
    execute store result bossbar flogger value run data get entity @e[tag = flogger, limit = 1] Health
    execute store result score Health flogger run data get entity @e[tag = flogger, limit = 1] Health
    
## 技能
    # CD
    scoreboard players remove SkillCoolDown flogger 1
    scoreboard players remove SummonCoolDown flogger 1

    # 若 CD 歸零，施放技能
    execute if score SkillCoolDown flogger matches 0 run scoreboard players add SkillChooser flogger 1
    execute if score SkillCoolDown flogger matches ..0 run function boss:flogger/skill2
    execute if score SkillCoolDown flogger matches 0 if score SkillChooser flogger matches 5 run function boss:flogger/skill1

## 召喚
    scoreboard players set temp flogger 0
    execute as @e[tag = enemy] run scoreboard players add temp flogger 1
    execute if score SummonCoolDown flogger matches ..0 if score temp flogger matches ..5 run function boss:flogger/skill3
    execute if score SummonCoolDown flogger matches ..0 if score temp flogger matches ..5 run scoreboard players set temp flogger 600
    

## 遞迴
    execute as @e[tag = flogger] run schedule function boss:flogger/loop1 1t
    execute unless entity @e[tag = flogger] run function boss:flogger/end