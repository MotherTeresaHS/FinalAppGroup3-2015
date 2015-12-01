-- Main
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the code names for the scenes

-- Use this function to perform your initial setup

function setup()
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
-- Create the scenes (code for it)
-- The scene names
    Scene("splash", SplashScreenScene)
    Scene("gamelogo", Logo)
    Scene("main", MainScreen)
    Scene("store", Store)
    Scene("maingame", MainGame)
    Scene("settings", Settings)
    Scene("credits", Credits)
    
    --LUCA these are the scenes you should code in...its the game
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