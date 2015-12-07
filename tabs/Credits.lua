--Credits
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the credits scene

Credits = class()

function Credits:init()
    --This button should move back to the scene  you want to go to (main menu)
    moveBackButton = Button("Dropbox:Purple Back Circle Button", vec2(50, 700))
end

function Credits:draw()
    background(255, 255, 255, 255)
    moveBackButton:draw()
    
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-Medium")
    textMode(CORNER)
    pushStyle()
    --These are the names of the people who made the game
    text("Clients Names:", 400, 600)
    text("Isabella", 400, 550)
    text("Isabelle", 400, 500)
    text("Jacob", 400, 450)
    text("Game Makers:", 400, 350)
    text("Luca", 400, 300)
    text("Khoa", 400, 250)
    text("Andre", 400, 200)
    text("Margie", 400, 150)
end

function Credits:touched(touch)
   moveBackButton:touched(touch)
    --This scene should go to the main menu
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        end
end
