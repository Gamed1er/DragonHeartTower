
summon iron_golem ~ ~ ~ {CustomName:'[{"text":"鐵血軍團長","bold":true,"color":"dark_red"}]',Health:320,Tags:["ToDH.enemy.Boss2","enemy","boss"],active_effects:[{id:"invisibility",duration:-1,show_particles:0b}],HandItems:[{id:"netherite_sword",tag:{CustomModelData:1},Count:1}],HandDropChances:[0.25f],Attributes:[{Name:"generic.max_health",Base:320d},{Name:"generic.armor",Base:40d},{Name:"generic.attack_knockback",Base:5d},{Name:"generic.attack_damage",Base:2d}]}
scoreboard players set @e[tag=ToDH.enemy.Boss2,tag=boss] ToDH.Boss2.Skill.Timing 290
scoreboard players set @e[tag=ToDH.enemy.Boss2,tag=boss] stiff.bodylimit.Max 50000
team join enemy @e[tag=ToDH.enemy.Boss2]

execute run function todh_b2:animator/tick

