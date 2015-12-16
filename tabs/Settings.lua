--Settings
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the settings

Settings = class()

local storeScreen

function Settings:init()
 --This button moves back to the main menu
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(50, 700))
end

function Settings:draw()
   background(215, 192, 12, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedMedium")
    textMode(CORNER)
    pushStyle()
    text("Settings", 400, 600)
    moveBackButton:draw()
end

function Settings:touched(touch)
    moveBackButton:touched(touch)
    --This goes to the main menu when you press the back button
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        
    end
end
