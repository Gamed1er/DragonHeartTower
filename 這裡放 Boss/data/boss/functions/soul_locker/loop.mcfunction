## System
    execute store result bossbar soul_locker value run data get entity @e[tag = soul_locker, limit = 1] Health
    execute store result score Health soul_locker run data get entity @e[tag = soul_locker, limit = 1] Health
    

## 近戰遠程切換
    execute if entity @a[distance=..2] run data modify entity @e[tag = soul_locker, limit = 1] HandItems set value [{id:"minecraft:iron_sword",Count:1b},{}]
    execute unless entity @a[distance=..6] run data modify entity @e[tag = soul_locker, limit = 1] HandItems set value [{id:"minecraft:bow",Count:1b},{}]

## 定身
    scoreboard players remove @e[tag = soul_locker_soul] soul_locker 1
    execute as @e[tag = soul_locker_soul, scores = {soul_locker = ..-240}] run effect give @a[tag = soul_locker_locked] slowness 10 9
    execute as @e[tag = soul_locker_soul, scores = {soul_locker = ..-240}] run effect give @a[tag = soul_locker_locked] jump_boost 10 200
    execute as @e[tag = soul_locker_soul, scores = {soul_locker = ..-240}] run effect give @a[tag = soul_locker_locked] nausea 10 1
    execute as @e[tag = soul_locker_soul, scores = {soul_locker = ..-240}] run kill @s
    execute as @e[tag = soul_locker_soul, scores = {soul_locker = ..-240}] run tag @a remove soul_locker_locked
    execute as @e[tag = soul_locker_soul, scores = {soul_locker = ..-240}] run advancement revoke @a only boss:soul_locker

    execute unless entity @e[tag = soul_locker_soul] run tag @a remove soul_locker_locked
    execute unless entity @e[tag = soul_locker_soul] run advancement revoke @a only boss:soul_locker

## 爆炸
    scoreboard players remove @e[tag = soul_tnt] soul_locker 1
    execute as @e[tag = soul_tnt, scores = {soul_locker = ..-240}] at @s run function boss:soul_locker/tnt_boom
    execute as @e[tag = soul_tnt, scores = {soul_locker = -179..}] if entity @a[distance = ..3] at @s run scoreboard players set @s soul_locker -180
    execute as @e[tag = soul_tnt, scores = {soul_locker = ..-180}] at @s run particle angry_villager ~ ~ ~ 0.6 0.2 0.6 1 1 force @a

## 技能
    # CD
    scoreboard players remove SkillCoolDown soul_locker 1

    # 若 CD 歸零，施放技能
    execute if score SkillCoolDown soul_locker matches 0 store result score SkillChooser soul_locker run random value 0..1
    execute if score SkillCoolDown soul_locker matches 1.. run scoreboard players set SkillChooser soul_locker -1
    execute if score SkillChooser soul_locker matches 0..1 run function boss:soul_locker/skill2

## 遞迴
    execute as @e[tag = soul_locker] run schedule function boss:soul_locker/loop1 1t
    execute unless entity @e[tag = soul_locker] run function boss:soul_locker/end