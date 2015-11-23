Artwork = class()

function Artwork:init(x)
    -- you can accept and set parameters here
    self.x = x
end

function Artwork:draw()
    background(255, 255, 255, 255)
    -- Codea does not automatically call this method
end

function Artwork:touched(touch)
    -- Codea does not automatically call this method
end
