-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the store

Store = class()
local storeScreen
local toHintsScene
local toTimeBoostScene
local toPointBoostScene


function Store:init()
--This button goes back
 --   sprite("Dropbox:Point Boost Button")
   -- sprite("Dropbox:Hints Button")
  --  sprite("Dropbox:Time Boost Button")
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
    toHintsScene = Button("Dropbox:Hints Button", vec2(500, 500))
    toTimeBoostScene = Button("Dropbox:Time Boost Button", vec2(500, 350))
    toPointBoostScene = Button("Dropbox:Point Boost Button", vec2(500, 200))
    
end

function Store:draw()
    background(255, 255, 255, 255)
    fontSize(50)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-Medium")
    textMode(CENTER)
    pushStyle()
    text("Store", 400, 600)
    moveBackButton:draw()
    toHintsScene:draw()
    toTimeBoostScene:draw()
    toPointBoostScene:draw()
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Welcome To the Shop", 500, 700)

    fill(255, 250, 0, 255)
    rect(750, 550, 215, 80)
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Price", 900, 590)


    fill(255, 250, 0, 255)
    rect(750, 450, 215, 100)
    fill(0, 0, 0, 255)
    fontSize(80)
    text("$100", 850, 490)

    fill(255, 250, 0, 255)
    rect(750, 300, 215, 100)
    fill(0, 0, 0, 255)
    fontSize(80)
    text("$200", 850, 350)

    fill(255, 250, 0, 255)
    rect(750, 130, 215, 100)
    fill(0, 0, 0, 255)
    fontSize(80)
    text("$300", 850, 180)

    fill(255, 0, 2, 255)
    rect(10, 550, 220, 80)
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Cart", 90, 590)

    fill(0, 255, 1, 255)
    rect(190, 550, 615, 80)
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Upgrades", 500, 590)

    fill(74, 48, 235, 255)
    rect(30, 10, 220, 80)
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Balance", 145, 50)

end

function Store:touched(touch)
   moveBackButton:touched(touch)
    --When you press the back button, it goes back to the main menu
 if (moveBackButton.selected == true) then      
    Scene.Change("main")
        end
    if (toHintsScene.selected == true) then
        Scene.Change("hints")
    end

    if (toTimeBoostScene.selected == true) then
        Scene.Change("timeboost")
    end

    if (toPointBoostScene.selected == true) then
        Scene.Change("pointboost")
    end
end