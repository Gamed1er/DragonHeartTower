#之後換成三個骷髏生物
summon skeleton ~ ~ ~ {Tags:["boss_partner", "enemy", "flogger1"]}
summon skeleton ~ ~ ~ {Tags:["boss_partner", "enemy", "flogger1"]}
summon skeleton ~ ~ ~ {Tags:["boss_partner", "enemy", "flogger1"]}

tag @e[tag = flogger1, limit = 10] add temp
kill @e[tag = flogger1, tag = !temp]
tag @e[tag = temp] remove temp
spreadplayers ~ ~ 15 3 false @e[tag = flogger1]
