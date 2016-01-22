EndScreenNormal = class()

function EndScreenNormal:init()
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(500,100))
end

function EndScreenNormal:draw()
    -- Codea does not automatically call this method
    background(255, 12, 0, 255)
    fontSize(50)
    fill(255, 255, 255, 255)
    text("End game.",500,450)
    text("The amount of money you have is $"..amountofcoins, 500, 350)
    moveBackButton:draw()

end

function EndScreenNormal:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    if (moveBackButton.selected == true) then
        Scene.Change("main")
    end
end
