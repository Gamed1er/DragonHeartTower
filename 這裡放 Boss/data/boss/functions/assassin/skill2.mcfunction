

execute store result score Player assassin run data get entity @p Rotation[0]
execute store result score Assassin assassin run data get entity @e[tag=assassin,limit=1] Rotation[0]
scoreboard players set Judge assassin 0
scoreboard players operation Judge assassin += Player assassin
scoreboard players operation Judge assassin -= Assasin assassin

execute if score Judge assassin matches -60..60 run execute as @a[distance=..7] run damage @s 10 out_of_world by @e[tag = assassin, limit = 1]
execute if score Judge assassin matches -60..60 run execute as @a[distance=..7] run effect give @s weakness 10 1
execute unless score Judge assassin matches -60..60 run execute as @a[distance=..7] run damage @s 8 arrow by @e[tag = assassin, limit = 1]
effect give @a[distance = ..7] darkness 10 1

function boss:assassin/skill1
function boss:assassin/skill2_tellraw
playsound entity.player.attack.crit master @a
execute if score Judge assassin matches -60..60 run playsound entity.ravager.stunned master @a
execute store result score SkillCoolDown assassin run random value 200..250