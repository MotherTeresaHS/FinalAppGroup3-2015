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
--These are the buttons in the main menu
settings = Button("Dropbox:SettingsR", vec2(940, 700))
mainGame = Button("Dropbox:Green Forward Circle Button", vec2(500, 250))
store = Button("Dropbox:Teal Forward Circle Button", vec2(940, 70))
credits = Button("Dropbox:Purple Forward Circle Button", vec2(60, 700))

end

function MainScreen:draw()
    
    background(255, 255, 255, 255)
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
    Scene.Change("maingame")
end            
if (settings.selected == true) then
    Scene.Change("settings")
end                
if (credits.selected == true) then
    Scene.Change("credits")
        
    end
    
    end

