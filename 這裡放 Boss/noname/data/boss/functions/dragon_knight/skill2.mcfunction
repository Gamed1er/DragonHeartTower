#召喚龍焰蛋
effect give @e[tag = dragon_knight2] resistance 1 4 true

execute if score SkillCoolDown DragonKnight matches 0 at @r run summon marker ~ ~ ~ {Tags : ["Particle","Particle1","FireBall1"]}
execute if score SkillCoolDown DragonKnight matches -20 at @e[tag = FireBall1] run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0]}
execute if score SkillCoolDown DragonKnight matches -20 at @r run summon marker ~ ~ ~ {Tags : ["Particle","Particle1","FireBall2"]}
execute if score SkillCoolDown DragonKnight matches -40 at @e[tag = FireBall2] run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0]}
execute if score SkillCoolDown DragonKnight matches -40 at @r run summon marker ~ ~ ~ {Tags : ["Particle","Particle1","FireBall3"]}
execute if score SkillCoolDown DragonKnight matches -60 at @e[tag = FireBall3] run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0]}
execute if score SkillCoolDown DragonKnight matches -60 at @r run summon marker ~ ~ ~ {Tags : ["Particle","Particle1","FireBall1"]}
execute if score SkillCoolDown DragonKnight matches -80 at @e[tag = FireBall1] run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0]}
execute if score SkillCoolDown DragonKnight matches -80 at @r run summon marker ~ ~ ~ {Tags : ["Particle","Particle1","FireBall2"]}
execute if score SkillCoolDown DragonKnight matches -100 at @e[tag = FireBall2] run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0]}
execute if score SkillCoolDown DragonKnight matches -100 at @r run summon marker ~ ~ ~ {Tags : ["Particle","Particle1","FireBall3"]}
execute if score SkillCoolDown DragonKnight matches -120 at @e[tag = FireBall3] run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0]}

execute if score SkillCoolDown DragonKnight matches -120 at @r run summon marker ~ ~ ~ {Tags : ["Particle","Particle2","FireBall4"]}
execute if score SkillCoolDown DragonKnight matches -150 at @e[tag = FireBall4] run summon dragon_fireball ~ ~ ~ {power:[0.0,-1.0,0.0]}
execute if score SkillCoolDown DragonKnight matches -150 at @e[tag = FireBall4] run summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,-1.0,0.0]}
execute if score SkillCoolDown DragonKnight matches -150 at @e[tag = FireBall4] run execute store result score SkillCoolDown DragonKnight run random value 200..240