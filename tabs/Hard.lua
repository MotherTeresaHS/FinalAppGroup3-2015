-- Hard
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the hard level scene

--points[1] = points[1] + 5

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


function Hard:init()
    
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(60, 710))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(250,100))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(400,100))
    multiplyButton = Button("Dropbox:FunMath Multiplication Sign",vec2(550,100)) 
    divisionButton = Button("Dropbox:FunMath Division Sign",vec2(700,100))
    
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
    
    background(255, 255, 255, 255)
    moveBackButton:draw()
    print(answer)
    print(firstNumber)
    print(secNumber)
    print(op)
    fontSize(60)
    fill(0, 0, 0, 255)
    text(math.floor(firstNumber),300,600)
    text(math.floor(secNumber),450,600)
    text("=",550,600)
    text(math.floor(answer),650,600)
    text("$"..amountofcoins,475, 300)
    currentTime = endTime - (ElapsedTime)
    print ("current time " .. currentTime)
    if (currentTime > 0) then
    --currentTime = endTime - (ElapsedTime)    
    else
        currentTime = 0
        Scene.Change("endscreennormal") 
    end          
    addingButton:draw()
    subtractButton:draw()
    multiplyButton:draw()
    divisionButton:draw()
    text ("Time left: " .. math.floor(currentTime), 512, 700)
end

function Hard:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    addingButton:touched(touch) 
    subtractButton:touched(touch)
    multiplyButton:touched(touch)
    divisionButton:touched(touch)
        
    if(addingButton.selected == true) then
        if (mathOperationText == "+")then
            print("correct")
            Scene.Change("hard") 
              amountofcoins = amountofcoins + 40  
        else
            print("wrong") 
            Scene.Change("hard")
        end
    end
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("hard")  
                amountofcoins = amountofcoins + 40
        else
            Scene.Change("hard")
        end
    end
    
      if(multiplyButton.selected == true) then
        if (mathOperationText == "*")then
            Scene.Change("hard")    
                amountofcoins = amountofcoins + 40
        else
            Scene.Change("hard")
        end
    end 
    if(divisionButton.selected == true) then
        if (mathOperationText == "/")then
            Scene.Change("hard")    
                amountofcoins = amountofcoins + 40
        else
            Scene.Change("hard")
        end
    end     
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    
end