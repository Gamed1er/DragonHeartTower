
execute as @a[tag=OMC.Players.standby] run function omc:player/standby/hotbar/tick/bar


execute if entity @a[tag=OMC.Players.standby] run schedule function omc:player/standby/hotbar/tick/check 2t replace