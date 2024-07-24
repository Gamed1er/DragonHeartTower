execute if score SkillCoolDown Regulator matches -1 run data modify entity @s NoAI set value true
execute if score SkillCoolDown Regulator matches -1 facing entity @p eyes run tp @s ^ ^ ^1 facing entity @p
effect give @s glowing 2 2 false
effect give @s resistance 2 3 false

tp @s ~ ~ ~ ~60 -15

execute if score SkillCoolDown Regulator matches -20..-1 run tp @s ~ ~ ~ ~-6 ~1

#施放技能
execute if score SkillCoolDown Regulator matches -21 at @s run function boss:_particle/5/start
execute if score SkillCoolDown Regulator matches -22 at @a run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0 1.0
execute if score SkillCoolDown Regulator matches -22 at @e[tag = Particle5] as @a[distance = ..2] run damage @s 4 drown by @e[tag = Regulator, limit = 1]
execute if score SkillCoolDown Regulator matches -23 run data modify entity @s NoAI set value false
execute if score SkillCoolDown Regulator matches -23 run effect clear @s glowing
execute if score SkillCoolDown Regulator matches -23 run effect give @s speed 2 4
execute if score SkillCoolDown Regulator matches -23 run kill @e[tag = Particle5]


execute if score SkillCoolDown Regulator matches ..-24 if score SkillChooser Regulator matches ..2 run scoreboard players add SkillChooser Regulator 1
execute if score SkillCoolDown Regulator matches ..-24 if score SkillChooser Regulator matches ..2 at @r run tp ^ ^ ^3
execute if score SkillCoolDown Regulator matches ..-24 if score SkillChooser Regulator matches ..2 run scoreboard players set SkillCoolDown Regulator -1
execute if score SkillCoolDown Regulator matches -25 run execute store result score SkillCoolDown Regulator run random value 120..160
