-- SplashScreenScene
-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the first scene

SplashScreenScene = class()

--global to this whole file
local moveForwardButton

function SplashScreenScene:draw()
   background(88, 46, 193, 255)
    sprite("Dropbox:CompanyLogo",  512, 384, 1024, 768)
    
moveForwardButton:draw()
    
end
-- sprite("Dropbox:Yellow Forward Circle Button")  
function SplashScreenScene:init()
    moveForwardButton = Button("Dropbox:Yellow Forward Circle Button", vec2(950, 50))
end

function SplashScreenScene:touched(touch)
    moveForwardButton:touched(touch)
    
 if (moveForwardButton.selected == true) then
    Scene.Change("play")
        
    end
end