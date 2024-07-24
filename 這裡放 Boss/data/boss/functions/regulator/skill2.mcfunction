## 蓄力
    execute if score SkillCoolDown Regulator matches -1 run data modify entity @s NoAI set value true
    execute if score SkillCoolDown Regulator matches -1 run item replace entity @s weapon.mainhand with stick{Enchantments:[{id:"minecraft:knockback",lvl:5s}]} 1
    execute if score SkillCoolDown Regulator matches -1 run effect give @a darkness 3 0
    execute if score SkillCoolDown Regulator matches -5 run tag @r add regulator_target
    execute if score SkillCoolDown Regulator matches -6 anchored feet positioned ~ ~1.75 ~ run tp @s ~ ~ ~ facing entity @a[tag = regulator_target, limit = 1]
    execute if score SkillCoolDown Regulator matches -6 anchored feet run playsound entity.warden.angry master @a ~ ~ ~ 100 1 1


## 衝刺
    execute if score SkillCoolDown Regulator matches -998..-26 anchored feet positioned ~ ~1.75 ~ run tp @s ^ ^ ^
    execute if score SkillCoolDown Regulator matches -998..-26 if block ^ ^ ^3 air run tp ^ ^ ^1
    execute if score SkillCoolDown Regulator matches -998..-26 as @a[distance = ..5] run damage @s 8 magic by @e[tag = regulator_mount, limit = 1]
    execute if score SkillCoolDown Regulator matches -998..-26 run effect give @a[distance = ..5] jump_boost 3 200
    execute if score SkillCoolDown Regulator matches -998..-26 run effect give @a[distance = ..5] slowness 3 9
    
## 循環
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..4 run item replace entity @s weapon.mainhand with stick 1
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..4 run scoreboard players add SkillChooser Regulator 1
    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..4 run scoreboard players set SkillCoolDown Regulator -1

    execute if score SkillCoolDown Regulator matches ..-999 if score SkillChooser Regulator matches ..4 run execute store result score SkillCoolDown Regulator run random value 100..120