-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the store

Store = class()

function Store:init()
--This button goes back
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function Store:draw()
    background(255, 255, 255, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("HelveticaNeue-CondensedBold")
    textMode(CORNER)
    pushStyle()
    text("Store", 500, 600)
    moveBackButton:draw()
end

function Store:touched(touch)
   moveBackButton:touched(touch)
    --When you press the back button, it goes back to the main menu
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        end
end
