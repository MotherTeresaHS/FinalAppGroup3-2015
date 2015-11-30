-- SplashScreenScene
-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the first scene

SplashScreenScene = class()

--global to this whole file

function SplashScreenScene:draw()
   background(88, 46, 193, 255)
    sprite("Dropbox:CompanyLogo",  512, 384, 1024, 768)
    print(ElapsedTime)
    print("End time is" .. startTime + 2)
    if(startTime + 2 < ElapsedTime) then
        Scene.Change("gamelogo")
        print("The end time is" .. ElapsedTime)
    end
end
-- sprite("Dropbox:Yellow Forward Circle Button")  
function SplashScreenScene:init()
    startTime = ElapsedTime
end

function SplashScreenScene:touched(touch)
    
end