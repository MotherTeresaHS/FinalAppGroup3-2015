-- SplashScreenScene
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the company logo

SplashScreenScene = class()

--global to this whole file

function SplashScreenScene:draw()
-- This is the Company Logo
   background(88, 46, 193, 255)
    sprite("Dropbox:CompanyLogo Photoshop",  512, 384, 1024, 768)
    print(ElapsedTime)
    print("End time is" .. startTime + 3)
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("gamelogo")
        print("The end time is" .. ElapsedTime)
    end
end

function SplashScreenScene:init()   
    startTime = ElapsedTime
end

function SplashScreenScene:touched(touch)
    
end