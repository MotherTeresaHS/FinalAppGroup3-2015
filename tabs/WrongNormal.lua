WrongNormal = class()

function WrongNormal:init()
    -- you can accept and set parameters here
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function WrongNormal:draw()
    -- Codea does not automatically call this method
    background(255, 27, 0, 255)
    fontSize(50)
    fill(0, 0, 0, 255)
    text("You are wrong, please try again.",500,450)
    moveBackButton:draw()
end

function WrongNormal:touched(touch)
    moveBackButton:touched(touch)
    -- Codea does not automatically call this method
    if(moveBackButton.selected == true) then
        Scene.Change("normal")
    end
end
