execute if score SkillCoolDown flogger matches 0 run data modify entity @s NoAI set value true
execute if score SkillCoolDown flogger matches 0 facing entity @p eyes run tp @s ^ ^ ^1 facing entity @p
effect give @s glowing 2 2 false
effect give @s resistance 2 1 false

tp @s ~ ~ ~ ~60 -15

execute if score SkillCoolDown flogger matches -29..-1 run tp @s ~ ~ ~ ~-4 ~1
execute if score SkillCoolDown flogger matches -30 run tp @s ~ ~ ~ facing entity @p

#施放技能
execute if score SkillCoolDown flogger matches -31 at @s facing entity @p feet run function boss:_particle/5/start
execute if score SkillCoolDown flogger matches -32 at @a run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0 1.0
execute if score SkillCoolDown flogger matches -32 at @e[tag = Particle5] as @a[distance = ..2] run damage @s 20 lightning_bolt by @e[tag = flogger, limit = 1]
execute if score SkillCoolDown flogger matches -33 run data modify entity @s NoAI set value false
execute if score SkillCoolDown flogger matches -33 run effect clear @s glowing
execute if score SkillCoolDown flogger matches -33 run effect give @s speed 2 4
execute if score SkillCoolDown flogger matches -33 run kill @e[tag = Particle5]
execute if score SkillCoolDown flogger matches ..-33 if score SkillChooser flogger matches 5.. run scoreboard players set SkillChooser flogger 0
execute if score SkillCoolDown flogger matches ..-33 if score SkillChooser flogger matches 5.. run execute store result score SkillCoolDown flogger run random value 290..310
execute if score SkillCoolDown flogger matches -33 run execute store result score SkillCoolDown flogger run random value 40..50
