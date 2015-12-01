--Logo
Logo = class()

function Logo:draw()
    -- This is the game logo
    sprite("Dropbox:GameLogo", 512, 384, 1024, 768)
    print(ElapsedTime)
    print("End time is" .. startTime + 2)
    if(startTime + 2 < ElapsedTime) then
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
