-- MainScreen
-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the second scene

MainScreen = class()
--global to this whole file
local store
local mainGame
local artwork
local credits 

function MainScreen:init()
--sprite("Dropbox:Blue Forward Circle Button")
--sprite("Dropbox:Green Forward Circle Button")
--sprite("Dropbox:Teal Forward Circle Button")
  --  sprite("Documents:start")
store = Button("Dropbox:Blue Forward Circle Button", vec2(950, 700))
mainGame = Button("Dropbox:Green Forward Circle Button", vec2(500, 250))
artwork = Button("Dropbox:Teal Forward Circle Button", vec2(940, 70))
credits = Button("Dropbox:Purple Forward Circle Button", vec2(60, 700))
end

function MainScreen:draw()
    
  background(255, 255, 255, 255)
    store:draw()
    mainGame:draw()
    artwork:draw()
    credits:draw()
    fontSize()
    stroke()
    fill()
    font()
    textMode()
    pushStyle()
end

function MainScreen:touched(touch)

    store:touched(touch)
    mainGame:touched(touch)
    artwork:touched(touch)
    credits:touched(touch)
    
 if (store.selected == true) then
    Scene.Change("store")
end        
 if (mainGame.selected == true) then 
    Scene.Change("maingame")
end            
if (artwork.selected == true) then
    Scene.Change("art")
end                
if (credits.selected == true) then
    Scene.Change("credits")
        
    end
    
    end

