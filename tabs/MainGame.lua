--MainGame
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the levels for the main game

MainGame = class()

local mainGame

function MainGame:init()
    --These are the diffulties leading to the game except the moveGreenBackButton, that just moves the button back to the main menu
  -- sprite("Dropbox:Blue Forward Button")
   -- sprite("Dropbox:Red Forward Circle Button")
    
    easy = Button("Dropbox:Blue Forward Button", vec2(200, 500))
    medium = Button("Dropbox:Green Forward Button", vec2(780, 500))
    hard = Button("Dropbox:Purple Forward Button", vec2(500, 300))
    store = Button("Dropbox:Teal Forward Circle Button", vec2(940, 70))
    credits = Button("Dropbox:Purple Forward Circle Button", vec2(60, 700))
    settings = Button("Dropbox:SettingsR", vec2(940, 700))
end

function MainGame:draw()
    
   background(255, 255, 255, 255)
    fontSize(70)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    textMode(CORNER)
    pushStyle()
    text("$",25, 20)
    
    easy:draw()
    medium:draw()
    hard:draw()
    store:draw()
    credits:draw()
    settings:draw()
end

function MainGame:touched(touch)

    
    easy:touched(touch)
    medium:touched(touch)
    hard:touched(touch)
    store:touched(touch)
    credits:touched(touch)
    settings:touched(touch)
    
    --The easy button goes to the easy scene 
     if (easy.selected == true) then
        Scene.Change("easy")
    end
    --The medium button goes to the medium scene
    if (medium.selected == true) then
        Scene.Change("medium")
    end
    
    --The hard button goes to the hard scene
    if (hard.selected == true) then
        Scene.Change("hard")
    end
    
    if (store.selected == true) then
        Scene.Change("store")
    end
    
    if (credits.selected == true) then
        Scene.Change("credits")
    end
    
    if (settings.selected == true) then
        Scene.Change("settings")
    end
    
end