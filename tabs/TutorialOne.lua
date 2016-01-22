TutorialOne = class()

function TutorialOne:init()
    -- you can accept and set parameters here
    moveBackButton = Button("Dropbox:Blue Back Circle Button", vec2(60, 710))
    nextButton = Button("Dropbox:Blue Forward Circle Button", vec2(60, 560))
end

function TutorialOne:draw()
    -- Codea does not automatically call this method
    sprite("Dropbox:TutorialOne",  512, 384, 1024, 768)
    moveBackButton:draw()
    nextButton:draw()
end

function TutorialOne:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    nextButton:touched(touch)
    if (moveBackButton.selected == true) then
        Scene.Change("main")
    end
    if (nextButton.selected == true) then
        Scene.Change("tutorialtwo")
    end
end
