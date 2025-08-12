


$execute store result score OMC.State.reg OMC.Player.Mana.Strength.Extra run data get storage omc:function Players.PC$(ID).Mana[].Strength.Extra[$(count)].count 10
scoreboard players operation @s OMC.Player.Mana.Strength.Extra += OMC.State.reg OMC.Player.Mana.Strength.Extra


execute store result storage omc:function reg.count int 1 run scoreboard players add OMC.State.reg.count Math 1
execute if score OMC.State.reg.count Math < OMC.State.reg.limit Math as @s run function omc:player/mana/state/strength/storage/circle with storage omc:function reg

