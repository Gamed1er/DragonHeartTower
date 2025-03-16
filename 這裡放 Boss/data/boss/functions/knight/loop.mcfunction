## System
    execute store result bossbar knight value run data get entity @e[tag = knight, limit = 1] Health
    execute store result score Health knight run data get entity @e[tag = knight, limit = 1] Health
    
## 效果
    execute if entity @e[tag = knight2] if entity @e[tag = knight3] run effect give @e[tag = knight] regeneration 5 2
    execute unless entity @e[tag = knight2] if entity @e[tag = knight3] run effect give @e[tag = knight] regeneration 5 1
    execute if entity @e[tag = knight2] unless entity @e[tag = knight3] run effect give @e[tag = knight] regeneration 5 1

    tp @e[tag = knight2] ^2 ^-1 ^
    tp @e[tag = knight3] ^-2 ^-1 ^

## 技能
    # CD
    scoreboard players remove SkillCoolDown knight 1

    # 若 CD 歸零，施放技能
    execute if score SkillCoolDown knight matches ..0 if entity @a[distance=..2] store result score SkillChooser knight run random value 0..4
    execute if score SkillCoolDown knight matches 1.. run scoreboard players set SkillChooser knight -1
    execute if score SkillChooser knight matches 0 run function boss:knight/skill1
    execute if score SkillChooser knight matches 1.. run function boss:knight/skill2