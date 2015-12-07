--Leaderboard
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the leaderboard scene
Leaderboard = class()

function Leaderboard:init()
    -- you can accept and set parameters here
    
end

function Leaderboard:draw()
    background(255, 255, 255, 255)
    background(255, 255, 255, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Copperplate-Bold")
    textMode(CORNER)
    pushStyle()
    text("Leaderboard", 512, 670)
end

function Leaderboard:touched(touch)
    -- Codea does not automatically call this method
end
