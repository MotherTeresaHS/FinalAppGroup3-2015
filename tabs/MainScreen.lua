-- MainScreen
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the main screen

MainScreen = class()

--global to this whole file
local settings
local mainGame
local store
local credits 

function MainScreen:init()
 -- sprite("Dropbox:SettingsButton")
--sprite("Dropbox:Blue Settings Button")
--sprite("Dropbox:CreditsPhotoshop")
settings = Button("Dropbox:SettingsButton", vec2(960, 700))
mainGame = Button("Dropbox:MainMenuStartButton Resized", vec2(540, 250))
store = Button("Dropbox:Shop Icon", vec2(960, 70))
credits = Button("Dropbox:CreditsPhotoshop", vec2(43, 710))
tutorial = Button("Dropbox:Red Forward Circle Button", vec2(690, 120))
leaderboard = Button("Dropbox:LeaderBoardsIcon", vec2(50, 450))
    
    if musicOff then
        music.stop()
    else
        music("Dropbox:RetroflexionFINAL")
    end

end

function MainScreen:draw()
    
    background(255, 255, 255, 255)
    sprite("Dropbox:GameMainMenuPhotoshop",  512, 384, 1024, 768)
    fontSize(70)
    stroke(0, 0, 0, 255)
    fill(0, 0, 0, 255)
    font("Futura-CondensedExtraBold")
    textMode(CORNER)
    pushStyle()
    text("Tutorial", 380, 80)
    text("$"..math.floor(amountofcoins),10, 20)
    saveLocalData("coins", amountofcoins)
    tutorial:draw()
    store:draw()
    mainGame:draw()
    settings:draw()
    credits:draw()
    leaderboard:draw()
    
end

function MainScreen:touched(touch)
--what scene you go to when you press one of the buttons
    
    store:touched(touch)
    mainGame:touched(touch)
    settings:touched(touch)
    credits:touched(touch)
    tutorial:touched(touch)
    leaderboard:touched(touch)
    
if (store.selected == true) then
    Scene.Change("store")
end        
    
if (mainGame.selected == true) then 
    Scene.Change("maingame")
end  
              
if (settings.selected == true) then
    Scene.Change("settings")
end              
      
if (credits.selected == true) then
    Scene.Change("credits")
end
    
if (tutorial.selected == true) then
    Scene.Change("tutorialone")
end
    
if (leaderboard.selected == true) then
    if (gamecenter.enabled() == true) then
            gamecenter.showLeaderboards()
        end
        
end
      end

