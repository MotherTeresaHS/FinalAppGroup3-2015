--Normal
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
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(500,100))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(100,100))
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
        answer=firstNumber-secNumber 
        if (firstNumber>secNumber)then
            answer= secNumber-firstNumber
    else  answer=firstNumber-secNumber
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
    background(142, 255, 0, 255)
    moveBackButton:draw()
    print(answer)
    print(firstNumber)
    print(secNumber)
    print(op)
    fontSize(40)
    fill(255, 254, 0, 255)
    text(firstNumber,400,600)
    text(secNumber,500,600)
    text("=",550,600)
    text(answer,600,600)
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
            print("corect")
            Scene.Change("right2")     
        else
            print("wrong") 
            Scene.Change("wrong2")
        end
    end
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("right2")     
        else
            Scene.Change("wrong2")
        end
    end
    
      if(multiplyButton.selected == true) then
        if (mathOperationText == "*")then
            Scene.Change("right2")     
        else
            Scene.Change("wrong2")
        end
    end 
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    

end