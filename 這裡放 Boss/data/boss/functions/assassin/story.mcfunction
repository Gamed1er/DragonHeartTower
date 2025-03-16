## 創建 ScoreBoard
    scoreboard objectives add assassin dummy "幻蹤刺客．沁玲"
    scoreboard players set Health assassin 0
    scoreboard players set SkillCoolDown assassin 100
    scoreboard players set SkillChooser assassin -1
    scoreboard players set Story assassin 0

execute unless score now_floor floor_controller matches 90 run function boss:assassin/story_loop