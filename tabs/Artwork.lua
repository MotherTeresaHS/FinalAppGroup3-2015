Artwork = class()


function Artwork:init()
    sprite("Dropbox:Red Back Circle Button")
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function Artwork:draw()
    background(255, 255, 255, 255)
    moveBackButton:draw()
end

function Artwork:touched(touch)
   moveBackButton:touched(touch)
    
 if (moveBackButton.selected == true) then
    Scene.Change("play")
        end
end
