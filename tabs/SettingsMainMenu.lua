--Settings
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the settings

SettingsMainMenu = class()

function SettingsMainMenu:init()
 --This button moves back to the main menu
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(50, 700))
end

function SettingsMainMenu:draw()
   background(255, 255, 255, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedMedium")
    textMode(CORNER)
    pushStyle()
    text("Settings", 400, 600)
    moveBackButton:draw()
end

function SettingsMainMenu:touched(touch)
    moveBackButton:touched(touch)
    --This goes to the main menu when you press the back button
 if (moveBackButton.selected == true) then
    Scene.Change("maingame")
        
    end
end
