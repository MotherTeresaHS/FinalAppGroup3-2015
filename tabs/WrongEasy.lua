-- WrongEasy
-- Created by: Margaret Venes
-- Created on: January 2016 
-- Created for: ICS2O
-- This is the scene if the user gets the answer wrong. The screen turns red.

WrongEasy = class()

local answer
local firstNumber
local secNumber
local op
local mathOperationText
local addingButton
local buttonAnswer
local subtractButton
local showHint

function WrongEasy:init()
    
    showHint = false
    startTime = ElapsedTime
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(60, 710))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(400,100))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(600,100))
    skipButton = Button("Dropbox:Red Forward Circle Button",vec2(60,180))
    hintButton= Button("Dropbox:Blue Forward Circle Button",vec2(60,470))
    timeBoostButton= Button("Dropbox:Green Forward Circle Button",vec2(60,330))
    --This is the code that will give random numbers and functions
    firstNumber=math.random(10)
    print("firstNumbber ",firstNumber)
    
    secNumber=math.random(10)
    print("secNumber ",secNumber)
    
    op=math.random(2)
    print("op ",op)
    if(op == 1 )then
        mathOperationText = "+"
        answer=firstNumber+secNumber 
     
    elseif (op == 2)then
        mathOperationText = "-"
        answer = firstNumber - secNumber 
        if (answer < 0)then
            print("negative number")
            print (firstNumber .. " " .. secNumber)
            local tempNumber
            tempNumber = secNumber
            secNumber = firstNumber
            firstNumber = tempNumber
            answer = firstNumber - secNumber
            print(firstNumber .. secNumber)            
        end           
    end
end

function WrongEasy:draw()
    -- Codea does not automatically call this method
    background(255, 27, 0, 255)
     --These are the buttons
    moveBackButton:draw()
    addingButton:draw()
    subtractButton:draw()
    print(answer)
    print(firstNumber)
    print(secNumber)
    print(op)
    fontSize(100)
    fill(0, 0, 0, 255)
    font("AppleColorEmoji")
    --This is the problem that will show up for the game
    text(firstNumber,310,450)
    text(secNumber,510,450)
    text("?", 420, 450)
    text("=",610,450)
    text(answer,710,450)
    fontSize(50)
    fill(59, 59, 59, 255)
    text("$"..amountofcoins,900, 700)
    --This is the time for the game
    fontSize(30)
    currentTime = endTime - (ElapsedTime)
    print ("current time " .. currentTime)
    if (currentTime > 0) then  
    else
        currentTime = 0
        Scene.Change("endscreennormal")            
    end
    text ("Time left: " .. math.floor(currentTime), 512, 700)
    --These are the hints, timeboosts, and skips
    skipButton:draw()
    hintButton:draw()
    timeBoostButton:draw()
    text("Hints: "..amountofhints, 80, 540)
    text("Time Boost: ".. amountoftimeboost, 130, 400)
    text("Skip: ".. amountofskipquestion, 70,250)  
    --This is to show the hint on the screen
    if (showHint == true) then
        -- show the text
        text(mathOperationText,375,600)
    end
end

function WrongEasy:touched(touch)
    
    moveBackButton:touched(touch)
    addingButton:touched(touch) 
    subtractButton:touched(touch)
    skipButton:touched(touch)
    hintButton:touched(touch)
    timeBoostButton:touched(touch)
    
    if(addingButton.selected == true) then
        if (mathOperationText == "+")then
            print("correct") 
            Scene.Change("righteasy")  
            amountofcoins = amountofcoins + 5
        else
            print("wrong")  
            Scene.Change("wrongeasy")
        end
    end
    
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("righteasy")
             amountofcoins = amountofcoins + 5
        else
            Scene.Change("wrongeasy")
        end
    end
    
    if(skipButton.selected == true)then
        if(amountofskipquestion >= 1)then
            Scene.Change("easy")
            amountofskipquestion = amountofskipquestion - 1
            amountofcoins = amountofcoins + 5
            saveLocalData("coins", amountofcoins)
            saveLocalData("skip", amountofskipquestion)
        end
    end
    
    if(hintButton.selected == true) then
        if(amountofhints >= 1)then
            showHint = true
            amountofhints = amountofhints - 1
            saveLocalData("hints", amountofhints)
        end
    end
    
    if(timeBoostButton.selected == true)then
        if(amountoftimeboost >= 1) then
            endTime = endTime + 30
            amountoftimeboost = amountoftimeboost - 1
            saveLocalData("time", amountoftimeboost)
        end
    end
    
    if(moveBackButton.selected == true) then
        Scene.Change("easy")
    end
    
end
