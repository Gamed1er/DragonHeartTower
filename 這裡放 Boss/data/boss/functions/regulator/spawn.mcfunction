## 創建 ScoreBoard
    scoreboard objectives add Regulator dummy "叱嘯監管者 - 麥迪根"
    scoreboard players set Health Regulator 0
    scoreboard players set Skill3 Regulator 3
    scoreboard players set SkillCoolDown Regulator 120
    scoreboard players set SkillChooser Regulator -1

## 創建 BossBar
    bossbar add regulator [{"text":"叱嘯監管者 -","color":"gray","bold":true},{"text":"麥迪根","color":"#6F00FF"}]
    bossbar set regulator visible true
    bossbar set regulator color white
    bossbar set regulator style notched_10
    bossbar set regulator players @a

## 創建 team
    team add Regulator
    team modify Regulator friendlyFire false

## 本體召喚
    summon warden ~ ~ ~ {Health:250f,Tags:["enemy","boss","regulator_mount"],Passengers:[{id:"minecraft:skeleton",Invulnerable:1b,CustomNameVisible:1b,NoAI:1b,Health:250f,Tags:["enemy","boss","regulator"],HandItems:[{id:"minecraft:bow",Count:1b},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_leggings",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{Trim:{material:"minecraft:lapis",pattern:"minecraft:eye"}}},{id:"minecraft:sculk_shrieker",Count:1b,tag:{BlockEntityTag:{warning_level:4}}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Attributes:[{Name:generic.max_health,Base:250},{Name:generic.movement_speed,Base:0.2}]}],CustomName:'[{"text":"叱嘯監管者 -","color":"gray","bold":true},{"text":"麥迪根","color":"#6F00FF"}]',Attributes:[{Name:generic.max_health,Base:250}],Brain:{memories:{"minecraft:dig_cooldown":{value:{},ttl:1200L}}}}
    execute store result bossbar regulator max run data get entity @e[tag = regulator_mount, limit = 1] Health
    function boss:regulator/loop2
    team join Regulator @e[tag = regulator]


    