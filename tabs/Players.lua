--Players
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the number of players scene
Players = class()

function Players:init()
    -- you can accept and set parameters here
  --  sprite("Dropbox:Red Forward Circle Button")
    next = Button("Dropbox:Red Forward Circle Button", vec2(500, 300))
    
end

function Players:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
    fontSize(70)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    textMode(CENTER)
    pushStyle()
    text("Number of Players:", 500, 700)
    
    next:draw()
end

function Players:touched(touch)
    -- Codea does not automatically call this method
    next:touched(touch)
    
    if(next.selected == true) then
    Scene.Change("maingame")
        
end
end