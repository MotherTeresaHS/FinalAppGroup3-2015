CorrectNormal = class()

function CorrectNormal:init()
    -- you can accept and set parameters here
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function CorrectNormal:draw()
    -- Codea does not automatically call this method
    background(0, 255, 72, 255)
    fontSize(50)
    fill(0, 0, 0, 255)
    text("You are right!",500,450)
    moveBackButton:draw()
end

function CorrectNormal:touched(touch)
    moveBackButton:touched(touch)
    -- Codea does not automatically call this method
    if(moveBackButton.selected == true) then
        Scene.Change("normal")
    end
end
