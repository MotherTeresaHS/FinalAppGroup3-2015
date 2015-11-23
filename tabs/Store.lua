--Store

Store = class()

local storeScreen

function Store:init()
    sprite("Dropbox:Red Back Circle Button")
    moveBackButton = Button("Dropbox:Red Back Circle Button", vec2(50, 700))
end

function Store:draw()
   background(64, 126, 175, 255)
    moveBackButton:draw()
end

function Store:touched(touch)
    moveBackButton:touched(touch)
    
 if (moveBackButton.selected == true) then
    Scene.Change("play")
        
    end
end
