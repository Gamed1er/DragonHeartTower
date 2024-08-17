## 創建 ScoreBoard
    scoreboard objectives add knight dummy "屠龍騎士．豪佐"
    scoreboard players set Health knight 0
    scoreboard players set SkillCoolDown knight 100
    scoreboard players set SkillChooser knight -1

## 創建 BossBar
    bossbar add knight [{"text":"屠龍騎士．豪佐","color":"dark_gray","bold":true}]
    bossbar set knight visible true
    bossbar set knight color pink
    bossbar set knight style notched_10
    bossbar set knight players @a

## 創建 team
    team add knight
    team modify knight friendlyFire false

## 本體召喚
    execute unless entity @e[tag=knight] run summon skeleton_horse ~ ~ ~ {Invulnerable:1b,Glowing:0b,CustomNameVisible:0b,Health:20f,Tame:0b,Tags:["boss","knight1"],Passengers:[{id:"minecraft:piglin_brute",Invulnerable:0b,Glowing:1b,CustomNameVisible:1b,NoAI:1b,Health:250f,IsImmuneToZombification:1b,Tags:["boss","enemy","knight"],CustomName:'{"text":"屠龍騎士．豪佐","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:2s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{},{},{},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:255s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:250}]}],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:1,UUID:[I;-1689459540,233653676,-1319826372,-2061518071],Slot:"mainhand"}]}},{id:"minecraft:shield",Count:1b}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F]}
    data modify entity @e[tag=knight, limit=1] NoAI set value false
    execute store result bossbar knight max run data get entity @e[tag = knight, limit = 1] Health
    function boss:knight/loop1
    team join knight @e[tag = knight]

    effect give @e[type = skeleton_horse] speed infinite 0 true