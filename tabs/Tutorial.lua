Tutorial = class()

function Tutorial:init()
    -- you can accept and set parameters here
    back = Button("Dropbox:Blue Back Circle Button", vec2(60, 700))
end

function Tutorial:draw()
    -- Codea does not automatically call this method
    background(41, 111, 170, 255)
    fontSize(20)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-Medium")
    textMode(CENTER)
    pushStyle()
    sprite("Documents:mainmenu", 250, 620, 250, 250)
    text("Press the start button to", 220, 455)
    text("proceed to the players scene", 220, 435)
    
    sprite("Documents:players", 500, 620, 250, 250)
    text("Press the button with the", 500, 455)
    text("amount of players you have", 500, 435)
    
    sprite("Documents:levels", 750, 620, 250, 250)
    text("Press which level you want", 750, 455)
    
    sprite("Documents:game", 250, 260, 250, 250)
    text("Press the correct function that", 250, 95)
    text("is correct to the equation", 250, 75)
    
    sprite("Documents:right", 500, 260, 250, 250)
    text("If you are right,", 500, 95)
    text("this screen will pop out", 500, 75)
    
    sprite("Documents:wrong", 750, 260, 250, 250)
    text("If you are wrong,", 750, 95)
    text("this screen will pop out", 750, 75)
    
    back:draw()
end

function Tutorial:touched(touch)
    -- Codea does not automatically call this method
    back:touched(touch)
    if (back.selected == true) then
        Scene.Change("main")
    end
end
