--Settings
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the settings

Settings = class()

local storeScreen

function Settings:init()
 --This button moves back to the main menu
   -- sprite("Dropbox:No Sound Icon")
   -- sprite("Dropbox:Sound Icon")
   -- sprite("Dropbox:Blue Move Scene Forward Button")
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 710))
    onButton = Button("Dropbox:Sound Icon", vec2(250, 500))
    offButton = Button("Dropbox:No Sound Icon", vec2(700, 500))
end

function Settings:draw()
   background(215, 192, 12, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-Medium")
    textMode(CENTER)
    pushStyle()
    text("Settings", 500, 700)
    moveBackButton:draw()
    onButton:draw()
    offButton:draw()
    text("ON", 150, 500)
    text("OFF", 600, 500)
end

function Settings:touched(touch)
    moveBackButton:touched(touch)
    onButton:touched(touch)
    offButton:touched(touch)
    --This goes to the main menu when you press the back button
    if (moveBackButton.selected == true) then
    Scene.Change("main")
    elseif(onButton.selected == true) then
        music("Dropbox:RetroflexionFINAL")
        musicOff = false
    elseif(offButton.selected == true) then
        music.stop()
        musicOff = true 
    end
end
