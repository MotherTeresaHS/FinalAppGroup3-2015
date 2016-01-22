--Credits
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the credits scene

Credits = class()

function Credits:init()
    --This button should move back to the scene  you want to go to (main menu)
    moveBackButton = Button("Dropbox:Purple Back Circle Button", vec2(60, 710))
end

function Credits:draw()
    background(44, 48, 141, 255)
    moveBackButton:draw()
    
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-Medium")
    textMode(CENTER)
    pushStyle()
    --These are the names of the people who made the game
    text("Game Designers:", 500, 650)
    text("Isabella", 500, 600)
    text("Isabelle", 500, 550)
    text("Jakub", 500, 500)
    text("Game Makers:", 500, 450)
    text("Luca-GameCoder", 500, 400)
    text("Khoa-Art", 500, 350)
    text("Andre-Shop", 500, 300)
    text("Margie-Gui", 500, 250)
    text("Music: John Patraboy", 500, 150)
end

function Credits:touched(touch)
   moveBackButton:touched(touch)
    --This scene should go to the main menu
 if (moveBackButton.selected == true) then
    Scene.Change("main")
end    
  end
