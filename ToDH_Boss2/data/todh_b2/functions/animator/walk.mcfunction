


function todh_b2:animator/clear_all
execute at @s positioned ~ ~3 ~ run function walk:summon
execute at @s run function todh_b2:animator/ride
function walk:start_animation_loop
tag @s add Animation.isWalk