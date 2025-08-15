## 創建 ScoreBoard
    scoreboard objectives add flogger dummy "鐵律鞭叱者亞巴頓"
    scoreboard players set Health flogger 0
    scoreboard players set SkillCoolDown flogger 100
    scoreboard players set SkillChooser flogger 4
    scoreboard players set Story flogger 0

function boss:flogger/story_loop