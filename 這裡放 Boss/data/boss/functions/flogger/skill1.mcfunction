effect give @a[distance = ..100] darkness 5 0 false
effect give @a[distance = ..100] slowness 5 1 false

#之後換成三個骷髏生物
summon skeleton ~ ~ ~ {Tags:["boss_partner"]}
summon skeleton ~ ~ ~ {Tags:["boss_partner"]}
summon skeleton ~ ~ ~ {Tags:["boss_partner"]}
spreadplayers ~ ~ 15 10 false @e[tag = boss_partner]

execute store result score SkillCoolDown flogger run random value 100..120