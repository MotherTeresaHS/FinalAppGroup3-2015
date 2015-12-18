-- Main
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the code names for the scenes

-- Use this function to perform your initial setup
difficultyLevel = nil
points = (nil)
addingOperation = ('+')
subtractOperation =("-")
function setup()
    supportedOrientations(LANDSCAPE_ANY)
  --  displayMode(FULLSCREEN)
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
    Scene("players", Players)
    Scene("creditsmain", CreditsMainMenu)
    Scene("settingsmain", SettingsMainMenu)
    Scene("storemain", StoreMainMenu)
    
    --ANDRE AND LUCA this is the scene names for the achievements and leaderboard
    
    Scene("achieve", Achievements)
    Scene("leader", Leaderboard)
    
    --LUCA these are the scenes you should code in...its the game difficulty
    
    Scene("easy", Easy)
    Scene("medium", Normal)
    Scene("hard", Hard)
    Scene("right",Correct)
    Scene("wrong",NotRight)
    Scene("right2",Correct2)
    Scene("wrong2",NotRight2)
    Scene("wrong3",NotRight3)
    Scene("right3",Correct3)
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