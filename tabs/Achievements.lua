--Achievements
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the achievements scene
Achievements = class()

function Achievements:init()
    -- you can accept and set parameters here
    
end

function Achievements:draw()
    background(255, 255, 255, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Copperplate-Bold")
    textMode(CORNER)
    pushStyle()
    text("Achievements", 512, 670)
end

function Achievements:touched(touch)
    -- Codea does not automatically call this method
end
