## 創建 ScoreBoard
    scoreboard objectives add storm dummy "風暴守護者"
    scoreboard players set Health storm 0
    scoreboard players set Hint storm 0
    scoreboard players set SkillCoolDown storm 100
    scoreboard players set SkillChooser storm -1
    scoreboard players set FaintTime storm -1


## 創建 BossBar
    bossbar add storm {"text":"【風暴守護者】","bold":true,"color":"green"}
    bossbar set storm visible true
    bossbar set storm color green
    bossbar set storm style notched_10
    bossbar set storm players @a

## 創建 team
    team add storm
    team modify storm friendlyFire false

## 本體召喚
    summon zombie ~ ~ ~ {CustomNameVisible:1b,Health:350f,IsBaby:0b,CanBreakDoors:0b,Tags:["enemy","boss","storm"],CustomName:'{"text":"風暴守護者","color":"#036B0E","bold":true}',HandItems:[{id:"minecraft:stick",Count:5b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:6s}]}},{}],HandDropChances:[0.000F,0.085F],ArmorItems:[{id:"minecraft:chainmail_boots",Count:1b,tag:{Enchantments:[{}]}},{id:"minecraft:leather_leggings",Count:1b,tag:{display:{color:224014},Enchantments:[{}]}},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:224014}}},{id:"minecraft:oak_leaves",Count:1b,tag:{Enchantments:[{id:"minecraft:projectile_protection",lvl:99s}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:350}]}
    scoreboard players set @e[tag = storm] stiff.bodylimit.Max 5
    execute store result bossbar storm max run data get entity @e[tag = storm, limit = 1] Health
    function boss:storm/loop1
    team join DrangonKnight @e[tag = storm]