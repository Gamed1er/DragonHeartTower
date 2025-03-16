## 創建 ScoreBoard
    scoreboard objectives add flogger dummy "鐵律鞭叱者亞巴頓"
    scoreboard players set Health flogger 0
    scoreboard players set SkillCoolDown flogger 100
    scoreboard players set SkillChooser flogger 4
    scoreboard players set Story flogger 0

execute if score now_floor floor_controller matches 90 run function boss:flogger/double_story_loop
execute unless score now_floor floor_controller matches 90 run function boss:flogger/story_loop
