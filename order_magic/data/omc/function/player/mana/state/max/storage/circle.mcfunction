


$execute store result score OMC.State.reg OMC.Player.Mana.Points.Max.Extra run data get storage omc:function Players.PC$(ID).Mana[].Max.Extra[$(count)].count 10
scoreboard players operation @s OMC.Player.Mana.Points.Max.Extra += OMC.State.reg OMC.Player.Mana.Points.Max.Extra


execute store result storage omc:function reg.count int 1 run scoreboard players add OMC.State.reg.count Math 1
execute if score OMC.State.reg.count Math < OMC.State.reg.limit Math as @s run function omc:player/mana/state/max/storage/circle with storage omc:function reg

