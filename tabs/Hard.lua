--Hard
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
    -- you can accept and set parameters here
  --  sprite("Dropbox:Blue Pause Button")
  --  sprite("Dropbox:FunMath Division Sign")
 ---   sprite("Dropbox:FunMath Plus Sign")
  --  sprite("Dropbox:FunMath Subtraction Sign")
   -- sprite("Dropbox:FunMath Multiplication Sign")
    moveBackButton = Button("Dropbox:Teal Back Circle Button", vec2(50, 700))
    addingButton = Button("Dropbox:FunMath Plus Sign",vec2(500,100))
    subtractButton = Button("Dropbox:FunMath Subtraction Sign",vec2(100,100))
   multiplyButton = Button("Dropbox:FunMath Multiplication Sign",vec2(650,100)) 
    divisionButton = Button("Dropbox:FunMath Division Sign",vec2(750,100))
    
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
    background(9, 86, 251, 255)
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
            print("corect")
            Scene.Change("right3")     
        else
            print("wrong") 
            Scene.Change("wrong3")
        end
    end
    if(subtractButton.selected == true) then
        if (mathOperationText == "-")then
            Scene.Change("right3")     
        else
            Scene.Change("wrong3")
        end
    end
    
      if(multiplyButton.selected == true) then
        if (mathOperationText == "*")then
            Scene.Change("right3")     
        else
            Scene.Change("wrong3")
        end
    end 
    if(divisionButton.selected == true) then
        if (mathOperationText == "/")then
            Scene.Change("right3")     
        else
            Scene.Change("wrong3")
        end
    end     
        
    if(moveBackButton.selected == true) then
        Scene.Change("maingame")
    end
    
end
end