-- Hard
-- Created by: Margaret Venes
-- Created on: January 2016
-- Created for: ICS2O
-- This is the hard level scene

Hard = class()

local answer
local firstNumber
local secNumber
local op
local mathOperationText
local addingButton
local buttonAnswer
local subtractButton
local multiplyButton
local divisionButton
local temp
local showHint

function Hard:init()
    
    showHint = false
    startTime = ElapsedTime
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(60, 710))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(250,300))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(395,300))
    multiplyButton = Button("Dropbox:FunMath Multiplication Sign",vec2(565,300)) 
    divisionButton = Button("Dropbox:FunMath Division Sign",vec2(730,300))
    skipButton = Button("Dropbox:Red Forward Circle Button",vec2(730,100))
    hintButton= Button("Dropbox:Blue Forward Circle Button",vec2(500,100))
    timeBoostButton= Button("Dropbox:Green Forward Circle Button",vec2(250,100))
    --This is the code that will give random numbers and functions
    firstNumber=math.random(99)
    print("firstNumbber ",firstNumber)
    
    secNumber=math.random(99)
    print("secNumber ",secNumber)
    
    op=math.random(4)
    print("op ",op)
    if(op == 1 )then
        mathOperationText = "+"
        answer = firstNumber+secNumber 
     
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
        
    elseif (op == 3)then
        mathOperationText = "*"
        answer=firstNumber*secNumber 
        
    elseif (op == 4)then
        mathOperationText = "/"
        temp = firstNumber*secNumber
        firstNumber=temp
        answer=firstNumber/secNumber 
    end
end

function Hard:draw()
    -- Codea does not automatically call this method
        
    -- added by Mr. coxall, to remove right and wrong duplicate scenes
    if (lastQuestionRight == true) then
        background(0, 255, 0, 255)
    elseif (lastQuestionRight == false) then
        background(255, 0, 0, 255)
    else
        background(255, 255, 255, 255)
    end
    moveBackButton:draw()
    addingButton:draw()
    subtractButton:draw()
    multiplyButton:draw()
    divisionButton:draw()
    print(answer)
    print(firstNumber)
    print(secNumber)
    print(op)
    fontSize(100)
    fill(0, 0, 0, 255)
    font("Vegur")
    --This is the problem that will show up for the game
    text(firstNumber,160,480)
    text(secNumber,540,480)
    text("?", 370, 480)
    text("=",680,480)
    text(math.floor(answer),810,480)
    fontSize(50)
    fill(59, 59, 59, 255)
    text("$"..math.floor(amountofcoins),900, 700)
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
    fontSize(20)
    text("Hints: "..math.floor(amountofhints), 480, 180)
    text("Time Boost: ".. math.floor(amountoftimeboost), 230, 180)
    text("Skip: ".. math.floor(amountofskipquestion), 720,180)  
    --This is to show the hint on the screen
    if (showHint == true) then
        -- show the text
        text(mathOperationText,375,600)
    end
end

function Hard:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    addingButton:touched(touch) 
    subtractButton:touched(touch)
    multiplyButton:touched(touch)
    divisionButton:touched(touch)
    skipButton:touched(touch)
    hintButton:touched(touch)
    timeBoostButton:touched(touch)
        
    if(addingButton.selected == true) then
        if (mathOperationText == "+")then
            print("correct") 
            amountofcoins = amountofcoins + 40         
            saveLocalData("coins", amountofcoins)
            lastQuestionRight = true
            Scene.Change("hard")
        else
            print("wrong") 
            lastQuestionRight = false
            Scene.Change("hard") 
        end
    end
    
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then  
            amountofcoins = amountofcoins + 40  
            saveLocalData("coins", amountofcoins)
            lastQuestionRight = true
            Scene.Change("hard")
        else
            lastQuestionRight = false
            Scene.Change("hard") 
        end
    end
    
      if(multiplyButton.selected == true) then
        if (mathOperationText == "*")then    
            amountofcoins = amountofcoins + 40   
            saveLocalData("coins", amountofcoins)
            lastQuestionRight = true
            Scene.Change("hard")
        else
            lastQuestionRight = false
            Scene.Change("hard")
        end
    end
    
    if(divisionButton.selected == true) then
        if (mathOperationText == "/")then    
            amountofcoins = amountofcoins + 40 
            saveLocalData("coins", amountofcoins)
            lastQuestionRight = true
            Scene.Change("hard")
        else
            lastQuestionRight = false
            Scene.Change("hard")
        end
    end     
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    
    if(skipButton.selected == true)then
        if(amountofskipquestion >= 1)then
            amountofskipquestion = amountofskipquestion - 1
            amountofcoins = amountofcoins + 5
            saveLocalData("coins", amountofcoins)  
            saveLocalData("skip", amountofskipquestion)
            lastQuestionRight = nil
            Scene.Change("hard")
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