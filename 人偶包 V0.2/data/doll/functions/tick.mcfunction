scoreboard players set head_rotation doll1 0
scoreboard players operation head_rotation doll1 += rotation doll1
scoreboard players operation head_rotation doll1 += head_rotation_offset doll1
execute as @e run function doll:stream
function doll:doll_action/doll_action_controller
#execute as @e[tag=doll] at @s run particle bubble ~ ~ ~ 0.0 0.0 0.0 0 10
