## 創建 ScoreBoard
    scoreboard objectives add soul_locker dummy "癡盲鎖魂人 - 厄爾"
    scoreboard players set Health soul_locker 0
    scoreboard players set SkillCoolDown soul_locker 100
    scoreboard players set SkillChooser soul_locker -1
    scoreboard players set Story soul_locker 0

execute unless score now_floor floor_controller matches 90 run function boss:soul_locker/story_loop