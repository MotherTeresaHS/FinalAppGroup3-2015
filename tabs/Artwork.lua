--Artwork
Artwork = class()

function Artwork:init()
--This button goes back
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
end

function Artwork:draw()
    background(255, 255, 255, 255)
    moveBackButton:draw()
end

function Artwork:touched(touch)
   moveBackButton:touched(touch)
    --When you press the back button, it goes back to the main menu
 if (moveBackButton.selected == true) then
    Scene.Change("main")
        end
end
