summon creeper ~ ~ ~ {Team:"storm",ExplosionRadius:1b,Fuse:0,active_effects:[{id:"minecraft:speed",amplifier:2b,duration:100}]}
effect give @a[distance = ..6] levitation 1 6
effect give @a[distance = ..6] darkness 5 6
effect give @e[tag = storm] speed 15 2
effect give @e[tag = storm] jump_boost 10 64
execute if score SkillCoolDown storm matches -4 run execute store result score SkillCoolDown storm run random value 60..70