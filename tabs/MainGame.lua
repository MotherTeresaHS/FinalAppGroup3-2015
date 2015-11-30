--MainGame
MainGame = class()

local mainGame

function MainGame:init()
    --These are the button diffulty leading to the game except the 
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
    
 if (moveGreenBackButton.selected == true) then
    Scene.Change("main")
end
    
   if (easy.selected == true) then
        Scene.Change("easy")
    end
    
    if (medium.selected == true) then
        Scene.Change("medium")
    end
    
    if (hard.selected == true) then
        Scene.Change("hard")
    end
    
    end