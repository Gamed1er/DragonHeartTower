effect give @a[distance = ..100] darkness 5 0 false
effect give @a[distance = ..100] slowness 5 1 false

function mob:summon_mob/grudgeful_evil_skeleton
function mob:summon_mob/anger_dark_skeleton
function mob:summon_mob/anger_eerie_skeleton
tag @e[tag = flogger1, limit = 10] add temp
kill @e[tag = flogger1, tag = !temp]
tag @e[tag = temp] remove temp

function boss:flogger/skill1_tellraw