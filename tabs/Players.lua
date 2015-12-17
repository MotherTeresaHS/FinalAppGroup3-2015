--Players
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the number of players scene
Players = class()

function Players:init()
    -- you can accept and set parameters here
  --  sprite("Dropbox:Red Forward Circle Button")
--sprite("Dropbox:Blue Back Circle Button")
    next = Button("Dropbox:Red Forward Circle Button", vec2(500, 60)) 
    back = Button("Dropbox:Blue Back Circle Button", vec2(60, 700))
    onePlayer = Button("Dropbox:Yellow Forward Circle Button", vec2(690, 500))
    twoPlayers = Button("Dropbox:Blue Forward Circle Button", vec2(690, 400))
    threePlayers = Button("Dropbox:Green Forward Circle Button", vec2(690, 300))
    fourPlayers = Button("Dropbox:Purple Forward Circle Button", vec2(690, 200))
    
end

function Players:draw()
    -- Codea does not automatically call this method
    background(214, 139, 57, 255)
    fontSize(70)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    textMode(CENTER)
    pushStyle()
    text("Number of Players:", 500, 700)
    text("1 Player", 450, 500)
    text("2 Players", 450, 400)
    text("3 Players", 450, 300)
    text("4 Players", 450, 200)
    back:draw()
    next:draw()
    onePlayer:draw()
    twoPlayers:draw()
    threePlayers:draw()
    fourPlayers:draw()
end

function Players:touched(touch)
    -- Codea does not automatically call this method
    next:touched(touch)
    back:touched(touch)
    
    if (next.selected == true) then
    Scene.Change("maingame")
    end
        
    if (back.selected == true) then
     Scene.Change("main")
    end
end