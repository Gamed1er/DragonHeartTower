## System
    execute store result bossbar drangon_knight value run data get entity @e[tag = dragon_knight2, limit = 1] Health
    execute store result score Health DragonKnight run data get entity @e[tag = dragon_knight2, limit = 1] Health
    
## 技能
    # CD
    scoreboard players remove SkillCoolDown DragonKnight 1
    # 若 CD 歸零，施放技能
    execute if score SkillCoolDown DragonKnight matches 0 store result score SkillChooser DragonKnight run random value 0..10
    execute if score SkillCoolDown DragonKnight matches 1.. run scoreboard players set SkillChooser DragonKnight -1
    execute if score SkillChooser DragonKnight matches 0..5 run function boss:dragon_knight/skill1
    execute if score SkillChooser DragonKnight matches 5..10 run function boss:dragon_knight/skill2
    #小弟給與大哥減傷
    execute as @e[tag = dragon_knight3] run effect give @e[tag = dragon_knight2] resistance 1 3 true

## 遞迴
    execute as @e[tag = dragon_knight1] run schedule function boss:dragon_knight/loop1 1t
    execute unless entity @e[tag = dragon_knight2] run function boss:dragon_knight/end