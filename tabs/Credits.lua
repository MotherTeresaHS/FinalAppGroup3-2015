--Credits

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
    font("HelveticaNeue-CondensedBold")
    textMode(CORNER)
    pushStyle()
    --These are the names of the people who made the game
    text("Clients Names:", 420, 600)
    text("Isabella", 420, 550)
    text("Isabelle", 420, 500)
    text("Jacob", 420, 450)
    text("Game Makers:", 420, 350)
    text("Luca", 420, 300)
    text("Khoa", 420, 250)
    text("Andre", 420, 200)
    text("Margie", 420, 150)
end

function Credits:touched(touch)
   moveBackButton:touched(touch)
    --This scene should go to the main menu
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        end
end
