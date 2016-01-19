--Easy
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the easy level scene

-- Up

--points[1] = points[1] + 5

Easy = class()

local answer
local firstNumber
local secNumber
local op
local mathOperationText
local addingButton
local buttonAnswer
local subtractButton
 
function Easy:init()
    -- you can accept and set parameters here
    startTime = ElapsedTime
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(400,100))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(600,100))
    startTime = ElapsedTime
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
    moveBackButton:draw()
    print(answer)
    print(firstNumber)
    print(secNumber)
    print(op)
    fontSize(50)
    fill(0, 0, 0, 255)
    text(firstNumber,300,600)
    text(secNumber,450,600)
    text("=",550,600)
    text(answer,650,600)
    text("$"..amountofcoins,500, 300)
    text(ElapsedTime,1255,700)
    text("max time is 130 sec ->",500,700)
    addingButton:draw()
    subtractButton:draw()
      print(ElapsedTime)
    print("End time is" .. startTime + 120)
    if(startTime + 120 < ElapsedTime) then
        Scene.Change("leader")
        print("The end time is" .. ElapsedTime)
        end
end

function Easy:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    addingButton:touched(touch) 
    subtractButton:touched(touch)
    
    if(addingButton.selected == true) then
        if (mathOperationText == "+")then
            print("correct")
            Scene.Change("correcteasy")
           -- points[1] = points[1]+5    
            amountofcoins = amountofcoins +5
        else
            print("wrong")  
            Scene.Change("wrongeasy")
           -- points[1] = points[1]-5
        end
    end
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("correcteasy")    
             amountofcoins = amountofcoins +5
        else
            Scene.Change("wrongeasy")
        end
    end
   -- elseif (subtractButton.selected == true and mathOperationText == "-")then
        --print"correct"
      --  Scene.Change("right")
    --end
    
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    
    
end
