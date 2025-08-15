execute if score SkillCoolDown Regulator matches -1 run data modify entity @s NoAI set value true
execute if score SkillCoolDown Regulator matches -1 facing entity @p eyes run tp @s ^ ^ ^1 facing entity @p
effect give @s glowing 2 2 false
effect give @s resistance 2 3 false

tp @s ~ ~ ~ ~60 -15

execute if score SkillCoolDown Regulator matches -33..-1 run tp @s ~ ~ ~ ~-2 ~1

#施放技能
execute if score SkillCoolDown Regulator matches -31 at @s run function boss:_particle/5/start
execute if score SkillCoolDown Regulator matches -32 at @a run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 1.0 1.0 1.0
execute if score SkillCoolDown Regulator matches -32 at @e[tag = Particle5] as @a[distance = ..2] run damage @s 4 drown by @e[tag = regulator, limit = 1]
execute if score SkillCoolDown Regulator matches -33 run data modify entity @s NoAI set value false
execute if score SkillCoolDown Regulator matches -33 run effect clear @s glowing
execute if score SkillCoolDown Regulator matches -33 run effect give @s speed 5 4
execute if score SkillCoolDown Regulator matches -33 run kill @e[tag = Particle5]


execute if score SkillCoolDown Regulator matches ..-34 if score SkillChooser Regulator matches 5.. run scoreboard players add SkillChooser Regulator 0
execute if score SkillCoolDown Regulator matches ..-34 if score SkillChooser Regulator matches 1..5 run scoreboard players set SkillCoolDown Regulator 50
execute if score SkillCoolDown Regulator matches ..-35 run execute store result score SkillCoolDown Regulator run random value 120..160
