CorrectHard = class()

function CorrectHard:init()
    -- you can accept and set parameters here
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(500,100))
end

function CorrectHard:draw()
    -- Codea does not automatically call this method
    background(0, 255, 72, 255)
    fontSize(50)
    fill(0, 0, 0, 255)
    text("You are right!",500,450)
    moveBackButton:draw()
end

function CorrectHard:touched(touch)
    moveBackButton:touched(touch)
    -- Codea does not automatically call this method
    if(moveBackButton.selected == true) then
        Scene.Change("hard")
    end
end
