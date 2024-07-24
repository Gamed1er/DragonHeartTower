effect give @a slowness 2 46
effect give @a jump_boost 2 200
effect give @a nausea 2 1

summon skeleton ~ ~ ~ {Tags:["enemy", "boss_partner"]}
summon skeleton ~ ~ ~ {Tags:["enemy", "boss_partner"]}
summon skeleton ~ ~ ~ {Tags:["enemy", "boss_partner"]}

summon zombie ~ ~ ~ {CustomNameVisible:1b,NoAI:0b,Health:40f,IsBaby:0b,Tags:["enemy","soul_tnt","boss_partner"],CustomName:'{"text":"遺恨血屍","color":"dark_red","bold":true}',ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:1512,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1612454938,-1685371232,-2140089610,770212364]}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:0},{Name:generic.armor,Base:0}]}
summon zombie ~ ~ ~ {CustomNameVisible:1b,NoAI:0b,Health:40f,IsBaby:0b,Tags:["enemy","soul_tnt","boss_partner"],CustomName:'{"text":"遺恨血屍","color":"dark_red","bold":true}',ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:1512,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1612454938,-1685371232,-2140089610,770212364]}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:0},{Name:generic.armor,Base:0}]}
summon zombie ~ ~ ~ {CustomNameVisible:1b,NoAI:0b,Health:40f,IsBaby:0b,Tags:["enemy","soul_tnt","boss_partner"],CustomName:'{"text":"遺恨血屍","color":"dark_red","bold":true}',ArmorItems:[{},{},{},{id:"minecraft:tnt",Count:1b,tag:{CustomModelData:1512,AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:1,Operation:0,UUID:[I;1612454938,-1685371232,-2140089610,770212364]}]}}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F],Attributes:[{Name:generic.max_health,Base:40},{Name:generic.movement_speed,Base:0.35},{Name:generic.attack_damage,Base:0},{Name:generic.armor,Base:0}]}

summon warden ~ ~ ~ {Health:50f,Tags:["enemy","boss_partner","regulator_helper"],HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:5s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.3,Operation:0,UUID:[I;45757718,-2056568479,-1976699135,2084415125],Slot:"mainhand"}]}},{}],Attributes:[{Name:generic.max_health,Base:50},{Name:generic.attack_damage,Base:2}]}

scoreboard players remove Skill3 Regulator 1
scoreboard players set SkillCoolDown Regulator 240