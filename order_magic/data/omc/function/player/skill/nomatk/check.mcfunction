

execute as @s at @s run function omc:player/skill/nomatk/do
execute as @s at @s run function omc:player/skill/nomatk/tick/check


scoreboard players reset @s OMC.Player.check.carrotstick

advancement revoke @s only omc:player/nomatk