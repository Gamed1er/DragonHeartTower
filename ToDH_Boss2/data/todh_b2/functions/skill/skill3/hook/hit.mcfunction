tag @a remove boss.Skill.detect

tag @s add boss.Skill.detect

damage @s 2 stiff:normal_damage by @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1]
damage @s 2 stiff:normal_damage by @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1]
damage @s 2 stiff:normal_damage by @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1]
damage @s 2 stiff:normal_damage by @e[tag=ToDH.enemy.Boss2,tag=boss,limit=1]

effect give @s slowness 1 63
effect give @s slowness 5 2

schedule function todh_b2:skill/skill3/clear 0.5s replace