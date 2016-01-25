-- Easy
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the easy level scene

Easy = class()

local answer
local firstNumber
local secNumber
local op
local mathOperationText
local addingButton
local buttonAnswer
local subtractButton
local showHint

function Easy:init()
    
    showHint = false
    startTime = ElapsedTime
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(60, 710))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(400,300))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(600,300))
    skipButton = Button("Dropbox:Red Forward Circle Button",vec2(730,100))
    hintButton= Button("Dropbox:Blue Forward Circle Button",vec2(500,100))
    timeBoostButton= Button("Dropbox:Green Forward Circle Button",vec2(250,100))
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

function Easy:draw()
    -- Codea does not automatically call this method
    background(255, 255, 255, 255)
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
    font("Futura-Medium")
    --This is the problem that will show up for the game
    text(firstNumber,310,480)
    text(secNumber,510,480)
    text("?", 420, 480)
    text("=",610,480)
    text(answer,720,480)
    fontSize(50)
    fill(59, 59, 59, 255)
    text("$"..math.floor(amountofcoins),900, 700)
    amountofcoins = readLocalData("coins", 0)
    --This is the time for the game
    fontSize(30)
    currentTime = endTime - (ElapsedTime)
    print ("current time " .. currentTime)
    if (currentTime > 0) then  
    else
        currentTime = 0
        Scene.Change("endscreennormal")            
    end
    text ("Time left: " ..math.floor(currentTime), 512, 700)
    --These are the hints, timeboosts, and skips
    skipButton:draw()
    hintButton:draw()
    timeBoostButton:draw()
    fontSize(20)
    text("Hints: "..math.floor(amountofhints), 480, 180)
    text("Time Boost: ".. math.floor(amountoftimeboost), 230, 180)
    text("Skip: ".. math.floor(amountofskipquestion), 720,180)  
    --This is to show the hint on the screen
    fontSize(30)
    if (showHint == true) then
        -- show the text
        text(mathOperationText,420,600)
    end
end

function Easy:touched(touch)
    
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
            saveLocalData("coins", amountofcoins)
        else
            print("wrong")  
            Scene.Change("wrongeasy")
        end
    end
    
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
             Scene.Change("righteasy")
             amountofcoins = amountofcoins + 5
             saveLocalData("coins", amountofcoins)
        else
            Scene.Change("wrongeasy")
        end
    end

    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
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
    
end
