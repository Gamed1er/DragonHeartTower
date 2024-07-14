## 創建 ScoreBoard
    scoreboard objectives add soul_locker dummy "癡盲鎖魂人 - 厄爾"
    scoreboard players set Health soul_locker 0
    scoreboard players set SkillCoolDown soul_locker 240
    scoreboard players set SkillChooser soul_locker -1

## 創建 BossBar
    bossbar add soul_locker [{"text":"癡盲鎖魂人 - ","color":"gray","bold":true},{"text":"厄爾","color":"#ff6464","bold":true}]
    bossbar set soul_locker visible true
    bossbar set soul_locker color pink
    bossbar set soul_locker style notched_10
    bossbar set soul_locker players @a

## 創建 team
    team add soul_locker
    team modify soul_locker friendlyFire false

## 本體召喚
    summon skeleton ~ ~ ~ {PersistenceRequired:1b,Health:250f,Tags:["enemy","boss","soul_locker"],CustomName:'{"text":"癡盲鎖魂人 - 厄爾 ","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:iron_sword",Count:1b},{}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:7366759},AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-75603836,-217298095,-2054403784,2068372515],Slot:"legs"}],Trim:{material:"minecraft:iron",pattern:"minecraft:wild"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:7366759},Trim:{material:"minecraft:iron",pattern:"minecraft:wild"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:7366759},Trim:{material:"minecraft:iron",pattern:"minecraft:wild"}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"SwaGro"}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.085F],Attributes:[{Name:generic.max_health,Base:250}]}
    execute store result bossbar soul_locker max run data get entity @e[tag = soul_locker, limit = 1] Health
    function boss:soul_locker/loop1
    team join soul_locker @e[tag = soul_locker]
