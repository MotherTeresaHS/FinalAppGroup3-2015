Correct = class()

function Correct:init()
    -- you can accept and set parameters here
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function Correct:draw()
    -- Codea does not automatically call this method
    fontSize(40)
    fill(255, 254, 0, 255)
    text("you are right",400,600)
    moveBackButton:draw()
end

function Correct:touched(touch)
    moveBackButton:touched(touch)
    -- Codea does not automatically call this method
    if(moveBackButton.selected == true) then
        Scene.Change("easy")
    end
end
