-- Normal
-- Created by: Margaret Venes
-- Created on: Dec 2015
-- Created for: ICS2O
-- This is the normal level scene

--points[1] = points[1] + 5

Normal = class()

local answer
local firstNumber
local secNumber
local op
local mathOperationText
local addingButton
local buttonAnswer
local subtractButton
local multiplyButton

function Normal:init()
    -- you can accept and set parameters here
   -- sprite("Dropbox:Blue Cancel Button")
  
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(350,100))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(500,100))
    multiplyButton = Button("Dropbox:FunMath Multiplication Sign",vec2(650,100)) 
    
    firstNumber=math.random(45)
    print("firstNumbber ",firstNumber)
    
    secNumber=math.random(45)
    print("secNumber ",secNumber)
    
    op=math.random(3)
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
end
end

function Normal:draw()
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
    text("$"..amountofcoins,50, 30)
    addingButton:draw()
    subtractButton:draw()
    multiplyButton:draw()
end

function Normal:touched(touch)
    moveBackButton:touched(touch)
    addingButton:touched(touch) 
    subtractButton:touched(touch)
    multiplyButton:touched(touch)
    
    if(addingButton.selected == true) then
        if (mathOperationText == "+")then
            print("correct")
            Scene.Change("correctnormal")     
            amountofcoins = amountofcoins + 10
        else
            print("wrong") 
            Scene.Change("wrongnormal")
        end
    end
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("correctnormal")  
            amountofcoins = amountofcoins + 10   
        else
            Scene.Change("wrongnormal")
        end
    end
    
      if(multiplyButton.selected == true) then
        if (mathOperationText == "*")then
            Scene.Change("correctnormal")   
              amountofcoins = amountofcoins + 10
        else
            Scene.Change("wrongnormal")
        end
    end 
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    

end