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


function Hard:init()
    
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
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
   elseif (op == 3)then
        mathOperationText = "*"
        answer=firstNumber*secNumber 
        if (firstNumber>secNumber)then
            answer= secNumber*firstNumber
    else  answer=firstNumber*secNumber         
    end
        elseif (op == 4)then
        mathOperationText = "/"
        answer=firstNumber/secNumber 
        if (firstNumber>secNumber)then
            answer= secNumber/firstNumber
    else  answer=firstNumber/secNumber         
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
    text(firstNumber,300,600)
    text(secNumber,450,600)
    text("=",550,600)
    text(answer,650,600)
    text("$"..amountofcoins,60, 30)
    addingButton:draw()
    subtractButton:draw()
    multiplyButton:draw()
    divisionButton:draw()
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
            Scene.Change("correcthard") 
              amountofcoins = amountofcoins + 10      
        else
            print("wrong") 
            Scene.Change("wronghard")
        end
    end
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("correcthard")  
                amountofcoins = amountofcoins + 10   
        else
            Scene.Change("wronghard")
        end
    end
    
      if(multiplyButton.selected == true) then
        if (mathOperationText == "*")then
            Scene.Change("correcthard")    
                amountofcoins = amountofcoins + 10 
        else
            Scene.Change("wronghard")
        end
    end 
    if(divisionButton.selected == true) then
        if (mathOperationText == "/")then
            Scene.Change("correcthard")    
                amountofcoins = amountofcoins + 10 
        else
            Scene.Change("wronghard")
        end
    end     
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    
end
end