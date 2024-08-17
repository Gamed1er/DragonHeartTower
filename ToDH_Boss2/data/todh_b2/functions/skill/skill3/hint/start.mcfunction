
execute as @s at @s anchored eyes facing entity @a[tag=boss.Skill.detect] feet run tp @s ~ ~ ~ ~ ~
execute at @s run function todh_b2:animator/ride

scoreboard players set @s KCS.Skill.Range 80

execute as @s at @s positioned ^ ^ ^ run function todh_b2:skill/skill3/hint/line