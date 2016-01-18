--Logo
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the game logo

Logo = class()

function Logo:draw()
    -- This is the game logo
    sprite("Dropbox:GameLogo Photshop", 512, 384, 1024, 768)
    print(ElapsedTime)
    print("End time is" .. startTime + 3)
    if(startTime + 3 < ElapsedTime) then
        Scene.Change("main")
        print("The end time is" .. ElapsedTime)
    end
end
function Logo:init()
    startTime = ElapsedTime
end
function Logo:touched(touch)
    -- Codea does not automatically call this method
end
