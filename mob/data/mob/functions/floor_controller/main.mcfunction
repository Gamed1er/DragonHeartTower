
execute as @s store result score @s pos_Y run data get entity @s Pos[1]
scoreboard players operation @s[predicate=!mob:is_riding,gamemode=!spectator] floor_height = @s pos_Y
execute if score @s[  ] floor_height >= floor_0_height floor_height run scoreboard players set now_floor floor_controller 0
execute if score @s[  ] floor_height >= floor_1_height floor_height run scoreboard players set now_floor floor_controller 10
execute if score @s[  ] floor_height >= floor_2_height floor_height run scoreboard players set now_floor floor_controller 20
execute if score @s[  ] floor_height >= floor_3_height floor_height run scoreboard players set now_floor floor_controller 30
execute if score @s[] floor_height >= floor_3_5_height floor_height run scoreboard players set now_floor floor_controller 35
execute if score @s[  ] floor_height >= floor_4_height floor_height run scoreboard players set now_floor floor_controller 40
execute if score @s[  ] floor_height >= floor_5_height floor_height run scoreboard players set now_floor floor_controller 50
execute if score @s[  ] floor_height >= floor_6_height floor_height run scoreboard players set now_floor floor_controller 60
execute if score @s[] floor_height >= floor_6_5_height floor_height run scoreboard players set now_floor floor_controller 65
execute if score @s[  ] floor_height >= floor_7_height floor_height run scoreboard players set now_floor floor_controller 70
execute if score @s[  ] floor_height >= floor_8_height floor_height run scoreboard players set now_floor floor_controller 80
execute if score @s[  ] floor_height >= floor_9_height floor_height run scoreboard players set now_floor floor_controller 90
execute if score @s[] floor_height >= floor_9_5_height floor_height run scoreboard players set now_floor floor_controller 95
execute if score @s[ ] floor_height >= floor_10_height floor_height run scoreboard players set now_floor floor_controller 100

execute if score @s[  ] floor_height >= floor_0_height floor_height run scoreboard players set @s floor_controller 0
execute if score @s[  ] floor_height >= floor_1_height floor_height run scoreboard players set @s floor_controller 10
execute if score @s[  ] floor_height >= floor_2_height floor_height run scoreboard players set @s floor_controller 20
execute if score @s[  ] floor_height >= floor_3_height floor_height run scoreboard players set @s floor_controller 30
execute if score @s[] floor_height >= floor_3_5_height floor_height run scoreboard players set @s floor_controller 35
execute if score @s[  ] floor_height >= floor_4_height floor_height run scoreboard players set @s floor_controller 40
execute if score @s[  ] floor_height >= floor_5_height floor_height run scoreboard players set @s floor_controller 50
execute if score @s[  ] floor_height >= floor_6_height floor_height run scoreboard players set @s floor_controller 60
execute if score @s[] floor_height >= floor_6_5_height floor_height run scoreboard players set @s floor_controller 65
execute if score @s[  ] floor_height >= floor_7_height floor_height run scoreboard players set @s floor_controller 70
execute if score @s[  ] floor_height >= floor_8_height floor_height run scoreboard players set @s floor_controller 80
execute if score @s[  ] floor_height >= floor_9_height floor_height run scoreboard players set @s floor_controller 90
execute if score @s[] floor_height >= floor_9_5_height floor_height run scoreboard players set @s floor_controller 95
execute if score @s[ ] floor_height >= floor_10_height floor_height run scoreboard players set @s floor_controller 100

execute if score @s floor_controller matches 10 at @s run tp @a[scores={floor_controller=..9},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 20 at @s run tp @a[scores={floor_controller=..19},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 30 at @s run tp @a[scores={floor_controller=..29},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 35 at @s run tp @a[scores={floor_controller=..34},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 40 at @s run tp @a[scores={floor_controller=..39},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 50 at @s run tp @a[scores={floor_controller=..49},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 60 at @s run tp @a[scores={floor_controller=..59},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 65 at @s run tp @a[scores={floor_controller=..64},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 70 at @s run tp @a[scores={floor_controller=..69},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 80 at @s run tp @a[scores={floor_controller=..79},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 90 at @s run tp @a[scores={floor_controller=..89},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 95 at @s run tp @a[scores={floor_controller=..94},tag=!dead] ~ ~1 ~
execute if score @s floor_controller matches 100 at @s run tp @a[scores={floor_controller=..99},tag=!dead] ~ ~1 ~
