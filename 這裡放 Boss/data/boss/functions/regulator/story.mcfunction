## 創建 ScoreBoard
    scoreboard objectives add Regulator dummy "叱嘯監管者 - 麥迪根"
    scoreboard players set Health Regulator 0
    scoreboard players set Skill3 Regulator 6
    scoreboard players set SkillCoolDown Regulator 120
    scoreboard players set SkillChooser Regulator -1
    scoreboard players set Story Regulator 0
execute unless score now_floor floor_controller matches 90 run function boss:regulator/story_loop
