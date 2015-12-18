NotRight = class()

function NotRight:init()
    -- you can accept and set parameters here
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function NotRight:draw()
    -- Codea does not automatically call this method
    fontSize(40)
    fill(255, 254, 0, 255)
    text("you are wrong",200,600)
    text("sorry please try agin",525,600)
    moveBackButton:draw()
end

function NotRight:touched(touch)
    moveBackButton:touched(touch)
    -- Codea does not automatically call this method
    if(moveBackButton.selected == true) then
        Scene.Change("easy")
    end
end
