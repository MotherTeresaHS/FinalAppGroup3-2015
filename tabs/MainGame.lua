--MainGame
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the levels for the main game

MainGame = class()

local mainGame

function MainGame:init()
    --These are the diffulties leading to the game 
    back = Button("Dropbox:Blue Back Circle Button", vec2(60, 700))
    easy = Button("Dropbox:EasyButton Photoshop", vec2(200, 500))
    normal = Button("Dropbox:NormalButton Photoshop", vec2(780, 500))
    hard = Button("Dropbox:Hard Button Photoshop", vec2(500, 300))
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
end

function MainGame:touched(touch)

    
    easy:touched(touch)
    normal:touched(touch)
    hard:touched(touch)
    back:touched(touch)
    
    --The easy button goes to the easy scene 
     if (easy.selected == true) then
       -- difficultyLevel = "easy"
        Scene.Change("easy")
    end
    --The medium button goes to the medium scene
    if (normal.selected == true) then
      --  difficultyLevel = "normal"
        Scene.Change("medium")
    end
    
    --The hard button goes to the hard scene
    if (hard.selected == true) then
      --  difficultyLevel = "hard"
        Scene.Change("hard")
    end
    
    if (back.selected == true) then
     Scene.Change("players")
    end
    
end