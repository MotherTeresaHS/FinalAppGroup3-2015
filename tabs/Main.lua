-- Main
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the code names for the scenes

-- Use this function to perform your initial setup

--difficultyLevel = nil
DEBUG_GAMECENTER = true
amountofcoins = nil
--amountofcoins = 0
amountofhints = nil
amountoftimeboost = nil
amountofskipquestion = nil
countDown = 0
startTime = 0
endTime = 0
function setup()
    supportedOrientations(LANDSCAPE_ANY)
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    amountofcoins = readLocalData("coins", 0)
    amountofhints = readLocalData("hints", 0)
    amountoftimeboost = readLocalData("time", 0)
    amountofskipquestion = readLocalData("skip", 0)
    
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
    Scene("levelselect", LevelSelect)
    Scene("oneplayer", OnePlayer)
    Scene("twoplayers", TwoPlayers)
    Scene("threeplayers", ThreePlayers)
    Scene("fourplayers", FourPlayers)
    Scene("tutorial", Tutorial)
    Scene("correcteasy",CorrectEasy)
    Scene("correctnormal",CorrectNormal)
    Scene("correcthard",CorrectHard)
    Scene("wrongeasy",WrongEasy)
    Scene("righteasy", RightEasy)
    Scene("wrongnormal",WrongNormal)
    Scene("wronghard",WrongHard)
    Scene("endscreennormal", EndScreenNormal)
    Scene("screen", Screen)
    Scene("tutorialone", TutorialOne)
    Scene("tutorialtwo", TutorialTwo)
    
    --ANDRE AND LUCA this is the scene names for the achievements and leaderboard
    
    Scene("achieve", Achievements)
    Scene("leader", Leaderboard)
    
    --LUCA these are the scenes you should code in...its the game difficulty
    
    Scene("easy", Easy)
    Scene("normal", Normal)
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