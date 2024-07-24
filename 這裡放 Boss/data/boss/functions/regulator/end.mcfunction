kill @e[tag = regulator_mount]

bossbar set regulator visible false
execute store result bossbar regulator max run data get entity @e[tag = regulator, limit = 1] Health
