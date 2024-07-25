## 蓄力
    execute if score SkillCoolDown Regulator matches -1 run data modify entity @s NoAI set value true
    execute if score SkillCoolDown Regulator matches -1 run item replace entity @s weapon.mainhand with stick{Enchantments:[{id:"minecraft:knockback",lvl:5s}]} 1
    execute if score SkillCoolDown Regulator matches -5 run tag @r add regulator_target
    execute if score SkillCoolDown Regulator matches -30 anchored feet run playsound entity.warden.angry master @a ~ ~ ~ 100 1 1


## 衝刺
    execute if score SkillCoolDown Regulator matches -30 anchored feet at @s run tp @s ~ ~ ~ facing entity @r
    execute if score SkillCoolDown Regulator matches -30 anchored feet at @s run tp @s ~ ~ ~ ~ 0
    execute if score SkillCoolDown Regulator matches -998..-36 if block ^ ^ ^1 air run tp @s ^ ^ ^1
    execute if score SkillCoolDown Regulator matches -998..-36 if block ^ ^ ^1 air run tp @s ^ ^ ^1
    execute if score SkillCoolDown Regulator matches -998..-36 unless block ^ ^ ^1 air run scoreboard players set SkillCoolDown Regulator -999
    execute if score SkillCoolDown Regulator matches -998..-36 as @a[distance = ..5] run damage @s 16 magic by @e[tag = regulator_mount, limit = 1]
    execute if score SkillCoolDown Regulator matches -998..-36 run effect give @a[distance = ..5] levitation 1 7
    execute if score SkillCoolDown Regulator matches -998..-36 run effect give @a[distance = ..5] speed 2 11
    execute as @a[nbt = {active_effects:[{id:"minecraft:levitation"}]}] run damage @s 3 arrow by @e[tag = regulator_mount, limit = 1]

## 循環
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..7 run effect clear @a levitation
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..7 run summon zombie ~ ~ ~ {CustomNameVisible:1b,NoAI:0b,Health:40f,IsBaby:0b,Tags:["enemy","soul_tnt","boss_partner"],CustomName:'{"text":"遺恨血屍","color":"dark_red","bold":true}',ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:1512,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1612454938,-1685371232,-2140089610,770212364]}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:0},{Name:generic.armor,Base:0}]}
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..7 run item replace entity @s weapon.mainhand with bread 1
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..7 run scoreboard players add SkillChooser Regulator 1
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..7 run scoreboard players set SkillCoolDown Regulator -20

    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches 7.. run data modify entity @e[limit = 1, tag = regulator_mount] NoAI set value false
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches 7.. run execute store result score SkillCoolDown Regulator run random value 270..300