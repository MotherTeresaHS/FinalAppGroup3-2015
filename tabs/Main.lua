-- Main
-- Created by: Mr Coxall
-- Created on: Nov 2014
-- Created for: ICS2O
-- This is the main starting point

-- Use this function to perform your initial setup

function setup()
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
-- Create the scenes (code for it)
    Scene("splash", SplashScreenScene)
    Scene("gamelogo", Logo)
    Scene("main", MainScreen)
    Scene("art", Artwork)
    Scene("maingame", MainGame)
    Scene("store", Store)
    Scene("credits", Credits)
    Scene("easy", Easy)
    Scene("medium", Medium)
    Scene("hard", Hard)
    
    Scene.Change("splash")
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)
    Scene.Draw()
end

function touched (touch)
    Scene.Touched(touch)
end