## 創建 ScoreBoard
    scoreboard objectives add flogger dummy "鐵律鞭叱者亞巴頓"
    scoreboard players set Health flogger 0
    scoreboard players set SkillCoolDown flogger 100
    scoreboard players set SummonCoolDown flogger 200
    scoreboard players set SkillChooser flogger 4

## 創建 BossBar
    bossbar add flogger [{"text":"鐵律鞭叱者 - ","color":"gray","bold":true},{"text":"亞巴頓","color":"#EE00FF","bold":true}]
    bossbar set flogger visible true
    bossbar set flogger color pink
    bossbar set flogger style notched_10
    bossbar set flogger players @a

## 創建 team
    team add flogger
    team modify flogger friendlyFire false

## 本體召喚
    summon zombie ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:0b,Health:250f,Tags:["enemy","boss","flogger"],CustomName:'[{"text":"鐵律鞭叱者 - ","color":"gray","bold":true},{"text":"亞巴頓","color":"#EE00FF","bold":true}]',HandItems:[{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1511}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}},{id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:12105912},Trim:{material:"minecraft:amethyst",pattern:"minecraft:vex"}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:250},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0}]}
    execute store result bossbar flogger max run data get entity @e[tag = flogger, limit = 1] Health
    function boss:flogger/loop1
    team join flogger @e[tag = flogger]
