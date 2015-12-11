--MainGame
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the levels for the main game

MainGame = class()

local mainGame

function MainGame:init()
    --These are the diffulties leading to the game 
    
    easy = Button("Dropbox:EasyButton Photoshop", vec2(200, 500))
    normal = Button("Dropbox:NormalButton Photoshop", vec2(780, 500))
    hard = Button("Dropbox:Hard Button Photoshop", vec2(500, 300))
    store = Button("Dropbox:Teal Forward Circle Button", vec2(960, 70))
    credits = Button("Dropbox:Credits", vec2(43, 710))
    settings = Button("Dropbox:SettingsButton-Resized", vec2(940, 700))
end

function MainGame:draw()
    
   background(40, 29, 195, 255)
    fontSize(70)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    textMode(CORNER)
    pushStyle()
    text("$",25, 20)
    
    easy:draw()
    normal:draw()
    hard:draw()
    store:draw()
    credits:draw()
    settings:draw()
end

function MainGame:touched(touch)

    
    easy:touched(touch)
    normal:touched(touch)
    hard:touched(touch)
    store:touched(touch)
    credits:touched(touch)
    settings:touched(touch)
    
    --The easy button goes to the easy scene 
     if (easy.selected == true) then
        Scene.Change("easy")
    end
    --The medium button goes to the medium scene
    if (normal.selected == true) then
        Scene.Change("normal")
    end
    
    --The hard button goes to the hard scene
    if (hard.selected == true) then
        Scene.Change("hard")
    end
    
    if (store.selected == true) then
        Scene.Change("storemain")
    end
    
    if (credits.selected == true) then
        Scene.Change("creditsmain")
    end
    
    if (settings.selected == true) then
        Scene.Change("settingsmain")
    end
    
end