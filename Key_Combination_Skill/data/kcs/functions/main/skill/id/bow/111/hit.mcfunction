
execute as @e[tag=enemy,nbt={HurtTime:10s}] at @s on attacker if entity @s[type=player] as @e[tag=enemy,limit=1,sort=nearest] run tag @s add KCS.function.detect

execute as @e[tag=KCS.function.detect] run effect give @s water_breathing 8 102 true
execute as @e[tag=KCS.function.detect] run function exef:effects/armored/check
tag @e remove KCS.function.detect
