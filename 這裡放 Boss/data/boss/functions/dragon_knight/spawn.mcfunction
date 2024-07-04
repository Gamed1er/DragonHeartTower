## 創建 ScoreBoard
    scoreboard objectives add DragonKnight dummy "龍之騎士"
    scoreboard players set Health DragonKnight 0
    scoreboard players set Hint DragonKnight 0
    scoreboard players set SkillCoolDown DragonKnight 240
    scoreboard players set SkillChooser DragonKnight -1

## 創建 BossBar
    bossbar add drangon_knight {"text":"【龍之騎士】","bold":true,"color":"gray"}
    bossbar set drangon_knight visible true
    bossbar set drangon_knight color red
    bossbar set drangon_knight style notched_10
    bossbar set drangon_knight players @a

## 創建 team
    team add DrangonKnight
    team modify DrangonKnight friendlyFire false

## 本體召喚
    summon skeleton_horse ~ ~ ~ {Invulnerable:1b,Glowing:0b,CustomNameVisible:0b,Health:20f,Tame:0b,Tags:["boss","enemy","dragon_knight1"],Passengers:[{id:"minecraft:skeleton",Invulnerable:0b,Glowing:1b,CustomNameVisible:1b,Health:250f,Tags:["boss","enemy","dragon_knight2"],CustomName:'{"text":"龍之騎士","color":"light_purple","bold":true}',HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;676454243,1711948512,-1888095391,-1359338880]}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:50s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:250}]}],HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:1,UUID:[I;1777762560,618939235,-2058031087,-1227808497],Slot:"mainhand"}]}},{id:"minecraft:shield",Count:1b}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b},{id:"minecraft:iron_leggings",Count:1b},{id:"minecraft:iron_chestplate",Count:1b},{id:"minecraft:iron_helmet",Count:1b}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:20}]}
    execute store result bossbar drangon_knight max run data get entity @e[tag = dragon_knight2, limit = 1] Health
    function boss:dragon_knight/loop
    team join DrangonKnight @e[tag = dragon_knight2]
