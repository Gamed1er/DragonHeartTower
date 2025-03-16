## System
    execute store result bossbar assassin value run data get entity @e[tag = assassin, limit = 1] Health
    execute store result score Health assassin run data get entity @e[tag = assassin, limit = 1] Health
    
## 效果
    execute unless entity @a[distance=..7] run effect give @s invisibility infinite 0 true
    execute if entity @a[distance=..7] run effect clear @s invisibility
    execute if entity @a[distance=..7] run effect clear @s speed
    execute unless entity @a[distance=..7] unless entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] run effect give @s slowness 2 4 true
    execute unless entity @a[distance=..7] run effect give @s speed infinite 1 true

## 技能
    # CD
    scoreboard players remove SkillCoolDown assassin 1

    # 若 CD 歸零，施放技能
    execute if score SkillCoolDown assassin matches ..0 if entity @a[distance=..2] store result score SkillChooser assassin run random value 0..1
    execute if score SkillCoolDown assassin matches 1.. run scoreboard players set SkillChooser assassin -1
    execute if score SkillChooser assassin matches 0..1 run function boss:assassin/skill2