--MainGame
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the levels for the main game

MainGame = class()

local mainGame
--sprite("Dropbox:Blue Forward Circle Button")
--sprite("Dropbox:LeaderBoardsIcon")
function MainGame:init()
    --These are the diffulties leading to the game 
    back = Button("Dropbox:Blue Back Circle Button", vec2(60, 710))
    easy = Button("Dropbox:EasyButton Photoshop", vec2(200, 500))
    normal = Button("Dropbox:NormalButton Photoshop", vec2(780, 500))
    hard = Button("Dropbox:Hard Button Photoshop", vec2(500, 300))
    leaderboard = Button("Dropbox:LeaderBoardsIcon", vec2(950, 700))
end

function MainGame:draw()
    
   background(40, 29, 195, 255)
    fontSize(70)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    textMode(CORNER)
    pushStyle()
    
    back:draw()
    easy:draw()
    normal:draw()
    hard:draw()
    leaderboard:draw()
end

function MainGame:touched(touch)

    
    easy:touched(touch)
    normal:touched(touch)
    hard:touched(touch)
    back:touched(touch)
    leaderboard:touched(touch)
    
    --The easy button goes to the easy scene 
     if (easy.selected == true) then
        countDown = 60 * 3
        startTime = ElapsedTime
        print("start time " ..startTime)
        endTime = startTime + countDown
        print("end time " .. endTime)
        Scene.Change("easy")
    end
    --The medium button goes to the medium scene
    if (normal.selected == true) then
      --  difficultyLevel = "normal"
        countDown = 60 * 2
        startTime = ElapsedTime
        print("start time " ..startTime)
        endTime = startTime + countDown
        print("end time " .. endTime)
        Scene.Change("normal")
    end
    
    --The hard button goes to the hard scene
    if (hard.selected == true) then
      --  difficultyLevel = "hard"
        countDown = 60 
        startTime = ElapsedTime
        print("start time " ..startTime)
        endTime = startTime + countDown
        print("end time " .. endTime)
        Scene.Change("hard")
    end
    
    if (back.selected == true) then
     Scene.Change("main")
    end
    
    if (leaderboard.selected == true) then
        Scene.Change("leader")
    end
    
end