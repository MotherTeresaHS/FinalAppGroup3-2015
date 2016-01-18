--Leaderboard
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the leaderboard scene
Leaderboard = class()

function Leaderboard:init()
    -- you can accept and set parameters here
    back = Button("Dropbox:Blue Back Circle Button", vec2(60, 700))
end

function Leaderboard:draw()
    background(246, 212, 2, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Copperplate-Bold")
    textMode(CENTER)
    pushStyle()
    text("Leaderboard", 512, 670)
    back:draw()
end

function Leaderboard:touched(touch)
    -- Codea does not automatically call this method
    back:touched(touch)
    if (back.selected) then
        Scene.Change("maingame")
    end
end
