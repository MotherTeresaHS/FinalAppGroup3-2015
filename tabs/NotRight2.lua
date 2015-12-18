NotRight2 = class()

function NotRight2:init()
    -- you can accept and set parameters here
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function NotRight2:draw()
    -- Codea does not automatically call this method
    fontSize(40)
    fill(255, 254, 0, 255)
    text("you are wrong",200,600)
    text("sorry please try agin",525,600)
    moveBackButton:draw()
end

function NotRight2:touched(touch)
    moveBackButton:touched(touch)
    -- Codea does not automatically call this method
    if(moveBackButton.selected == true) then
        Scene.Change("medium")
    end
end
