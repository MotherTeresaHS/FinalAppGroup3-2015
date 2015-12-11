--StoreMainMenu
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the store

StoreMainMenu = class()

function StoreMainMenu:init()
--This button goes back
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function StoreMainMenu:draw()
    background(255, 255, 255, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-Medium")
    textMode(CORNER)
    pushStyle()
    text("Store", 400, 600)
    moveBackButton:draw()
end

function StoreMainMenu:touched(touch)
   moveBackButton:touched(touch)
    --When you press the back button, it goes back to the main menu
 if (moveBackButton.selected == true) then
    Scene.Change("maingame")
        end
end
