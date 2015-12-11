--CreditsMainMenu
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the credits scene

CreditsMainMenu = class()

function CreditsMainMenu:init()
    --This button should move back to the scene  you want to go to (main menu)
    moveBackButton = Button("Dropbox:Purple Back Circle Button", vec2(50, 700))
end

function CreditsMainMenu:draw()
    background(255, 255, 255, 255)
    moveBackButton:draw()
    
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-Medium")
    textMode(CENTER)
    pushStyle()
    --These are the names of the people who made the game
    text("Clients Names:", 500, 650)
    text("Isabella", 500, 600)
    text("Isabelle", 500, 550)
    text("Jacob", 500, 500)
    text("Game Makers:", 500, 450)
    text("Luca", 500, 400)
    text("Khoa", 500, 350)
    text("Andre", 500, 300)
    text("Margie", 500, 250)
    text("Music: John Patraboy", 500, 150)
end 

function CreditsMainMenu:touched(touch)
   moveBackButton:touched(touch)
    --This scene should go to the main menu
 if (moveBackButton.selected == true) then
    Scene.Change("maingame")
        end
end
