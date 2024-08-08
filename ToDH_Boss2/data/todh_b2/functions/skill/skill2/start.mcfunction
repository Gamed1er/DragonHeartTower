
kill @e[tag=ToDH.enemy.Boss2,tag=Pos]
schedule clear todh_b2:skill/skill2/damage/flame/timing
execute as @s at @s as @r[limit=1] at @s summon marker run function todh_b2:skill/skill2/marker

execute at @s facing entity @e[tag=ToDH.enemy.Boss2,tag=Pos] feet run tp @s ~ ~ ~ ~ ~

function todh_b2:animator/clear_all
execute at @s positioned ~ ~3 ~ run function skill2:summon
execute at @s run function todh_b2:animator/ride
function skill2:start_animation
schedule function todh_b2:skill/skill2/jump 1.35s
schedule function todh_b2:skill/skill2/getdown 2s
schedule function todh_b2:skill/skill2/clear 3.1s


execute as @e[tag=ToDH.enemy.Boss2,tag=Display] run data modify entity @s Glowing set value 1b
tag @s add Animation.isSkill2