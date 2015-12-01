--Store

Store = class()

local storeScreen

function Store:init()
 --This button moves back to the main menu
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(50, 700))
end

function Store:draw()
   background(255, 255, 255, 255)
    moveBackButton:draw()
end

function Store:touched(touch)
    moveBackButton:touched(touch)
    --This goes to the main menu when you press the back button
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        
    end
end
