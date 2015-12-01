--Store
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
   background(255, 255, 255, 255)
    moveBackButton:draw()
end

function Settings:touched(touch)
    moveBackButton:touched(touch)
    --This goes to the main menu when you press the back button
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        
    end
end
