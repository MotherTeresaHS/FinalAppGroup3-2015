--MainGame
MainGame = class()

local mainGame

function MainGame:init()
    --These are the diffulties leading to the game except the moveGreenBackButton, that just moves the button back to the main menu
    moveGreenBackButton = Button("Dropbox:Green Back Circle Button", vec2(51, 700))
    easy = Button("Dropbox:easy", vec2(200, 500))
    medium = Button("Dropbox:Green Forward Button", vec2(700, 500))
    hard = Button("Dropbox:Purple Forward Button", vec2(500, 200))

end

function MainGame:draw()
   background(255, 255, 255, 255)
    moveGreenBackButton:draw()
    easy:draw()
    medium:draw()
    hard:draw()
end

function MainGame:touched(touch)
    moveGreenBackButton:touched(touch)
    easy:touched(touch)
    medium:touched(touch)
    hard:touched(touch)
    --The move green back button goes back to the main menu 
 if (moveGreenBackButton.selected == true) then
    Scene.Change("main")
end
    --The easy button goes to the easy scene 
   if (easy.selected == true) then
        Scene.Change("easy")
    end
    --The medium button goes to the medium scene
    if (medium.selected == true) then
        Scene.Change("medium")
    end
    --The hard button goes to the hard scene
    if (hard.selected == true) then
        Scene.Change("hard")
    end
    
    end