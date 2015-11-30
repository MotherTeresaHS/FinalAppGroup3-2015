--Store

Store = class()

local storeScreen

function Store:init()
 --   sprite("Dropbox:Blue Back Circle Button")
    --sprite("Dropbox:SettingsR")
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(50, 700))
end

function Store:draw()
   background(255, 255, 255, 255)
    moveBackButton:draw()
end

function Store:touched(touch)
    moveBackButton:touched(touch)
    
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        
    end
end
