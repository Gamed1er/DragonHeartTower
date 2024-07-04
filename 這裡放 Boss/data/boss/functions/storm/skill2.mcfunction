#召喚龍焰蛋
effect give @e[tag = storm] resistance 1 4 true

execute if score SkillCoolDown storm matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall1"]}
execute if score SkillCoolDown storm matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall1"]}
execute if score SkillCoolDown storm matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall1"]}
execute if score SkillCoolDown storm matches 0 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall1"]}
execute if score SkillCoolDown storm matches -20 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall2"]}
execute if score SkillCoolDown storm matches -20 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall2"]}
execute if score SkillCoolDown storm matches -20 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall2"]}
execute if score SkillCoolDown storm matches -20 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall2"]}
execute if score SkillCoolDown storm matches -40 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall3"]}
execute if score SkillCoolDown storm matches -40 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall3"]}
execute if score SkillCoolDown storm matches -40 run summon armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall3"]}

execute if score SkillCoolDown storm matches 0 run spreadplayers ~ ~ 8 10 false @e[tag = FireBall1]
execute if score SkillCoolDown storm matches -20 run spreadplayers ~ ~ 8 10 false @e[tag = FireBall2]
execute if score SkillCoolDown storm matches -40 run spreadplayers ~ ~ 8 10 false @e[tag = FireBall3]


execute if score SkillCoolDown storm matches -40 at @e[tag = FireBall1] run summon creeper ~ ~ ~ {Team:"storm",ExplosionRadius:0b,Fuse:0,active_effects:[{id:"minecraft:levitation",amplifier:6b,duration:30}]}
execute if score SkillCoolDown storm matches -40 at @e[tag = FireBall1] run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:3f,Duration:40,Potion:"minecraft:empty",effects:[{id:"minecraft:speed",amplifier:6b,duration:30},{id:"minecraft:levitation",amplifier:6b,duration:20}]}
execute if score SkillCoolDown storm matches -60 at @e[tag = FireBall2] run summon creeper ~ ~ ~ {Team:"storm",ExplosionRadius:0b,Fuse:0,active_effects:[{id:"minecraft:levitation",amplifier:6b,duration:30}]}
execute if score SkillCoolDown storm matches -60 at @e[tag = FireBall1] run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:3f,Duration:40,Potion:"minecraft:empty",effects:[{id:"minecraft:speed",amplifier:6b,duration:30},{id:"minecraft:levitation",amplifier:6b,duration:20}]}
execute if score SkillCoolDown storm matches -80 at @e[tag = FireBall3] run summon creeper ~ ~ ~ {Team:"storm",ExplosionRadius:0b,Fuse:0,active_effects:[{id:"minecraft:levitation",amplifier:6b,duration:30}]}
execute if score SkillCoolDown storm matches -80 at @e[tag = FireBall1] run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:3f,Duration:40,Potion:"minecraft:empty",effects:[{id:"minecraft:speed",amplifier:6b,duration:30},{id:"minecraft:levitation",amplifier:6b,duration:20}]}

execute if score SkillCoolDown storm matches 0 run summon armor_stand ~-8 ~ ~-6 {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall4"]}
execute if score SkillCoolDown storm matches 0 run summon armor_stand ~8 ~ ~-6 {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall4"]}
execute if score SkillCoolDown storm matches 0 run summon armor_stand ~ ~ ~10 {Invulnerable:1b,Invisible:1b, Tags : ["Particle","Particle3","FireBall4"]}

execute if score SkillCoolDown storm matches -100 at @e[tag = FireBall4] run summon area_effect_cloud ~ ~ ~ {Particle:"cloud",Radius:3f,Duration:200,Potion:"minecraft:healing",effects:[{id:"minecraft:speed",amplifier:6b,duration:80},{id:"minecraft:levitation",amplifier:6b,duration:40}]}
execute if score SkillCoolDown storm matches -100 at @e[tag = FireBall4] run summon creeper ~ ~ ~ {Team:"storm",ExplosionRadius:0b,Fuse:0,active_effects:[{id:"minecraft:levitation",amplifier:6b,duration:30}]}
execute if score SkillCoolDown storm matches -100 run execute store result score SkillCoolDown storm run random value 60..70