-- MainScreen
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the main screen

MainScreen = class()

--global to this whole file
local settings
local mainGame
local store
local credits 

function MainScreen:init()
    --sprite("Dropbox:MainMenuStartButton-Reszied")
--These are the buttons in the main menu
  --  sprite("Dropbox:MainMenuStartButton-Resized")
    --sprite("Dropbox:Credits")
settings = Button("Dropbox:SettingsButton-Resized", vec2(940, 700))
mainGame = Button("Dropbox:MainMenuStartButton-Resized", vec2(540, 220))
store = Button("Dropbox:Teal Forward Circle Button", vec2(960, 70))
credits = Button("Dropbox:Credits", vec2(43, 710))
   -- sprite("Dropbox:Photo 16-11-2015, 9 08 31 PM", 9 08 31 PM"))

end

function MainScreen:draw()
    
    background(255, 255, 255, 255)
    sprite("Dropbox:GameMainMenuPhotoshop",  512, 384, 1024, 768)
    fontSize(70)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    textMode(CORNER)
    pushStyle()
    text("$",25, 20)
    
    store:draw()
    mainGame:draw()
    settings:draw()
    credits:draw()
    
end

function MainScreen:touched(touch)
--what scene you go to when you press one of the buttons
    
    store:touched(touch)
    mainGame:touched(touch)
    settings:touched(touch)
    credits:touched(touch)
    
    
if (store.selected == true) then
    Scene.Change("store")
end        
    
if (mainGame.selected == true) then 
    Scene.Change("players")
end  
              
if (settings.selected == true) then
    Scene.Change("settings")
end              
      
if (credits.selected == true) then
    Scene.Change("credits")
        
    end
    
    end

