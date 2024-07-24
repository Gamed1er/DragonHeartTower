## System
    execute if entity @e[tag = regulator] store result bossbar regulator value run data get entity @e[tag = regulator, limit = 1] Health
    execute store result score Health Regulator run data get entity @e[tag = regulator, limit = 1] Health

## 遠近切換
    execute if entity @a[distance=..3] run data modify entity @s[tag = soul_locker, nbt = {HandItems:[{id:"minecraft:bow"},{}]}] HandItems set value [{id:"minecraft:stick",tag:{CustomModelData:1511}},{}]
    execute unless entity @a[distance=..6] run data modify entity @s[tag = soul_locker, nbt = {HandItems:[{id:"minecraft:stick",tag:{CustomModelData:1511}},{}]}] HandItems set value [{id:"minecraft:bow",Count:1b},{}]

## 技能
    ## 定身
    scoreboard players remove @e[tag = Regulator_soul] Regulator 1
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run effect give @a[tag = Regulator_locked] slowness 10 46
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run effect give @a[tag = Regulator_locked] jump_boost 10 200
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run effect give @a[tag = Regulator_locked] nausea 10 1
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run tp ~ -100 ~
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run kill @s
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run tag @a remove Regulator_locked
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run advancement revoke @a only boss:regulator
    execute as @e[tag = Regulator_soul, scores = {Regulator = ..-240}] run advancement revoke @a only boss:regulator_mount

    execute unless entity @e[tag = Regulator_soul] run tag @a remove Regulator_locked
    execute unless entity @e[tag = Regulator_soul] run advancement revoke @a only boss:regulator
    execute unless entity @e[tag = Regulator_soul] run advancement revoke @a only boss:regulator_mount

    # CD
    scoreboard players remove SkillCoolDown Regulator 1
    execute if score SkillCoolDown Regulator matches 0 run scoreboard players set SkillChooser Regulator 1
    execute if score SkillCoolDown Regulator matches 1.. run scoreboard players set SkillChooser Regulator -1
    execute if score SkillCoolDown Regulator matches 1.. run effect clear @a darkness
    execute if score SkillChooser Regulator matches 0..10 run function boss:regulator/skill4

    # 被動效果
    execute if score Skill3 Regulator matches 3 if score Health Regulator matches ..187 if score SkillCoolDown Regulator matches 1.. run function boss:regulator/skill3
    execute if score Skill3 Regulator matches 2 if score Health Regulator matches ..125 if score SkillCoolDown Regulator matches 1.. run function boss:regulator/skill3
    execute if score Skill3 Regulator matches 1 if score Health Regulator matches ..63 if score SkillCoolDown Regulator matches 1.. run function boss:regulator/skill3

    # 血屍爆炸
    scoreboard players remove @e[tag = soul_tnt] Regulator 1
    execute as @e[tag = soul_tnt, scores = {Regulator = ..-240}] at @s run function boss:soul_locker/tnt_boom
    execute as @e[tag = soul_tnt, scores = {Regulator = -179..}] at @s if entity @a[distance = ..3] run scoreboard players set @s Regulator -180
    execute as @e[tag = soul_tnt, scores = {Regulator = ..-180}] at @s run particle angry_villager ~ ~ ~ 0.6 0.2 0.6 1 1 force @a

    #小堅守者給大堅守者回血
    execute as @e[tag = regulator_helper] run effect give @e[tag = regulator] regeneration 1 6
    execute as @e[tag = regulator_helper] at @s run particle heart ~ ~ ~ 0.1 0.1 0.1 1 50 force @a
    execute as @e[tag = regulator_helper] at @e[tag = regulator] run particle heart ~ ~ ~ 0.1 0.1 0.1 1 50 force @a

## 遞迴
    execute as @e[tag = regulator] run schedule function boss:regulator/loop1 1t
    execute unless entity @e[tag = regulator] if entity @e[tag = regulator] run schedule function boss:regulator/loop1 1t
    execute unless entity @e[tag = regulator] if entity @e[tag = regulator] run function boss:regulator/end