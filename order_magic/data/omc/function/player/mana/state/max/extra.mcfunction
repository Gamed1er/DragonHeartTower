

scoreboard players reset @s OMC.Player.Mana.Points.Max.Extra


execute as @s store result storage omc:function reg.ID int 1 run scoreboard players get @s OMC.Player.ID
function omc:player/mana/state/max/storage/main with storage omc:function reg
