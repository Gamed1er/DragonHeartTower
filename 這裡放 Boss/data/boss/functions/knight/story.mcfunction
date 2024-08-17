## 創建 ScoreBoard
    scoreboard objectives add knight dummy "屠龍騎士．豪佐"
    scoreboard players set Health knight 0
    scoreboard players set SkillCoolDown knight 100
    scoreboard players set SkillChooser knight -1
    scoreboard players set Story knight 0

execute unless score now_floor floor_controller matches 90 run function boss:knight/story_loop