-- SplashScreenScene

SplashScreenScene = class()
--global to this whole file

function SplashScreenScene:draw()
-- This is the Company Logo
   background(88, 46, 193, 255)
    sprite("Dropbox:CompanyLogo",  512, 384, 1024, 768)
    print(ElapsedTime)
    print("End time is" .. startTime + 2)
    if(startTime + 2 < ElapsedTime) then
        Scene.Change("gamelogo")
        print("The end time is" .. ElapsedTime)
    end
end

function SplashScreenScene:init()   
    startTime = ElapsedTime
end

function SplashScreenScene:touched(touch)
    
end